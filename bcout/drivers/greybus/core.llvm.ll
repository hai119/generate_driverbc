; ModuleID = '../bcout/drivers/greybus/core.llvm.bc'
source_filename = "drivers/greybus/core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_gb_init6:\09\09\09"
module asm ".long\09gb_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
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
%struct.poll_table_struct = type opaque
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.greybus_driver = type { i8*, i32 (%struct.gb_bundle*, %struct.greybus_bundle_id*)*, void (%struct.gb_bundle*)*, %struct.greybus_bundle_id*, %struct.device_driver }
%struct.gb_bundle = type { %struct.device, %struct.gb_interface*, i8, i8, i8, i8, i64, %struct.greybus_descriptor_cport*, %struct.list_head, i8*, %struct.list_head }
%struct.gb_interface = type { %struct.device, %struct.gb_control*, %struct.list_head, %struct.list_head, %struct.list_head, i8, i8, i8, i32, i32, i32, i32, i32, i64, %struct.gb_host_device*, %struct.gb_module*, i64, %struct.mutex, i8, i8, i8, i8, i8, i8, i8, %struct.work_struct, %struct.completion }
%struct.gb_control = type { %struct.device, %struct.gb_interface*, %struct.gb_connection*, i8, i8, i8, i8, i8*, i8* }
%struct.gb_connection = type { %struct.gb_host_device*, %struct.gb_interface*, %struct.gb_bundle*, %struct.kref, i16, i16, %struct.list_head, %struct.list_head, i32 (%struct.gb_operation*)*, i64, %struct.mutex, %struct.spinlock, i32, %struct.list_head, [16 x i8], %struct.workqueue_struct*, %struct.atomic_t, i8*, i8 }
%struct.gb_operation = type { %struct.gb_connection*, %struct.gb_message*, %struct.gb_message*, i64, i8, i16, i32, %struct.work_struct, void (%struct.gb_operation*)*, %struct.completion, %struct.timer_list, %struct.kref, %struct.atomic_t, i32, %struct.list_head, i8* }
%struct.gb_message = type { %struct.gb_operation*, %struct.gb_operation_msg_hdr*, i8*, i64, i8*, i8* }
%struct.gb_operation_msg_hdr = type { i16, i16, i8, i8, [2 x i8] }
%struct.gb_host_device = type { %struct.device, i32, %struct.gb_hd_driver*, %struct.list_head, %struct.list_head, %struct.ida, i64, i64, %struct.gb_svc*, [0 x i64] }
%struct.gb_hd_driver = type { i64, i32 (%struct.gb_host_device*, i32, i64)*, void (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16, i64)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16, i8, i32)*, i32 (%struct.gb_host_device*, i16, i64, i32)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16, %struct.gb_message*, i32)*, void (%struct.gb_message*)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i16)*, i32 (%struct.gb_host_device*, i8*, i16, i8, i1)* }
%struct.ida = type { %struct.xarray }
%struct.gb_svc = type { %struct.device, %struct.gb_host_device*, %struct.gb_connection*, i32, %struct.ida, %struct.workqueue_struct*, i16, i8, i8, i8, %struct.gb_svc_watchdog*, i32, %struct.dentry*, %struct.svc_debugfs_pwrmon_rail* }
%struct.gb_svc_watchdog = type opaque
%struct.svc_debugfs_pwrmon_rail = type { i8, %struct.gb_svc* }
%struct.gb_module = type { %struct.device, %struct.gb_host_device*, %struct.list_head, i8, i64, i8, [0 x %struct.gb_interface*] }
%struct.greybus_descriptor_cport = type { i16, i8, i8 }
%struct.greybus_bundle_id = type { i16, i32, i32, i8, i64 }

@__param_str_nogreybus = internal constant [10 x i8] c"nogreybus\00", align 1, !dbg !0
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@nogreybus = internal global i8 0, align 1, !dbg !4088
@__param_nogreybus = internal constant %struct.kernel_param { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__param_str_nogreybus, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon { i8* @nogreybus } }, section "__param", align 8, !dbg !4012
@.str = private unnamed_addr constant [8 x i8] c"greybus\00", align 1
@greybus_bus_type = dso_local global %struct.bus_type { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, %struct.device* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.attribute_group** null, i32 (%struct.device*, %struct.device_driver*)* @greybus_match_device, i32 (%struct.device*, %struct.kobj_uevent_env*)* @greybus_uevent, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* @greybus_shutdown, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, %struct.dev_pm_ops* null, %struct.iommu_ops* null, %struct.subsys_private* null, %struct.lock_class_key zeroinitializer, i8 0 }, align 8, !dbg !4064
@.str.1 = private unnamed_addr constant [37 x i8] c"\016greybus: registered new driver %s\0A\00", align 1
@__UNIQUE_ID___addressable_gb_init249 = internal global i8* bitcast (i32 ()* @gb_init to i8*), section ".discard.addressable", align 8, !dbg !4066
@__exitcall_gb_exit = internal global void ()* @gb_exit, section ".exitcall.exit", align 8, !dbg !4068
@__UNIQUE_ID_file250 = internal constant [37 x i8] c"greybus.file=drivers/greybus/greybus\00", section ".modinfo", align 1, !dbg !4073
@__UNIQUE_ID_license251 = internal constant [23 x i8] c"greybus.license=GPL v2\00", section ".modinfo", align 1, !dbg !4078
@__UNIQUE_ID_author252 = internal constant [63 x i8] c"greybus.author=Greg Kroah-Hartman <gregkh@linuxfoundation.org>\00", section ".modinfo", align 1, !dbg !4083
@greybus_bundle_type = external dso_local global %struct.device_type, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"%s %s: uevent for unknown greybus device \22type\22!\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"drivers/greybus/core.c\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"BUS=%u\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"MODULE=%u\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"INTERFACE=%u\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"GREYBUS_ID=%08x/%08x\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"BUNDLE=%u\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"BUNDLE_CLASS=%02x\00", align 1
@greybus_hd_type = external dso_local global %struct.device_type, align 8
@greybus_module_type = external dso_local global %struct.device_type, align 8
@greybus_interface_type = external dso_local global %struct.device_type, align 8
@greybus_control_type = external dso_local global %struct.device_type, align 8
@greybus_svc_type = external dso_local global %struct.device_type, align 8
@.str.10 = private unnamed_addr constant [29 x i8] c"failed to resume bundle: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"\013greybus: bus_register failed (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"\013greybus: gb_hd_init failed (%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"\013greybus: gb_operation_init failed (%d)\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (%struct.kernel_param* @__param_nogreybus to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_gb_init249 to i8*), i8* bitcast (void ()* @gb_exit to i8*), i8* bitcast (void ()** @__exitcall_gb_exit to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__UNIQUE_ID_file250, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__UNIQUE_ID_license251, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__UNIQUE_ID_author252, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @greybus_disabled() #0 !dbg !4098 {
entry:
  %0 = load i8, i8* @nogreybus, align 1, !dbg !4101
  %tobool = trunc i8 %0 to i1, !dbg !4101
  %conv = zext i1 %tobool to i32, !dbg !4101
  ret i32 %conv, !dbg !4102
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @greybus_match_device(%struct.device* %dev, %struct.device_driver* %drv) #0 !dbg !4103 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %drv.addr = alloca %struct.device_driver*, align 8
  %driver = alloca %struct.greybus_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.greybus_driver*, align 8
  %bundle = alloca %struct.gb_bundle*, align 8
  %id = alloca %struct.greybus_bundle_id*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.gb_bundle*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4104, metadata !DIExpression()), !dbg !4105
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !4106, metadata !DIExpression()), !dbg !4107
  call void @llvm.dbg.declare(metadata %struct.greybus_driver** %driver, metadata !4108, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4110, metadata !DIExpression()), !dbg !4112
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !4112
  %1 = bitcast %struct.device_driver* %0 to i8*, !dbg !4112
  store i8* %1, i8** %__mptr, align 8, !dbg !4112
  br label %do.body, !dbg !4112

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4113

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4112
  %add.ptr = getelementptr i8, i8* %2, i64 -32, !dbg !4112
  %3 = bitcast i8* %add.ptr to %struct.greybus_driver*, !dbg !4112
  store %struct.greybus_driver* %3, %struct.greybus_driver** %tmp, align 8, !dbg !4113
  %4 = load %struct.greybus_driver*, %struct.greybus_driver** %tmp, align 8, !dbg !4112
  store %struct.greybus_driver* %4, %struct.greybus_driver** %driver, align 8, !dbg !4109
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle, metadata !4115, metadata !DIExpression()), !dbg !4116
  call void @llvm.dbg.declare(metadata %struct.greybus_bundle_id** %id, metadata !4117, metadata !DIExpression()), !dbg !4118
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4119
  %call = call i32 @is_gb_bundle(%struct.device* %5) #5, !dbg !4121
  %tobool = icmp ne i32 %call, 0, !dbg !4121
  br i1 %tobool, label %if.end, label %if.then, !dbg !4122

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !4123
  br label %return, !dbg !4123

if.end:                                           ; preds = %do.end
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !4124, metadata !DIExpression()), !dbg !4126
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4126
  %7 = bitcast %struct.device* %6 to i8*, !dbg !4126
  store i8* %7, i8** %__mptr1, align 8, !dbg !4126
  br label %do.body2, !dbg !4126

do.body2:                                         ; preds = %if.end
  br label %do.end3, !dbg !4127

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !4126
  %add.ptr5 = getelementptr i8, i8* %8, i64 0, !dbg !4126
  %9 = bitcast i8* %add.ptr5 to %struct.gb_bundle*, !dbg !4126
  store %struct.gb_bundle* %9, %struct.gb_bundle** %tmp4, align 8, !dbg !4127
  %10 = load %struct.gb_bundle*, %struct.gb_bundle** %tmp4, align 8, !dbg !4126
  store %struct.gb_bundle* %10, %struct.gb_bundle** %bundle, align 8, !dbg !4129
  %11 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4130
  %12 = load %struct.greybus_driver*, %struct.greybus_driver** %driver, align 8, !dbg !4131
  %id_table = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %12, i32 0, i32 3, !dbg !4132
  %13 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %id_table, align 8, !dbg !4132
  %call6 = call %struct.greybus_bundle_id* @greybus_match_id(%struct.gb_bundle* %11, %struct.greybus_bundle_id* %13) #5, !dbg !4133
  store %struct.greybus_bundle_id* %call6, %struct.greybus_bundle_id** %id, align 8, !dbg !4134
  %14 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %id, align 8, !dbg !4135
  %tobool7 = icmp ne %struct.greybus_bundle_id* %14, null, !dbg !4135
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4137

if.then8:                                         ; preds = %do.end3
  store i32 1, i32* %retval, align 4, !dbg !4138
  br label %return, !dbg !4138

if.end9:                                          ; preds = %do.end3
  store i32 0, i32* %retval, align 4, !dbg !4139
  br label %return, !dbg !4139

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !4140
  ret i32 %15, !dbg !4140
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @greybus_uevent(%struct.device* %dev, %struct.kobj_uevent_env* %env) #0 !dbg !4141 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %env.addr = alloca %struct.kobj_uevent_env*, align 8
  %hd = alloca %struct.gb_host_device*, align 8
  %module = alloca %struct.gb_module*, align 8
  %intf = alloca %struct.gb_interface*, align 8
  %control = alloca %struct.gb_control*, align 8
  %bundle = alloca %struct.gb_bundle*, align 8
  %svc = alloca %struct.gb_svc*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gb_host_device*, align 8
  %__mptr4 = alloca i8*, align 8
  %tmp7 = alloca %struct.gb_module*, align 8
  %__mptr14 = alloca i8*, align 8
  %tmp17 = alloca %struct.gb_interface*, align 8
  %__mptr25 = alloca i8*, align 8
  %tmp28 = alloca %struct.gb_control*, align 8
  %__mptr37 = alloca i8*, align 8
  %tmp40 = alloca %struct.gb_bundle*, align 8
  %__mptr49 = alloca i8*, align 8
  %tmp52 = alloca %struct.gb_svc*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp76 = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4142, metadata !DIExpression()), !dbg !4143
  store %struct.kobj_uevent_env* %env, %struct.kobj_uevent_env** %env.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_uevent_env** %env.addr, metadata !4144, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.declare(metadata %struct.gb_host_device** %hd, metadata !4146, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.declare(metadata %struct.gb_module** %module, metadata !4148, metadata !DIExpression()), !dbg !4149
  store %struct.gb_module* null, %struct.gb_module** %module, align 8, !dbg !4149
  call void @llvm.dbg.declare(metadata %struct.gb_interface** %intf, metadata !4150, metadata !DIExpression()), !dbg !4151
  store %struct.gb_interface* null, %struct.gb_interface** %intf, align 8, !dbg !4151
  call void @llvm.dbg.declare(metadata %struct.gb_control** %control, metadata !4152, metadata !DIExpression()), !dbg !4153
  store %struct.gb_control* null, %struct.gb_control** %control, align 8, !dbg !4153
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle, metadata !4154, metadata !DIExpression()), !dbg !4155
  store %struct.gb_bundle* null, %struct.gb_bundle** %bundle, align 8, !dbg !4155
  call void @llvm.dbg.declare(metadata %struct.gb_svc** %svc, metadata !4156, metadata !DIExpression()), !dbg !4157
  store %struct.gb_svc* null, %struct.gb_svc** %svc, align 8, !dbg !4157
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4158
  %call = call i32 @is_gb_host_device(%struct.device* %0) #5, !dbg !4160
  %tobool = icmp ne i32 %call, 0, !dbg !4160
  br i1 %tobool, label %if.then, label %if.else, !dbg !4161

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4162, metadata !DIExpression()), !dbg !4165
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4165
  %2 = bitcast %struct.device* %1 to i8*, !dbg !4165
  store i8* %2, i8** %__mptr, align 8, !dbg !4165
  br label %do.body, !dbg !4165

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !4166

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4165
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !4165
  %4 = bitcast i8* %add.ptr to %struct.gb_host_device*, !dbg !4165
  store %struct.gb_host_device* %4, %struct.gb_host_device** %tmp, align 8, !dbg !4166
  %5 = load %struct.gb_host_device*, %struct.gb_host_device** %tmp, align 8, !dbg !4165
  store %struct.gb_host_device* %5, %struct.gb_host_device** %hd, align 8, !dbg !4168
  br label %if.end88, !dbg !4169

if.else:                                          ; preds = %entry
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4170
  %call1 = call i32 @is_gb_module(%struct.device* %6) #5, !dbg !4172
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4172
  br i1 %tobool2, label %if.then3, label %if.else10, !dbg !4173

if.then3:                                         ; preds = %if.else
  call void @llvm.dbg.declare(metadata i8** %__mptr4, metadata !4174, metadata !DIExpression()), !dbg !4177
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4177
  %8 = bitcast %struct.device* %7 to i8*, !dbg !4177
  store i8* %8, i8** %__mptr4, align 8, !dbg !4177
  br label %do.body5, !dbg !4177

do.body5:                                         ; preds = %if.then3
  br label %do.end6, !dbg !4178

do.end6:                                          ; preds = %do.body5
  %9 = load i8*, i8** %__mptr4, align 8, !dbg !4177
  %add.ptr8 = getelementptr i8, i8* %9, i64 0, !dbg !4177
  %10 = bitcast i8* %add.ptr8 to %struct.gb_module*, !dbg !4177
  store %struct.gb_module* %10, %struct.gb_module** %tmp7, align 8, !dbg !4178
  %11 = load %struct.gb_module*, %struct.gb_module** %tmp7, align 8, !dbg !4177
  store %struct.gb_module* %11, %struct.gb_module** %module, align 8, !dbg !4180
  %12 = load %struct.gb_module*, %struct.gb_module** %module, align 8, !dbg !4181
  %hd9 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %12, i32 0, i32 1, !dbg !4182
  %13 = load %struct.gb_host_device*, %struct.gb_host_device** %hd9, align 8, !dbg !4182
  store %struct.gb_host_device* %13, %struct.gb_host_device** %hd, align 8, !dbg !4183
  br label %if.end87, !dbg !4184

if.else10:                                        ; preds = %if.else
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4185
  %call11 = call i32 @is_gb_interface(%struct.device* %14) #5, !dbg !4187
  %tobool12 = icmp ne i32 %call11, 0, !dbg !4187
  br i1 %tobool12, label %if.then13, label %if.else21, !dbg !4188

if.then13:                                        ; preds = %if.else10
  call void @llvm.dbg.declare(metadata i8** %__mptr14, metadata !4189, metadata !DIExpression()), !dbg !4192
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4192
  %16 = bitcast %struct.device* %15 to i8*, !dbg !4192
  store i8* %16, i8** %__mptr14, align 8, !dbg !4192
  br label %do.body15, !dbg !4192

do.body15:                                        ; preds = %if.then13
  br label %do.end16, !dbg !4193

do.end16:                                         ; preds = %do.body15
  %17 = load i8*, i8** %__mptr14, align 8, !dbg !4192
  %add.ptr18 = getelementptr i8, i8* %17, i64 0, !dbg !4192
  %18 = bitcast i8* %add.ptr18 to %struct.gb_interface*, !dbg !4192
  store %struct.gb_interface* %18, %struct.gb_interface** %tmp17, align 8, !dbg !4193
  %19 = load %struct.gb_interface*, %struct.gb_interface** %tmp17, align 8, !dbg !4192
  store %struct.gb_interface* %19, %struct.gb_interface** %intf, align 8, !dbg !4195
  %20 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4196
  %module19 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %20, i32 0, i32 15, !dbg !4197
  %21 = load %struct.gb_module*, %struct.gb_module** %module19, align 8, !dbg !4197
  store %struct.gb_module* %21, %struct.gb_module** %module, align 8, !dbg !4198
  %22 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4199
  %hd20 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %22, i32 0, i32 14, !dbg !4200
  %23 = load %struct.gb_host_device*, %struct.gb_host_device** %hd20, align 8, !dbg !4200
  store %struct.gb_host_device* %23, %struct.gb_host_device** %hd, align 8, !dbg !4201
  br label %if.end86, !dbg !4202

if.else21:                                        ; preds = %if.else10
  %24 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4203
  %call22 = call i32 @is_gb_control(%struct.device* %24) #5, !dbg !4205
  %tobool23 = icmp ne i32 %call22, 0, !dbg !4205
  br i1 %tobool23, label %if.then24, label %if.else33, !dbg !4206

if.then24:                                        ; preds = %if.else21
  call void @llvm.dbg.declare(metadata i8** %__mptr25, metadata !4207, metadata !DIExpression()), !dbg !4210
  %25 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4210
  %26 = bitcast %struct.device* %25 to i8*, !dbg !4210
  store i8* %26, i8** %__mptr25, align 8, !dbg !4210
  br label %do.body26, !dbg !4210

do.body26:                                        ; preds = %if.then24
  br label %do.end27, !dbg !4211

do.end27:                                         ; preds = %do.body26
  %27 = load i8*, i8** %__mptr25, align 8, !dbg !4210
  %add.ptr29 = getelementptr i8, i8* %27, i64 0, !dbg !4210
  %28 = bitcast i8* %add.ptr29 to %struct.gb_control*, !dbg !4210
  store %struct.gb_control* %28, %struct.gb_control** %tmp28, align 8, !dbg !4211
  %29 = load %struct.gb_control*, %struct.gb_control** %tmp28, align 8, !dbg !4210
  store %struct.gb_control* %29, %struct.gb_control** %control, align 8, !dbg !4213
  %30 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4214
  %intf30 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %30, i32 0, i32 1, !dbg !4215
  %31 = load %struct.gb_interface*, %struct.gb_interface** %intf30, align 8, !dbg !4215
  store %struct.gb_interface* %31, %struct.gb_interface** %intf, align 8, !dbg !4216
  %32 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4217
  %module31 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %32, i32 0, i32 15, !dbg !4218
  %33 = load %struct.gb_module*, %struct.gb_module** %module31, align 8, !dbg !4218
  store %struct.gb_module* %33, %struct.gb_module** %module, align 8, !dbg !4219
  %34 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4220
  %hd32 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %34, i32 0, i32 14, !dbg !4221
  %35 = load %struct.gb_host_device*, %struct.gb_host_device** %hd32, align 8, !dbg !4221
  store %struct.gb_host_device* %35, %struct.gb_host_device** %hd, align 8, !dbg !4222
  br label %if.end85, !dbg !4223

if.else33:                                        ; preds = %if.else21
  %36 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4224
  %call34 = call i32 @is_gb_bundle(%struct.device* %36) #5, !dbg !4226
  %tobool35 = icmp ne i32 %call34, 0, !dbg !4226
  br i1 %tobool35, label %if.then36, label %if.else45, !dbg !4227

if.then36:                                        ; preds = %if.else33
  call void @llvm.dbg.declare(metadata i8** %__mptr37, metadata !4228, metadata !DIExpression()), !dbg !4231
  %37 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4231
  %38 = bitcast %struct.device* %37 to i8*, !dbg !4231
  store i8* %38, i8** %__mptr37, align 8, !dbg !4231
  br label %do.body38, !dbg !4231

do.body38:                                        ; preds = %if.then36
  br label %do.end39, !dbg !4232

do.end39:                                         ; preds = %do.body38
  %39 = load i8*, i8** %__mptr37, align 8, !dbg !4231
  %add.ptr41 = getelementptr i8, i8* %39, i64 0, !dbg !4231
  %40 = bitcast i8* %add.ptr41 to %struct.gb_bundle*, !dbg !4231
  store %struct.gb_bundle* %40, %struct.gb_bundle** %tmp40, align 8, !dbg !4232
  %41 = load %struct.gb_bundle*, %struct.gb_bundle** %tmp40, align 8, !dbg !4231
  store %struct.gb_bundle* %41, %struct.gb_bundle** %bundle, align 8, !dbg !4234
  %42 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4235
  %intf42 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %42, i32 0, i32 1, !dbg !4236
  %43 = load %struct.gb_interface*, %struct.gb_interface** %intf42, align 8, !dbg !4236
  store %struct.gb_interface* %43, %struct.gb_interface** %intf, align 8, !dbg !4237
  %44 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4238
  %module43 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %44, i32 0, i32 15, !dbg !4239
  %45 = load %struct.gb_module*, %struct.gb_module** %module43, align 8, !dbg !4239
  store %struct.gb_module* %45, %struct.gb_module** %module, align 8, !dbg !4240
  %46 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4241
  %hd44 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %46, i32 0, i32 14, !dbg !4242
  %47 = load %struct.gb_host_device*, %struct.gb_host_device** %hd44, align 8, !dbg !4242
  store %struct.gb_host_device* %47, %struct.gb_host_device** %hd, align 8, !dbg !4243
  br label %if.end84, !dbg !4244

if.else45:                                        ; preds = %if.else33
  %48 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4245
  %call46 = call i32 @is_gb_svc(%struct.device* %48) #5, !dbg !4247
  %tobool47 = icmp ne i32 %call46, 0, !dbg !4247
  br i1 %tobool47, label %if.then48, label %if.else55, !dbg !4248

if.then48:                                        ; preds = %if.else45
  call void @llvm.dbg.declare(metadata i8** %__mptr49, metadata !4249, metadata !DIExpression()), !dbg !4252
  %49 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4252
  %50 = bitcast %struct.device* %49 to i8*, !dbg !4252
  store i8* %50, i8** %__mptr49, align 8, !dbg !4252
  br label %do.body50, !dbg !4252

do.body50:                                        ; preds = %if.then48
  br label %do.end51, !dbg !4253

do.end51:                                         ; preds = %do.body50
  %51 = load i8*, i8** %__mptr49, align 8, !dbg !4252
  %add.ptr53 = getelementptr i8, i8* %51, i64 0, !dbg !4252
  %52 = bitcast i8* %add.ptr53 to %struct.gb_svc*, !dbg !4252
  store %struct.gb_svc* %52, %struct.gb_svc** %tmp52, align 8, !dbg !4253
  %53 = load %struct.gb_svc*, %struct.gb_svc** %tmp52, align 8, !dbg !4252
  store %struct.gb_svc* %53, %struct.gb_svc** %svc, align 8, !dbg !4255
  %54 = load %struct.gb_svc*, %struct.gb_svc** %svc, align 8, !dbg !4256
  %hd54 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %54, i32 0, i32 1, !dbg !4257
  %55 = load %struct.gb_host_device*, %struct.gb_host_device** %hd54, align 8, !dbg !4257
  store %struct.gb_host_device* %55, %struct.gb_host_device** %hd, align 8, !dbg !4258
  br label %if.end83, !dbg !4259

if.else55:                                        ; preds = %if.else45
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4260, metadata !DIExpression()), !dbg !4263
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !4263
  %56 = load i32, i32* %__ret_warn_on, align 4, !dbg !4264
  %tobool56 = icmp ne i32 %56, 0, !dbg !4264
  %lnot = xor i1 %tobool56, true, !dbg !4264
  %lnot57 = xor i1 %lnot, true, !dbg !4264
  %lnot.ext = zext i1 %lnot57 to i32, !dbg !4264
  %conv = sext i32 %lnot.ext to i64, !dbg !4264
  %tobool58 = icmp ne i64 %conv, 0, !dbg !4264
  br i1 %tobool58, label %if.then59, label %if.end, !dbg !4263

if.then59:                                        ; preds = %if.else55
  br label %do.body60, !dbg !4264

do.body60:                                        ; preds = %if.then59
  br label %do.body61, !dbg !4266

do.body61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !4268

do.end62:                                         ; preds = %do.body61
  %57 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4266
  %call63 = call i8* @dev_driver_string(%struct.device* %57) #5, !dbg !4266
  %58 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4266
  %call64 = call i8* @dev_name(%struct.device* %58) #5, !dbg !4266
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %call63, i8* %call64) #5, !dbg !4266
  br label %do.body65, !dbg !4266

do.body65:                                        ; preds = %do.end62
  br label %do.body66, !dbg !4270

do.body66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !4272

do.end67:                                         ; preds = %do.body66
  br label %do.body68, !dbg !4270

do.body68:                                        ; preds = %do.end67
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 113, i32 2313, i64 12) #6, !dbg !4274, !srcloc !4276
  br label %do.end69, !dbg !4274

do.end69:                                         ; preds = %do.body68
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 238) #6, !dbg !4277, !srcloc !4279
  br label %do.body70, !dbg !4270

do.body70:                                        ; preds = %do.end69
  br label %do.end71, !dbg !4280

do.end71:                                         ; preds = %do.body70
  br label %do.end72, !dbg !4270

do.end72:                                         ; preds = %do.end71
  br label %do.body73, !dbg !4266

do.body73:                                        ; preds = %do.end72
  br label %do.end74, !dbg !4282

do.end74:                                         ; preds = %do.body73
  br label %do.end75, !dbg !4266

do.end75:                                         ; preds = %do.end74
  br label %if.end, !dbg !4266

if.end:                                           ; preds = %do.end75, %if.else55
  %59 = load i32, i32* %__ret_warn_on, align 4, !dbg !4263
  %tobool77 = icmp ne i32 %59, 0, !dbg !4263
  %lnot78 = xor i1 %tobool77, true, !dbg !4263
  %lnot80 = xor i1 %lnot78, true, !dbg !4263
  %lnot.ext81 = zext i1 %lnot80 to i32, !dbg !4263
  %conv82 = sext i32 %lnot.ext81 to i64, !dbg !4263
  store i64 %conv82, i64* %tmp76, align 8, !dbg !4264
  %60 = load i64, i64* %tmp76, align 8, !dbg !4263
  store i32 -22, i32* %retval, align 4, !dbg !4284
  br label %return, !dbg !4284

if.end83:                                         ; preds = %do.end51
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %do.end39
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %do.end27
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %do.end16
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %do.end6
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %do.end
  %61 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !4285
  %62 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !4287
  %bus_id = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %62, i32 0, i32 1, !dbg !4288
  %63 = load i32, i32* %bus_id, align 8, !dbg !4288
  %call89 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %63) #5, !dbg !4289
  %tobool90 = icmp ne i32 %call89, 0, !dbg !4289
  br i1 %tobool90, label %if.then91, label %if.end92, !dbg !4290

if.then91:                                        ; preds = %if.end88
  store i32 -12, i32* %retval, align 4, !dbg !4291
  br label %return, !dbg !4291

if.end92:                                         ; preds = %if.end88
  %64 = load %struct.gb_module*, %struct.gb_module** %module, align 8, !dbg !4292
  %tobool93 = icmp ne %struct.gb_module* %64, null, !dbg !4292
  br i1 %tobool93, label %if.then94, label %if.end100, !dbg !4294

if.then94:                                        ; preds = %if.end92
  %65 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !4295
  %66 = load %struct.gb_module*, %struct.gb_module** %module, align 8, !dbg !4298
  %module_id = getelementptr inbounds %struct.gb_module, %struct.gb_module* %66, i32 0, i32 3, !dbg !4299
  %67 = load i8, i8* %module_id, align 8, !dbg !4299
  %conv95 = zext i8 %67 to i32, !dbg !4298
  %call96 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %conv95) #5, !dbg !4300
  %tobool97 = icmp ne i32 %call96, 0, !dbg !4300
  br i1 %tobool97, label %if.then98, label %if.end99, !dbg !4301

if.then98:                                        ; preds = %if.then94
  store i32 -12, i32* %retval, align 4, !dbg !4302
  br label %return, !dbg !4302

if.end99:                                         ; preds = %if.then94
  br label %if.end100, !dbg !4303

if.end100:                                        ; preds = %if.end99, %if.end92
  %68 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4304
  %tobool101 = icmp ne %struct.gb_interface* %68, null, !dbg !4304
  br i1 %tobool101, label %if.then102, label %if.end112, !dbg !4306

if.then102:                                       ; preds = %if.end100
  %69 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !4307
  %70 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4310
  %interface_id = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %70, i32 0, i32 5, !dbg !4311
  %71 = load i8, i8* %interface_id, align 8, !dbg !4311
  %conv103 = zext i8 %71 to i32, !dbg !4310
  %call104 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %conv103) #5, !dbg !4312
  %tobool105 = icmp ne i32 %call104, 0, !dbg !4312
  br i1 %tobool105, label %if.then106, label %if.end107, !dbg !4313

if.then106:                                       ; preds = %if.then102
  store i32 -12, i32* %retval, align 4, !dbg !4314
  br label %return, !dbg !4314

if.end107:                                        ; preds = %if.then102
  %72 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !4315
  %73 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4317
  %vendor_id = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %73, i32 0, i32 11, !dbg !4318
  %74 = load i32, i32* %vendor_id, align 8, !dbg !4318
  %75 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4319
  %product_id = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %75, i32 0, i32 12, !dbg !4320
  %76 = load i32, i32* %product_id, align 4, !dbg !4320
  %call108 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %74, i32 %76) #5, !dbg !4321
  %tobool109 = icmp ne i32 %call108, 0, !dbg !4321
  br i1 %tobool109, label %if.then110, label %if.end111, !dbg !4322

if.then110:                                       ; preds = %if.end107
  store i32 -12, i32* %retval, align 4, !dbg !4323
  br label %return, !dbg !4323

if.end111:                                        ; preds = %if.end107
  br label %if.end112, !dbg !4324

if.end112:                                        ; preds = %if.end111, %if.end100
  %77 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4325
  %tobool113 = icmp ne %struct.gb_bundle* %77, null, !dbg !4325
  br i1 %tobool113, label %if.then114, label %if.end125, !dbg !4327

if.then114:                                       ; preds = %if.end112
  %78 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !4328
  %79 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4331
  %id = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %79, i32 0, i32 2, !dbg !4332
  %80 = load i8, i8* %id, align 8, !dbg !4332
  %conv115 = zext i8 %80 to i32, !dbg !4331
  %call116 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %conv115) #5, !dbg !4333
  %tobool117 = icmp ne i32 %call116, 0, !dbg !4333
  br i1 %tobool117, label %if.then118, label %if.end119, !dbg !4334

if.then118:                                       ; preds = %if.then114
  store i32 -12, i32* %retval, align 4, !dbg !4335
  br label %return, !dbg !4335

if.end119:                                        ; preds = %if.then114
  %81 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !4336
  %82 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4338
  %class = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %82, i32 0, i32 3, !dbg !4339
  %83 = load i8, i8* %class, align 1, !dbg !4339
  %conv120 = zext i8 %83 to i32, !dbg !4338
  %call121 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %conv120) #5, !dbg !4340
  %tobool122 = icmp ne i32 %call121, 0, !dbg !4340
  br i1 %tobool122, label %if.then123, label %if.end124, !dbg !4341

if.then123:                                       ; preds = %if.end119
  store i32 -12, i32* %retval, align 4, !dbg !4342
  br label %return, !dbg !4342

if.end124:                                        ; preds = %if.end119
  br label %if.end125, !dbg !4343

if.end125:                                        ; preds = %if.end124, %if.end112
  store i32 0, i32* %retval, align 4, !dbg !4344
  br label %return, !dbg !4344

return:                                           ; preds = %if.end125, %if.then123, %if.then118, %if.then110, %if.then106, %if.then98, %if.then91, %if.end
  %84 = load i32, i32* %retval, align 4, !dbg !4345
  ret i32 %84, !dbg !4345
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @greybus_shutdown(%struct.device* %dev) #0 !dbg !4346 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %hd = alloca %struct.gb_host_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gb_host_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4347, metadata !DIExpression()), !dbg !4348
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4349
  %call = call i32 @is_gb_host_device(%struct.device* %0) #5, !dbg !4351
  %tobool = icmp ne i32 %call, 0, !dbg !4351
  br i1 %tobool, label %if.then, label %if.end, !dbg !4352

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.gb_host_device** %hd, metadata !4353, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4356, metadata !DIExpression()), !dbg !4358
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4358
  %2 = bitcast %struct.device* %1 to i8*, !dbg !4358
  store i8* %2, i8** %__mptr, align 8, !dbg !4358
  br label %do.body, !dbg !4358

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !4359

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4358
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !4358
  %4 = bitcast i8* %add.ptr to %struct.gb_host_device*, !dbg !4358
  store %struct.gb_host_device* %4, %struct.gb_host_device** %tmp, align 8, !dbg !4359
  %5 = load %struct.gb_host_device*, %struct.gb_host_device** %tmp, align 8, !dbg !4358
  store %struct.gb_host_device* %5, %struct.gb_host_device** %hd, align 8, !dbg !4361
  %6 = load %struct.gb_host_device*, %struct.gb_host_device** %hd, align 8, !dbg !4362
  call void @gb_hd_shutdown(%struct.gb_host_device* %6) #5, !dbg !4363
  br label %if.end, !dbg !4364

if.end:                                           ; preds = %do.end, %entry
  ret void, !dbg !4365
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @greybus_register_driver(%struct.greybus_driver* %driver, %struct.module* %owner, i8* %mod_name) #0 !dbg !4366 {
entry:
  %retval = alloca i32, align 4
  %driver.addr = alloca %struct.greybus_driver*, align 8
  %owner.addr = alloca %struct.module*, align 8
  %mod_name.addr = alloca i8*, align 8
  %retval1 = alloca i32, align 4
  store %struct.greybus_driver* %driver, %struct.greybus_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.greybus_driver** %driver.addr, metadata !4369, metadata !DIExpression()), !dbg !4370
  store %struct.module* %owner, %struct.module** %owner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %owner.addr, metadata !4371, metadata !DIExpression()), !dbg !4372
  store i8* %mod_name, i8** %mod_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mod_name.addr, metadata !4373, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4375, metadata !DIExpression()), !dbg !4376
  %call = call i32 @greybus_disabled() #5, !dbg !4377
  %tobool = icmp ne i32 %call, 0, !dbg !4377
  br i1 %tobool, label %if.then, label %if.end, !dbg !4379

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4380
  br label %return, !dbg !4380

if.end:                                           ; preds = %entry
  %0 = load %struct.greybus_driver*, %struct.greybus_driver** %driver.addr, align 8, !dbg !4381
  %driver2 = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %0, i32 0, i32 4, !dbg !4382
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver2, i32 0, i32 1, !dbg !4383
  store %struct.bus_type* @greybus_bus_type, %struct.bus_type** %bus, align 8, !dbg !4384
  %1 = load %struct.greybus_driver*, %struct.greybus_driver** %driver.addr, align 8, !dbg !4385
  %name = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %1, i32 0, i32 0, !dbg !4386
  %2 = load i8*, i8** %name, align 8, !dbg !4386
  %3 = load %struct.greybus_driver*, %struct.greybus_driver** %driver.addr, align 8, !dbg !4387
  %driver3 = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %3, i32 0, i32 4, !dbg !4388
  %name4 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver3, i32 0, i32 0, !dbg !4389
  store i8* %2, i8** %name4, align 8, !dbg !4390
  %4 = load %struct.greybus_driver*, %struct.greybus_driver** %driver.addr, align 8, !dbg !4391
  %driver5 = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %4, i32 0, i32 4, !dbg !4392
  %probe = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver5, i32 0, i32 8, !dbg !4393
  store i32 (%struct.device*)* @greybus_probe, i32 (%struct.device*)** %probe, align 8, !dbg !4394
  %5 = load %struct.greybus_driver*, %struct.greybus_driver** %driver.addr, align 8, !dbg !4395
  %driver6 = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %5, i32 0, i32 4, !dbg !4396
  %remove = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver6, i32 0, i32 10, !dbg !4397
  store i32 (%struct.device*)* @greybus_remove, i32 (%struct.device*)** %remove, align 8, !dbg !4398
  %6 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !4399
  %7 = load %struct.greybus_driver*, %struct.greybus_driver** %driver.addr, align 8, !dbg !4400
  %driver7 = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %7, i32 0, i32 4, !dbg !4401
  %owner8 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver7, i32 0, i32 2, !dbg !4402
  store %struct.module* %6, %struct.module** %owner8, align 8, !dbg !4403
  %8 = load i8*, i8** %mod_name.addr, align 8, !dbg !4404
  %9 = load %struct.greybus_driver*, %struct.greybus_driver** %driver.addr, align 8, !dbg !4405
  %driver9 = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %9, i32 0, i32 4, !dbg !4406
  %mod_name10 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver9, i32 0, i32 3, !dbg !4407
  store i8* %8, i8** %mod_name10, align 8, !dbg !4408
  %10 = load %struct.greybus_driver*, %struct.greybus_driver** %driver.addr, align 8, !dbg !4409
  %driver11 = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %10, i32 0, i32 4, !dbg !4410
  %call12 = call i32 @driver_register(%struct.device_driver* %driver11) #5, !dbg !4411
  store i32 %call12, i32* %retval1, align 4, !dbg !4412
  %11 = load i32, i32* %retval1, align 4, !dbg !4413
  %tobool13 = icmp ne i32 %11, 0, !dbg !4413
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4415

if.then14:                                        ; preds = %if.end
  %12 = load i32, i32* %retval1, align 4, !dbg !4416
  store i32 %12, i32* %retval, align 4, !dbg !4417
  br label %return, !dbg !4417

if.end15:                                         ; preds = %if.end
  %13 = load %struct.greybus_driver*, %struct.greybus_driver** %driver.addr, align 8, !dbg !4418
  %name16 = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %13, i32 0, i32 0, !dbg !4418
  %14 = load i8*, i8** %name16, align 8, !dbg !4418
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %14) #7, !dbg !4418
  store i32 0, i32* %retval, align 4, !dbg !4419
  br label %return, !dbg !4419

return:                                           ; preds = %if.end15, %if.then14, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !4420
  ret i32 %15, !dbg !4420
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @greybus_probe(%struct.device* %dev) #0 !dbg !4421 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %driver = alloca %struct.greybus_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.greybus_driver*, align 8
  %bundle = alloca %struct.gb_bundle*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp5 = alloca %struct.gb_bundle*, align 8
  %id = alloca %struct.greybus_bundle_id*, align 8
  %retval7 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp47 = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4422, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.declare(metadata %struct.greybus_driver** %driver, metadata !4424, metadata !DIExpression()), !dbg !4425
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4426, metadata !DIExpression()), !dbg !4428
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4428
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !4428
  %1 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !4428
  %2 = bitcast %struct.device_driver* %1 to i8*, !dbg !4428
  store i8* %2, i8** %__mptr, align 8, !dbg !4428
  br label %do.body, !dbg !4428

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4429

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4428
  %add.ptr = getelementptr i8, i8* %3, i64 -32, !dbg !4428
  %4 = bitcast i8* %add.ptr to %struct.greybus_driver*, !dbg !4428
  store %struct.greybus_driver* %4, %struct.greybus_driver** %tmp, align 8, !dbg !4429
  %5 = load %struct.greybus_driver*, %struct.greybus_driver** %tmp, align 8, !dbg !4428
  store %struct.greybus_driver* %5, %struct.greybus_driver** %driver, align 8, !dbg !4425
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle, metadata !4431, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !4433, metadata !DIExpression()), !dbg !4435
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4435
  %7 = bitcast %struct.device* %6 to i8*, !dbg !4435
  store i8* %7, i8** %__mptr2, align 8, !dbg !4435
  br label %do.body3, !dbg !4435

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !4436

do.end4:                                          ; preds = %do.body3
  %8 = load i8*, i8** %__mptr2, align 8, !dbg !4435
  %add.ptr6 = getelementptr i8, i8* %8, i64 0, !dbg !4435
  %9 = bitcast i8* %add.ptr6 to %struct.gb_bundle*, !dbg !4435
  store %struct.gb_bundle* %9, %struct.gb_bundle** %tmp5, align 8, !dbg !4436
  %10 = load %struct.gb_bundle*, %struct.gb_bundle** %tmp5, align 8, !dbg !4435
  store %struct.gb_bundle* %10, %struct.gb_bundle** %bundle, align 8, !dbg !4432
  call void @llvm.dbg.declare(metadata %struct.greybus_bundle_id** %id, metadata !4438, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.declare(metadata i32* %retval7, metadata !4440, metadata !DIExpression()), !dbg !4441
  %11 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4442
  %12 = load %struct.greybus_driver*, %struct.greybus_driver** %driver, align 8, !dbg !4443
  %id_table = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %12, i32 0, i32 3, !dbg !4444
  %13 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %id_table, align 8, !dbg !4444
  %call = call %struct.greybus_bundle_id* @greybus_match_id(%struct.gb_bundle* %11, %struct.greybus_bundle_id* %13) #5, !dbg !4445
  store %struct.greybus_bundle_id* %call, %struct.greybus_bundle_id** %id, align 8, !dbg !4446
  %14 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %id, align 8, !dbg !4447
  %tobool = icmp ne %struct.greybus_bundle_id* %14, null, !dbg !4447
  br i1 %tobool, label %if.end, label %if.then, !dbg !4449

if.then:                                          ; preds = %do.end4
  store i32 -19, i32* %retval, align 4, !dbg !4450
  br label %return, !dbg !4450

if.end:                                           ; preds = %do.end4
  %15 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4451
  %intf = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %15, i32 0, i32 1, !dbg !4452
  %16 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4452
  %dev8 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %16, i32 0, i32 0, !dbg !4453
  %call9 = call i32 @pm_runtime_get_sync(%struct.device* %dev8) #5, !dbg !4454
  store i32 %call9, i32* %retval7, align 4, !dbg !4455
  %17 = load i32, i32* %retval7, align 4, !dbg !4456
  %cmp = icmp slt i32 %17, 0, !dbg !4458
  br i1 %cmp, label %if.then10, label %if.end13, !dbg !4459

if.then10:                                        ; preds = %if.end
  %18 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4460
  %intf11 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %18, i32 0, i32 1, !dbg !4462
  %19 = load %struct.gb_interface*, %struct.gb_interface** %intf11, align 8, !dbg !4462
  %dev12 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %19, i32 0, i32 0, !dbg !4463
  call void @pm_runtime_put_noidle(%struct.device* %dev12) #5, !dbg !4464
  %20 = load i32, i32* %retval7, align 4, !dbg !4465
  store i32 %20, i32* %retval, align 4, !dbg !4466
  br label %return, !dbg !4466

if.end13:                                         ; preds = %if.end
  %21 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4467
  %intf14 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %21, i32 0, i32 1, !dbg !4468
  %22 = load %struct.gb_interface*, %struct.gb_interface** %intf14, align 8, !dbg !4468
  %control = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %22, i32 0, i32 1, !dbg !4469
  %23 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4469
  %24 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4470
  %id15 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %24, i32 0, i32 2, !dbg !4471
  %25 = load i8, i8* %id15, align 8, !dbg !4471
  %call16 = call i32 @gb_control_bundle_activate(%struct.gb_control* %23, i8 zeroext %25) #5, !dbg !4472
  store i32 %call16, i32* %retval7, align 4, !dbg !4473
  %26 = load i32, i32* %retval7, align 4, !dbg !4474
  %tobool17 = icmp ne i32 %26, 0, !dbg !4474
  br i1 %tobool17, label %if.then18, label %if.end22, !dbg !4476

if.then18:                                        ; preds = %if.end13
  %27 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4477
  %intf19 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %27, i32 0, i32 1, !dbg !4479
  %28 = load %struct.gb_interface*, %struct.gb_interface** %intf19, align 8, !dbg !4479
  %dev20 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %28, i32 0, i32 0, !dbg !4480
  %call21 = call i32 @pm_runtime_put(%struct.device* %dev20) #5, !dbg !4481
  %29 = load i32, i32* %retval7, align 4, !dbg !4482
  store i32 %29, i32* %retval, align 4, !dbg !4483
  br label %return, !dbg !4483

if.end22:                                         ; preds = %if.end13
  %30 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4484
  call void @pm_runtime_set_autosuspend_delay(%struct.device* %30, i32 3000) #5, !dbg !4485
  %31 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4486
  call void @pm_runtime_use_autosuspend(%struct.device* %31) #5, !dbg !4487
  %32 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4488
  call void @pm_runtime_get_noresume(%struct.device* %32) #5, !dbg !4489
  %33 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4490
  %call23 = call i32 @pm_runtime_set_active(%struct.device* %33) #5, !dbg !4491
  %34 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4492
  call void @pm_runtime_enable(%struct.device* %34) #5, !dbg !4493
  %35 = load %struct.greybus_driver*, %struct.greybus_driver** %driver, align 8, !dbg !4494
  %probe = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %35, i32 0, i32 1, !dbg !4495
  %36 = load i32 (%struct.gb_bundle*, %struct.greybus_bundle_id*)*, i32 (%struct.gb_bundle*, %struct.greybus_bundle_id*)** %probe, align 8, !dbg !4495
  %37 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4496
  %38 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %id, align 8, !dbg !4497
  %call24 = call i32 %36(%struct.gb_bundle* %37, %struct.greybus_bundle_id* %38) #5, !dbg !4494
  store i32 %call24, i32* %retval7, align 4, !dbg !4498
  %39 = load i32, i32* %retval7, align 4, !dbg !4499
  %tobool25 = icmp ne i32 %39, 0, !dbg !4499
  br i1 %tobool25, label %if.then26, label %if.end62, !dbg !4501

if.then26:                                        ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4502, metadata !DIExpression()), !dbg !4505
  %40 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4505
  %connections = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %40, i32 0, i32 8, !dbg !4505
  %call27 = call i32 @list_empty(%struct.list_head* %connections) #5, !dbg !4505
  %tobool28 = icmp ne i32 %call27, 0, !dbg !4505
  %lnot = xor i1 %tobool28, true, !dbg !4505
  %lnot29 = xor i1 %lnot, true, !dbg !4505
  %lnot30 = xor i1 %lnot29, true, !dbg !4505
  %lnot.ext = zext i1 %lnot30 to i32, !dbg !4505
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4505
  %41 = load i32, i32* %__ret_warn_on, align 4, !dbg !4506
  %tobool31 = icmp ne i32 %41, 0, !dbg !4506
  %lnot32 = xor i1 %tobool31, true, !dbg !4506
  %lnot34 = xor i1 %lnot32, true, !dbg !4506
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !4506
  %conv = sext i32 %lnot.ext35 to i64, !dbg !4506
  %tobool36 = icmp ne i64 %conv, 0, !dbg !4506
  br i1 %tobool36, label %if.then37, label %if.end46, !dbg !4505

if.then37:                                        ; preds = %if.then26
  br label %do.body38, !dbg !4506

do.body38:                                        ; preds = %if.then37
  br label %do.body39, !dbg !4508

do.body39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !4510

do.end40:                                         ; preds = %do.body39
  br label %do.body41, !dbg !4508

do.body41:                                        ; preds = %do.end40
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 207, i32 2305, i64 12) #6, !dbg !4512, !srcloc !4514
  br label %do.end42, !dbg !4512

do.end42:                                         ; preds = %do.body41
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 242) #6, !dbg !4515, !srcloc !4517
  br label %do.body43, !dbg !4508

do.body43:                                        ; preds = %do.end42
  br label %do.end44, !dbg !4518

do.end44:                                         ; preds = %do.body43
  br label %do.end45, !dbg !4508

do.end45:                                         ; preds = %do.end44
  br label %if.end46, !dbg !4508

if.end46:                                         ; preds = %do.end45, %if.then26
  %42 = load i32, i32* %__ret_warn_on, align 4, !dbg !4505
  %tobool48 = icmp ne i32 %42, 0, !dbg !4505
  %lnot49 = xor i1 %tobool48, true, !dbg !4505
  %lnot51 = xor i1 %lnot49, true, !dbg !4505
  %lnot.ext52 = zext i1 %lnot51 to i32, !dbg !4505
  %conv53 = sext i32 %lnot.ext52 to i64, !dbg !4505
  store i64 %conv53, i64* %tmp47, align 8, !dbg !4506
  %43 = load i64, i64* %tmp47, align 8, !dbg !4505
  %44 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4520
  %intf54 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %44, i32 0, i32 1, !dbg !4521
  %45 = load %struct.gb_interface*, %struct.gb_interface** %intf54, align 8, !dbg !4521
  %control55 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %45, i32 0, i32 1, !dbg !4522
  %46 = load %struct.gb_control*, %struct.gb_control** %control55, align 8, !dbg !4522
  %47 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4523
  %id56 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %47, i32 0, i32 2, !dbg !4524
  %48 = load i8, i8* %id56, align 8, !dbg !4524
  %call57 = call i32 @gb_control_bundle_deactivate(%struct.gb_control* %46, i8 zeroext %48) #5, !dbg !4525
  %49 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4526
  call void @pm_runtime_disable(%struct.device* %49) #5, !dbg !4527
  %50 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4528
  %call58 = call i32 @pm_runtime_set_suspended(%struct.device* %50) #5, !dbg !4529
  %51 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4530
  call void @pm_runtime_put_noidle(%struct.device* %51) #5, !dbg !4531
  %52 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4532
  call void @pm_runtime_dont_use_autosuspend(%struct.device* %52) #5, !dbg !4533
  %53 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4534
  %intf59 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %53, i32 0, i32 1, !dbg !4535
  %54 = load %struct.gb_interface*, %struct.gb_interface** %intf59, align 8, !dbg !4535
  %dev60 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %54, i32 0, i32 0, !dbg !4536
  %call61 = call i32 @pm_runtime_put(%struct.device* %dev60) #5, !dbg !4537
  %55 = load i32, i32* %retval7, align 4, !dbg !4538
  store i32 %55, i32* %retval, align 4, !dbg !4539
  br label %return, !dbg !4539

if.end62:                                         ; preds = %if.end22
  %56 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4540
  %intf63 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %56, i32 0, i32 1, !dbg !4541
  %57 = load %struct.gb_interface*, %struct.gb_interface** %intf63, align 8, !dbg !4541
  %dev64 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %57, i32 0, i32 0, !dbg !4542
  %call65 = call i32 @pm_runtime_put(%struct.device* %dev64) #5, !dbg !4543
  store i32 0, i32* %retval, align 4, !dbg !4544
  br label %return, !dbg !4544

return:                                           ; preds = %if.end62, %if.end46, %if.then18, %if.then10, %if.then
  %58 = load i32, i32* %retval, align 4, !dbg !4545
  ret i32 %58, !dbg !4545
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @greybus_remove(%struct.device* %dev) #0 !dbg !4546 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %driver = alloca %struct.greybus_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.greybus_driver*, align 8
  %bundle = alloca %struct.gb_bundle*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp5 = alloca %struct.gb_bundle*, align 8
  %connection = alloca %struct.gb_connection*, align 8
  %retval7 = alloca i32, align 4
  %__mptr8 = alloca i8*, align 8
  %tmp11 = alloca %struct.gb_connection*, align 8
  %__mptr20 = alloca i8*, align 8
  %tmp25 = alloca %struct.gb_connection*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp49 = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4547, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.declare(metadata %struct.greybus_driver** %driver, metadata !4549, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4551, metadata !DIExpression()), !dbg !4553
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4553
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !4553
  %1 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !4553
  %2 = bitcast %struct.device_driver* %1 to i8*, !dbg !4553
  store i8* %2, i8** %__mptr, align 8, !dbg !4553
  br label %do.body, !dbg !4553

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4554

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4553
  %add.ptr = getelementptr i8, i8* %3, i64 -32, !dbg !4553
  %4 = bitcast i8* %add.ptr to %struct.greybus_driver*, !dbg !4553
  store %struct.greybus_driver* %4, %struct.greybus_driver** %tmp, align 8, !dbg !4554
  %5 = load %struct.greybus_driver*, %struct.greybus_driver** %tmp, align 8, !dbg !4553
  store %struct.greybus_driver* %5, %struct.greybus_driver** %driver, align 8, !dbg !4550
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle, metadata !4556, metadata !DIExpression()), !dbg !4557
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !4558, metadata !DIExpression()), !dbg !4560
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4560
  %7 = bitcast %struct.device* %6 to i8*, !dbg !4560
  store i8* %7, i8** %__mptr2, align 8, !dbg !4560
  br label %do.body3, !dbg !4560

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !4561

do.end4:                                          ; preds = %do.body3
  %8 = load i8*, i8** %__mptr2, align 8, !dbg !4560
  %add.ptr6 = getelementptr i8, i8* %8, i64 0, !dbg !4560
  %9 = bitcast i8* %add.ptr6 to %struct.gb_bundle*, !dbg !4560
  store %struct.gb_bundle* %9, %struct.gb_bundle** %tmp5, align 8, !dbg !4561
  %10 = load %struct.gb_bundle*, %struct.gb_bundle** %tmp5, align 8, !dbg !4560
  store %struct.gb_bundle* %10, %struct.gb_bundle** %bundle, align 8, !dbg !4557
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection, metadata !4563, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.declare(metadata i32* %retval7, metadata !4565, metadata !DIExpression()), !dbg !4566
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4567
  %call = call i32 @pm_runtime_get_sync(%struct.device* %11) #5, !dbg !4568
  store i32 %call, i32* %retval7, align 4, !dbg !4569
  %12 = load i32, i32* %retval7, align 4, !dbg !4570
  %cmp = icmp slt i32 %12, 0, !dbg !4572
  br i1 %cmp, label %if.then, label %if.end, !dbg !4573

if.then:                                          ; preds = %do.end4
  %13 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4574
  %14 = load i32, i32* %retval7, align 4, !dbg !4574
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %14) #7, !dbg !4574
  br label %if.end, !dbg !4574

if.end:                                           ; preds = %if.then, %do.end4
  call void @llvm.dbg.declare(metadata i8** %__mptr8, metadata !4575, metadata !DIExpression()), !dbg !4578
  %15 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4578
  %connections = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %15, i32 0, i32 8, !dbg !4578
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %connections, i32 0, i32 0, !dbg !4578
  %16 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4578
  %17 = bitcast %struct.list_head* %16 to i8*, !dbg !4578
  store i8* %17, i8** %__mptr8, align 8, !dbg !4578
  br label %do.body9, !dbg !4578

do.body9:                                         ; preds = %if.end
  br label %do.end10, !dbg !4579

do.end10:                                         ; preds = %do.body9
  %18 = load i8*, i8** %__mptr8, align 8, !dbg !4578
  %add.ptr12 = getelementptr i8, i8* %18, i64 -48, !dbg !4578
  %19 = bitcast i8* %add.ptr12 to %struct.gb_connection*, !dbg !4578
  store %struct.gb_connection* %19, %struct.gb_connection** %tmp11, align 8, !dbg !4579
  %20 = load %struct.gb_connection*, %struct.gb_connection** %tmp11, align 8, !dbg !4578
  store %struct.gb_connection* %20, %struct.gb_connection** %connection, align 8, !dbg !4581
  br label %for.cond, !dbg !4581

for.cond:                                         ; preds = %do.end24, %do.end10
  %21 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4582
  %bundle_links = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %21, i32 0, i32 7, !dbg !4582
  %22 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4582
  %connections13 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %22, i32 0, i32 8, !dbg !4582
  %cmp14 = icmp eq %struct.list_head* %bundle_links, %connections13, !dbg !4582
  %lnot = xor i1 %cmp14, true, !dbg !4582
  br i1 %lnot, label %for.body, label %for.end, !dbg !4581

for.body:                                         ; preds = %for.cond
  %23 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4584
  %call15 = call zeroext i1 @gb_connection_is_offloaded(%struct.gb_connection* %23) #5, !dbg !4587
  br i1 %call15, label %if.then16, label %if.end17, !dbg !4588

if.then16:                                        ; preds = %for.body
  br label %for.inc, !dbg !4589

if.end17:                                         ; preds = %for.body
  %24 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4590
  %intf = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %24, i32 0, i32 1, !dbg !4592
  %25 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4592
  %disconnected = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %25, i32 0, i32 18, !dbg !4593
  %26 = load i8, i8* %disconnected, align 8, !dbg !4593
  %tobool = trunc i8 %26 to i1, !dbg !4593
  br i1 %tobool, label %if.then18, label %if.else, !dbg !4594

if.then18:                                        ; preds = %if.end17
  %27 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4595
  call void @gb_connection_disable_forced(%struct.gb_connection* %27) #5, !dbg !4596
  br label %if.end19, !dbg !4596

if.else:                                          ; preds = %if.end17
  %28 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4597
  call void @gb_connection_disable_rx(%struct.gb_connection* %28) #5, !dbg !4598
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then18
  br label %for.inc, !dbg !4599

for.inc:                                          ; preds = %if.end19, %if.then16
  call void @llvm.dbg.declare(metadata i8** %__mptr20, metadata !4600, metadata !DIExpression()), !dbg !4602
  %29 = load %struct.gb_connection*, %struct.gb_connection** %connection, align 8, !dbg !4602
  %bundle_links21 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %29, i32 0, i32 7, !dbg !4602
  %next22 = getelementptr inbounds %struct.list_head, %struct.list_head* %bundle_links21, i32 0, i32 0, !dbg !4602
  %30 = load %struct.list_head*, %struct.list_head** %next22, align 8, !dbg !4602
  %31 = bitcast %struct.list_head* %30 to i8*, !dbg !4602
  store i8* %31, i8** %__mptr20, align 8, !dbg !4602
  br label %do.body23, !dbg !4602

do.body23:                                        ; preds = %for.inc
  br label %do.end24, !dbg !4603

do.end24:                                         ; preds = %do.body23
  %32 = load i8*, i8** %__mptr20, align 8, !dbg !4602
  %add.ptr26 = getelementptr i8, i8* %32, i64 -48, !dbg !4602
  %33 = bitcast i8* %add.ptr26 to %struct.gb_connection*, !dbg !4602
  store %struct.gb_connection* %33, %struct.gb_connection** %tmp25, align 8, !dbg !4603
  %34 = load %struct.gb_connection*, %struct.gb_connection** %tmp25, align 8, !dbg !4602
  store %struct.gb_connection* %34, %struct.gb_connection** %connection, align 8, !dbg !4582
  br label %for.cond, !dbg !4582, !llvm.loop !4605

for.end:                                          ; preds = %for.cond
  %35 = load %struct.greybus_driver*, %struct.greybus_driver** %driver, align 8, !dbg !4607
  %disconnect = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %35, i32 0, i32 2, !dbg !4608
  %36 = load void (%struct.gb_bundle*)*, void (%struct.gb_bundle*)** %disconnect, align 8, !dbg !4608
  %37 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4609
  call void %36(%struct.gb_bundle* %37) #5, !dbg !4607
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4610, metadata !DIExpression()), !dbg !4612
  %38 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4612
  %connections27 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %38, i32 0, i32 8, !dbg !4612
  %call28 = call i32 @list_empty(%struct.list_head* %connections27) #5, !dbg !4612
  %tobool29 = icmp ne i32 %call28, 0, !dbg !4612
  %lnot30 = xor i1 %tobool29, true, !dbg !4612
  %lnot31 = xor i1 %lnot30, true, !dbg !4612
  %lnot32 = xor i1 %lnot31, true, !dbg !4612
  %lnot.ext = zext i1 %lnot32 to i32, !dbg !4612
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4612
  %39 = load i32, i32* %__ret_warn_on, align 4, !dbg !4613
  %tobool33 = icmp ne i32 %39, 0, !dbg !4613
  %lnot34 = xor i1 %tobool33, true, !dbg !4613
  %lnot36 = xor i1 %lnot34, true, !dbg !4613
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !4613
  %conv = sext i32 %lnot.ext37 to i64, !dbg !4613
  %tobool38 = icmp ne i64 %conv, 0, !dbg !4613
  br i1 %tobool38, label %if.then39, label %if.end48, !dbg !4612

if.then39:                                        ; preds = %for.end
  br label %do.body40, !dbg !4613

do.body40:                                        ; preds = %if.then39
  br label %do.body41, !dbg !4615

do.body41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !4617

do.end42:                                         ; preds = %do.body41
  br label %do.body43, !dbg !4615

do.body43:                                        ; preds = %do.end42
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 254, i32 2305, i64 12) #6, !dbg !4619, !srcloc !4621
  br label %do.end44, !dbg !4619

do.end44:                                         ; preds = %do.body43
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 247) #6, !dbg !4622, !srcloc !4624
  br label %do.body45, !dbg !4615

do.body45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !4625

do.end46:                                         ; preds = %do.body45
  br label %do.end47, !dbg !4615

do.end47:                                         ; preds = %do.end46
  br label %if.end48, !dbg !4615

if.end48:                                         ; preds = %do.end47, %for.end
  %40 = load i32, i32* %__ret_warn_on, align 4, !dbg !4612
  %tobool50 = icmp ne i32 %40, 0, !dbg !4612
  %lnot51 = xor i1 %tobool50, true, !dbg !4612
  %lnot53 = xor i1 %lnot51, true, !dbg !4612
  %lnot.ext54 = zext i1 %lnot53 to i32, !dbg !4612
  %conv55 = sext i32 %lnot.ext54 to i64, !dbg !4612
  store i64 %conv55, i64* %tmp49, align 8, !dbg !4613
  %41 = load i64, i64* %tmp49, align 8, !dbg !4612
  %42 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4627
  %intf56 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %42, i32 0, i32 1, !dbg !4629
  %43 = load %struct.gb_interface*, %struct.gb_interface** %intf56, align 8, !dbg !4629
  %disconnected57 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %43, i32 0, i32 18, !dbg !4630
  %44 = load i8, i8* %disconnected57, align 8, !dbg !4630
  %tobool58 = trunc i8 %44 to i1, !dbg !4630
  br i1 %tobool58, label %if.end62, label %if.then59, !dbg !4631

if.then59:                                        ; preds = %if.end48
  %45 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4632
  %intf60 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %45, i32 0, i32 1, !dbg !4633
  %46 = load %struct.gb_interface*, %struct.gb_interface** %intf60, align 8, !dbg !4633
  %control = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %46, i32 0, i32 1, !dbg !4634
  %47 = load %struct.gb_control*, %struct.gb_control** %control, align 8, !dbg !4634
  %48 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle, align 8, !dbg !4635
  %id = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %48, i32 0, i32 2, !dbg !4636
  %49 = load i8, i8* %id, align 8, !dbg !4636
  %call61 = call i32 @gb_control_bundle_deactivate(%struct.gb_control* %47, i8 zeroext %49) #5, !dbg !4637
  br label %if.end62, !dbg !4637

if.end62:                                         ; preds = %if.then59, %if.end48
  %50 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4638
  call void @pm_runtime_put_noidle(%struct.device* %50) #5, !dbg !4639
  %51 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4640
  call void @pm_runtime_disable(%struct.device* %51) #5, !dbg !4641
  %52 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4642
  %call63 = call i32 @pm_runtime_set_suspended(%struct.device* %52) #5, !dbg !4643
  %53 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4644
  call void @pm_runtime_dont_use_autosuspend(%struct.device* %53) #5, !dbg !4645
  %54 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4646
  call void @pm_runtime_put_noidle(%struct.device* %54) #5, !dbg !4647
  ret i32 0, !dbg !4648
}

; Function Attrs: noredzone
declare dso_local i32 @driver_register(%struct.device_driver*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @greybus_deregister_driver(%struct.greybus_driver* %driver) #0 !dbg !4649 {
entry:
  %driver.addr = alloca %struct.greybus_driver*, align 8
  store %struct.greybus_driver* %driver, %struct.greybus_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.greybus_driver** %driver.addr, metadata !4652, metadata !DIExpression()), !dbg !4653
  %0 = load %struct.greybus_driver*, %struct.greybus_driver** %driver.addr, align 8, !dbg !4654
  %driver1 = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %0, i32 0, i32 4, !dbg !4655
  call void @driver_unregister(%struct.device_driver* %driver1) #5, !dbg !4656
  ret void, !dbg !4657
}

; Function Attrs: noredzone
declare dso_local void @driver_unregister(%struct.device_driver*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @gb_init() #4 section ".init.text" !dbg !4658 {
entry:
  %retval = alloca i32, align 4
  %retval1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4659, metadata !DIExpression()), !dbg !4660
  %call = call i32 @greybus_disabled() #5, !dbg !4661
  %tobool = icmp ne i32 %call, 0, !dbg !4661
  br i1 %tobool, label %if.then, label %if.end, !dbg !4663

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4664
  br label %return, !dbg !4664

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4665

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4666

do.end:                                           ; preds = %do.body
  call void @gb_debugfs_init() #5, !dbg !4668
  %call2 = call i32 @bus_register(%struct.bus_type* @greybus_bus_type) #5, !dbg !4669
  store i32 %call2, i32* %retval1, align 4, !dbg !4670
  %0 = load i32, i32* %retval1, align 4, !dbg !4671
  %tobool3 = icmp ne i32 %0, 0, !dbg !4671
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !4673

if.then4:                                         ; preds = %do.end
  %1 = load i32, i32* %retval1, align 4, !dbg !4674
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %1) #7, !dbg !4674
  br label %error_bus, !dbg !4676

if.end6:                                          ; preds = %do.end
  %call7 = call i32 @gb_hd_init() #5, !dbg !4677
  store i32 %call7, i32* %retval1, align 4, !dbg !4678
  %2 = load i32, i32* %retval1, align 4, !dbg !4679
  %tobool8 = icmp ne i32 %2, 0, !dbg !4679
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !4681

if.then9:                                         ; preds = %if.end6
  %3 = load i32, i32* %retval1, align 4, !dbg !4682
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %3) #7, !dbg !4682
  br label %error_hd, !dbg !4684

if.end11:                                         ; preds = %if.end6
  %call12 = call i32 @gb_operation_init() #5, !dbg !4685
  store i32 %call12, i32* %retval1, align 4, !dbg !4686
  %4 = load i32, i32* %retval1, align 4, !dbg !4687
  %tobool13 = icmp ne i32 %4, 0, !dbg !4687
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !4689

if.then14:                                        ; preds = %if.end11
  %5 = load i32, i32* %retval1, align 4, !dbg !4690
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 %5) #7, !dbg !4690
  br label %error_operation, !dbg !4692

if.end16:                                         ; preds = %if.end11
  store i32 0, i32* %retval, align 4, !dbg !4693
  br label %return, !dbg !4693

error_operation:                                  ; preds = %if.then14
  call void @llvm.dbg.label(metadata !4694), !dbg !4695
  call void @gb_hd_exit() #5, !dbg !4696
  br label %error_hd, !dbg !4696

error_hd:                                         ; preds = %error_operation, %if.then9
  call void @llvm.dbg.label(metadata !4697), !dbg !4698
  call void @bus_unregister(%struct.bus_type* @greybus_bus_type) #5, !dbg !4699
  br label %error_bus, !dbg !4699

error_bus:                                        ; preds = %error_hd, %if.then4
  call void @llvm.dbg.label(metadata !4700), !dbg !4701
  call void @gb_debugfs_cleanup() #5, !dbg !4702
  %6 = load i32, i32* %retval1, align 4, !dbg !4703
  store i32 %6, i32* %retval, align 4, !dbg !4704
  br label %return, !dbg !4704

return:                                           ; preds = %error_bus, %if.end16, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !4705
  ret i32 %7, !dbg !4705
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @gb_exit() #4 section ".exit.text" !dbg !4706 {
entry:
  call void @gb_operation_exit() #5, !dbg !4707
  call void @gb_hd_exit() #5, !dbg !4708
  call void @bus_unregister(%struct.bus_type* @greybus_bus_type) #5, !dbg !4709
  call void @gb_debugfs_cleanup() #5, !dbg !4710
  call void @tracepoint_synchronize_unregister() #5, !dbg !4711
  ret void, !dbg !4712
}

; Function Attrs: noredzone
declare dso_local void @gb_operation_exit() #2

; Function Attrs: noredzone
declare dso_local void @gb_hd_exit() #2

; Function Attrs: noredzone
declare dso_local void @bus_unregister(%struct.bus_type*) #2

; Function Attrs: noredzone
declare dso_local void @gb_debugfs_cleanup() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tracepoint_synchronize_unregister() #0 !dbg !4713 {
entry:
  ret void, !dbg !4715
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @is_gb_bundle(%struct.device* %dev) #0 !dbg !4716 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4719, metadata !DIExpression()), !dbg !4720
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4721
  %type = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 4, !dbg !4722
  %1 = load %struct.device_type*, %struct.device_type** %type, align 8, !dbg !4722
  %cmp = icmp eq %struct.device_type* %1, @greybus_bundle_type, !dbg !4723
  %conv = zext i1 %cmp to i32, !dbg !4723
  ret i32 %conv, !dbg !4724
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.greybus_bundle_id* @greybus_match_id(%struct.gb_bundle* %bundle, %struct.greybus_bundle_id* %id) #0 !dbg !4725 {
entry:
  %retval = alloca %struct.greybus_bundle_id*, align 8
  %bundle.addr = alloca %struct.gb_bundle*, align 8
  %id.addr = alloca %struct.greybus_bundle_id*, align 8
  store %struct.gb_bundle* %bundle, %struct.gb_bundle** %bundle.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle.addr, metadata !4728, metadata !DIExpression()), !dbg !4729
  store %struct.greybus_bundle_id* %id, %struct.greybus_bundle_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.greybus_bundle_id** %id.addr, metadata !4730, metadata !DIExpression()), !dbg !4731
  %0 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %id.addr, align 8, !dbg !4732
  %tobool = icmp ne %struct.greybus_bundle_id* %0, null, !dbg !4732
  br i1 %tobool, label %if.end, label %if.then, !dbg !4734

if.then:                                          ; preds = %entry
  store %struct.greybus_bundle_id* null, %struct.greybus_bundle_id** %retval, align 8, !dbg !4735
  br label %return, !dbg !4735

if.end:                                           ; preds = %entry
  br label %for.cond, !dbg !4736

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %id.addr, align 8, !dbg !4737
  %vendor = getelementptr inbounds %struct.greybus_bundle_id, %struct.greybus_bundle_id* %1, i32 0, i32 1, !dbg !4740
  %2 = load i32, i32* %vendor, align 4, !dbg !4740
  %tobool1 = icmp ne i32 %2, 0, !dbg !4737
  br i1 %tobool1, label %lor.end, label %lor.lhs.false, !dbg !4741

lor.lhs.false:                                    ; preds = %for.cond
  %3 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %id.addr, align 8, !dbg !4742
  %product = getelementptr inbounds %struct.greybus_bundle_id, %struct.greybus_bundle_id* %3, i32 0, i32 2, !dbg !4743
  %4 = load i32, i32* %product, align 8, !dbg !4743
  %tobool2 = icmp ne i32 %4, 0, !dbg !4742
  br i1 %tobool2, label %lor.end, label %lor.lhs.false3, !dbg !4744

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %id.addr, align 8, !dbg !4745
  %class = getelementptr inbounds %struct.greybus_bundle_id, %struct.greybus_bundle_id* %5, i32 0, i32 3, !dbg !4746
  %6 = load i8, i8* %class, align 4, !dbg !4746
  %conv = zext i8 %6 to i32, !dbg !4745
  %tobool4 = icmp ne i32 %conv, 0, !dbg !4745
  br i1 %tobool4, label %lor.end, label %lor.rhs, !dbg !4747

lor.rhs:                                          ; preds = %lor.lhs.false3
  %7 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %id.addr, align 8, !dbg !4748
  %driver_info = getelementptr inbounds %struct.greybus_bundle_id, %struct.greybus_bundle_id* %7, i32 0, i32 4, !dbg !4749
  %8 = load i64, i64* %driver_info, align 8, !dbg !4749
  %tobool5 = icmp ne i64 %8, 0, !dbg !4747
  br label %lor.end, !dbg !4747

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false3, %lor.lhs.false, %for.cond
  %9 = phi i1 [ true, %lor.lhs.false3 ], [ true, %lor.lhs.false ], [ true, %for.cond ], [ %tobool5, %lor.rhs ]
  br i1 %9, label %for.body, label %for.end, !dbg !4750

for.body:                                         ; preds = %lor.end
  %10 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4751
  %11 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %id.addr, align 8, !dbg !4754
  %call = call zeroext i1 @greybus_match_one_id(%struct.gb_bundle* %10, %struct.greybus_bundle_id* %11) #5, !dbg !4755
  br i1 %call, label %if.then6, label %if.end7, !dbg !4756

if.then6:                                         ; preds = %for.body
  %12 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %id.addr, align 8, !dbg !4757
  store %struct.greybus_bundle_id* %12, %struct.greybus_bundle_id** %retval, align 8, !dbg !4758
  br label %return, !dbg !4758

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !4759

for.inc:                                          ; preds = %if.end7
  %13 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %id.addr, align 8, !dbg !4760
  %incdec.ptr = getelementptr %struct.greybus_bundle_id, %struct.greybus_bundle_id* %13, i32 1, !dbg !4760
  store %struct.greybus_bundle_id* %incdec.ptr, %struct.greybus_bundle_id** %id.addr, align 8, !dbg !4760
  br label %for.cond, !dbg !4761, !llvm.loop !4762

for.end:                                          ; preds = %lor.end
  store %struct.greybus_bundle_id* null, %struct.greybus_bundle_id** %retval, align 8, !dbg !4764
  br label %return, !dbg !4764

return:                                           ; preds = %for.end, %if.then6, %if.then
  %14 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %retval, align 8, !dbg !4765
  ret %struct.greybus_bundle_id* %14, !dbg !4765
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @greybus_match_one_id(%struct.gb_bundle* %bundle, %struct.greybus_bundle_id* %id) #0 !dbg !4766 {
entry:
  %retval = alloca i1, align 1
  %bundle.addr = alloca %struct.gb_bundle*, align 8
  %id.addr = alloca %struct.greybus_bundle_id*, align 8
  store %struct.gb_bundle* %bundle, %struct.gb_bundle** %bundle.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_bundle** %bundle.addr, metadata !4769, metadata !DIExpression()), !dbg !4770
  store %struct.greybus_bundle_id* %id, %struct.greybus_bundle_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.greybus_bundle_id** %id.addr, metadata !4771, metadata !DIExpression()), !dbg !4772
  %0 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %id.addr, align 8, !dbg !4773
  %match_flags = getelementptr inbounds %struct.greybus_bundle_id, %struct.greybus_bundle_id* %0, i32 0, i32 0, !dbg !4775
  %1 = load i16, i16* %match_flags, align 8, !dbg !4775
  %conv = zext i16 %1 to i64, !dbg !4773
  %and = and i64 %conv, 1, !dbg !4776
  %tobool = icmp ne i64 %and, 0, !dbg !4776
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4777

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %id.addr, align 8, !dbg !4778
  %vendor = getelementptr inbounds %struct.greybus_bundle_id, %struct.greybus_bundle_id* %2, i32 0, i32 1, !dbg !4779
  %3 = load i32, i32* %vendor, align 4, !dbg !4779
  %4 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4780
  %intf = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %4, i32 0, i32 1, !dbg !4781
  %5 = load %struct.gb_interface*, %struct.gb_interface** %intf, align 8, !dbg !4781
  %vendor_id = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %5, i32 0, i32 11, !dbg !4782
  %6 = load i32, i32* %vendor_id, align 8, !dbg !4782
  %cmp = icmp ne i32 %3, %6, !dbg !4783
  br i1 %cmp, label %if.then, label %if.end, !dbg !4784

if.then:                                          ; preds = %land.lhs.true
  store i1 false, i1* %retval, align 1, !dbg !4785
  br label %return, !dbg !4785

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %id.addr, align 8, !dbg !4786
  %match_flags2 = getelementptr inbounds %struct.greybus_bundle_id, %struct.greybus_bundle_id* %7, i32 0, i32 0, !dbg !4788
  %8 = load i16, i16* %match_flags2, align 8, !dbg !4788
  %conv3 = zext i16 %8 to i64, !dbg !4786
  %and4 = and i64 %conv3, 2, !dbg !4789
  %tobool5 = icmp ne i64 %and4, 0, !dbg !4789
  br i1 %tobool5, label %land.lhs.true6, label %if.end11, !dbg !4790

land.lhs.true6:                                   ; preds = %if.end
  %9 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %id.addr, align 8, !dbg !4791
  %product = getelementptr inbounds %struct.greybus_bundle_id, %struct.greybus_bundle_id* %9, i32 0, i32 2, !dbg !4792
  %10 = load i32, i32* %product, align 8, !dbg !4792
  %11 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4793
  %intf7 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %11, i32 0, i32 1, !dbg !4794
  %12 = load %struct.gb_interface*, %struct.gb_interface** %intf7, align 8, !dbg !4794
  %product_id = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %12, i32 0, i32 12, !dbg !4795
  %13 = load i32, i32* %product_id, align 4, !dbg !4795
  %cmp8 = icmp ne i32 %10, %13, !dbg !4796
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !4797

if.then10:                                        ; preds = %land.lhs.true6
  store i1 false, i1* %retval, align 1, !dbg !4798
  br label %return, !dbg !4798

if.end11:                                         ; preds = %land.lhs.true6, %if.end
  %14 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %id.addr, align 8, !dbg !4799
  %match_flags12 = getelementptr inbounds %struct.greybus_bundle_id, %struct.greybus_bundle_id* %14, i32 0, i32 0, !dbg !4801
  %15 = load i16, i16* %match_flags12, align 8, !dbg !4801
  %conv13 = zext i16 %15 to i64, !dbg !4799
  %and14 = and i64 %conv13, 4, !dbg !4802
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4802
  br i1 %tobool15, label %land.lhs.true16, label %if.end23, !dbg !4803

land.lhs.true16:                                  ; preds = %if.end11
  %16 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %id.addr, align 8, !dbg !4804
  %class = getelementptr inbounds %struct.greybus_bundle_id, %struct.greybus_bundle_id* %16, i32 0, i32 3, !dbg !4805
  %17 = load i8, i8* %class, align 4, !dbg !4805
  %conv17 = zext i8 %17 to i32, !dbg !4804
  %18 = load %struct.gb_bundle*, %struct.gb_bundle** %bundle.addr, align 8, !dbg !4806
  %class18 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %18, i32 0, i32 3, !dbg !4807
  %19 = load i8, i8* %class18, align 1, !dbg !4807
  %conv19 = zext i8 %19 to i32, !dbg !4806
  %cmp20 = icmp ne i32 %conv17, %conv19, !dbg !4808
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !4809

if.then22:                                        ; preds = %land.lhs.true16
  store i1 false, i1* %retval, align 1, !dbg !4810
  br label %return, !dbg !4810

if.end23:                                         ; preds = %land.lhs.true16, %if.end11
  store i1 true, i1* %retval, align 1, !dbg !4811
  br label %return, !dbg !4811

return:                                           ; preds = %if.end23, %if.then22, %if.then10, %if.then
  %20 = load i1, i1* %retval, align 1, !dbg !4812
  ret i1 %20, !dbg !4812
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @is_gb_host_device(%struct.device* %dev) #0 !dbg !4813 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4814, metadata !DIExpression()), !dbg !4815
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4816
  %type = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 4, !dbg !4817
  %1 = load %struct.device_type*, %struct.device_type** %type, align 8, !dbg !4817
  %cmp = icmp eq %struct.device_type* %1, @greybus_hd_type, !dbg !4818
  %conv = zext i1 %cmp to i32, !dbg !4818
  ret i32 %conv, !dbg !4819
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @is_gb_module(%struct.device* %dev) #0 !dbg !4820 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4821, metadata !DIExpression()), !dbg !4822
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4823
  %type = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 4, !dbg !4824
  %1 = load %struct.device_type*, %struct.device_type** %type, align 8, !dbg !4824
  %cmp = icmp eq %struct.device_type* %1, @greybus_module_type, !dbg !4825
  %conv = zext i1 %cmp to i32, !dbg !4825
  ret i32 %conv, !dbg !4826
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @is_gb_interface(%struct.device* %dev) #0 !dbg !4827 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4828, metadata !DIExpression()), !dbg !4829
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4830
  %type = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 4, !dbg !4831
  %1 = load %struct.device_type*, %struct.device_type** %type, align 8, !dbg !4831
  %cmp = icmp eq %struct.device_type* %1, @greybus_interface_type, !dbg !4832
  %conv = zext i1 %cmp to i32, !dbg !4832
  ret i32 %conv, !dbg !4833
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @is_gb_control(%struct.device* %dev) #0 !dbg !4834 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4835, metadata !DIExpression()), !dbg !4836
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4837
  %type = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 4, !dbg !4838
  %1 = load %struct.device_type*, %struct.device_type** %type, align 8, !dbg !4838
  %cmp = icmp eq %struct.device_type* %1, @greybus_control_type, !dbg !4839
  %conv = zext i1 %cmp to i32, !dbg !4839
  ret i32 %conv, !dbg !4840
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @is_gb_svc(%struct.device* %dev) #0 !dbg !4841 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4842, metadata !DIExpression()), !dbg !4843
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4844
  %type = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 4, !dbg !4845
  %1 = load %struct.device_type*, %struct.device_type** %type, align 8, !dbg !4845
  %cmp = icmp eq %struct.device_type* %1, @greybus_svc_type, !dbg !4846
  %conv = zext i1 %cmp to i32, !dbg !4846
  ret i32 %conv, !dbg !4847
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @dev_driver_string(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !4848 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4851, metadata !DIExpression()), !dbg !4852
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4853
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !4855
  %1 = load i8*, i8** %init_name, align 8, !dbg !4855
  %tobool = icmp ne i8* %1, null, !dbg !4853
  br i1 %tobool, label %if.then, label %if.end, !dbg !4856

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4857
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !4858
  %3 = load i8*, i8** %init_name1, align 8, !dbg !4858
  store i8* %3, i8** %retval, align 8, !dbg !4859
  br label %return, !dbg !4859

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4860
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !4861
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #5, !dbg !4862
  store i8* %call, i8** %retval, align 8, !dbg !4863
  br label %return, !dbg !4863

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !4864
  ret i8* %5, !dbg !4864
}

; Function Attrs: noredzone
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !4865 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !4870, metadata !DIExpression()), !dbg !4871
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !4872
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !4873
  %1 = load i8*, i8** %name, align 8, !dbg !4873
  ret i8* %1, !dbg !4874
}

; Function Attrs: noredzone
declare dso_local void @gb_hd_shutdown(%struct.gb_host_device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_get_sync(%struct.device* %dev) #0 !dbg !4875 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4877, metadata !DIExpression()), !dbg !4878
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4879
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 4) #5, !dbg !4880
  ret i32 %call, !dbg !4881
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_put_noidle(%struct.device* %dev) #0 !dbg !4882 {
entry:
  %v.addr.i5.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i5.i.i.i, metadata !4883, metadata !DIExpression()), !dbg !4889
  %old.addr.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %old.addr.i.i.i.i, metadata !4903, metadata !DIExpression()), !dbg !4904
  %new.addr.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %new.addr.i.i.i.i, metadata !4905, metadata !DIExpression()), !dbg !4906
  %success.i.i.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %success.i.i.i.i, metadata !4907, metadata !DIExpression()), !dbg !4909
  %_old.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %_old.i.i.i.i, metadata !4910, metadata !DIExpression()), !dbg !4909
  %__old.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__old.i.i.i.i, metadata !4911, metadata !DIExpression()), !dbg !4909
  %__new.i.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__new.i.i.i.i, metadata !4912, metadata !DIExpression()), !dbg !4909
  %__ptr.i.i.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %__ptr.i.i.i.i, metadata !4913, metadata !DIExpression()), !dbg !4909
  %tmp.i.i.i.i = alloca i64, align 8
  %v.addr.i.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i.i, metadata !4914, metadata !DIExpression()), !dbg !4920
  %v.addr.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i, metadata !4922, metadata !DIExpression()), !dbg !4923
  %a.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i.i.i, metadata !4924, metadata !DIExpression()), !dbg !4925
  %u.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i.i.i, metadata !4926, metadata !DIExpression()), !dbg !4927
  %c.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %c.i.i.i, metadata !4928, metadata !DIExpression()), !dbg !4929
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4930, metadata !DIExpression()), !dbg !4931
  %a.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i.i, metadata !4932, metadata !DIExpression()), !dbg !4933
  %u.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i.i, metadata !4934, metadata !DIExpression()), !dbg !4935
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4936, metadata !DIExpression()), !dbg !4944
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4946, metadata !DIExpression()), !dbg !4947
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !4948, metadata !DIExpression()), !dbg !4949
  %a.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr.i, metadata !4950, metadata !DIExpression()), !dbg !4951
  %u.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %u.addr.i, metadata !4952, metadata !DIExpression()), !dbg !4953
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4954, metadata !DIExpression()), !dbg !4955
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4956
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !4957
  %usage_count = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 13, !dbg !4958
  store %struct.atomic_t* %usage_count, %struct.atomic_t** %v.addr.i, align 8
  store i32 -1, i32* %a.addr.i, align 4
  store i32 0, i32* %u.addr.i, align 4
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4959
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !4959
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4960
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !4961
  %conv.i.i = trunc i64 %4 to i32, !dbg !4961
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i.i) #8, !dbg !4962
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4963
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !4963
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #8, !dbg !4963
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4964
  %8 = load i32, i32* %a.addr.i, align 4, !dbg !4965
  %9 = load i32, i32* %u.addr.i, align 4, !dbg !4966
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %8, i32* %a.addr.i.i, align 4
  store i32 %9, i32* %u.addr.i.i, align 4
  %10 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4967
  %11 = load i32, i32* %a.addr.i.i, align 4, !dbg !4968
  %12 = load i32, i32* %u.addr.i.i, align 4, !dbg !4969
  store %struct.atomic_t* %10, %struct.atomic_t** %v.addr.i.i.i, align 8
  store i32 %11, i32* %a.addr.i.i.i, align 4
  store i32 %12, i32* %u.addr.i.i.i, align 4
  %13 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !4970
  store %struct.atomic_t* %13, %struct.atomic_t** %v.addr.i.i.i.i, align 8
  %14 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i.i, align 8, !dbg !4971
  %counter.i.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %14, i32 0, i32 0, !dbg !4971
  %15 = load volatile i32, i32* %counter.i.i.i.i, align 4, !dbg !4971
  store i32 %15, i32* %c.i.i.i, align 4, !dbg !4929
  br label %do.body.i.i.i, !dbg !4972

do.body.i.i.i:                                    ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i, %entry
  %16 = load i32, i32* %c.i.i.i, align 4, !dbg !4973
  %17 = load i32, i32* %u.addr.i.i.i, align 4, !dbg !4973
  %cmp.i.i.i = icmp eq i32 %16, %17, !dbg !4973
  %lnot.i.i.i = xor i1 %cmp.i.i.i, true, !dbg !4973
  %lnot.ext.i.i.i = zext i1 %cmp.i.i.i to i32, !dbg !4973
  %conv.i.i.i = sext i32 %lnot.ext.i.i.i to i64, !dbg !4973
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i, !dbg !4976

if.then.i.i.i:                                    ; preds = %do.body.i.i.i
  br label %atomic_add_unless.exit, !dbg !4977

if.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %18 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !4978
  %19 = load i32, i32* %c.i.i.i, align 4, !dbg !4979
  %20 = load i32, i32* %a.addr.i.i.i, align 4, !dbg !4980
  %add.i.i.i = add i32 %19, %20, !dbg !4981
  store %struct.atomic_t* %18, %struct.atomic_t** %v.addr.i5.i.i.i, align 8
  store i32* %c.i.i.i, i32** %old.addr.i.i.i.i, align 8
  store i32 %add.i.i.i, i32* %new.addr.i.i.i.i, align 4
  %21 = load i32*, i32** %old.addr.i.i.i.i, align 8, !dbg !4909
  store i32* %21, i32** %_old.i.i.i.i, align 8, !dbg !4909
  %22 = load i32*, i32** %_old.i.i.i.i, align 8, !dbg !4909
  %23 = load i32, i32* %22, align 4, !dbg !4909
  store i32 %23, i32* %__old.i.i.i.i, align 4, !dbg !4909
  %24 = load i32, i32* %new.addr.i.i.i.i, align 4, !dbg !4909
  store i32 %24, i32* %__new.i.i.i.i, align 4, !dbg !4909
  %25 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i5.i.i.i, align 8, !dbg !4909
  %counter.i6.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %25, i32 0, i32 0, !dbg !4909
  store i32* %counter.i6.i.i.i, i32** %__ptr.i.i.i.i, align 8, !dbg !4909
  %26 = load i32*, i32** %__ptr.i.i.i.i, align 8, !dbg !4909
  %27 = load i32, i32* %__old.i.i.i.i, align 4, !dbg !4909
  %28 = load i32, i32* %__new.i.i.i.i, align 4, !dbg !4909
  %29 = call { i8, i32 } asm sideeffect "cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %26, i32 %28, i32* %26, i32 %27) #6, !dbg !4909, !srcloc !4982
  %asmresult.i.i.i.i = extractvalue { i8, i32 } %29, 0, !dbg !4909
  %asmresult1.i.i.i.i = extractvalue { i8, i32 } %29, 1, !dbg !4909
  store i8 %asmresult.i.i.i.i, i8* %success.i.i.i.i, align 1, !dbg !4909
  store i32 %asmresult1.i.i.i.i, i32* %__old.i.i.i.i, align 4, !dbg !4909
  %30 = load i8, i8* %success.i.i.i.i, align 1, !dbg !4983
  %tobool.i.i.i.i = trunc i8 %30 to i1, !dbg !4983
  %lnot.i.i.i.i = xor i1 %tobool.i.i.i.i, true, !dbg !4983
  %lnot3.i.i.i.i = xor i1 %tobool.i.i.i.i, true, !dbg !4983
  %lnot.ext.i.i.i.i = zext i1 %lnot3.i.i.i.i to i32, !dbg !4983
  %conv.i.i.i.i = sext i32 %lnot.ext.i.i.i.i to i64, !dbg !4983
  br i1 %lnot3.i.i.i.i, label %if.then.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i, !dbg !4909

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  %31 = load i32, i32* %__old.i.i.i.i, align 4, !dbg !4983
  %32 = load i32*, i32** %_old.i.i.i.i, align 8, !dbg !4983
  store i32 %31, i32* %32, align 4, !dbg !4983
  br label %arch_atomic_try_cmpxchg.exit.i.i.i, !dbg !4983

arch_atomic_try_cmpxchg.exit.i.i.i:               ; preds = %if.then.i.i.i.i, %if.end.i.i.i
  %33 = load i8, i8* %success.i.i.i.i, align 1, !dbg !4909
  %tobool5.i.i.i.i = trunc i8 %33 to i1, !dbg !4909
  %lnot6.i.i.i.i = xor i1 %tobool5.i.i.i.i, true, !dbg !4909
  %lnot.ext9.i.i.i.i = zext i1 %tobool5.i.i.i.i to i32, !dbg !4909
  %conv10.i.i.i.i = sext i32 %lnot.ext9.i.i.i.i to i64, !dbg !4909
  store i64 %conv10.i.i.i.i, i64* %tmp.i.i.i.i, align 8, !dbg !4983
  %34 = load i64, i64* %tmp.i.i.i.i, align 8, !dbg !4909
  %tobool11.i.i.i.i = icmp ne i64 %34, 0, !dbg !4985
  %lnot3.i.i.i = xor i1 %tobool11.i.i.i.i, true, !dbg !4986
  br i1 %lnot3.i.i.i, label %do.body.i.i.i, label %atomic_add_unless.exit, !dbg !4987, !llvm.loop !4988

atomic_add_unless.exit:                           ; preds = %if.then.i.i.i, %arch_atomic_try_cmpxchg.exit.i.i.i
  %35 = load i32, i32* %c.i.i.i, align 4, !dbg !4990
  %36 = load i32, i32* %u.addr.i.i, align 4, !dbg !4991
  %cmp.i.i = icmp ne i32 %35, %36, !dbg !4992
  ret void, !dbg !4993
}

; Function Attrs: noredzone
declare dso_local i32 @gb_control_bundle_activate(%struct.gb_control*, i8 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_put(%struct.device* %dev) #0 !dbg !4994 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4995, metadata !DIExpression()), !dbg !4996
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4997
  %call = call i32 @__pm_runtime_idle(%struct.device* %0, i32 5) #5, !dbg !4998
  ret i32 %call, !dbg !4999
}

; Function Attrs: noredzone
declare dso_local void @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_use_autosuspend(%struct.device* %dev) #0 !dbg !5000 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5001, metadata !DIExpression()), !dbg !5002
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5003
  call void @__pm_runtime_use_autosuspend(%struct.device* %0, i1 zeroext true) #5, !dbg !5004
  ret void, !dbg !5005
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_get_noresume(%struct.device* %dev) #0 !dbg !5006 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5007, metadata !DIExpression()), !dbg !5011
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !4936, metadata !DIExpression()), !dbg !5015
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4946, metadata !DIExpression()), !dbg !5017
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5018, metadata !DIExpression()), !dbg !5019
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5020, metadata !DIExpression()), !dbg !5021
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5022
  %power = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 11, !dbg !5023
  %usage_count = getelementptr inbounds %struct.dev_pm_info, %struct.dev_pm_info* %power, i32 0, i32 13, !dbg !5024
  store %struct.atomic_t* %usage_count, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5025
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !5025
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5026
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !5027
  %conv.i.i = trunc i64 %4 to i32, !dbg !5027
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i.i) #8, !dbg !5028
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5029
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !5029
  call void @kcsan_check_access(i8* %5, i64 %6, i32 7) #8, !dbg !5029
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5030
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5031
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !5032
  call void asm sideeffect "incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32* %counter.i.i) #6, !dbg !5033, !srcloc !5034
  ret void, !dbg !5035
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_set_active(%struct.device* %dev) #0 !dbg !5036 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5037, metadata !DIExpression()), !dbg !5038
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5039
  %call = call i32 @__pm_runtime_set_status(%struct.device* %0, i32 0) #5, !dbg !5040
  ret i32 %call, !dbg !5041
}

; Function Attrs: noredzone
declare dso_local void @pm_runtime_enable(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !5042 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5048, metadata !DIExpression()), !dbg !5049
  br label %do.body, !dbg !5050

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5052

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5050
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !5050
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5050
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !5052
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !5050
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5054
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !5055
  %conv = zext i1 %cmp to i32, !dbg !5055
  ret i32 %conv, !dbg !5056
}

; Function Attrs: noredzone
declare dso_local i32 @gb_control_bundle_deactivate(%struct.gb_control*, i8 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_disable(%struct.device* %dev) #0 !dbg !5057 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5058, metadata !DIExpression()), !dbg !5059
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5060
  call void @__pm_runtime_disable(%struct.device* %0, i1 zeroext true) #5, !dbg !5061
  ret void, !dbg !5062
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_set_suspended(%struct.device* %dev) #0 !dbg !5063 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5064, metadata !DIExpression()), !dbg !5065
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5066
  %call = call i32 @__pm_runtime_set_status(%struct.device* %0, i32 2) #5, !dbg !5067
  ret i32 %call, !dbg !5068
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_dont_use_autosuspend(%struct.device* %dev) #0 !dbg !5069 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5070, metadata !DIExpression()), !dbg !5071
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5072
  call void @__pm_runtime_use_autosuspend(%struct.device* %0, i1 zeroext false) #5, !dbg !5073
  ret void, !dbg !5074
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_resume(%struct.device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5075 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5079, metadata !DIExpression()), !dbg !5080
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5081, metadata !DIExpression()), !dbg !5082
  ret i1 true, !dbg !5083
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5084 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5088, metadata !DIExpression()), !dbg !5089
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5090, metadata !DIExpression()), !dbg !5091
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5092, metadata !DIExpression()), !dbg !5093
  ret void, !dbg !5094
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_idle(%struct.device*, i32) #2

; Function Attrs: noredzone
declare dso_local void @__pm_runtime_use_autosuspend(%struct.device*, i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_set_status(%struct.device*, i32) #2

; Function Attrs: noredzone
declare dso_local void @__pm_runtime_disable(%struct.device*, i1 zeroext) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @gb_connection_is_offloaded(%struct.gb_connection* %connection) #0 !dbg !5095 {
entry:
  %connection.addr = alloca %struct.gb_connection*, align 8
  store %struct.gb_connection* %connection, %struct.gb_connection** %connection.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gb_connection** %connection.addr, metadata !5098, metadata !DIExpression()), !dbg !5099
  %0 = load %struct.gb_connection*, %struct.gb_connection** %connection.addr, align 8, !dbg !5100
  %flags = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %0, i32 0, i32 9, !dbg !5101
  %1 = load i64, i64* %flags, align 8, !dbg !5101
  %and = and i64 %1, 4, !dbg !5102
  %tobool = icmp ne i64 %and, 0, !dbg !5100
  ret i1 %tobool, !dbg !5103
}

; Function Attrs: noredzone
declare dso_local void @gb_connection_disable_forced(%struct.gb_connection*) #2

; Function Attrs: noredzone
declare dso_local void @gb_connection_disable_rx(%struct.gb_connection*) #2

; Function Attrs: noredzone
declare dso_local void @gb_debugfs_init() #2

; Function Attrs: noredzone
declare dso_local i32 @bus_register(%struct.bus_type*) #2

; Function Attrs: noredzone
declare dso_local i32 @gb_hd_init() #2

; Function Attrs: noredzone
declare dso_local i32 @gb_operation_init() #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone }
attributes #6 = { nounwind }
attributes #7 = { cold noredzone }
attributes #8 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4093, !4094, !4095, !4096}
!llvm.ident = !{!4097}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_nogreybus", scope: !2, file: !3, line: 22, type: !4090, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !123, globals: !4011, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/greybus/core.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !99, !103, !110, !118}
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gb_svc_state", file: !94, line: 21, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/greybus/svc.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "GB_SVC_STATE_RESET", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "GB_SVC_STATE_PROTOCOL_VERSION", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "GB_SVC_STATE_SVC_HELLO", value: 2, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gb_svc_watchdog_bite", file: !94, line: 27, baseType: !7, size: 32, elements: !100)
!100 = !{!101, !102}
!101 = !DIEnumerator(name: "GB_SVC_WATCHDOG_BITE_RESET_UNIPRO", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "GB_SVC_WATCHDOG_BITE_PANIC_KERNEL", value: 1, isUnsigned: true)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gb_connection_state", file: !104, line: 27, baseType: !7, size: 32, elements: !105)
!104 = !DIFile(filename: "./include/linux/greybus/connection.h", directory: "/home/lizy2001/genbc/linux")
!105 = !{!106, !107, !108, !109}
!106 = !DIEnumerator(name: "GB_CONNECTION_STATE_DISABLED", value: 0, isUnsigned: true)
!107 = !DIEnumerator(name: "GB_CONNECTION_STATE_ENABLED_TX", value: 1, isUnsigned: true)
!108 = !DIEnumerator(name: "GB_CONNECTION_STATE_ENABLED", value: 2, isUnsigned: true)
!109 = !DIEnumerator(name: "GB_CONNECTION_STATE_DISCONNECTING", value: 3, isUnsigned: true)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gb_interface_type", file: !111, line: 15, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/greybus/interface.h", directory: "/home/lizy2001/genbc/linux")
!112 = !{!113, !114, !115, !116, !117}
!113 = !DIEnumerator(name: "GB_INTERFACE_TYPE_INVALID", value: 0, isUnsigned: true)
!114 = !DIEnumerator(name: "GB_INTERFACE_TYPE_UNKNOWN", value: 1, isUnsigned: true)
!115 = !DIEnumerator(name: "GB_INTERFACE_TYPE_DUMMY", value: 2, isUnsigned: true)
!116 = !DIEnumerator(name: "GB_INTERFACE_TYPE_UNIPRO", value: 3, isUnsigned: true)
!117 = !DIEnumerator(name: "GB_INTERFACE_TYPE_GREYBUS", value: 4, isUnsigned: true)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !119, line: 10, baseType: !7, size: 32, elements: !120)
!119 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!120 = !{!121, !122}
!121 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!123 = !{!124, !125, !138, !3773, !3947, !3757, !3762, !3879, !4003, !640, !4006, !4008, !3769}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "greybus_driver", file: !127, line: 56, size: 1408, elements: !128)
!127 = !DIFile(filename: "./include/linux/greybus.h", directory: "/home/lizy2001/genbc/linux")
!128 = !{!129, !133, !3997, !4001, !4002}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !126, file: !127, line: 57, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !126, file: !127, line: 59, baseType: !134, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!137, !138, !3987}
!137 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_bundle", file: !140, line: 20, size: 6144, elements: !141)
!140 = !DIFile(filename: "./include/linux/greybus/bundle.h", directory: "/home/lizy2001/genbc/linux")
!141 = !{!142, !3756, !3970, !3971, !3972, !3973, !3974, !3975, !3983, !3984, !3986}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !139, file: !140, line: 21, baseType: !143, size: 5568)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !144)
!144 = !{!145, !3309, !3311, !3314, !3315, !3366, !3457, !3458, !3459, !3460, !3461, !3470, !3575, !3588, !3591, !3592, !3596, !3598, !3599, !3600, !3604, !3610, !3611, !3614, !3618, !3708, !3709, !3710, !3711, !3712, !3744, !3745, !3746, !3749, !3752, !3753, !3754, !3755}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !143, file: !73, line: 462, baseType: !146, size: 512)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !147, line: 64, size: 512, elements: !148)
!147 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!148 = !{!149, !150, !157, !159, !219, !3160, !3299, !3304, !3305, !3306, !3307, !3308}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !146, file: !147, line: 65, baseType: !130, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !146, file: !147, line: 66, baseType: !151, size: 128, offset: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !152, line: 178, size: 128, elements: !153)
!152 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!153 = !{!154, !156}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !151, file: !152, line: 179, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !151, file: !152, line: 179, baseType: !155, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !146, file: !147, line: 67, baseType: !158, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !146, file: !147, line: 68, baseType: !160, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !147, line: 192, size: 704, elements: !162)
!162 = !{!163, !164, !180, !181}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !161, file: !147, line: 193, baseType: !151, size: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !161, file: !147, line: 194, baseType: !165, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !166, line: 83, baseType: !167)
!166 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !166, line: 71, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, scope: !167, file: !166, line: 72, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !166, line: 72, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !170, file: !166, line: 73, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !166, line: 20, elements: !174)
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !173, file: !166, line: 21, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !177, line: 25, baseType: !178)
!177 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 25, elements: !179)
!179 = !{}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !161, file: !147, line: 195, baseType: !146, size: 512, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !161, file: !147, line: 196, baseType: !182, size: 64, offset: 640)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !147, line: 156, size: 192, elements: !185)
!185 = !{!186, !191, !196}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !184, file: !147, line: 157, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!137, !160, !158}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !184, file: !147, line: 158, baseType: !192, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!130, !160, !158}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !184, file: !147, line: 159, baseType: !197, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!137, !160, !158, !201}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !147, line: 148, size: 20736, elements: !203)
!203 = !{!204, !209, !213, !214, !218}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !202, file: !147, line: 149, baseType: !205, size: 192)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 192, elements: !207)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!207 = !{!208}
!208 = !DISubrange(count: 3)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !202, file: !147, line: 150, baseType: !210, size: 4096, offset: 192)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 4096, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !202, file: !147, line: 151, baseType: !137, size: 32, offset: 4288)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !202, file: !147, line: 152, baseType: !215, size: 16384, offset: 4320)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 16384, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 2048)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !202, file: !147, line: 153, baseType: !137, size: 32, offset: 20704)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !146, file: !147, line: 69, baseType: !220, size: 64, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !147, line: 138, size: 448, elements: !222)
!222 = !{!223, !227, !257, !259, !3122, !3150, !3154}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !221, file: !147, line: 139, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !158}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !221, file: !147, line: 140, baseType: !228, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !231, line: 230, size: 128, elements: !232)
!231 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!232 = !{!233, !249}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !230, file: !231, line: 231, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!237, !158, !242, !206}
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !152, line: 60, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !239, line: 73, baseType: !240)
!239 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !239, line: 15, baseType: !241)
!241 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !231, line: 30, size: 128, elements: !244)
!244 = !{!245, !246}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !243, file: !231, line: 31, baseType: !130, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !243, file: !231, line: 32, baseType: !247, size: 16, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !152, line: 19, baseType: !248)
!248 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !230, file: !231, line: 232, baseType: !250, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!237, !158, !242, !130, !253}
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !152, line: 55, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !239, line: 72, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !239, line: 16, baseType: !256)
!256 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !221, file: !147, line: 141, baseType: !258, size: 64, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !221, file: !147, line: 142, baseType: !260, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !231, line: 84, size: 320, elements: !264)
!264 = !{!265, !266, !270, !3119, !3120}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !263, file: !231, line: 85, baseType: !130, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !263, file: !231, line: 86, baseType: !267, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!247, !158, !242, !137}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !263, file: !231, line: 88, baseType: !271, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!247, !158, !274, !137}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !231, line: 168, size: 448, elements: !276)
!276 = !{!277, !278, !279, !280, !3114, !3115}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !275, file: !231, line: 169, baseType: !243, size: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !275, file: !231, line: 170, baseType: !253, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !275, file: !231, line: 171, baseType: !124, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !275, file: !231, line: 172, baseType: !281, size: 64, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!237, !284, !158, !274, !206, !463, !253}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !286)
!286 = !{!287, !305, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3097, !3098, !3107, !3108, !3109, !3110, !3111, !3112, !3113}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !285, file: !44, line: 920, baseType: !288, size: 128)
!288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !285, file: !44, line: 917, size: 128, elements: !289)
!289 = !{!290, !296}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !288, file: !44, line: 918, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !292, line: 58, size: 64, elements: !293)
!292 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !291, file: !292, line: 59, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !288, file: !44, line: 919, baseType: !297, size: 128, align: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !152, line: 216, size: 128, align: 64, elements: !298)
!298 = !{!299, !301}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !297, file: !152, line: 217, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !297, file: !152, line: 218, baseType: !302, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !300}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !285, file: !44, line: 921, baseType: !306, size: 128, offset: 128)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !307, line: 8, size: 128, elements: !308)
!307 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!308 = !{!309, !313}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !306, file: !307, line: 9, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !312, line: 18, flags: DIFlagFwdDecl)
!312 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!313 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !306, file: !307, line: 10, baseType: !314, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !312, line: 89, size: 1536, elements: !316)
!316 = !{!317, !318, !328, !336, !337, !360, !3047, !3049, !3061, !3062, !3063, !3064, !3065, !3071, !3072, !3073}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !315, file: !312, line: 91, baseType: !7, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !315, file: !312, line: 92, baseType: !319, size: 32, offset: 32)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !320, line: 277, baseType: !321)
!320 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !320, line: 277, size: 32, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !321, file: !320, line: 277, baseType: !324, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !320, line: 70, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !320, line: 65, size: 32, elements: !326)
!326 = !{!327}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !325, file: !320, line: 66, baseType: !7, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !315, file: !312, line: 93, baseType: !329, size: 128, offset: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !330, line: 38, size: 128, elements: !331)
!330 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!331 = !{!332, !334}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !329, file: !330, line: 39, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !329, file: !330, line: 39, baseType: !335, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !315, file: !312, line: 94, baseType: !314, size: 64, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !315, file: !312, line: 95, baseType: !338, size: 128, offset: 256)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !312, line: 47, size: 128, elements: !339)
!339 = !{!340, !356}
!340 = !DIDerivedType(tag: DW_TAG_member, scope: !338, file: !312, line: 48, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !338, file: !312, line: 48, size: 64, elements: !342)
!342 = !{!343, !352}
!343 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !312, line: 49, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !341, file: !312, line: 49, size: 64, elements: !345)
!345 = !{!346, !351}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !344, file: !312, line: 50, baseType: !347, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !348, line: 21, baseType: !349)
!348 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !350, line: 27, baseType: !7)
!350 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!351 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !344, file: !312, line: 50, baseType: !347, size: 32, offset: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !341, file: !312, line: 52, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !348, line: 23, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !350, line: 31, baseType: !355)
!355 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !338, file: !312, line: 54, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !315, file: !312, line: 96, baseType: !361, size: 64, offset: 384)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !363)
!363 = !{!364, !365, !366, !374, !381, !382, !530, !2758, !2759, !2760, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !3023, !3031, !3032, !3033, !3043, !3044, !3045, !3046}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !362, file: !44, line: 611, baseType: !247, size: 16)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !362, file: !44, line: 612, baseType: !248, size: 16, offset: 16)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !362, file: !44, line: 613, baseType: !367, size: 32, offset: 32)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !368, line: 23, baseType: !369)
!368 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 21, size: 32, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !369, file: !368, line: 22, baseType: !372, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !152, line: 32, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !239, line: 49, baseType: !7)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !362, file: !44, line: 614, baseType: !375, size: 32, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !368, line: 28, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 26, size: 32, elements: !377)
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !376, file: !368, line: 27, baseType: !379, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !152, line: 33, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !239, line: 50, baseType: !7)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !362, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !362, file: !44, line: 622, baseType: !383, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !386)
!386 = !{!387, !391, !404, !408, !414, !418, !424, !428, !432, !436, !440, !441, !447, !451, !477, !506, !510, !516, !521, !525, !526}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !385, file: !44, line: 1865, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!314, !361, !314, !7}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !385, file: !44, line: 1866, baseType: !392, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!130, !314, !361, !395}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !397, line: 10, size: 128, elements: !398)
!397 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!398 = !{!399, !403}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !396, file: !397, line: 11, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !124}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !396, file: !397, line: 12, baseType: !124, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !385, file: !44, line: 1867, baseType: !405, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!137, !361, !137}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !385, file: !44, line: 1868, baseType: !409, size: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!412, !361, !137}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !385, file: !44, line: 1870, baseType: !415, size: 64, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!137, !314, !206, !137}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !385, file: !44, line: 1872, baseType: !419, size: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!137, !361, !314, !247, !422}
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !152, line: 30, baseType: !423)
!423 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !385, file: !44, line: 1873, baseType: !425, size: 64, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!137, !314, !361, !314}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !385, file: !44, line: 1874, baseType: !429, size: 64, offset: 448)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!137, !361, !314}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !385, file: !44, line: 1875, baseType: !433, size: 64, offset: 512)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!137, !361, !314, !130}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !385, file: !44, line: 1876, baseType: !437, size: 64, offset: 576)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!137, !361, !314, !247}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !385, file: !44, line: 1877, baseType: !429, size: 64, offset: 640)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !385, file: !44, line: 1878, baseType: !442, size: 64, offset: 704)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!137, !361, !314, !247, !445}
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !152, line: 16, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !152, line: 13, baseType: !347)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !385, file: !44, line: 1879, baseType: !448, size: 64, offset: 768)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!137, !361, !314, !361, !314, !7}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !385, file: !44, line: 1881, baseType: !452, size: 64, offset: 832)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!137, !314, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !457)
!457 = !{!458, !459, !460, !461, !462, !466, !474, !475, !476}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !456, file: !44, line: 220, baseType: !7, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !456, file: !44, line: 221, baseType: !247, size: 16, offset: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !456, file: !44, line: 222, baseType: !367, size: 32, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !456, file: !44, line: 223, baseType: !375, size: 32, offset: 96)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !456, file: !44, line: 224, baseType: !463, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !152, line: 46, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !239, line: 88, baseType: !465)
!465 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !456, file: !44, line: 225, baseType: !467, size: 128, offset: 192)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !468, line: 13, size: 128, elements: !469)
!468 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!469 = !{!470, !473}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !467, file: !468, line: 14, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !468, line: 8, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !350, line: 30, baseType: !465)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !467, file: !468, line: 15, baseType: !241, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !456, file: !44, line: 226, baseType: !467, size: 128, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !456, file: !44, line: 227, baseType: !467, size: 128, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !456, file: !44, line: 234, baseType: !284, size: 64, offset: 576)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !385, file: !44, line: 1882, baseType: !478, size: 64, offset: 896)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!137, !481, !483, !347, !7}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !485, line: 22, size: 1152, elements: !486)
!485 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!486 = !{!487, !488, !489, !490, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !484, file: !485, line: 23, baseType: !347, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !484, file: !485, line: 24, baseType: !247, size: 16, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !484, file: !485, line: 25, baseType: !7, size: 32, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !484, file: !485, line: 26, baseType: !491, size: 32, offset: 96)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !152, line: 104, baseType: !347)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !484, file: !485, line: 27, baseType: !353, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !484, file: !485, line: 28, baseType: !353, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !484, file: !485, line: 37, baseType: !353, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !484, file: !485, line: 38, baseType: !445, size: 32, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !484, file: !485, line: 39, baseType: !445, size: 32, offset: 352)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !484, file: !485, line: 40, baseType: !367, size: 32, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !484, file: !485, line: 41, baseType: !375, size: 32, offset: 416)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !484, file: !485, line: 42, baseType: !463, size: 64, offset: 448)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !484, file: !485, line: 43, baseType: !467, size: 128, offset: 512)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !484, file: !485, line: 44, baseType: !467, size: 128, offset: 640)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !484, file: !485, line: 45, baseType: !467, size: 128, offset: 768)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !484, file: !485, line: 46, baseType: !467, size: 128, offset: 896)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !484, file: !485, line: 47, baseType: !353, size: 64, offset: 1024)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !484, file: !485, line: 48, baseType: !353, size: 64, offset: 1088)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !385, file: !44, line: 1883, baseType: !507, size: 64, offset: 960)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!237, !314, !206, !253}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !385, file: !44, line: 1884, baseType: !511, size: 64, offset: 1024)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!137, !361, !514, !353, !353}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !385, file: !44, line: 1886, baseType: !517, size: 64, offset: 1088)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!137, !361, !520, !137}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !385, file: !44, line: 1887, baseType: !522, size: 64, offset: 1152)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!137, !361, !314, !284, !7, !247}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !385, file: !44, line: 1890, baseType: !437, size: 64, offset: 1216)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !385, file: !44, line: 1891, baseType: !527, size: 64, offset: 1280)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!137, !361, !412, !137}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !362, file: !44, line: 623, baseType: !531, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !533)
!533 = !{!534, !535, !536, !537, !538, !539, !589, !2365, !2447, !2530, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2546, !2550, !2551, !2554, !2555, !2558, !2559, !2560, !2601, !2628, !2629, !2630, !2631, !2632, !2633, !2636, !2638, !2645, !2646, !2648, !2649, !2650, !2709, !2710, !2725, !2726, !2727, !2728, !2729, !2732, !2733, !2734, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !532, file: !44, line: 1417, baseType: !151, size: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !532, file: !44, line: 1418, baseType: !445, size: 32, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !532, file: !44, line: 1419, baseType: !359, size: 8, offset: 160)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !532, file: !44, line: 1420, baseType: !256, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !532, file: !44, line: 1421, baseType: !463, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !532, file: !44, line: 1422, baseType: !540, size: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !542)
!542 = !{!543, !544, !545, !552, !556, !560, !564, !568, !569, !579, !582, !583, !584, !586, !587, !588}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !541, file: !44, line: 2229, baseType: !130, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !541, file: !44, line: 2230, baseType: !137, size: 32, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !541, file: !44, line: 2238, baseType: !546, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!137, !549}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !551, line: 28, flags: DIFlagFwdDecl)
!551 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!552 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !541, file: !44, line: 2239, baseType: !553, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !541, file: !44, line: 2240, baseType: !557, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!314, !540, !137, !130, !124}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !541, file: !44, line: 2242, baseType: !561, size: 64, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !531}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !541, file: !44, line: 2243, baseType: !565, size: 64, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !567, line: 76, flags: DIFlagFwdDecl)
!567 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!568 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !541, file: !44, line: 2244, baseType: !540, size: 64, offset: 448)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !541, file: !44, line: 2245, baseType: !570, size: 64, offset: 512)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !152, line: 182, size: 64, elements: !571)
!571 = !{!572}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !570, file: !152, line: 183, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !152, line: 186, size: 128, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !574, file: !152, line: 187, baseType: !573, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !574, file: !152, line: 187, baseType: !578, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !541, file: !44, line: 2247, baseType: !580, offset: 576)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !581, line: 187, elements: !179)
!581 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!582 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !541, file: !44, line: 2248, baseType: !580, offset: 576)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !541, file: !44, line: 2249, baseType: !580, offset: 576)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !541, file: !44, line: 2250, baseType: !585, offset: 576)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !580, elements: !207)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !541, file: !44, line: 2252, baseType: !580, offset: 576)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !541, file: !44, line: 2253, baseType: !580, offset: 576)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !541, file: !44, line: 2254, baseType: !580, offset: 576)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !532, file: !44, line: 1423, baseType: !590, size: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !593)
!593 = !{!594, !598, !602, !603, !607, !613, !617, !618, !619, !623, !627, !628, !629, !630, !636, !641, !642, !649, !650, !651, !652, !2349, !2364}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !592, file: !44, line: 1936, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!361, !531}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !592, file: !44, line: 1937, baseType: !599, size: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !361}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !592, file: !44, line: 1938, baseType: !599, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !592, file: !44, line: 1940, baseType: !604, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !361, !137}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !592, file: !44, line: 1941, baseType: !608, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!137, !361, !611}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !592, file: !44, line: 1942, baseType: !614, size: 64, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!137, !361}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !592, file: !44, line: 1943, baseType: !599, size: 64, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !592, file: !44, line: 1944, baseType: !561, size: 64, offset: 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !592, file: !44, line: 1945, baseType: !620, size: 64, offset: 512)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!137, !531, !137}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !592, file: !44, line: 1946, baseType: !624, size: 64, offset: 576)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!137, !531}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !592, file: !44, line: 1947, baseType: !624, size: 64, offset: 640)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !592, file: !44, line: 1948, baseType: !624, size: 64, offset: 704)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !592, file: !44, line: 1949, baseType: !624, size: 64, offset: 768)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !592, file: !44, line: 1950, baseType: !631, size: 64, offset: 832)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!137, !314, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !592, file: !44, line: 1951, baseType: !637, size: 64, offset: 896)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!137, !531, !640, !206}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !592, file: !44, line: 1952, baseType: !561, size: 64, offset: 960)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !592, file: !44, line: 1954, baseType: !643, size: 64, offset: 1024)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!137, !646, !314}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !648, line: 539, flags: DIFlagFwdDecl)
!648 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!649 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !592, file: !44, line: 1955, baseType: !643, size: 64, offset: 1088)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !592, file: !44, line: 1956, baseType: !643, size: 64, offset: 1152)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !592, file: !44, line: 1957, baseType: !643, size: 64, offset: 1216)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !592, file: !44, line: 1963, baseType: !653, size: 64, offset: 1280)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!137, !531, !656, !679}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !658, line: 68, size: 512, align: 128, elements: !659)
!658 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!659 = !{!660, !661, !2341, !2348}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !657, file: !658, line: 69, baseType: !256, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !658, line: 77, baseType: !662, size: 320, offset: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !657, file: !658, line: 77, size: 320, elements: !663)
!663 = !{!664, !852, !857, !885, !893, !899, !2272, !2340}
!664 = !DIDerivedType(tag: DW_TAG_member, scope: !662, file: !658, line: 78, baseType: !665, size: 320)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !662, file: !658, line: 78, size: 320, elements: !666)
!666 = !{!667, !668, !850, !851}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !665, file: !658, line: 84, baseType: !151, size: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !665, file: !658, line: 86, baseType: !669, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !671)
!671 = !{!672, !673, !681, !682, !687, !702, !718, !719, !720, !721, !843, !844, !847, !848, !849}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !670, file: !44, line: 452, baseType: !361, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !670, file: !44, line: 453, baseType: !674, size: 128, offset: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !675, line: 292, size: 128, elements: !676)
!675 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!676 = !{!677, !678, !680}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !674, file: !675, line: 293, baseType: !165)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !674, file: !675, line: 295, baseType: !679, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !152, line: 148, baseType: !7)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !674, file: !675, line: 296, baseType: !124, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !670, file: !44, line: 454, baseType: !679, size: 32, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !670, file: !44, line: 455, baseType: !683, size: 32, offset: 224)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !152, line: 168, baseType: !684)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !152, line: 166, size: 32, elements: !685)
!685 = !{!686}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !684, file: !152, line: 167, baseType: !137, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !670, file: !44, line: 460, baseType: !688, size: 128, offset: 256)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !689, line: 125, size: 128, elements: !690)
!689 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!690 = !{!691, !701}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !688, file: !689, line: 126, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !689, line: 31, size: 64, elements: !693)
!693 = !{!694}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !692, file: !689, line: 32, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !689, line: 24, size: 192, align: 64, elements: !697)
!697 = !{!698, !699, !700}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !696, file: !689, line: 25, baseType: !256, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !696, file: !689, line: 26, baseType: !695, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !696, file: !689, line: 27, baseType: !695, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !688, file: !689, line: 127, baseType: !695, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !670, file: !44, line: 461, baseType: !703, size: 256, offset: 384)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !704, line: 35, size: 256, elements: !705)
!704 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!705 = !{!706, !714, !715, !717}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !703, file: !704, line: 36, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !708, line: 13, baseType: !709)
!708 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !152, line: 175, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !152, line: 173, size: 64, elements: !711)
!711 = !{!712}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !710, file: !152, line: 174, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !348, line: 22, baseType: !472)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !703, file: !704, line: 42, baseType: !707, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !703, file: !704, line: 46, baseType: !716, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !166, line: 29, baseType: !173)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !703, file: !704, line: 47, baseType: !151, size: 128, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !670, file: !44, line: 462, baseType: !256, size: 64, offset: 640)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !670, file: !44, line: 463, baseType: !256, size: 64, offset: 704)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !670, file: !44, line: 464, baseType: !256, size: 64, offset: 768)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !670, file: !44, line: 465, baseType: !722, size: 64, offset: 832)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !725)
!725 = !{!726, !730, !734, !738, !742, !746, !752, !758, !762, !767, !771, !775, !779, !807, !811, !817, !818, !819, !823, !828, !832, !839}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !724, file: !44, line: 368, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!137, !656, !611}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !724, file: !44, line: 369, baseType: !731, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!137, !284, !656}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !724, file: !44, line: 372, baseType: !735, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!137, !669, !611}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !724, file: !44, line: 375, baseType: !739, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!137, !656}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !724, file: !44, line: 381, baseType: !743, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!137, !284, !669, !155, !7}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !724, file: !44, line: 383, baseType: !747, size: 64, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !750}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !724, file: !44, line: 385, baseType: !753, size: 64, offset: 384)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!137, !284, !669, !463, !7, !7, !756, !757}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !724, file: !44, line: 388, baseType: !759, size: 64, offset: 448)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!137, !284, !669, !463, !7, !7, !656, !124}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !724, file: !44, line: 393, baseType: !763, size: 64, offset: 512)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!766, !669, !766}
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !152, line: 125, baseType: !353)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !724, file: !44, line: 394, baseType: !768, size: 64, offset: 576)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !656, !7, !7}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !724, file: !44, line: 395, baseType: !772, size: 64, offset: 640)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!137, !656, !679}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !724, file: !44, line: 396, baseType: !776, size: 64, offset: 704)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !656}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !724, file: !44, line: 397, baseType: !780, size: 64, offset: 768)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!237, !783, !805}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !785)
!785 = !{!786, !787, !788, !792, !793, !794, !797, !798}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !784, file: !44, line: 321, baseType: !284, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !784, file: !44, line: 326, baseType: !463, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !784, file: !44, line: 327, baseType: !789, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !783, !241, !241}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !784, file: !44, line: 328, baseType: !124, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !784, file: !44, line: 329, baseType: !137, size: 32, offset: 256)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !784, file: !44, line: 330, baseType: !795, size: 16, offset: 288)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !348, line: 19, baseType: !796)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !350, line: 24, baseType: !248)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !784, file: !44, line: 331, baseType: !795, size: 16, offset: 304)
!798 = !DIDerivedType(tag: DW_TAG_member, scope: !784, file: !44, line: 332, baseType: !799, size: 64, offset: 320)
!799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !784, file: !44, line: 332, size: 64, elements: !800)
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !799, file: !44, line: 333, baseType: !7, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !799, file: !44, line: 334, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !724, file: !44, line: 402, baseType: !808, size: 64, offset: 832)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!137, !669, !656, !656, !5}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !724, file: !44, line: 404, baseType: !812, size: 64, offset: 896)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!422, !656, !815}
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !816, line: 305, baseType: !7)
!816 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!817 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !724, file: !44, line: 405, baseType: !776, size: 64, offset: 960)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !724, file: !44, line: 406, baseType: !739, size: 64, offset: 1024)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !724, file: !44, line: 407, baseType: !820, size: 64, offset: 1088)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!137, !656, !256, !256}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !724, file: !44, line: 409, baseType: !824, size: 64, offset: 1152)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !656, !827, !827}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !724, file: !44, line: 410, baseType: !829, size: 64, offset: 1216)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!137, !669, !656}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !724, file: !44, line: 413, baseType: !833, size: 64, offset: 1280)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!137, !836, !284, !838}
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !724, file: !44, line: 415, baseType: !840, size: 64, offset: 1344)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !284}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !670, file: !44, line: 466, baseType: !256, size: 64, offset: 896)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !670, file: !44, line: 467, baseType: !845, size: 32, offset: 960)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !846, line: 8, baseType: !347)
!846 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!847 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !670, file: !44, line: 468, baseType: !165, offset: 992)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !670, file: !44, line: 469, baseType: !151, size: 128, offset: 1024)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !670, file: !44, line: 470, baseType: !124, size: 64, offset: 1152)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !665, file: !658, line: 87, baseType: !256, size: 64, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !665, file: !658, line: 94, baseType: !256, size: 64, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, scope: !662, file: !658, line: 96, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !662, file: !658, line: 96, size: 64, elements: !854)
!854 = !{!855}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !853, file: !658, line: 101, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !152, line: 143, baseType: !353)
!857 = !DIDerivedType(tag: DW_TAG_member, scope: !662, file: !658, line: 103, baseType: !858, size: 320)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !662, file: !658, line: 103, size: 320, elements: !859)
!859 = !{!860, !870, !873, !874}
!860 = !DIDerivedType(tag: DW_TAG_member, scope: !858, file: !658, line: 104, baseType: !861, size: 128)
!861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !858, file: !658, line: 104, size: 128, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !861, file: !658, line: 105, baseType: !151, size: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, scope: !861, file: !658, line: 106, baseType: !865, size: 128)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !861, file: !658, line: 106, size: 128, elements: !866)
!866 = !{!867, !868, !869}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !865, file: !658, line: 107, baseType: !656, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !865, file: !658, line: 109, baseType: !137, size: 32, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !865, file: !658, line: 110, baseType: !137, size: 32, offset: 96)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !858, file: !658, line: 117, baseType: !871, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !658, line: 117, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !858, file: !658, line: 119, baseType: !124, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, scope: !858, file: !658, line: 120, baseType: !875, size: 64, offset: 256)
!875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !858, file: !658, line: 120, size: 64, elements: !876)
!876 = !{!877, !878, !879}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !875, file: !658, line: 121, baseType: !124, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !875, file: !658, line: 122, baseType: !256, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, scope: !875, file: !658, line: 123, baseType: !880, size: 32)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !875, file: !658, line: 123, size: 32, elements: !881)
!881 = !{!882, !883, !884}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !880, file: !658, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !880, file: !658, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !880, file: !658, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!885 = !DIDerivedType(tag: DW_TAG_member, scope: !662, file: !658, line: 130, baseType: !886, size: 192)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !662, file: !658, line: 130, size: 192, elements: !887)
!887 = !{!888, !889, !890, !891, !892}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !886, file: !658, line: 131, baseType: !256, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !886, file: !658, line: 134, baseType: !359, size: 8, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !886, file: !658, line: 135, baseType: !359, size: 8, offset: 72)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !886, file: !658, line: 136, baseType: !683, size: 32, offset: 96)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !886, file: !658, line: 137, baseType: !7, size: 32, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, scope: !662, file: !658, line: 139, baseType: !894, size: 256)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !662, file: !658, line: 139, size: 256, elements: !895)
!895 = !{!896, !897, !898}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !894, file: !658, line: 140, baseType: !256, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !894, file: !658, line: 141, baseType: !683, size: 32, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !894, file: !658, line: 143, baseType: !151, size: 128, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !662, file: !658, line: 145, baseType: !900, size: 256)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !662, file: !658, line: 145, size: 256, elements: !901)
!901 = !{!902, !903, !905, !906, !2271}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !900, file: !658, line: 146, baseType: !256, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !900, file: !658, line: 147, baseType: !904, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !648, line: 509, baseType: !656)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !900, file: !658, line: 148, baseType: !256, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !900, file: !658, line: 149, baseType: !907, size: 64, offset: 192)
!907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !900, file: !658, line: 149, size: 64, elements: !908)
!908 = !{!909, !2270}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !907, file: !658, line: 150, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !658, line: 388, size: 7296, elements: !912)
!912 = !{!913, !2266}
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !911, file: !658, line: 389, baseType: !914, size: 7296)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !911, file: !658, line: 389, size: 7296, elements: !915)
!915 = !{!916, !1034, !1035, !1036, !1040, !1041, !1042, !1043, !1044, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1085, !1093, !1096, !1142, !1143, !2250, !2251, !2254, !2255, !2256, !2259, !2260, !2261, !2264, !2265}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !914, file: !658, line: 390, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !658, line: 305, size: 1472, elements: !919)
!919 = !{!920, !921, !922, !923, !924, !925, !926, !927, !934, !935, !940, !941, !944, !1028, !1029, !1030, !1031, !1032}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !918, file: !658, line: 308, baseType: !256, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !918, file: !658, line: 309, baseType: !256, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !918, file: !658, line: 313, baseType: !917, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !918, file: !658, line: 313, baseType: !917, size: 64, offset: 192)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !918, file: !658, line: 315, baseType: !696, size: 192, align: 64, offset: 256)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !918, file: !658, line: 323, baseType: !256, size: 64, offset: 448)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !918, file: !658, line: 327, baseType: !910, size: 64, offset: 512)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !918, file: !658, line: 333, baseType: !928, size: 64, offset: 576)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !648, line: 284, baseType: !929)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !648, line: 284, size: 64, elements: !930)
!930 = !{!931}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !929, file: !648, line: 284, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !933, line: 19, baseType: !256)
!933 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!934 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !918, file: !658, line: 334, baseType: !256, size: 64, offset: 640)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !918, file: !658, line: 343, baseType: !936, size: 256, offset: 704)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !918, file: !658, line: 340, size: 256, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !936, file: !658, line: 341, baseType: !696, size: 192, align: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !936, file: !658, line: 342, baseType: !256, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !918, file: !658, line: 351, baseType: !151, size: 128, offset: 960)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !918, file: !658, line: 353, baseType: !942, size: 64, offset: 1088)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !658, line: 353, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !918, file: !658, line: 356, baseType: !945, size: 64, offset: 1152)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !947)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !948)
!948 = !{!949, !953, !954, !958, !962, !1002, !1006, !1010, !1014, !1015, !1016, !1020, !1024}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !947, file: !14, line: 558, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{null, !917}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !947, file: !14, line: 559, baseType: !950, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !947, file: !14, line: 560, baseType: !955, size: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{!137, !917, !256}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !947, file: !14, line: 561, baseType: !959, size: 64, offset: 192)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!137, !917}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !947, file: !14, line: 562, baseType: !963, size: 64, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !658, line: 682, baseType: !7)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !969)
!969 = !{!970, !971, !972, !973, !974, !975, !982, !989, !995, !996, !997, !999, !1001}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !968, file: !14, line: 509, baseType: !917, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !968, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !968, file: !14, line: 511, baseType: !679, size: 32, offset: 96)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !968, file: !14, line: 512, baseType: !256, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !968, file: !14, line: 513, baseType: !256, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !968, file: !14, line: 514, baseType: !976, size: 64, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !648, line: 385, baseType: !978)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !648, line: 385, size: 64, elements: !979)
!979 = !{!980}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !978, file: !648, line: 385, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !933, line: 15, baseType: !256)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !968, file: !14, line: 516, baseType: !983, size: 64, offset: 320)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !648, line: 359, baseType: !985)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !648, line: 359, size: 64, elements: !986)
!986 = !{!987}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !985, file: !648, line: 359, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !933, line: 16, baseType: !256)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !968, file: !14, line: 519, baseType: !990, size: 64, offset: 384)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !933, line: 21, baseType: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !933, line: 21, size: 64, elements: !992)
!992 = !{!993}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !991, file: !933, line: 21, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !933, line: 14, baseType: !256)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !968, file: !14, line: 521, baseType: !656, size: 64, offset: 448)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !968, file: !14, line: 522, baseType: !656, size: 64, offset: 512)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !968, file: !14, line: 528, baseType: !998, size: 64, offset: 576)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !968, file: !14, line: 532, baseType: !1000, size: 64, offset: 640)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !968, file: !14, line: 536, baseType: !904, size: 64, offset: 704)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !947, file: !14, line: 563, baseType: !1003, size: 64, offset: 320)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!966, !967, !13}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !947, file: !14, line: 565, baseType: !1007, size: 64, offset: 384)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{null, !967, !256, !256}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !947, file: !14, line: 567, baseType: !1011, size: 64, offset: 448)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!256, !917}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !947, file: !14, line: 571, baseType: !963, size: 64, offset: 512)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !947, file: !14, line: 574, baseType: !963, size: 64, offset: 576)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !947, file: !14, line: 579, baseType: !1017, size: 64, offset: 640)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!137, !917, !256, !124, !137, !137}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !947, file: !14, line: 585, baseType: !1021, size: 64, offset: 704)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!130, !917}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !947, file: !14, line: 615, baseType: !1025, size: 64, offset: 768)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!656, !917, !256}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !918, file: !658, line: 359, baseType: !256, size: 64, offset: 1216)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !918, file: !658, line: 361, baseType: !284, size: 64, offset: 1280)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !918, file: !658, line: 362, baseType: !124, size: 64, offset: 1344)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !918, file: !658, line: 365, baseType: !707, size: 64, offset: 1408)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !918, file: !658, line: 373, baseType: !1033, offset: 1472)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !658, line: 296, elements: !179)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !914, file: !658, line: 391, baseType: !692, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !914, file: !658, line: 392, baseType: !353, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !914, file: !658, line: 394, baseType: !1037, size: 64, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!256, !284, !256, !256, !256, !256}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !914, file: !658, line: 398, baseType: !256, size: 64, offset: 256)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !914, file: !658, line: 399, baseType: !256, size: 64, offset: 320)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !914, file: !658, line: 405, baseType: !256, size: 64, offset: 384)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !914, file: !658, line: 406, baseType: !256, size: 64, offset: 448)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !914, file: !658, line: 407, baseType: !1045, size: 64, offset: 512)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !648, line: 286, baseType: !1047)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !648, line: 286, size: 64, elements: !1048)
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1047, file: !648, line: 286, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !933, line: 18, baseType: !256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !914, file: !658, line: 416, baseType: !683, size: 32, offset: 576)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !914, file: !658, line: 428, baseType: !683, size: 32, offset: 608)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !914, file: !658, line: 437, baseType: !683, size: 32, offset: 640)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !914, file: !658, line: 447, baseType: !683, size: 32, offset: 672)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !914, file: !658, line: 450, baseType: !707, size: 64, offset: 704)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !914, file: !658, line: 452, baseType: !137, size: 32, offset: 768)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !914, file: !658, line: 454, baseType: !165, offset: 800)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !914, file: !658, line: 457, baseType: !703, size: 256, offset: 832)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !914, file: !658, line: 459, baseType: !151, size: 128, offset: 1088)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !914, file: !658, line: 466, baseType: !256, size: 64, offset: 1216)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !914, file: !658, line: 467, baseType: !256, size: 64, offset: 1280)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !914, file: !658, line: 469, baseType: !256, size: 64, offset: 1344)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !914, file: !658, line: 470, baseType: !256, size: 64, offset: 1408)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !914, file: !658, line: 471, baseType: !709, size: 64, offset: 1472)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !914, file: !658, line: 472, baseType: !256, size: 64, offset: 1536)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !914, file: !658, line: 473, baseType: !256, size: 64, offset: 1600)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !914, file: !658, line: 474, baseType: !256, size: 64, offset: 1664)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !914, file: !658, line: 475, baseType: !256, size: 64, offset: 1728)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !914, file: !658, line: 477, baseType: !165, offset: 1792)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !914, file: !658, line: 478, baseType: !256, size: 64, offset: 1792)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !914, file: !658, line: 478, baseType: !256, size: 64, offset: 1856)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !914, file: !658, line: 478, baseType: !256, size: 64, offset: 1920)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !914, file: !658, line: 478, baseType: !256, size: 64, offset: 1984)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !914, file: !658, line: 479, baseType: !256, size: 64, offset: 2048)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !914, file: !658, line: 479, baseType: !256, size: 64, offset: 2112)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !914, file: !658, line: 479, baseType: !256, size: 64, offset: 2176)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !914, file: !658, line: 480, baseType: !256, size: 64, offset: 2240)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !914, file: !658, line: 480, baseType: !256, size: 64, offset: 2304)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !914, file: !658, line: 480, baseType: !256, size: 64, offset: 2368)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !914, file: !658, line: 480, baseType: !256, size: 64, offset: 2432)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !914, file: !658, line: 482, baseType: !1082, size: 2816, offset: 2496)
!1082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 2816, elements: !1083)
!1083 = !{!1084}
!1084 = !DISubrange(count: 44)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !914, file: !658, line: 488, baseType: !1086, size: 256, offset: 5312)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1087, line: 60, size: 256, elements: !1088)
!1087 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1086, file: !1087, line: 61, baseType: !1090, size: 256)
!1090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 256, elements: !1091)
!1091 = !{!1092}
!1092 = !DISubrange(count: 4)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !914, file: !658, line: 490, baseType: !1094, size: 64, offset: 5568)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !658, line: 490, flags: DIFlagFwdDecl)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !914, file: !658, line: 493, baseType: !1097, size: 896, offset: 5632)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1098, line: 53, baseType: !1099)
!1098 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1098, line: 13, size: 896, elements: !1100)
!1100 = !{!1101, !1102, !1103, !1104, !1107, !1108, !1115, !1116, !1136, !1137, !1138}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1099, file: !1098, line: 18, baseType: !353, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1099, file: !1098, line: 28, baseType: !709, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1099, file: !1098, line: 31, baseType: !703, size: 256, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1099, file: !1098, line: 32, baseType: !1105, size: 64, offset: 384)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1098, line: 32, flags: DIFlagFwdDecl)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1099, file: !1098, line: 37, baseType: !248, size: 16, offset: 448)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1099, file: !1098, line: 40, baseType: !1109, size: 192, offset: 512)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1110, line: 53, size: 192, elements: !1111)
!1110 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1111 = !{!1112, !1113, !1114}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1109, file: !1110, line: 54, baseType: !707, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1109, file: !1110, line: 55, baseType: !165, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1109, file: !1110, line: 59, baseType: !151, size: 128, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1099, file: !1098, line: 41, baseType: !124, size: 64, offset: 704)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1099, file: !1098, line: 42, baseType: !1117, size: 64, offset: 768)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1119)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1120, line: 13, size: 896, elements: !1121)
!1120 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1121 = !{!1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1119, file: !1120, line: 14, baseType: !124, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1119, file: !1120, line: 15, baseType: !256, size: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1119, file: !1120, line: 17, baseType: !256, size: 64, offset: 128)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1119, file: !1120, line: 17, baseType: !256, size: 64, offset: 192)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1119, file: !1120, line: 19, baseType: !241, size: 64, offset: 256)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1119, file: !1120, line: 21, baseType: !241, size: 64, offset: 320)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1119, file: !1120, line: 22, baseType: !241, size: 64, offset: 384)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1119, file: !1120, line: 23, baseType: !241, size: 64, offset: 448)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1119, file: !1120, line: 24, baseType: !241, size: 64, offset: 512)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1119, file: !1120, line: 25, baseType: !241, size: 64, offset: 576)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1119, file: !1120, line: 26, baseType: !241, size: 64, offset: 640)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1119, file: !1120, line: 27, baseType: !241, size: 64, offset: 704)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1119, file: !1120, line: 28, baseType: !241, size: 64, offset: 768)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1119, file: !1120, line: 29, baseType: !241, size: 64, offset: 832)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1099, file: !1098, line: 44, baseType: !683, size: 32, offset: 832)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1099, file: !1098, line: 50, baseType: !795, size: 16, offset: 864)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1099, file: !1098, line: 51, baseType: !1139, size: 16, offset: 880)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !348, line: 18, baseType: !1140)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !350, line: 23, baseType: !1141)
!1141 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !914, file: !658, line: 495, baseType: !256, size: 64, offset: 6528)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !914, file: !658, line: 497, baseType: !1144, size: 64, offset: 6592)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !658, line: 381, size: 384, elements: !1146)
!1146 = !{!1147, !1148, !2249}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1145, file: !658, line: 382, baseType: !683, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1145, file: !658, line: 383, baseType: !1149, size: 128, offset: 64)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !658, line: 376, size: 128, elements: !1150)
!1150 = !{!1151, !2247}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1149, file: !658, line: 377, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1154, line: 640, size: 48640, elements: !1155)
!1154 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1155 = !{!1156, !1162, !1164, !1165, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1182, !1200, !1211, !1296, !1297, !1298, !1309, !1310, !1312, !1313, !1314, !1315, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1394, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1432, !1434, !1435, !1436, !1448, !1449, !1450, !1451, !1452, !1453, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1477, !1482, !1666, !1667, !1668, !1669, !1673, !1676, !1679, !1682, !1685, !1688, !1789, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1835, !1836, !1837, !1838, !1839, !1844, !1845, !1846, !1849, !1850, !1853, !1856, !1859, !1862, !1905, !1908, !1909, !1988, !1989, !1992, !1993, !1996, !1997, !1998, !2002, !2003, !2004, !2017, !2018, !2019, !2029, !2034, !2037, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1153, file: !1154, line: 646, baseType: !1157, size: 128)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1158, line: 56, size: 128, elements: !1159)
!1158 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1159 = !{!1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1157, file: !1158, line: 57, baseType: !256, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1157, file: !1158, line: 58, baseType: !347, size: 32, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1153, file: !1154, line: 649, baseType: !1163, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !241)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1153, file: !1154, line: 657, baseType: !124, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1153, file: !1154, line: 658, baseType: !1166, size: 32, offset: 256)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1167, line: 113, baseType: !1168)
!1167 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1167, line: 111, size: 32, elements: !1169)
!1169 = !{!1170}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1168, file: !1167, line: 112, baseType: !683, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1153, file: !1154, line: 660, baseType: !7, size: 32, offset: 288)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1153, file: !1154, line: 661, baseType: !7, size: 32, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1153, file: !1154, line: 684, baseType: !137, size: 32, offset: 352)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1153, file: !1154, line: 686, baseType: !137, size: 32, offset: 384)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1153, file: !1154, line: 687, baseType: !137, size: 32, offset: 416)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1153, file: !1154, line: 688, baseType: !137, size: 32, offset: 448)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1153, file: !1154, line: 689, baseType: !7, size: 32, offset: 480)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1153, file: !1154, line: 691, baseType: !1179, size: 64, offset: 512)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1181)
!1181 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1154, line: 691, flags: DIFlagFwdDecl)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1153, file: !1154, line: 692, baseType: !1183, size: 832, offset: 576)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1154, line: 451, size: 832, elements: !1184)
!1184 = !{!1185, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1183, file: !1154, line: 453, baseType: !1186, size: 128)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1154, line: 325, size: 128, elements: !1187)
!1187 = !{!1188, !1189}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1186, file: !1154, line: 326, baseType: !256, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1186, file: !1154, line: 327, baseType: !347, size: 32, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1183, file: !1154, line: 454, baseType: !696, size: 192, align: 64, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1183, file: !1154, line: 455, baseType: !151, size: 128, offset: 320)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1183, file: !1154, line: 456, baseType: !7, size: 32, offset: 448)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1183, file: !1154, line: 458, baseType: !353, size: 64, offset: 512)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1183, file: !1154, line: 459, baseType: !353, size: 64, offset: 576)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1183, file: !1154, line: 460, baseType: !353, size: 64, offset: 640)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1183, file: !1154, line: 461, baseType: !353, size: 64, offset: 704)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1183, file: !1154, line: 463, baseType: !353, size: 64, offset: 768)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1183, file: !1154, line: 465, baseType: !1199, offset: 832)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1154, line: 415, elements: !179)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1153, file: !1154, line: 693, baseType: !1201, size: 384, offset: 1408)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1154, line: 489, size: 384, elements: !1202)
!1202 = !{!1203, !1204, !1205, !1206, !1207, !1208, !1209}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1201, file: !1154, line: 490, baseType: !151, size: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1201, file: !1154, line: 491, baseType: !256, size: 64, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1201, file: !1154, line: 492, baseType: !256, size: 64, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1201, file: !1154, line: 493, baseType: !7, size: 32, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1201, file: !1154, line: 494, baseType: !248, size: 16, offset: 288)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1201, file: !1154, line: 495, baseType: !248, size: 16, offset: 304)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1201, file: !1154, line: 497, baseType: !1210, size: 64, offset: 320)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1153, file: !1154, line: 697, baseType: !1212, size: 1792, offset: 1792)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1154, line: 507, size: 1792, elements: !1213)
!1213 = !{!1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1293, !1294}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1212, file: !1154, line: 508, baseType: !696, size: 192, align: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1212, file: !1154, line: 515, baseType: !353, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1212, file: !1154, line: 516, baseType: !353, size: 64, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1212, file: !1154, line: 517, baseType: !353, size: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1212, file: !1154, line: 518, baseType: !353, size: 64, offset: 384)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1212, file: !1154, line: 519, baseType: !353, size: 64, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1212, file: !1154, line: 526, baseType: !713, size: 64, offset: 512)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1212, file: !1154, line: 527, baseType: !353, size: 64, offset: 576)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1212, file: !1154, line: 528, baseType: !7, size: 32, offset: 640)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1212, file: !1154, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1212, file: !1154, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1212, file: !1154, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1212, file: !1154, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1212, file: !1154, line: 563, baseType: !1228, size: 512, offset: 704)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1229)
!1229 = !{!1230, !1238, !1239, !1244, !1287, !1290, !1291, !1292}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1228, file: !20, line: 119, baseType: !1231, size: 256)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1232, line: 9, size: 256, elements: !1233)
!1232 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1231, file: !1232, line: 10, baseType: !696, size: 192, align: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1231, file: !1232, line: 11, baseType: !1236, size: 64, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1237, line: 29, baseType: !713)
!1237 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1228, file: !20, line: 120, baseType: !1236, size: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1228, file: !20, line: 121, baseType: !1240, size: 64, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!19, !1243}
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1228, file: !20, line: 122, baseType: !1245, size: 64, offset: 384)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1247)
!1247 = !{!1248, !1268, !1269, !1272, !1277, !1278, !1282, !1286}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1246, file: !20, line: 160, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1251)
!1251 = !{!1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1250, file: !20, line: 215, baseType: !716)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1250, file: !20, line: 216, baseType: !7, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1250, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1250, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1250, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1250, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1250, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1250, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1250, file: !20, line: 233, baseType: !1236, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1250, file: !20, line: 234, baseType: !1243, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1250, file: !20, line: 235, baseType: !1236, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1250, file: !20, line: 236, baseType: !1243, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1250, file: !20, line: 237, baseType: !1265, size: 4096, offset: 512)
!1265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1246, size: 4096, elements: !1266)
!1266 = !{!1267}
!1267 = !DISubrange(count: 8)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1246, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1246, file: !20, line: 162, baseType: !1270, size: 32, offset: 96)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !152, line: 27, baseType: !1271)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !239, line: 96, baseType: !137)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1246, file: !20, line: 163, baseType: !1273, size: 32, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !320, line: 276, baseType: !1274)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !320, line: 276, size: 32, elements: !1275)
!1275 = !{!1276}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1274, file: !320, line: 276, baseType: !324, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1246, file: !20, line: 164, baseType: !1243, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1246, file: !20, line: 165, baseType: !1279, size: 128, offset: 256)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1232, line: 14, size: 128, elements: !1280)
!1280 = !{!1281}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1279, file: !1232, line: 15, baseType: !688, size: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1246, file: !20, line: 166, baseType: !1283, size: 64, offset: 384)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!1236}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1246, file: !20, line: 167, baseType: !1236, size: 64, offset: 448)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1228, file: !20, line: 123, baseType: !1288, size: 8, offset: 448)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !348, line: 17, baseType: !1289)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !350, line: 21, baseType: !359)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1228, file: !20, line: 124, baseType: !1288, size: 8, offset: 456)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1228, file: !20, line: 125, baseType: !1288, size: 8, offset: 464)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1228, file: !20, line: 126, baseType: !1288, size: 8, offset: 472)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1212, file: !1154, line: 572, baseType: !1228, size: 512, offset: 1216)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1212, file: !1154, line: 580, baseType: !1295, size: 64, offset: 1728)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1153, file: !1154, line: 721, baseType: !7, size: 32, offset: 3584)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1153, file: !1154, line: 722, baseType: !137, size: 32, offset: 3616)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1153, file: !1154, line: 723, baseType: !1299, size: 64, offset: 3648)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1301)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1302, line: 17, baseType: !1303)
!1302 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1302, line: 17, size: 64, elements: !1304)
!1304 = !{!1305}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1303, file: !1302, line: 17, baseType: !1306, size: 64)
!1306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 64, elements: !1307)
!1307 = !{!1308}
!1308 = !DISubrange(count: 1)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1153, file: !1154, line: 724, baseType: !1301, size: 64, offset: 3712)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1153, file: !1154, line: 749, baseType: !1311, offset: 3776)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1154, line: 290, elements: !179)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1153, file: !1154, line: 751, baseType: !151, size: 128, offset: 3776)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1153, file: !1154, line: 757, baseType: !910, size: 64, offset: 3904)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1153, file: !1154, line: 758, baseType: !910, size: 64, offset: 3968)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1153, file: !1154, line: 761, baseType: !1316, size: 320, offset: 4032)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1087, line: 34, size: 320, elements: !1317)
!1317 = !{!1318, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1316, file: !1087, line: 35, baseType: !353, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1316, file: !1087, line: 36, baseType: !1320, size: 256, offset: 64)
!1320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !917, size: 256, elements: !1091)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1153, file: !1154, line: 766, baseType: !137, size: 32, offset: 4352)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1153, file: !1154, line: 767, baseType: !137, size: 32, offset: 4384)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1153, file: !1154, line: 768, baseType: !137, size: 32, offset: 4416)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1153, file: !1154, line: 770, baseType: !137, size: 32, offset: 4448)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1153, file: !1154, line: 772, baseType: !256, size: 64, offset: 4480)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1153, file: !1154, line: 775, baseType: !7, size: 32, offset: 4544)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1153, file: !1154, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1153, file: !1154, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1153, file: !1154, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1153, file: !1154, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1153, file: !1154, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1153, file: !1154, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1153, file: !1154, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1153, file: !1154, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1153, file: !1154, line: 831, baseType: !256, size: 64, offset: 4672)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1153, file: !1154, line: 833, baseType: !1337, size: 384, offset: 4736)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1338)
!1338 = !{!1339, !1344}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1337, file: !25, line: 26, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!241, !1343}
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, scope: !1337, file: !25, line: 27, baseType: !1345, size: 320, offset: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1337, file: !25, line: 27, size: 320, elements: !1346)
!1346 = !{!1347, !1357, !1384}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1345, file: !25, line: 36, baseType: !1348, size: 320)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1345, file: !25, line: 29, size: 320, elements: !1349)
!1349 = !{!1350, !1352, !1353, !1354, !1355, !1356}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1348, file: !25, line: 30, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1348, file: !25, line: 31, baseType: !347, size: 32, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1348, file: !25, line: 32, baseType: !347, size: 32, offset: 96)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1348, file: !25, line: 33, baseType: !347, size: 32, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1348, file: !25, line: 34, baseType: !353, size: 64, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1348, file: !25, line: 35, baseType: !1351, size: 64, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1345, file: !25, line: 46, baseType: !1358, size: 192)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1345, file: !25, line: 38, size: 192, elements: !1359)
!1359 = !{!1360, !1361, !1362, !1383}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1358, file: !25, line: 39, baseType: !1270, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1358, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, scope: !1358, file: !25, line: 41, baseType: !1363, size: 64, offset: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1358, file: !25, line: 41, size: 64, elements: !1364)
!1364 = !{!1365, !1373}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1363, file: !25, line: 42, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1368, line: 7, size: 128, elements: !1369)
!1368 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1369 = !{!1370, !1372}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1367, file: !1368, line: 8, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !239, line: 93, baseType: !465)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1367, file: !1368, line: 9, baseType: !465, size: 64, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1363, file: !25, line: 43, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1376, line: 7, size: 64, elements: !1377)
!1376 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1377 = !{!1378, !1382}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1375, file: !1376, line: 8, baseType: !1379, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1376, line: 5, baseType: !1380)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !348, line: 20, baseType: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !350, line: 26, baseType: !137)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1375, file: !1376, line: 9, baseType: !1380, size: 32, offset: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1358, file: !25, line: 45, baseType: !353, size: 64, offset: 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1345, file: !25, line: 54, baseType: !1385, size: 256)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1345, file: !25, line: 48, size: 256, elements: !1386)
!1386 = !{!1387, !1390, !1391, !1392, !1393}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1385, file: !25, line: 49, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1385, file: !25, line: 50, baseType: !137, size: 32, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1385, file: !25, line: 51, baseType: !137, size: 32, offset: 96)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1385, file: !25, line: 52, baseType: !256, size: 64, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1385, file: !25, line: 53, baseType: !256, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1153, file: !1154, line: 835, baseType: !1395, size: 32, offset: 5120)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !152, line: 22, baseType: !1396)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !239, line: 28, baseType: !137)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1153, file: !1154, line: 836, baseType: !1395, size: 32, offset: 5152)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1153, file: !1154, line: 840, baseType: !256, size: 64, offset: 5184)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1153, file: !1154, line: 849, baseType: !1152, size: 64, offset: 5248)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1153, file: !1154, line: 852, baseType: !1152, size: 64, offset: 5312)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1153, file: !1154, line: 857, baseType: !151, size: 128, offset: 5376)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1153, file: !1154, line: 858, baseType: !151, size: 128, offset: 5504)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1153, file: !1154, line: 859, baseType: !1152, size: 64, offset: 5632)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1153, file: !1154, line: 867, baseType: !151, size: 128, offset: 5696)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1153, file: !1154, line: 868, baseType: !151, size: 128, offset: 5824)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1153, file: !1154, line: 871, baseType: !1407, size: 64, offset: 5952)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1409)
!1409 = !{!1410, !1411, !1412, !1413, !1415, !1416, !1423, !1424}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1408, file: !53, line: 61, baseType: !1166, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1408, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1408, file: !53, line: 63, baseType: !165, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1408, file: !53, line: 65, baseType: !1414, size: 256, offset: 64)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 256, elements: !1091)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1408, file: !53, line: 66, baseType: !570, size: 64, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1408, file: !53, line: 68, baseType: !1417, size: 128, offset: 384)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1418, line: 40, baseType: !1419)
!1418 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1418, line: 36, size: 128, elements: !1420)
!1420 = !{!1421, !1422}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1419, file: !1418, line: 37, baseType: !165)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1419, file: !1418, line: 38, baseType: !151, size: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1408, file: !53, line: 69, baseType: !297, size: 128, align: 64, offset: 512)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1408, file: !53, line: 70, baseType: !1425, size: 128, offset: 640)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1426, size: 128, elements: !1307)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1427)
!1427 = !{!1428, !1429}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1426, file: !53, line: 55, baseType: !137, size: 32)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1426, file: !53, line: 56, baseType: !1430, size: 64, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1153, file: !1154, line: 872, baseType: !1433, size: 512, offset: 6016)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 512, elements: !1091)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1153, file: !1154, line: 873, baseType: !151, size: 128, offset: 6528)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1153, file: !1154, line: 874, baseType: !151, size: 128, offset: 6656)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1153, file: !1154, line: 876, baseType: !1437, size: 64, offset: 6784)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1439, line: 26, size: 192, elements: !1440)
!1439 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1440 = !{!1441, !1442}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1438, file: !1439, line: 27, baseType: !7, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1438, file: !1439, line: 28, baseType: !1443, size: 128, offset: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1444, line: 43, size: 128, elements: !1445)
!1444 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1445 = !{!1446, !1447}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1443, file: !1444, line: 44, baseType: !716)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1443, file: !1444, line: 45, baseType: !151, size: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1153, file: !1154, line: 879, baseType: !640, size: 64, offset: 6848)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1153, file: !1154, line: 882, baseType: !640, size: 64, offset: 6912)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1153, file: !1154, line: 884, baseType: !353, size: 64, offset: 6976)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1153, file: !1154, line: 885, baseType: !353, size: 64, offset: 7040)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1153, file: !1154, line: 890, baseType: !353, size: 64, offset: 7104)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1153, file: !1154, line: 891, baseType: !1454, size: 128, offset: 7168)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1154, line: 242, size: 128, elements: !1455)
!1455 = !{!1456, !1457, !1458}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1454, file: !1154, line: 244, baseType: !353, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1454, file: !1154, line: 245, baseType: !353, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1454, file: !1154, line: 246, baseType: !716, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1153, file: !1154, line: 900, baseType: !256, size: 64, offset: 7296)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1153, file: !1154, line: 901, baseType: !256, size: 64, offset: 7360)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1153, file: !1154, line: 904, baseType: !353, size: 64, offset: 7424)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1153, file: !1154, line: 907, baseType: !353, size: 64, offset: 7488)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1153, file: !1154, line: 910, baseType: !256, size: 64, offset: 7552)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1153, file: !1154, line: 911, baseType: !256, size: 64, offset: 7616)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1153, file: !1154, line: 914, baseType: !1466, size: 640, offset: 7680)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1467, line: 123, size: 640, elements: !1468)
!1467 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1468 = !{!1469, !1475, !1476}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1466, file: !1467, line: 124, baseType: !1470, size: 576)
!1470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1471, size: 576, elements: !207)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1467, line: 108, size: 192, elements: !1472)
!1472 = !{!1473, !1474}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1471, file: !1467, line: 109, baseType: !353, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1471, file: !1467, line: 110, baseType: !1279, size: 128, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1466, file: !1467, line: 125, baseType: !7, size: 32, offset: 576)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1466, file: !1467, line: 126, baseType: !7, size: 32, offset: 608)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1153, file: !1154, line: 917, baseType: !1478, size: 192, offset: 8320)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1467, line: 134, size: 192, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1478, file: !1467, line: 135, baseType: !297, size: 128, align: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1478, file: !1467, line: 136, baseType: !7, size: 32, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1153, file: !1154, line: 923, baseType: !1483, size: 64, offset: 8512)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1485)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1486, line: 111, size: 1280, elements: !1487)
!1486 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1487 = !{!1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1507, !1508, !1509, !1510, !1511, !1512, !1619, !1620, !1621, !1622, !1648, !1651, !1661}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1485, file: !1486, line: 112, baseType: !683, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1485, file: !1486, line: 120, baseType: !367, size: 32, offset: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1485, file: !1486, line: 121, baseType: !375, size: 32, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1485, file: !1486, line: 122, baseType: !367, size: 32, offset: 96)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1485, file: !1486, line: 123, baseType: !375, size: 32, offset: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1485, file: !1486, line: 124, baseType: !367, size: 32, offset: 160)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1485, file: !1486, line: 125, baseType: !375, size: 32, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1485, file: !1486, line: 126, baseType: !367, size: 32, offset: 224)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1485, file: !1486, line: 127, baseType: !375, size: 32, offset: 256)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1485, file: !1486, line: 128, baseType: !7, size: 32, offset: 288)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1485, file: !1486, line: 129, baseType: !1499, size: 64, offset: 320)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1500, line: 26, baseType: !1501)
!1500 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1500, line: 24, size: 64, elements: !1502)
!1502 = !{!1503}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1501, file: !1500, line: 25, baseType: !1504, size: 64)
!1504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 64, elements: !1505)
!1505 = !{!1506}
!1506 = !DISubrange(count: 2)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1485, file: !1486, line: 130, baseType: !1499, size: 64, offset: 384)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1485, file: !1486, line: 131, baseType: !1499, size: 64, offset: 448)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1485, file: !1486, line: 132, baseType: !1499, size: 64, offset: 512)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1485, file: !1486, line: 133, baseType: !1499, size: 64, offset: 576)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1485, file: !1486, line: 135, baseType: !359, size: 8, offset: 640)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1485, file: !1486, line: 137, baseType: !1513, size: 64, offset: 704)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1515, line: 189, size: 1664, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1516 = !{!1517, !1518, !1521, !1526, !1527, !1530, !1531, !1536, !1537, !1538, !1539, !1541, !1542, !1543, !1544, !1545, !1583, !1604}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1514, file: !1515, line: 190, baseType: !1166, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1514, file: !1515, line: 191, baseType: !1519, size: 32, offset: 32)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1515, line: 28, baseType: !1520)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !152, line: 98, baseType: !1380)
!1521 = !DIDerivedType(tag: DW_TAG_member, scope: !1514, file: !1515, line: 192, baseType: !1522, size: 192, offset: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1514, file: !1515, line: 192, size: 192, elements: !1523)
!1523 = !{!1524, !1525}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1522, file: !1515, line: 193, baseType: !151, size: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1522, file: !1515, line: 194, baseType: !696, size: 192, align: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1514, file: !1515, line: 199, baseType: !703, size: 256, offset: 256)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1514, file: !1515, line: 200, baseType: !1528, size: 64, offset: 512)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1515, line: 200, flags: DIFlagFwdDecl)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1514, file: !1515, line: 201, baseType: !124, size: 64, offset: 576)
!1531 = !DIDerivedType(tag: DW_TAG_member, scope: !1514, file: !1515, line: 202, baseType: !1532, size: 64, offset: 640)
!1532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1514, file: !1515, line: 202, size: 64, elements: !1533)
!1533 = !{!1534, !1535}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1532, file: !1515, line: 203, baseType: !471, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1532, file: !1515, line: 204, baseType: !471, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1514, file: !1515, line: 206, baseType: !471, size: 64, offset: 704)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1514, file: !1515, line: 207, baseType: !367, size: 32, offset: 768)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1514, file: !1515, line: 208, baseType: !375, size: 32, offset: 800)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1514, file: !1515, line: 209, baseType: !1540, size: 32, offset: 832)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1515, line: 31, baseType: !491)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1514, file: !1515, line: 210, baseType: !248, size: 16, offset: 864)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1514, file: !1515, line: 211, baseType: !248, size: 16, offset: 880)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1514, file: !1515, line: 215, baseType: !1141, size: 16, offset: 896)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1514, file: !1515, line: 222, baseType: !256, size: 64, offset: 960)
!1545 = !DIDerivedType(tag: DW_TAG_member, scope: !1514, file: !1515, line: 239, baseType: !1546, size: 320, offset: 1024)
!1546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1514, file: !1515, line: 239, size: 320, elements: !1547)
!1547 = !{!1548, !1575}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1546, file: !1515, line: 240, baseType: !1549, size: 320)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1515, line: 108, size: 320, elements: !1550)
!1550 = !{!1551, !1552, !1564, !1567, !1574}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1549, file: !1515, line: 110, baseType: !256, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, scope: !1549, file: !1515, line: 111, baseType: !1553, size: 64, offset: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1549, file: !1515, line: 111, size: 64, elements: !1554)
!1554 = !{!1555, !1563}
!1555 = !DIDerivedType(tag: DW_TAG_member, scope: !1553, file: !1515, line: 112, baseType: !1556, size: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1553, file: !1515, line: 112, size: 64, elements: !1557)
!1557 = !{!1558, !1559}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1556, file: !1515, line: 114, baseType: !795, size: 16)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1556, file: !1515, line: 115, baseType: !1560, size: 48, offset: 16)
!1560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 48, elements: !1561)
!1561 = !{!1562}
!1562 = !DISubrange(count: 6)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1553, file: !1515, line: 121, baseType: !256, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1549, file: !1515, line: 123, baseType: !1565, size: 64, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1515, line: 96, flags: DIFlagFwdDecl)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1549, file: !1515, line: 124, baseType: !1568, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1515, line: 102, size: 192, elements: !1570)
!1570 = !{!1571, !1572, !1573}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1569, file: !1515, line: 103, baseType: !297, size: 128, align: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1569, file: !1515, line: 104, baseType: !1166, size: 32, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1569, file: !1515, line: 105, baseType: !422, size: 8, offset: 160)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1549, file: !1515, line: 125, baseType: !130, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !1515, line: 241, baseType: !1576, size: 320)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1546, file: !1515, line: 241, size: 320, elements: !1577)
!1577 = !{!1578, !1579, !1580, !1581, !1582}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1576, file: !1515, line: 242, baseType: !256, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1576, file: !1515, line: 243, baseType: !256, size: 64, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1576, file: !1515, line: 244, baseType: !1565, size: 64, offset: 128)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1576, file: !1515, line: 245, baseType: !1568, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1576, file: !1515, line: 246, baseType: !206, size: 64, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, scope: !1514, file: !1515, line: 254, baseType: !1584, size: 256, offset: 1344)
!1584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1514, file: !1515, line: 254, size: 256, elements: !1585)
!1585 = !{!1586, !1592}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1584, file: !1515, line: 255, baseType: !1587, size: 256)
!1587 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1515, line: 128, size: 256, elements: !1588)
!1588 = !{!1589, !1590}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1587, file: !1515, line: 129, baseType: !124, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1587, file: !1515, line: 130, baseType: !1591, size: 256)
!1591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 256, elements: !1091)
!1592 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !1515, line: 256, baseType: !1593, size: 256)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1584, file: !1515, line: 256, size: 256, elements: !1594)
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1593, file: !1515, line: 258, baseType: !151, size: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1593, file: !1515, line: 259, baseType: !1597, size: 128, offset: 128)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1598, line: 22, size: 128, elements: !1599)
!1598 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1599 = !{!1600, !1603}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1597, file: !1598, line: 23, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1598, line: 23, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1597, file: !1598, line: 24, baseType: !256, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1514, file: !1515, line: 274, baseType: !1605, size: 64, offset: 1600)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1515, line: 170, size: 192, elements: !1607)
!1607 = !{!1608, !1617, !1618}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1606, file: !1515, line: 171, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1515, line: 165, baseType: !1610)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!137, !1513, !1613, !1615, !1513}
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1566)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1587)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1606, file: !1515, line: 172, baseType: !1513, size: 64, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1606, file: !1515, line: 173, baseType: !1565, size: 64, offset: 128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1485, file: !1486, line: 138, baseType: !1513, size: 64, offset: 768)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1485, file: !1486, line: 139, baseType: !1513, size: 64, offset: 832)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1485, file: !1486, line: 140, baseType: !1513, size: 64, offset: 896)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1485, file: !1486, line: 145, baseType: !1623, size: 64, offset: 960)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1625, line: 13, size: 896, elements: !1626)
!1625 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1626 = !{!1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1624, file: !1625, line: 14, baseType: !1166, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1624, file: !1625, line: 15, baseType: !683, size: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1624, file: !1625, line: 16, baseType: !683, size: 32, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1624, file: !1625, line: 21, baseType: !707, size: 64, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1624, file: !1625, line: 27, baseType: !256, size: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1624, file: !1625, line: 28, baseType: !256, size: 64, offset: 256)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1624, file: !1625, line: 29, baseType: !707, size: 64, offset: 320)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1624, file: !1625, line: 32, baseType: !574, size: 128, offset: 384)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1624, file: !1625, line: 33, baseType: !367, size: 32, offset: 512)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1624, file: !1625, line: 37, baseType: !707, size: 64, offset: 576)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1624, file: !1625, line: 44, baseType: !1638, size: 256, offset: 640)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1639, line: 15, size: 256, elements: !1640)
!1639 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1640 = !{!1641, !1642, !1643, !1644, !1645, !1646, !1647}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1638, file: !1639, line: 16, baseType: !716)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1638, file: !1639, line: 18, baseType: !137, size: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1638, file: !1639, line: 19, baseType: !137, size: 32, offset: 32)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1638, file: !1639, line: 20, baseType: !137, size: 32, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1638, file: !1639, line: 21, baseType: !137, size: 32, offset: 96)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1638, file: !1639, line: 22, baseType: !256, size: 64, offset: 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1638, file: !1639, line: 23, baseType: !256, size: 64, offset: 192)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1485, file: !1486, line: 146, baseType: !1649, size: 64, offset: 1024)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !658, line: 516, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1485, file: !1486, line: 147, baseType: !1652, size: 64, offset: 1088)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1486, line: 25, size: 64, elements: !1654)
!1654 = !{!1655, !1656, !1657}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1653, file: !1486, line: 26, baseType: !683, size: 32)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1653, file: !1486, line: 27, baseType: !137, size: 32, offset: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1653, file: !1486, line: 28, baseType: !1658, offset: 64)
!1658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, elements: !1659)
!1659 = !{!1660}
!1660 = !DISubrange(count: 0)
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1485, file: !1486, line: 149, baseType: !1662, size: 128, offset: 1152)
!1662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1485, file: !1486, line: 149, size: 128, elements: !1663)
!1663 = !{!1664, !1665}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1662, file: !1486, line: 150, baseType: !137, size: 32)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1662, file: !1486, line: 151, baseType: !297, size: 128, align: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1153, file: !1154, line: 926, baseType: !1483, size: 64, offset: 8576)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1153, file: !1154, line: 929, baseType: !1483, size: 64, offset: 8640)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1153, file: !1154, line: 933, baseType: !1513, size: 64, offset: 8704)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1153, file: !1154, line: 943, baseType: !1670, size: 128, offset: 8768)
!1670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 128, elements: !1671)
!1671 = !{!1672}
!1672 = !DISubrange(count: 16)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1153, file: !1154, line: 945, baseType: !1674, size: 64, offset: 8896)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1154, line: 49, flags: DIFlagFwdDecl)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1153, file: !1154, line: 956, baseType: !1677, size: 64, offset: 8960)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1154, line: 45, flags: DIFlagFwdDecl)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1153, file: !1154, line: 959, baseType: !1680, size: 64, offset: 9024)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1154, line: 959, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1153, file: !1154, line: 962, baseType: !1683, size: 64, offset: 9088)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1154, line: 66, flags: DIFlagFwdDecl)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1153, file: !1154, line: 966, baseType: !1686, size: 64, offset: 9152)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1154, line: 50, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1153, file: !1154, line: 969, baseType: !1689, size: 64, offset: 9216)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1691, line: 82, size: 7296, elements: !1692)
!1691 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1692 = !{!1693, !1694, !1695, !1696, !1697, !1698, !1699, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1728, !1737, !1738, !1740, !1741, !1742, !1745, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1775, !1776, !1783, !1784, !1785, !1786, !1787, !1788}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1690, file: !1691, line: 83, baseType: !1166, size: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1690, file: !1691, line: 84, baseType: !683, size: 32, offset: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1690, file: !1691, line: 85, baseType: !137, size: 32, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1690, file: !1691, line: 86, baseType: !151, size: 128, offset: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1690, file: !1691, line: 88, baseType: !1417, size: 128, offset: 256)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1690, file: !1691, line: 91, baseType: !1152, size: 64, offset: 384)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1690, file: !1691, line: 94, baseType: !1700, size: 192, offset: 448)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1701, line: 30, size: 192, elements: !1702)
!1701 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1702 = !{!1703, !1704}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1700, file: !1701, line: 31, baseType: !151, size: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1700, file: !1701, line: 32, baseType: !1705, size: 64, offset: 128)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1706, line: 25, baseType: !1707)
!1706 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1706, line: 23, size: 64, elements: !1708)
!1708 = !{!1709}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1707, file: !1706, line: 24, baseType: !1306, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1690, file: !1691, line: 97, baseType: !570, size: 64, offset: 640)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1690, file: !1691, line: 100, baseType: !137, size: 32, offset: 704)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1690, file: !1691, line: 106, baseType: !137, size: 32, offset: 736)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1690, file: !1691, line: 107, baseType: !1152, size: 64, offset: 768)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1690, file: !1691, line: 110, baseType: !137, size: 32, offset: 832)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1690, file: !1691, line: 111, baseType: !7, size: 32, offset: 864)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1690, file: !1691, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1690, file: !1691, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1690, file: !1691, line: 128, baseType: !137, size: 32, offset: 928)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1690, file: !1691, line: 129, baseType: !151, size: 128, offset: 960)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1690, file: !1691, line: 132, baseType: !1228, size: 512, offset: 1088)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1690, file: !1691, line: 133, baseType: !1236, size: 64, offset: 1600)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1690, file: !1691, line: 140, baseType: !1723, size: 256, offset: 1664)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1724, size: 256, elements: !1505)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1691, line: 38, size: 128, elements: !1725)
!1725 = !{!1726, !1727}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1724, file: !1691, line: 39, baseType: !353, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1724, file: !1691, line: 40, baseType: !353, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1690, file: !1691, line: 146, baseType: !1729, size: 192, offset: 1920)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1691, line: 66, size: 192, elements: !1730)
!1730 = !{!1731}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1729, file: !1691, line: 67, baseType: !1732, size: 192)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1691, line: 47, size: 192, elements: !1733)
!1733 = !{!1734, !1735, !1736}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1732, file: !1691, line: 48, baseType: !709, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1732, file: !1691, line: 49, baseType: !709, size: 64, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1732, file: !1691, line: 50, baseType: !709, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1690, file: !1691, line: 150, baseType: !1466, size: 640, offset: 2112)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1690, file: !1691, line: 153, baseType: !1739, size: 256, offset: 2752)
!1739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1407, size: 256, elements: !1091)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1690, file: !1691, line: 159, baseType: !1407, size: 64, offset: 3008)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1690, file: !1691, line: 162, baseType: !137, size: 32, offset: 3072)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1690, file: !1691, line: 164, baseType: !1743, size: 64, offset: 3136)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1691, line: 164, flags: DIFlagFwdDecl)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1690, file: !1691, line: 175, baseType: !1746, size: 32, offset: 3200)
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !320, line: 805, baseType: !1747)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !320, line: 798, size: 32, elements: !1748)
!1748 = !{!1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1747, file: !320, line: 803, baseType: !319, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1747, file: !320, line: 804, baseType: !165, offset: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1690, file: !1691, line: 176, baseType: !353, size: 64, offset: 3264)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1690, file: !1691, line: 176, baseType: !353, size: 64, offset: 3328)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1690, file: !1691, line: 176, baseType: !353, size: 64, offset: 3392)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1690, file: !1691, line: 176, baseType: !353, size: 64, offset: 3456)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1690, file: !1691, line: 177, baseType: !353, size: 64, offset: 3520)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1690, file: !1691, line: 178, baseType: !353, size: 64, offset: 3584)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1690, file: !1691, line: 179, baseType: !1454, size: 128, offset: 3648)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1690, file: !1691, line: 180, baseType: !256, size: 64, offset: 3776)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1690, file: !1691, line: 180, baseType: !256, size: 64, offset: 3840)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1690, file: !1691, line: 180, baseType: !256, size: 64, offset: 3904)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1690, file: !1691, line: 180, baseType: !256, size: 64, offset: 3968)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1690, file: !1691, line: 181, baseType: !256, size: 64, offset: 4032)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1690, file: !1691, line: 181, baseType: !256, size: 64, offset: 4096)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1690, file: !1691, line: 181, baseType: !256, size: 64, offset: 4160)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1690, file: !1691, line: 181, baseType: !256, size: 64, offset: 4224)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1690, file: !1691, line: 182, baseType: !256, size: 64, offset: 4288)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1690, file: !1691, line: 182, baseType: !256, size: 64, offset: 4352)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1690, file: !1691, line: 182, baseType: !256, size: 64, offset: 4416)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1690, file: !1691, line: 182, baseType: !256, size: 64, offset: 4480)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1690, file: !1691, line: 183, baseType: !256, size: 64, offset: 4544)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1690, file: !1691, line: 183, baseType: !256, size: 64, offset: 4608)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1690, file: !1691, line: 184, baseType: !1773, offset: 4672)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1774, line: 12, elements: !179)
!1774 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1690, file: !1691, line: 192, baseType: !355, size: 64, offset: 4672)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1690, file: !1691, line: 203, baseType: !1777, size: 2048, offset: 4736)
!1777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1778, size: 2048, elements: !1671)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1779, line: 43, size: 128, elements: !1780)
!1779 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1780 = !{!1781, !1782}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1778, file: !1779, line: 44, baseType: !255, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1778, file: !1779, line: 45, baseType: !255, size: 64, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1690, file: !1691, line: 220, baseType: !422, size: 8, offset: 6784)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1690, file: !1691, line: 221, baseType: !1141, size: 16, offset: 6800)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1690, file: !1691, line: 222, baseType: !1141, size: 16, offset: 6816)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1690, file: !1691, line: 224, baseType: !910, size: 64, offset: 6848)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1690, file: !1691, line: 227, baseType: !1109, size: 192, offset: 6912)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1690, file: !1691, line: 233, baseType: !1109, size: 192, offset: 7104)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1153, file: !1154, line: 970, baseType: !1790, size: 64, offset: 9280)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1691, line: 20, size: 16576, elements: !1792)
!1792 = !{!1793, !1794, !1795, !1796}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1791, file: !1691, line: 21, baseType: !165)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1791, file: !1691, line: 22, baseType: !1166, size: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1791, file: !1691, line: 23, baseType: !1417, size: 128, offset: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1791, file: !1691, line: 24, baseType: !1797, size: 16384, offset: 192)
!1797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1798, size: 16384, elements: !211)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1701, line: 49, size: 256, elements: !1799)
!1799 = !{!1800}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1798, file: !1701, line: 50, baseType: !1801, size: 256)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1701, line: 35, size: 256, elements: !1802)
!1802 = !{!1803, !1810, !1811, !1817}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1801, file: !1701, line: 37, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1805, line: 19, baseType: !1806)
!1805 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1805, line: 18, baseType: !1808)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{null, !137}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1801, file: !1701, line: 38, baseType: !256, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1801, file: !1701, line: 44, baseType: !1812, size: 64, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1805, line: 22, baseType: !1813)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1805, line: 21, baseType: !1815)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1801, file: !1701, line: 46, baseType: !1705, size: 64, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1153, file: !1154, line: 971, baseType: !1705, size: 64, offset: 9344)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1153, file: !1154, line: 972, baseType: !1705, size: 64, offset: 9408)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1153, file: !1154, line: 974, baseType: !1705, size: 64, offset: 9472)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1153, file: !1154, line: 975, baseType: !1700, size: 192, offset: 9536)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1153, file: !1154, line: 976, baseType: !256, size: 64, offset: 9728)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1153, file: !1154, line: 977, baseType: !253, size: 64, offset: 9792)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1153, file: !1154, line: 978, baseType: !7, size: 32, offset: 9856)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1153, file: !1154, line: 980, baseType: !300, size: 64, offset: 9920)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1153, file: !1154, line: 989, baseType: !1827, size: 128, offset: 9984)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1828, line: 35, size: 128, elements: !1829)
!1828 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1829 = !{!1830, !1831, !1832}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1827, file: !1828, line: 36, baseType: !137, size: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1827, file: !1828, line: 37, baseType: !683, size: 32, offset: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1827, file: !1828, line: 38, baseType: !1833, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1828, line: 23, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1153, file: !1154, line: 992, baseType: !353, size: 64, offset: 10112)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1153, file: !1154, line: 993, baseType: !353, size: 64, offset: 10176)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1153, file: !1154, line: 996, baseType: !165, offset: 10240)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1153, file: !1154, line: 999, baseType: !716, offset: 10240)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1153, file: !1154, line: 1001, baseType: !1840, size: 64, offset: 10240)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1154, line: 636, size: 64, elements: !1841)
!1841 = !{!1842}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1840, file: !1154, line: 637, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1153, file: !1154, line: 1005, baseType: !688, size: 128, offset: 10304)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1153, file: !1154, line: 1007, baseType: !1152, size: 64, offset: 10432)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1153, file: !1154, line: 1009, baseType: !1847, size: 64, offset: 10496)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1154, line: 1009, flags: DIFlagFwdDecl)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1153, file: !1154, line: 1043, baseType: !124, size: 64, offset: 10560)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1153, file: !1154, line: 1046, baseType: !1851, size: 64, offset: 10624)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1154, line: 41, flags: DIFlagFwdDecl)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1153, file: !1154, line: 1050, baseType: !1854, size: 64, offset: 10688)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1154, line: 42, flags: DIFlagFwdDecl)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1153, file: !1154, line: 1054, baseType: !1857, size: 64, offset: 10752)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1154, line: 55, flags: DIFlagFwdDecl)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1153, file: !1154, line: 1056, baseType: !1860, size: 64, offset: 10816)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1154, line: 40, flags: DIFlagFwdDecl)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1153, file: !1154, line: 1058, baseType: !1863, size: 64, offset: 10880)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1865, line: 99, size: 704, elements: !1866)
!1865 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1866 = !{!1867, !1868, !1869, !1870, !1871, !1872, !1873, !1892, !1893}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1864, file: !1865, line: 100, baseType: !707, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1864, file: !1865, line: 101, baseType: !683, size: 32, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1864, file: !1865, line: 102, baseType: !683, size: 32, offset: 96)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1864, file: !1865, line: 105, baseType: !165, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1864, file: !1865, line: 107, baseType: !248, size: 16, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1864, file: !1865, line: 109, baseType: !674, size: 128, offset: 192)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1864, file: !1865, line: 110, baseType: !1874, size: 64, offset: 320)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1865, line: 73, size: 448, elements: !1876)
!1876 = !{!1877, !1880, !1881, !1886, !1891}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1875, file: !1865, line: 74, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1865, line: 74, flags: DIFlagFwdDecl)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1875, file: !1865, line: 75, baseType: !1863, size: 64, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, scope: !1875, file: !1865, line: 83, baseType: !1882, size: 128, offset: 128)
!1882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1875, file: !1865, line: 83, size: 128, elements: !1883)
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1882, file: !1865, line: 84, baseType: !151, size: 128)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1882, file: !1865, line: 85, baseType: !871, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, scope: !1875, file: !1865, line: 87, baseType: !1887, size: 128, offset: 256)
!1887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1875, file: !1865, line: 87, size: 128, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1887, file: !1865, line: 88, baseType: !574, size: 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1887, file: !1865, line: 89, baseType: !297, size: 128, align: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1875, file: !1865, line: 92, baseType: !7, size: 32, offset: 384)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1864, file: !1865, line: 111, baseType: !570, size: 64, offset: 384)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1864, file: !1865, line: 113, baseType: !1894, size: 256, offset: 448)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1895, line: 102, size: 256, elements: !1896)
!1895 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1896 = !{!1897, !1898, !1899}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1894, file: !1895, line: 103, baseType: !707, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1894, file: !1895, line: 104, baseType: !151, size: 128, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1894, file: !1895, line: 105, baseType: !1900, size: 64, offset: 192)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1895, line: 21, baseType: !1901)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{null, !1904}
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1153, file: !1154, line: 1061, baseType: !1906, size: 64, offset: 10944)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1154, line: 43, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1153, file: !1154, line: 1064, baseType: !256, size: 64, offset: 11008)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1153, file: !1154, line: 1065, baseType: !1910, size: 64, offset: 11072)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1701, line: 14, baseType: !1912)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1701, line: 12, size: 384, elements: !1913)
!1913 = !{!1914}
!1914 = !DIDerivedType(tag: DW_TAG_member, scope: !1912, file: !1701, line: 13, baseType: !1915, size: 384)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1912, file: !1701, line: 13, size: 384, elements: !1916)
!1916 = !{!1917, !1918, !1919, !1920}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1915, file: !1701, line: 13, baseType: !137, size: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1915, file: !1701, line: 13, baseType: !137, size: 32, offset: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1915, file: !1701, line: 13, baseType: !137, size: 32, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1915, file: !1701, line: 13, baseType: !1921, size: 256, offset: 128)
!1921 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1922, line: 32, size: 256, elements: !1923)
!1922 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1923 = !{!1924, !1929, !1942, !1948, !1957, !1977, !1982}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1921, file: !1922, line: 37, baseType: !1925, size: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1921, file: !1922, line: 34, size: 64, elements: !1926)
!1926 = !{!1927, !1928}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1925, file: !1922, line: 35, baseType: !1396, size: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1925, file: !1922, line: 36, baseType: !373, size: 32, offset: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1921, file: !1922, line: 45, baseType: !1930, size: 192)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1921, file: !1922, line: 40, size: 192, elements: !1931)
!1931 = !{!1932, !1934, !1935, !1941}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1930, file: !1922, line: 41, baseType: !1933, size: 32)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !239, line: 95, baseType: !137)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1930, file: !1922, line: 42, baseType: !137, size: 32, offset: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1930, file: !1922, line: 43, baseType: !1936, size: 64, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1922, line: 11, baseType: !1937)
!1937 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1922, line: 8, size: 64, elements: !1938)
!1938 = !{!1939, !1940}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1937, file: !1922, line: 9, baseType: !137, size: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1937, file: !1922, line: 10, baseType: !124, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1930, file: !1922, line: 44, baseType: !137, size: 32, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1921, file: !1922, line: 52, baseType: !1943, size: 128)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1921, file: !1922, line: 48, size: 128, elements: !1944)
!1944 = !{!1945, !1946, !1947}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1943, file: !1922, line: 49, baseType: !1396, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1943, file: !1922, line: 50, baseType: !373, size: 32, offset: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1943, file: !1922, line: 51, baseType: !1936, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1921, file: !1922, line: 61, baseType: !1949, size: 256)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1921, file: !1922, line: 55, size: 256, elements: !1950)
!1950 = !{!1951, !1952, !1953, !1954, !1956}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1949, file: !1922, line: 56, baseType: !1396, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1949, file: !1922, line: 57, baseType: !373, size: 32, offset: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1949, file: !1922, line: 58, baseType: !137, size: 32, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1949, file: !1922, line: 59, baseType: !1955, size: 64, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !239, line: 94, baseType: !240)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1949, file: !1922, line: 60, baseType: !1955, size: 64, offset: 192)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1921, file: !1922, line: 95, baseType: !1958, size: 256)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1921, file: !1922, line: 64, size: 256, elements: !1959)
!1959 = !{!1960, !1961}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1958, file: !1922, line: 65, baseType: !124, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, scope: !1958, file: !1922, line: 77, baseType: !1962, size: 192, offset: 64)
!1962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1958, file: !1922, line: 77, size: 192, elements: !1963)
!1963 = !{!1964, !1965, !1972}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1962, file: !1922, line: 82, baseType: !1141, size: 16)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1962, file: !1922, line: 88, baseType: !1966, size: 192)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1962, file: !1922, line: 84, size: 192, elements: !1967)
!1967 = !{!1968, !1970, !1971}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1966, file: !1922, line: 85, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 64, elements: !1266)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1966, file: !1922, line: 86, baseType: !124, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1966, file: !1922, line: 87, baseType: !124, size: 64, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1962, file: !1922, line: 93, baseType: !1973, size: 96)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1962, file: !1922, line: 90, size: 96, elements: !1974)
!1974 = !{!1975, !1976}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1973, file: !1922, line: 91, baseType: !1969, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1973, file: !1922, line: 92, baseType: !349, size: 32, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1921, file: !1922, line: 101, baseType: !1978, size: 128)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1921, file: !1922, line: 98, size: 128, elements: !1979)
!1979 = !{!1980, !1981}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1978, file: !1922, line: 99, baseType: !241, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1978, file: !1922, line: 100, baseType: !137, size: 32, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1921, file: !1922, line: 108, baseType: !1983, size: 128)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1921, file: !1922, line: 104, size: 128, elements: !1984)
!1984 = !{!1985, !1986, !1987}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1983, file: !1922, line: 105, baseType: !124, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1983, file: !1922, line: 106, baseType: !137, size: 32, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1983, file: !1922, line: 107, baseType: !7, size: 32, offset: 96)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1153, file: !1154, line: 1067, baseType: !1773, offset: 11136)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1153, file: !1154, line: 1099, baseType: !1990, size: 64, offset: 11136)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1154, line: 56, flags: DIFlagFwdDecl)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1153, file: !1154, line: 1103, baseType: !151, size: 128, offset: 11200)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1153, file: !1154, line: 1104, baseType: !1994, size: 64, offset: 11328)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1154, line: 46, flags: DIFlagFwdDecl)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1153, file: !1154, line: 1105, baseType: !1109, size: 192, offset: 11392)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1153, file: !1154, line: 1106, baseType: !7, size: 32, offset: 11584)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1153, file: !1154, line: 1109, baseType: !1999, size: 128, offset: 11648)
!1999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2000, size: 128, elements: !1505)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1154, line: 51, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1153, file: !1154, line: 1110, baseType: !1109, size: 192, offset: 11776)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1153, file: !1154, line: 1111, baseType: !151, size: 128, offset: 11968)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1153, file: !1154, line: 1173, baseType: !2005, size: 64, offset: 12096)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2007, line: 62, size: 256, align: 256, elements: !2008)
!2007 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2008 = !{!2009, !2010, !2011, !2016}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2006, file: !2007, line: 75, baseType: !349, size: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2006, file: !2007, line: 90, baseType: !349, size: 32, offset: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2006, file: !2007, line: 124, baseType: !2012, size: 64, offset: 64)
!2012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2006, file: !2007, line: 109, size: 64, elements: !2013)
!2013 = !{!2014, !2015}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2012, file: !2007, line: 110, baseType: !354, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2012, file: !2007, line: 112, baseType: !354, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2006, file: !2007, line: 144, baseType: !349, size: 32, offset: 128)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1153, file: !1154, line: 1174, baseType: !347, size: 32, offset: 12160)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1153, file: !1154, line: 1179, baseType: !256, size: 64, offset: 12224)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1153, file: !1154, line: 1182, baseType: !2020, size: 128, offset: 12288)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1087, line: 76, size: 128, elements: !2021)
!2021 = !{!2022, !2027, !2028}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2020, file: !1087, line: 85, baseType: !2023, size: 64)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2024, line: 7, size: 64, elements: !2025)
!2024 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2025 = !{!2026}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2023, file: !2024, line: 12, baseType: !1303, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2020, file: !1087, line: 88, baseType: !422, size: 8, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2020, file: !1087, line: 95, baseType: !422, size: 8, offset: 72)
!2029 = !DIDerivedType(tag: DW_TAG_member, scope: !1153, file: !1154, line: 1184, baseType: !2030, size: 128, offset: 12416)
!2030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1153, file: !1154, line: 1184, size: 128, elements: !2031)
!2031 = !{!2032, !2033}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2030, file: !1154, line: 1185, baseType: !1166, size: 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2030, file: !1154, line: 1186, baseType: !297, size: 128, align: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1153, file: !1154, line: 1190, baseType: !2035, size: 64, offset: 12544)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1154, line: 53, flags: DIFlagFwdDecl)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1153, file: !1154, line: 1192, baseType: !2038, size: 128, offset: 12608)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1087, line: 64, size: 128, elements: !2039)
!2039 = !{!2040, !2041, !2042}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2038, file: !1087, line: 65, baseType: !656, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2038, file: !1087, line: 67, baseType: !349, size: 32, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2038, file: !1087, line: 68, baseType: !349, size: 32, offset: 96)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1153, file: !1154, line: 1206, baseType: !137, size: 32, offset: 12736)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1153, file: !1154, line: 1207, baseType: !137, size: 32, offset: 12768)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1153, file: !1154, line: 1209, baseType: !256, size: 64, offset: 12800)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1153, file: !1154, line: 1219, baseType: !353, size: 64, offset: 12864)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1153, file: !1154, line: 1220, baseType: !353, size: 64, offset: 12928)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1153, file: !1154, line: 1317, baseType: !137, size: 32, offset: 12992)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1153, file: !1154, line: 1319, baseType: !1152, size: 64, offset: 13056)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1153, file: !1154, line: 1322, baseType: !2051, size: 64, offset: 13120)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2053, line: 56, size: 512, elements: !2054)
!2053 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2054 = !{!2055, !2056, !2057, !2058, !2059, !2060, !2061, !2063}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2052, file: !2053, line: 57, baseType: !2051, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2052, file: !2053, line: 58, baseType: !124, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2052, file: !2053, line: 59, baseType: !256, size: 64, offset: 128)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2052, file: !2053, line: 60, baseType: !256, size: 64, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2052, file: !2053, line: 61, baseType: !756, size: 64, offset: 256)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2052, file: !2053, line: 62, baseType: !7, size: 32, offset: 320)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2052, file: !2053, line: 63, baseType: !2062, size: 64, offset: 384)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !152, line: 153, baseType: !353)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2052, file: !2053, line: 64, baseType: !2064, size: 64, offset: 448)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1153, file: !1154, line: 1326, baseType: !1166, size: 32, offset: 13184)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1153, file: !1154, line: 1342, baseType: !124, size: 64, offset: 13248)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1153, file: !1154, line: 1343, baseType: !354, size: 64, offset: 13312)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1153, file: !1154, line: 1344, baseType: !353, size: 64, offset: 13376)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1153, file: !1154, line: 1345, baseType: !354, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1153, file: !1154, line: 1346, baseType: !354, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1153, file: !1154, line: 1347, baseType: !354, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1153, file: !1154, line: 1348, baseType: !297, size: 128, align: 64, offset: 13504)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1153, file: !1154, line: 1358, baseType: !2075, size: 34816, offset: 13824)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2076, line: 485, size: 34816, elements: !2077)
!2076 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2077 = !{!2078, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2107, !2108, !2109, !2110, !2111, !2112, !2115, !2116, !2117}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2075, file: !2076, line: 487, baseType: !2079, size: 192)
!2079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2080, size: 192, elements: !207)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2081, line: 16, size: 64, elements: !2082)
!2081 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2082 = !{!2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2080, file: !2081, line: 17, baseType: !795, size: 16)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2080, file: !2081, line: 18, baseType: !795, size: 16, offset: 16)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2080, file: !2081, line: 19, baseType: !795, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2080, file: !2081, line: 19, baseType: !795, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2080, file: !2081, line: 19, baseType: !795, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2080, file: !2081, line: 19, baseType: !795, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2080, file: !2081, line: 19, baseType: !795, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2080, file: !2081, line: 20, baseType: !795, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2080, file: !2081, line: 20, baseType: !795, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2080, file: !2081, line: 20, baseType: !795, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2080, file: !2081, line: 20, baseType: !795, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2080, file: !2081, line: 20, baseType: !795, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2080, file: !2081, line: 20, baseType: !795, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2075, file: !2076, line: 491, baseType: !256, size: 64, offset: 192)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2075, file: !2076, line: 495, baseType: !248, size: 16, offset: 256)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2075, file: !2076, line: 496, baseType: !248, size: 16, offset: 272)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2075, file: !2076, line: 497, baseType: !248, size: 16, offset: 288)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2075, file: !2076, line: 498, baseType: !248, size: 16, offset: 304)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2075, file: !2076, line: 502, baseType: !256, size: 64, offset: 320)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2075, file: !2076, line: 503, baseType: !256, size: 64, offset: 384)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2075, file: !2076, line: 514, baseType: !2104, size: 256, offset: 448)
!2104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2105, size: 256, elements: !1091)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2076, line: 483, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2075, file: !2076, line: 516, baseType: !256, size: 64, offset: 704)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2075, file: !2076, line: 518, baseType: !256, size: 64, offset: 768)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2075, file: !2076, line: 520, baseType: !256, size: 64, offset: 832)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2075, file: !2076, line: 521, baseType: !256, size: 64, offset: 896)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2075, file: !2076, line: 522, baseType: !256, size: 64, offset: 960)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2075, file: !2076, line: 528, baseType: !2113, size: 64, offset: 1024)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2076, line: 10, flags: DIFlagFwdDecl)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2075, file: !2076, line: 535, baseType: !256, size: 64, offset: 1088)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2075, file: !2076, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2075, file: !2076, line: 540, baseType: !2118, size: 33280, offset: 1536)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2119, line: 317, size: 33280, elements: !2120)
!2119 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2120 = !{!2121, !2122, !2123}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2118, file: !2119, line: 330, baseType: !7, size: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2118, file: !2119, line: 337, baseType: !256, size: 64, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2118, file: !2119, line: 348, baseType: !2124, size: 32768, offset: 512)
!2124 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2119, line: 304, size: 32768, elements: !2125)
!2125 = !{!2126, !2141, !2180, !2230, !2243}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2124, file: !2119, line: 305, baseType: !2127, size: 896)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2119, line: 12, size: 896, elements: !2128)
!2128 = !{!2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2140}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2127, file: !2119, line: 13, baseType: !347, size: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2127, file: !2119, line: 14, baseType: !347, size: 32, offset: 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2127, file: !2119, line: 15, baseType: !347, size: 32, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2127, file: !2119, line: 16, baseType: !347, size: 32, offset: 96)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2127, file: !2119, line: 17, baseType: !347, size: 32, offset: 128)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2127, file: !2119, line: 18, baseType: !347, size: 32, offset: 160)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2127, file: !2119, line: 19, baseType: !347, size: 32, offset: 192)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2127, file: !2119, line: 22, baseType: !2137, size: 640, offset: 224)
!2137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 640, elements: !2138)
!2138 = !{!2139}
!2139 = !DISubrange(count: 20)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2127, file: !2119, line: 25, baseType: !347, size: 32, offset: 864)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2124, file: !2119, line: 306, baseType: !2142, size: 4096, align: 128)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2119, line: 34, size: 4096, align: 128, elements: !2143)
!2143 = !{!2144, !2145, !2146, !2147, !2148, !2163, !2164, !2165, !2169, !2171, !2175}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2142, file: !2119, line: 35, baseType: !795, size: 16)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2142, file: !2119, line: 36, baseType: !795, size: 16, offset: 16)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2142, file: !2119, line: 37, baseType: !795, size: 16, offset: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2142, file: !2119, line: 38, baseType: !795, size: 16, offset: 48)
!2148 = !DIDerivedType(tag: DW_TAG_member, scope: !2142, file: !2119, line: 39, baseType: !2149, size: 128, offset: 64)
!2149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2142, file: !2119, line: 39, size: 128, elements: !2150)
!2150 = !{!2151, !2156}
!2151 = !DIDerivedType(tag: DW_TAG_member, scope: !2149, file: !2119, line: 40, baseType: !2152, size: 128)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2149, file: !2119, line: 40, size: 128, elements: !2153)
!2153 = !{!2154, !2155}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2152, file: !2119, line: 41, baseType: !353, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2152, file: !2119, line: 42, baseType: !353, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, scope: !2149, file: !2119, line: 44, baseType: !2157, size: 128)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2149, file: !2119, line: 44, size: 128, elements: !2158)
!2158 = !{!2159, !2160, !2161, !2162}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2157, file: !2119, line: 45, baseType: !347, size: 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2157, file: !2119, line: 46, baseType: !347, size: 32, offset: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2157, file: !2119, line: 47, baseType: !347, size: 32, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2157, file: !2119, line: 48, baseType: !347, size: 32, offset: 96)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2142, file: !2119, line: 51, baseType: !347, size: 32, offset: 192)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2142, file: !2119, line: 52, baseType: !347, size: 32, offset: 224)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2142, file: !2119, line: 55, baseType: !2166, size: 1024, offset: 256)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 1024, elements: !2167)
!2167 = !{!2168}
!2168 = !DISubrange(count: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2142, file: !2119, line: 58, baseType: !2170, size: 2048, offset: 1280)
!2170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 2048, elements: !211)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2142, file: !2119, line: 60, baseType: !2172, size: 384, offset: 3328)
!2172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 384, elements: !2173)
!2173 = !{!2174}
!2174 = !DISubrange(count: 12)
!2175 = !DIDerivedType(tag: DW_TAG_member, scope: !2142, file: !2119, line: 62, baseType: !2176, size: 384, offset: 3712)
!2176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2142, file: !2119, line: 62, size: 384, elements: !2177)
!2177 = !{!2178, !2179}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2176, file: !2119, line: 63, baseType: !2172, size: 384)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2176, file: !2119, line: 64, baseType: !2172, size: 384)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2124, file: !2119, line: 307, baseType: !2181, size: 1088)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2119, line: 79, size: 1088, elements: !2182)
!2182 = !{!2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2229}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2181, file: !2119, line: 80, baseType: !347, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2181, file: !2119, line: 81, baseType: !347, size: 32, offset: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2181, file: !2119, line: 82, baseType: !347, size: 32, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2181, file: !2119, line: 83, baseType: !347, size: 32, offset: 96)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2181, file: !2119, line: 84, baseType: !347, size: 32, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2181, file: !2119, line: 85, baseType: !347, size: 32, offset: 160)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2181, file: !2119, line: 86, baseType: !347, size: 32, offset: 192)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2181, file: !2119, line: 88, baseType: !2137, size: 640, offset: 224)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2181, file: !2119, line: 89, baseType: !1288, size: 8, offset: 864)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2181, file: !2119, line: 90, baseType: !1288, size: 8, offset: 872)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2181, file: !2119, line: 91, baseType: !1288, size: 8, offset: 880)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2181, file: !2119, line: 92, baseType: !1288, size: 8, offset: 888)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2181, file: !2119, line: 93, baseType: !1288, size: 8, offset: 896)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2181, file: !2119, line: 94, baseType: !1288, size: 8, offset: 904)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2181, file: !2119, line: 95, baseType: !2198, size: 64, offset: 960)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2200, line: 11, size: 128, elements: !2201)
!2200 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2201 = !{!2202, !2203}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2199, file: !2200, line: 12, baseType: !241, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2199, file: !2200, line: 13, baseType: !2204, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2206, line: 56, size: 1344, elements: !2207)
!2206 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2207 = !{!2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2205, file: !2206, line: 61, baseType: !256, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2205, file: !2206, line: 62, baseType: !256, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2205, file: !2206, line: 63, baseType: !256, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2205, file: !2206, line: 64, baseType: !256, size: 64, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2205, file: !2206, line: 65, baseType: !256, size: 64, offset: 256)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2205, file: !2206, line: 66, baseType: !256, size: 64, offset: 320)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2205, file: !2206, line: 68, baseType: !256, size: 64, offset: 384)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2205, file: !2206, line: 69, baseType: !256, size: 64, offset: 448)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2205, file: !2206, line: 70, baseType: !256, size: 64, offset: 512)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2205, file: !2206, line: 71, baseType: !256, size: 64, offset: 576)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2205, file: !2206, line: 72, baseType: !256, size: 64, offset: 640)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2205, file: !2206, line: 73, baseType: !256, size: 64, offset: 704)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2205, file: !2206, line: 74, baseType: !256, size: 64, offset: 768)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2205, file: !2206, line: 75, baseType: !256, size: 64, offset: 832)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2205, file: !2206, line: 76, baseType: !256, size: 64, offset: 896)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2205, file: !2206, line: 81, baseType: !256, size: 64, offset: 960)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2205, file: !2206, line: 83, baseType: !256, size: 64, offset: 1024)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2205, file: !2206, line: 84, baseType: !256, size: 64, offset: 1088)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2205, file: !2206, line: 85, baseType: !256, size: 64, offset: 1152)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2205, file: !2206, line: 86, baseType: !256, size: 64, offset: 1216)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2205, file: !2206, line: 87, baseType: !256, size: 64, offset: 1280)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2181, file: !2119, line: 96, baseType: !347, size: 32, offset: 1024)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2124, file: !2119, line: 308, baseType: !2231, size: 4608, align: 512)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2119, line: 289, size: 4608, align: 512, elements: !2232)
!2232 = !{!2233, !2234, !2241}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2231, file: !2119, line: 290, baseType: !2142, size: 4096, align: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2231, file: !2119, line: 291, baseType: !2235, size: 512, offset: 4096)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2119, line: 268, size: 512, elements: !2236)
!2236 = !{!2237, !2238, !2239}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2235, file: !2119, line: 269, baseType: !353, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2235, file: !2119, line: 270, baseType: !353, size: 64, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2235, file: !2119, line: 271, baseType: !2240, size: 384, offset: 128)
!2240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 384, elements: !1561)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2231, file: !2119, line: 292, baseType: !2242, offset: 4608)
!2242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1288, elements: !1659)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2124, file: !2119, line: 309, baseType: !2244, size: 32768)
!2244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1288, size: 32768, elements: !2245)
!2245 = !{!2246}
!2246 = !DISubrange(count: 4096)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1149, file: !658, line: 378, baseType: !2248, size: 64, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1145, file: !658, line: 384, baseType: !1438, size: 192, offset: 192)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !914, file: !658, line: 500, baseType: !165, offset: 6656)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !914, file: !658, line: 501, baseType: !2252, size: 64, offset: 6656)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !658, line: 387, flags: DIFlagFwdDecl)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !914, file: !658, line: 516, baseType: !1649, size: 64, offset: 6720)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !914, file: !658, line: 519, baseType: !284, size: 64, offset: 6784)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !914, file: !658, line: 521, baseType: !2257, size: 64, offset: 6848)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !658, line: 521, flags: DIFlagFwdDecl)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !914, file: !658, line: 545, baseType: !683, size: 32, offset: 6912)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !914, file: !658, line: 548, baseType: !422, size: 8, offset: 6944)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !914, file: !658, line: 550, baseType: !2262, offset: 6952)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2263, line: 142, elements: !179)
!2263 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !914, file: !658, line: 554, baseType: !1894, size: 256, offset: 6976)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !914, file: !658, line: 557, baseType: !347, size: 32, offset: 7232)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !911, file: !658, line: 565, baseType: !2267, offset: 7296)
!2267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, elements: !2268)
!2268 = !{!2269}
!2269 = !DISubrange(count: -1)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !907, file: !658, line: 151, baseType: !683, size: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !900, file: !658, line: 156, baseType: !165, offset: 256)
!2272 = !DIDerivedType(tag: DW_TAG_member, scope: !662, file: !658, line: 159, baseType: !2273, size: 128)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !662, file: !658, line: 159, size: 128, elements: !2274)
!2274 = !{!2275, !2339}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2273, file: !658, line: 161, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2278)
!2278 = !{!2279, !2289, !2310, !2311, !2312, !2313, !2314, !2326, !2327, !2328}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2277, file: !31, line: 111, baseType: !2280, size: 384)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2281)
!2281 = !{!2282, !2284, !2285, !2286, !2287, !2288}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2280, file: !31, line: 20, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2280, file: !31, line: 21, baseType: !2283, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2280, file: !31, line: 22, baseType: !2283, size: 64, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2280, file: !31, line: 23, baseType: !256, size: 64, offset: 192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2280, file: !31, line: 24, baseType: !256, size: 64, offset: 256)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2280, file: !31, line: 25, baseType: !256, size: 64, offset: 320)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2277, file: !31, line: 112, baseType: !2290, size: 64, offset: 384)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2292, line: 105, size: 128, elements: !2293)
!2292 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2293 = !{!2294, !2295}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2291, file: !2292, line: 110, baseType: !256, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2291, file: !2292, line: 118, baseType: !2296, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2292, line: 95, size: 448, elements: !2298)
!2298 = !{!2299, !2300, !2305, !2306, !2307, !2308, !2309}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2297, file: !2292, line: 96, baseType: !707, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2297, file: !2292, line: 97, baseType: !2301, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2292, line: 60, baseType: !2303)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{null, !2290}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2297, file: !2292, line: 98, baseType: !2301, size: 64, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2297, file: !2292, line: 99, baseType: !422, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2297, file: !2292, line: 100, baseType: !422, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2297, file: !2292, line: 101, baseType: !297, size: 128, align: 64, offset: 256)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2297, file: !2292, line: 102, baseType: !2290, size: 64, offset: 384)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2277, file: !31, line: 113, baseType: !2291, size: 128, offset: 448)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2277, file: !31, line: 114, baseType: !1438, size: 192, offset: 576)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2277, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2277, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2277, file: !31, line: 117, baseType: !2315, size: 64, offset: 832)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2317)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2318)
!2318 = !{!2319, !2320, !2324, !2325}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2317, file: !31, line: 73, baseType: !776, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2317, file: !31, line: 78, baseType: !2321, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{null, !2276}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2317, file: !31, line: 83, baseType: !2321, size: 64, offset: 128)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2317, file: !31, line: 89, baseType: !963, size: 64, offset: 192)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2277, file: !31, line: 118, baseType: !124, size: 64, offset: 896)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2277, file: !31, line: 119, baseType: !137, size: 32, offset: 960)
!2328 = !DIDerivedType(tag: DW_TAG_member, scope: !2277, file: !31, line: 120, baseType: !2329, size: 128, offset: 1024)
!2329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2277, file: !31, line: 120, size: 128, elements: !2330)
!2330 = !{!2331, !2337}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2329, file: !31, line: 121, baseType: !2332, size: 128)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2333, line: 6, size: 128, elements: !2334)
!2333 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2334 = !{!2335, !2336}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2332, file: !2333, line: 7, baseType: !353, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2332, file: !2333, line: 8, baseType: !353, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2329, file: !31, line: 122, baseType: !2338)
!2338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2332, elements: !1659)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2273, file: !658, line: 162, baseType: !124, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !662, file: !658, line: 176, baseType: !297, size: 128, align: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !658, line: 179, baseType: !2342, size: 32, offset: 384)
!2342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !657, file: !658, line: 179, size: 32, elements: !2343)
!2343 = !{!2344, !2345, !2346, !2347}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2342, file: !658, line: 184, baseType: !683, size: 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2342, file: !658, line: 192, baseType: !7, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2342, file: !658, line: 194, baseType: !7, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2342, file: !658, line: 195, baseType: !137, size: 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !657, file: !658, line: 199, baseType: !683, size: 32, offset: 416)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !592, file: !44, line: 1964, baseType: !2350, size: 64, offset: 1344)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!241, !531, !2353}
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2355, line: 12, size: 256, elements: !2356)
!2355 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2356 = !{!2357, !2358, !2359, !2360, !2361}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2354, file: !2355, line: 13, baseType: !679, size: 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2354, file: !2355, line: 16, baseType: !137, size: 32, offset: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2354, file: !2355, line: 23, baseType: !256, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2354, file: !2355, line: 30, baseType: !256, size: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2354, file: !2355, line: 33, baseType: !2362, size: 64, offset: 192)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !658, line: 27, flags: DIFlagFwdDecl)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !592, file: !44, line: 1966, baseType: !2350, size: 64, offset: 1408)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !532, file: !44, line: 1424, baseType: !2366, size: 64, offset: 448)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2368)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2369)
!2369 = !{!2370, !2416, !2420, !2424, !2425, !2426, !2427, !2428, !2433, !2438, !2442}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2368, file: !38, line: 323, baseType: !2371, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!137, !2374}
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2376)
!2376 = !{!2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2401, !2402, !2403}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2375, file: !38, line: 295, baseType: !574, size: 128)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2375, file: !38, line: 296, baseType: !151, size: 128, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2375, file: !38, line: 297, baseType: !151, size: 128, offset: 256)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2375, file: !38, line: 298, baseType: !151, size: 128, offset: 384)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2375, file: !38, line: 299, baseType: !1109, size: 192, offset: 512)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2375, file: !38, line: 300, baseType: !165, offset: 704)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2375, file: !38, line: 301, baseType: !683, size: 32, offset: 704)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2375, file: !38, line: 302, baseType: !531, size: 64, offset: 768)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2375, file: !38, line: 303, baseType: !2386, size: 64, offset: 832)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2387)
!2387 = !{!2388, !2400}
!2388 = !DIDerivedType(tag: DW_TAG_member, scope: !2386, file: !38, line: 69, baseType: !2389, size: 32)
!2389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2386, file: !38, line: 69, size: 32, elements: !2390)
!2390 = !{!2391, !2392, !2393}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2389, file: !38, line: 70, baseType: !367, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2389, file: !38, line: 71, baseType: !375, size: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2389, file: !38, line: 72, baseType: !2394, size: 32)
!2394 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2395, line: 24, baseType: !2396)
!2395 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2395, line: 22, size: 32, elements: !2397)
!2397 = !{!2398}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2396, file: !2395, line: 23, baseType: !2399, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2395, line: 20, baseType: !373)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2386, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2375, file: !38, line: 304, baseType: !463, size: 64, offset: 896)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2375, file: !38, line: 305, baseType: !256, size: 64, offset: 960)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2375, file: !38, line: 306, baseType: !2404, size: 576, offset: 1024)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2405)
!2405 = !{!2406, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2404, file: !38, line: 206, baseType: !2407, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !465)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2404, file: !38, line: 207, baseType: !2407, size: 64, offset: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2404, file: !38, line: 208, baseType: !2407, size: 64, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2404, file: !38, line: 209, baseType: !2407, size: 64, offset: 192)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2404, file: !38, line: 210, baseType: !2407, size: 64, offset: 256)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2404, file: !38, line: 211, baseType: !2407, size: 64, offset: 320)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2404, file: !38, line: 212, baseType: !2407, size: 64, offset: 384)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2404, file: !38, line: 213, baseType: !471, size: 64, offset: 448)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2404, file: !38, line: 214, baseType: !471, size: 64, offset: 512)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2368, file: !38, line: 324, baseType: !2417, size: 64, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!2374, !531, !137}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2368, file: !38, line: 325, baseType: !2421, size: 64, offset: 128)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{null, !2374}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2368, file: !38, line: 326, baseType: !2371, size: 64, offset: 192)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2368, file: !38, line: 327, baseType: !2371, size: 64, offset: 256)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2368, file: !38, line: 328, baseType: !2371, size: 64, offset: 320)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2368, file: !38, line: 329, baseType: !620, size: 64, offset: 384)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2368, file: !38, line: 332, baseType: !2429, size: 64, offset: 448)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!2432, !361}
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2368, file: !38, line: 333, baseType: !2434, size: 64, offset: 512)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!137, !361, !2437}
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2368, file: !38, line: 335, baseType: !2439, size: 64, offset: 576)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!137, !361, !2432}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2368, file: !38, line: 337, baseType: !2443, size: 64, offset: 640)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!137, !531, !2446}
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !532, file: !44, line: 1425, baseType: !2448, size: 64, offset: 512)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2450)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2451)
!2451 = !{!2452, !2456, !2457, !2461, !2462, !2463, !2478, !2501, !2505, !2506, !2529}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2450, file: !38, line: 429, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!137, !531, !137, !137, !481}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2450, file: !38, line: 430, baseType: !620, size: 64, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2450, file: !38, line: 431, baseType: !2458, size: 64, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!137, !531, !7}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2450, file: !38, line: 432, baseType: !2458, size: 64, offset: 192)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2450, file: !38, line: 433, baseType: !620, size: 64, offset: 256)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2450, file: !38, line: 434, baseType: !2464, size: 64, offset: 320)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!137, !531, !137, !2467}
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2469)
!2469 = !{!2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2468, file: !38, line: 416, baseType: !137, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2468, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2468, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2468, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2468, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2468, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2468, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2468, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2450, file: !38, line: 435, baseType: !2479, size: 64, offset: 384)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!137, !531, !2386, !2482}
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2484)
!2484 = !{!2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2483, file: !38, line: 344, baseType: !137, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2483, file: !38, line: 345, baseType: !353, size: 64, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2483, file: !38, line: 346, baseType: !353, size: 64, offset: 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2483, file: !38, line: 347, baseType: !353, size: 64, offset: 192)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2483, file: !38, line: 348, baseType: !353, size: 64, offset: 256)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2483, file: !38, line: 349, baseType: !353, size: 64, offset: 320)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2483, file: !38, line: 350, baseType: !353, size: 64, offset: 384)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2483, file: !38, line: 351, baseType: !713, size: 64, offset: 448)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2483, file: !38, line: 353, baseType: !713, size: 64, offset: 512)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2483, file: !38, line: 354, baseType: !137, size: 32, offset: 576)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2483, file: !38, line: 355, baseType: !137, size: 32, offset: 608)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2483, file: !38, line: 356, baseType: !353, size: 64, offset: 640)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2483, file: !38, line: 357, baseType: !353, size: 64, offset: 704)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2483, file: !38, line: 358, baseType: !353, size: 64, offset: 768)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2483, file: !38, line: 359, baseType: !713, size: 64, offset: 832)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2483, file: !38, line: 360, baseType: !137, size: 32, offset: 896)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2450, file: !38, line: 436, baseType: !2502, size: 64, offset: 448)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!137, !531, !2446, !2482}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2450, file: !38, line: 438, baseType: !2479, size: 64, offset: 512)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2450, file: !38, line: 439, baseType: !2507, size: 64, offset: 576)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!137, !531, !2510}
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2512)
!2512 = !{!2513, !2514}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2511, file: !38, line: 410, baseType: !7, size: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2511, file: !38, line: 411, baseType: !2515, size: 1344, offset: 64)
!2515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2516, size: 1344, elements: !207)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2517)
!2517 = !{!2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2528}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2516, file: !38, line: 396, baseType: !7, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2516, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2516, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2516, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2516, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2516, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2516, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2516, file: !38, line: 404, baseType: !355, size: 64, offset: 256)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2516, file: !38, line: 405, baseType: !2527, size: 64, offset: 320)
!2527 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !152, line: 126, baseType: !353)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2516, file: !38, line: 406, baseType: !2527, size: 64, offset: 384)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2450, file: !38, line: 440, baseType: !2458, size: 64, offset: 640)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !532, file: !44, line: 1426, baseType: !2531, size: 64, offset: 576)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2533)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !532, file: !44, line: 1427, baseType: !256, size: 64, offset: 640)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !532, file: !44, line: 1428, baseType: !256, size: 64, offset: 704)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !532, file: !44, line: 1429, baseType: !256, size: 64, offset: 768)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !532, file: !44, line: 1430, baseType: !314, size: 64, offset: 832)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !532, file: !44, line: 1431, baseType: !703, size: 256, offset: 896)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !532, file: !44, line: 1432, baseType: !137, size: 32, offset: 1152)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !532, file: !44, line: 1433, baseType: !683, size: 32, offset: 1184)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !532, file: !44, line: 1437, baseType: !2542, size: 64, offset: 1216)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2545)
!2545 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !532, file: !44, line: 1449, baseType: !2547, size: 64, offset: 1280)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !330, line: 34, size: 64, elements: !2548)
!2548 = !{!2549}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2547, file: !330, line: 35, baseType: !333, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !532, file: !44, line: 1450, baseType: !151, size: 128, offset: 1344)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !532, file: !44, line: 1451, baseType: !2552, size: 64, offset: 1472)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !532, file: !44, line: 1452, baseType: !1860, size: 64, offset: 1536)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !532, file: !44, line: 1453, baseType: !2556, size: 64, offset: 1600)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !532, file: !44, line: 1454, baseType: !574, size: 128, offset: 1664)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !532, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !532, file: !44, line: 1456, baseType: !2561, size: 2432, offset: 1856)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2562)
!2562 = !{!2563, !2564, !2565, !2567, !2599}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2561, file: !38, line: 519, baseType: !7, size: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2561, file: !38, line: 520, baseType: !703, size: 256, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2561, file: !38, line: 521, baseType: !2566, size: 192, offset: 320)
!2566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 192, elements: !207)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2561, file: !38, line: 522, baseType: !2568, size: 1728, offset: 512)
!2568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2569, size: 1728, elements: !207)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2570)
!2570 = !{!2571, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2569, file: !38, line: 223, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2574)
!2574 = !{!2575, !2576, !2589, !2590}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2573, file: !38, line: 444, baseType: !137, size: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2573, file: !38, line: 445, baseType: !2577, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2579)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2580)
!2580 = !{!2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2579, file: !38, line: 311, baseType: !620, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2579, file: !38, line: 312, baseType: !620, size: 64, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2579, file: !38, line: 313, baseType: !620, size: 64, offset: 128)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2579, file: !38, line: 314, baseType: !620, size: 64, offset: 192)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2579, file: !38, line: 315, baseType: !2371, size: 64, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2579, file: !38, line: 316, baseType: !2371, size: 64, offset: 320)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2579, file: !38, line: 317, baseType: !2371, size: 64, offset: 384)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2579, file: !38, line: 318, baseType: !2443, size: 64, offset: 448)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2573, file: !38, line: 446, baseType: !565, size: 64, offset: 128)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2573, file: !38, line: 447, baseType: !2572, size: 64, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2569, file: !38, line: 224, baseType: !137, size: 32, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2569, file: !38, line: 226, baseType: !151, size: 128, offset: 128)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2569, file: !38, line: 227, baseType: !256, size: 64, offset: 256)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2569, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2569, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2569, file: !38, line: 230, baseType: !2407, size: 64, offset: 384)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2569, file: !38, line: 231, baseType: !2407, size: 64, offset: 448)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2569, file: !38, line: 232, baseType: !124, size: 64, offset: 512)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2561, file: !38, line: 523, baseType: !2600, size: 192, offset: 2240)
!2600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2577, size: 192, elements: !207)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !532, file: !44, line: 1458, baseType: !2602, size: 2112, offset: 4288)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2603)
!2603 = !{!2604, !2605, !2606}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2602, file: !44, line: 1411, baseType: !137, size: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2602, file: !44, line: 1412, baseType: !1417, size: 128, offset: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2602, file: !44, line: 1413, baseType: !2607, size: 1920, offset: 192)
!2607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2608, size: 1920, elements: !207)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2609, line: 12, size: 640, elements: !2610)
!2609 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2610 = !{!2611, !2619, !2621, !2626, !2627}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2608, file: !2609, line: 13, baseType: !2612, size: 320)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2613, line: 17, size: 320, elements: !2614)
!2613 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2614 = !{!2615, !2616, !2617, !2618}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2612, file: !2613, line: 18, baseType: !137, size: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2612, file: !2613, line: 19, baseType: !137, size: 32, offset: 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2612, file: !2613, line: 20, baseType: !1417, size: 128, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2612, file: !2613, line: 22, baseType: !297, size: 128, align: 64, offset: 192)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2608, file: !2609, line: 14, baseType: !2620, size: 64, offset: 320)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2608, file: !2609, line: 15, baseType: !2622, size: 64, offset: 384)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2623, line: 16, size: 64, elements: !2624)
!2623 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2624 = !{!2625}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2622, file: !2623, line: 17, baseType: !1152, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2608, file: !2609, line: 16, baseType: !1417, size: 128, offset: 448)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2608, file: !2609, line: 17, baseType: !683, size: 32, offset: 576)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !532, file: !44, line: 1465, baseType: !124, size: 64, offset: 6400)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !532, file: !44, line: 1468, baseType: !347, size: 32, offset: 6464)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !532, file: !44, line: 1470, baseType: !471, size: 64, offset: 6528)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !532, file: !44, line: 1471, baseType: !471, size: 64, offset: 6592)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !532, file: !44, line: 1473, baseType: !349, size: 32, offset: 6656)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !532, file: !44, line: 1474, baseType: !2634, size: 64, offset: 6720)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !532, file: !44, line: 1477, baseType: !2637, size: 256, offset: 6784)
!2637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 256, elements: !2167)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !532, file: !44, line: 1478, baseType: !2639, size: 128, offset: 7040)
!2639 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2640, line: 18, baseType: !2641)
!2640 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2640, line: 16, size: 128, elements: !2642)
!2642 = !{!2643}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2641, file: !2640, line: 17, baseType: !2644, size: 128)
!2644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1289, size: 128, elements: !1671)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !532, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !532, file: !44, line: 1481, baseType: !2647, size: 32, offset: 7200)
!2647 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !152, line: 150, baseType: !7)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !532, file: !44, line: 1487, baseType: !1109, size: 192, offset: 7232)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !532, file: !44, line: 1493, baseType: !130, size: 64, offset: 7424)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !532, file: !44, line: 1495, baseType: !2651, size: 64, offset: 7488)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2653)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !312, line: 135, size: 1024, align: 512, elements: !2654)
!2654 = !{!2655, !2659, !2660, !2667, !2673, !2677, !2681, !2685, !2686, !2690, !2694, !2699, !2703}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2653, file: !312, line: 136, baseType: !2656, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!137, !314, !7}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2653, file: !312, line: 137, baseType: !2656, size: 64, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2653, file: !312, line: 138, baseType: !2661, size: 64, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!137, !2664, !2666}
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2653, file: !312, line: 139, baseType: !2668, size: 64, offset: 192)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!137, !2664, !7, !130, !2671}
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2653, file: !312, line: 141, baseType: !2674, size: 64, offset: 256)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!137, !2664}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2653, file: !312, line: 142, baseType: !2678, size: 64, offset: 320)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!137, !314}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2653, file: !312, line: 143, baseType: !2682, size: 64, offset: 384)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{null, !314}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2653, file: !312, line: 144, baseType: !2682, size: 64, offset: 448)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2653, file: !312, line: 145, baseType: !2687, size: 64, offset: 512)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{null, !314, !361}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2653, file: !312, line: 146, baseType: !2691, size: 64, offset: 576)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!206, !314, !206, !137}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2653, file: !312, line: 147, baseType: !2695, size: 64, offset: 640)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!310, !2698}
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2653, file: !312, line: 148, baseType: !2700, size: 64, offset: 704)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!137, !481, !422}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2653, file: !312, line: 149, baseType: !2704, size: 64, offset: 768)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!314, !314, !2707}
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !532, file: !44, line: 1500, baseType: !137, size: 32, offset: 7552)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !532, file: !44, line: 1502, baseType: !2711, size: 448, offset: 7616)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2355, line: 60, size: 448, elements: !2712)
!2712 = !{!2713, !2718, !2719, !2720, !2721, !2722, !2723}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2711, file: !2355, line: 61, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!256, !2717, !2353}
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2711, file: !2355, line: 63, baseType: !2714, size: 64, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2711, file: !2355, line: 66, baseType: !241, size: 64, offset: 128)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2711, file: !2355, line: 67, baseType: !137, size: 32, offset: 192)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2711, file: !2355, line: 68, baseType: !7, size: 32, offset: 224)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2711, file: !2355, line: 71, baseType: !151, size: 128, offset: 256)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2711, file: !2355, line: 77, baseType: !2724, size: 64, offset: 384)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !532, file: !44, line: 1505, baseType: !707, size: 64, offset: 8064)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !532, file: !44, line: 1508, baseType: !707, size: 64, offset: 8128)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !532, file: !44, line: 1511, baseType: !137, size: 32, offset: 8192)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !532, file: !44, line: 1514, baseType: !845, size: 32, offset: 8224)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !532, file: !44, line: 1517, baseType: !2730, size: 64, offset: 8256)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1895, line: 18, flags: DIFlagFwdDecl)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !532, file: !44, line: 1518, baseType: !570, size: 64, offset: 8320)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !532, file: !44, line: 1525, baseType: !1649, size: 64, offset: 8384)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !532, file: !44, line: 1532, baseType: !2735, size: 64, offset: 8448)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2736, line: 52, size: 64, elements: !2737)
!2736 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2737 = !{!2738}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2735, file: !2736, line: 53, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2736, line: 40, size: 256, elements: !2741)
!2741 = !{!2742, !2743, !2748}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2740, file: !2736, line: 42, baseType: !165)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2740, file: !2736, line: 44, baseType: !2744, size: 192)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2736, line: 28, size: 192, elements: !2745)
!2745 = !{!2746, !2747}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2744, file: !2736, line: 29, baseType: !151, size: 128)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2744, file: !2736, line: 31, baseType: !241, size: 64, offset: 128)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2740, file: !2736, line: 49, baseType: !241, size: 64, offset: 192)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !532, file: !44, line: 1533, baseType: !2735, size: 64, offset: 8512)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !532, file: !44, line: 1534, baseType: !297, size: 128, align: 64, offset: 8576)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !532, file: !44, line: 1535, baseType: !1894, size: 256, offset: 8704)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !532, file: !44, line: 1537, baseType: !1109, size: 192, offset: 8960)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !532, file: !44, line: 1542, baseType: !137, size: 32, offset: 9152)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !532, file: !44, line: 1545, baseType: !165, offset: 9184)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !532, file: !44, line: 1546, baseType: !151, size: 128, offset: 9216)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !532, file: !44, line: 1548, baseType: !165, offset: 9344)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !532, file: !44, line: 1549, baseType: !151, size: 128, offset: 9344)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !362, file: !44, line: 624, baseType: !669, size: 64, offset: 256)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !362, file: !44, line: 631, baseType: !256, size: 64, offset: 320)
!2760 = !DIDerivedType(tag: DW_TAG_member, scope: !362, file: !44, line: 639, baseType: !2761, size: 32, offset: 384)
!2761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !362, file: !44, line: 639, size: 32, elements: !2762)
!2762 = !{!2763, !2765}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2761, file: !44, line: 640, baseType: !2764, size: 32)
!2764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2761, file: !44, line: 641, baseType: !7, size: 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !362, file: !44, line: 643, baseType: !445, size: 32, offset: 416)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !362, file: !44, line: 644, baseType: !463, size: 64, offset: 448)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !362, file: !44, line: 645, baseType: !467, size: 128, offset: 512)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !362, file: !44, line: 646, baseType: !467, size: 128, offset: 640)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !362, file: !44, line: 647, baseType: !467, size: 128, offset: 768)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !362, file: !44, line: 648, baseType: !165, offset: 896)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !362, file: !44, line: 649, baseType: !248, size: 16, offset: 896)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !362, file: !44, line: 650, baseType: !1288, size: 8, offset: 912)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !362, file: !44, line: 651, baseType: !1288, size: 8, offset: 920)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !362, file: !44, line: 652, baseType: !2527, size: 64, offset: 960)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !362, file: !44, line: 659, baseType: !256, size: 64, offset: 1024)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !362, file: !44, line: 660, baseType: !703, size: 256, offset: 1088)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !362, file: !44, line: 662, baseType: !256, size: 64, offset: 1344)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !362, file: !44, line: 663, baseType: !256, size: 64, offset: 1408)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !362, file: !44, line: 665, baseType: !574, size: 128, offset: 1472)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !362, file: !44, line: 666, baseType: !151, size: 128, offset: 1600)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !362, file: !44, line: 675, baseType: !151, size: 128, offset: 1728)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !362, file: !44, line: 676, baseType: !151, size: 128, offset: 1856)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !362, file: !44, line: 677, baseType: !151, size: 128, offset: 1984)
!2785 = !DIDerivedType(tag: DW_TAG_member, scope: !362, file: !44, line: 678, baseType: !2786, size: 128, offset: 2112)
!2786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !362, file: !44, line: 678, size: 128, elements: !2787)
!2787 = !{!2788, !2789}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2786, file: !44, line: 679, baseType: !570, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2786, file: !44, line: 680, baseType: !297, size: 128, align: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !362, file: !44, line: 682, baseType: !709, size: 64, offset: 2240)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !362, file: !44, line: 683, baseType: !709, size: 64, offset: 2304)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !362, file: !44, line: 684, baseType: !683, size: 32, offset: 2368)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !362, file: !44, line: 685, baseType: !683, size: 32, offset: 2400)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !362, file: !44, line: 686, baseType: !683, size: 32, offset: 2432)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !362, file: !44, line: 688, baseType: !683, size: 32, offset: 2464)
!2796 = !DIDerivedType(tag: DW_TAG_member, scope: !362, file: !44, line: 690, baseType: !2797, size: 64, offset: 2496)
!2797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !362, file: !44, line: 690, size: 64, elements: !2798)
!2798 = !{!2799, !3022}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2797, file: !44, line: 691, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2802)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2803)
!2803 = !{!2804, !2805, !2809, !2814, !2818, !2819, !2820, !2824, !2837, !2838, !2846, !2850, !2851, !2855, !2856, !2860, !2865, !2866, !2870, !2874, !2982, !2986, !2987, !2991, !2992, !2996, !3000, !3005, !3009, !3013, !3017, !3021}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2802, file: !44, line: 1823, baseType: !565, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2802, file: !44, line: 1824, baseType: !2806, size: 64, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!463, !284, !463, !137}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2802, file: !44, line: 1825, baseType: !2810, size: 64, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!237, !284, !206, !253, !2813}
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2802, file: !44, line: 1826, baseType: !2815, size: 64, offset: 192)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!237, !284, !130, !253, !2813}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2802, file: !44, line: 1827, baseType: !780, size: 64, offset: 256)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2802, file: !44, line: 1828, baseType: !780, size: 64, offset: 320)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2802, file: !44, line: 1829, baseType: !2821, size: 64, offset: 384)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!137, !783, !422}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2802, file: !44, line: 1830, baseType: !2825, size: 64, offset: 448)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!137, !284, !2828}
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2830)
!2830 = !{!2831, !2836}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2829, file: !44, line: 1777, baseType: !2832, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2833)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!137, !2828, !130, !137, !463, !353, !7}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2829, file: !44, line: 1778, baseType: !463, size: 64, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2802, file: !44, line: 1831, baseType: !2825, size: 64, offset: 512)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2802, file: !44, line: 1832, baseType: !2839, size: 64, offset: 576)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!2842, !284, !2844}
!2842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2843, line: 52, baseType: !7)
!2843 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !551, line: 27, flags: DIFlagFwdDecl)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2802, file: !44, line: 1833, baseType: !2847, size: 64, offset: 640)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!241, !284, !7, !256}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2802, file: !44, line: 1834, baseType: !2847, size: 64, offset: 704)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2802, file: !44, line: 1835, baseType: !2852, size: 64, offset: 768)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!137, !284, !917}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2802, file: !44, line: 1836, baseType: !256, size: 64, offset: 832)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2802, file: !44, line: 1837, baseType: !2857, size: 64, offset: 896)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!137, !361, !284}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2802, file: !44, line: 1838, baseType: !2861, size: 64, offset: 960)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!137, !284, !2864}
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !124)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2802, file: !44, line: 1839, baseType: !2857, size: 64, offset: 1024)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2802, file: !44, line: 1840, baseType: !2867, size: 64, offset: 1088)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!137, !284, !463, !463, !137}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2802, file: !44, line: 1841, baseType: !2871, size: 64, offset: 1152)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!137, !137, !284, !137}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2802, file: !44, line: 1842, baseType: !2875, size: 64, offset: 1216)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!137, !284, !137, !2878}
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2880)
!2880 = !{!2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2912, !2913, !2914, !2927, !2958}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2879, file: !44, line: 1063, baseType: !2878, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2879, file: !44, line: 1064, baseType: !151, size: 128, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2879, file: !44, line: 1065, baseType: !574, size: 128, offset: 192)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2879, file: !44, line: 1066, baseType: !151, size: 128, offset: 320)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2879, file: !44, line: 1069, baseType: !151, size: 128, offset: 448)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2879, file: !44, line: 1072, baseType: !2864, size: 64, offset: 576)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2879, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2879, file: !44, line: 1074, baseType: !359, size: 8, offset: 672)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2879, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2879, file: !44, line: 1076, baseType: !137, size: 32, offset: 736)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2879, file: !44, line: 1077, baseType: !1417, size: 128, offset: 768)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2879, file: !44, line: 1078, baseType: !284, size: 64, offset: 896)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2879, file: !44, line: 1079, baseType: !463, size: 64, offset: 960)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2879, file: !44, line: 1080, baseType: !463, size: 64, offset: 1024)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2879, file: !44, line: 1082, baseType: !2896, size: 64, offset: 1088)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2898)
!2898 = !{!2899, !2907, !2908, !2909, !2910, !2911}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2897, file: !44, line: 1315, baseType: !2900)
!2900 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2901, line: 20, baseType: !2902)
!2901 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2901, line: 11, elements: !2903)
!2903 = !{!2904}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2902, file: !2901, line: 12, baseType: !2905)
!2905 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !177, line: 33, baseType: !2906)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 31, elements: !179)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2897, file: !44, line: 1316, baseType: !137, size: 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2897, file: !44, line: 1317, baseType: !137, size: 32, offset: 32)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2897, file: !44, line: 1318, baseType: !2896, size: 64, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2897, file: !44, line: 1319, baseType: !284, size: 64, offset: 128)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2897, file: !44, line: 1320, baseType: !297, size: 128, align: 64, offset: 192)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2879, file: !44, line: 1084, baseType: !256, size: 64, offset: 1152)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2879, file: !44, line: 1085, baseType: !256, size: 64, offset: 1216)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2879, file: !44, line: 1087, baseType: !2915, size: 64, offset: 1280)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2917)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2918)
!2918 = !{!2919, !2923}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2917, file: !44, line: 1012, baseType: !2920, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{null, !2878, !2878}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2917, file: !44, line: 1013, baseType: !2924, size: 64, offset: 64)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{null, !2878}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2879, file: !44, line: 1088, baseType: !2928, size: 64, offset: 1344)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2930)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2931)
!2931 = !{!2932, !2936, !2940, !2941, !2945, !2949, !2953, !2957}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2930, file: !44, line: 1017, baseType: !2933, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!2864, !2864}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2930, file: !44, line: 1018, baseType: !2937, size: 64, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{null, !2864}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2930, file: !44, line: 1019, baseType: !2924, size: 64, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2930, file: !44, line: 1020, baseType: !2942, size: 64, offset: 192)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!137, !2878, !137}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2930, file: !44, line: 1021, baseType: !2946, size: 64, offset: 256)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!422, !2878}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2930, file: !44, line: 1022, baseType: !2950, size: 64, offset: 320)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!137, !2878, !137, !155}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2930, file: !44, line: 1023, baseType: !2954, size: 64, offset: 384)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{null, !2878, !757}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2930, file: !44, line: 1024, baseType: !2946, size: 64, offset: 448)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2879, file: !44, line: 1097, baseType: !2959, size: 256, offset: 1408)
!2959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2879, file: !44, line: 1089, size: 256, elements: !2960)
!2960 = !{!2961, !2970, !2976}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2959, file: !44, line: 1090, baseType: !2962, size: 256)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2963, line: 10, size: 256, elements: !2964)
!2963 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2964 = !{!2965, !2966, !2969}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2962, file: !2963, line: 11, baseType: !347, size: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2962, file: !2963, line: 12, baseType: !2967, size: 64, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2963, line: 5, flags: DIFlagFwdDecl)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2962, file: !2963, line: 13, baseType: !151, size: 128, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2959, file: !44, line: 1091, baseType: !2971, size: 64)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2963, line: 17, size: 64, elements: !2972)
!2972 = !{!2973}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2971, file: !2963, line: 18, baseType: !2974, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2963, line: 16, flags: DIFlagFwdDecl)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2959, file: !44, line: 1096, baseType: !2977, size: 192)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2959, file: !44, line: 1092, size: 192, elements: !2978)
!2978 = !{!2979, !2980, !2981}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2977, file: !44, line: 1093, baseType: !151, size: 128)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2977, file: !44, line: 1094, baseType: !137, size: 32, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2977, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2802, file: !44, line: 1843, baseType: !2983, size: 64, offset: 1280)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!237, !284, !656, !137, !253, !2813, !137}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2802, file: !44, line: 1844, baseType: !1037, size: 64, offset: 1344)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2802, file: !44, line: 1845, baseType: !2988, size: 64, offset: 1408)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!137, !137}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2802, file: !44, line: 1846, baseType: !2875, size: 64, offset: 1472)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2802, file: !44, line: 1847, baseType: !2993, size: 64, offset: 1536)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!237, !2035, !284, !2813, !253, !7}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2802, file: !44, line: 1848, baseType: !2997, size: 64, offset: 1600)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!237, !284, !2813, !2035, !253, !7}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2802, file: !44, line: 1849, baseType: !3001, size: 64, offset: 1664)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!137, !284, !241, !3004, !757}
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2802, file: !44, line: 1850, baseType: !3006, size: 64, offset: 1728)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!241, !284, !137, !463, !463}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2802, file: !44, line: 1852, baseType: !3010, size: 64, offset: 1792)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{null, !646, !284}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2802, file: !44, line: 1856, baseType: !3014, size: 64, offset: 1856)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!237, !284, !463, !284, !463, !253, !7}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2802, file: !44, line: 1858, baseType: !3018, size: 64, offset: 1920)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!463, !284, !463, !284, !463, !463, !7}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2802, file: !44, line: 1861, baseType: !2867, size: 64, offset: 1984)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2797, file: !44, line: 692, baseType: !599, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !362, file: !44, line: 694, baseType: !3024, size: 64, offset: 2560)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3026)
!3026 = !{!3027, !3028, !3029, !3030}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3025, file: !44, line: 1101, baseType: !165)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3025, file: !44, line: 1102, baseType: !151, size: 128)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3025, file: !44, line: 1103, baseType: !151, size: 128, offset: 128)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3025, file: !44, line: 1104, baseType: !151, size: 128, offset: 256)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !362, file: !44, line: 695, baseType: !670, size: 1216, align: 64, offset: 2624)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !362, file: !44, line: 696, baseType: !151, size: 128, offset: 3840)
!3033 = !DIDerivedType(tag: DW_TAG_member, scope: !362, file: !44, line: 697, baseType: !3034, size: 64, offset: 3968)
!3034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !362, file: !44, line: 697, size: 64, elements: !3035)
!3035 = !{!3036, !3037, !3038, !3041, !3042}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3034, file: !44, line: 698, baseType: !2035, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3034, file: !44, line: 699, baseType: !2552, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3034, file: !44, line: 700, baseType: !3039, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3034, file: !44, line: 701, baseType: !206, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3034, file: !44, line: 702, baseType: !7, size: 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !362, file: !44, line: 705, baseType: !349, size: 32, offset: 4032)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !362, file: !44, line: 708, baseType: !349, size: 32, offset: 4064)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !362, file: !44, line: 709, baseType: !2634, size: 64, offset: 4096)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !362, file: !44, line: 720, baseType: !124, size: 64, offset: 4160)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !315, file: !312, line: 98, baseType: !3048, size: 256, offset: 448)
!3048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 256, elements: !2167)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !315, file: !312, line: 101, baseType: !3050, size: 32, offset: 704)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3051, line: 25, size: 32, elements: !3052)
!3051 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3052 = !{!3053}
!3053 = !DIDerivedType(tag: DW_TAG_member, scope: !3050, file: !3051, line: 26, baseType: !3054, size: 32)
!3054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3050, file: !3051, line: 26, size: 32, elements: !3055)
!3055 = !{!3056}
!3056 = !DIDerivedType(tag: DW_TAG_member, scope: !3054, file: !3051, line: 30, baseType: !3057, size: 32)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3054, file: !3051, line: 30, size: 32, elements: !3058)
!3058 = !{!3059, !3060}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3057, file: !3051, line: 31, baseType: !165)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3057, file: !3051, line: 32, baseType: !137, size: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !315, file: !312, line: 102, baseType: !2651, size: 64, offset: 768)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !315, file: !312, line: 103, baseType: !531, size: 64, offset: 832)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !315, file: !312, line: 104, baseType: !256, size: 64, offset: 896)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !315, file: !312, line: 105, baseType: !124, size: 64, offset: 960)
!3065 = !DIDerivedType(tag: DW_TAG_member, scope: !315, file: !312, line: 107, baseType: !3066, size: 128, offset: 1024)
!3066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !315, file: !312, line: 107, size: 128, elements: !3067)
!3067 = !{!3068, !3069}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3066, file: !312, line: 108, baseType: !151, size: 128)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3066, file: !312, line: 109, baseType: !3070, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !315, file: !312, line: 111, baseType: !151, size: 128, offset: 1152)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !315, file: !312, line: 112, baseType: !151, size: 128, offset: 1280)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !315, file: !312, line: 120, baseType: !3074, size: 128, offset: 1408)
!3074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !315, file: !312, line: 116, size: 128, elements: !3075)
!3075 = !{!3076, !3077, !3078}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3074, file: !312, line: 117, baseType: !574, size: 128)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3074, file: !312, line: 118, baseType: !329, size: 128)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3074, file: !312, line: 119, baseType: !297, size: 128, align: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !285, file: !44, line: 922, baseType: !361, size: 64, offset: 256)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !285, file: !44, line: 923, baseType: !2800, size: 64, offset: 320)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !285, file: !44, line: 929, baseType: !165, offset: 384)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !285, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !285, file: !44, line: 931, baseType: !707, size: 64, offset: 448)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !285, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !285, file: !44, line: 933, baseType: !2647, size: 32, offset: 544)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !285, file: !44, line: 934, baseType: !1109, size: 192, offset: 576)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !285, file: !44, line: 935, baseType: !463, size: 64, offset: 768)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !285, file: !44, line: 936, baseType: !3089, size: 192, offset: 832)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3090)
!3090 = !{!3091, !3092, !3093, !3094, !3095, !3096}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3089, file: !44, line: 886, baseType: !2900)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3089, file: !44, line: 887, baseType: !1407, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3089, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3089, file: !44, line: 889, baseType: !367, size: 32, offset: 96)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3089, file: !44, line: 889, baseType: !367, size: 32, offset: 128)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3089, file: !44, line: 890, baseType: !137, size: 32, offset: 160)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !285, file: !44, line: 937, baseType: !1483, size: 64, offset: 1024)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !285, file: !44, line: 938, baseType: !3099, size: 256, offset: 1088)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3100)
!3100 = !{!3101, !3102, !3103, !3104, !3105, !3106}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3099, file: !44, line: 897, baseType: !256, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3099, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3099, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3099, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3099, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3099, file: !44, line: 904, baseType: !463, size: 64, offset: 192)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !285, file: !44, line: 940, baseType: !353, size: 64, offset: 1344)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !285, file: !44, line: 945, baseType: !124, size: 64, offset: 1408)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !285, file: !44, line: 949, baseType: !151, size: 128, offset: 1472)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !285, file: !44, line: 950, baseType: !151, size: 128, offset: 1600)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !285, file: !44, line: 952, baseType: !669, size: 64, offset: 1728)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !285, file: !44, line: 953, baseType: !845, size: 32, offset: 1792)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !285, file: !44, line: 954, baseType: !845, size: 32, offset: 1824)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !275, file: !231, line: 174, baseType: !281, size: 64, offset: 320)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !275, file: !231, line: 176, baseType: !3116, size: 64, offset: 384)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!137, !284, !158, !274, !917}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !263, file: !231, line: 90, baseType: !258, size: 64, offset: 192)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !263, file: !231, line: 91, baseType: !3121, size: 64, offset: 256)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !221, file: !147, line: 143, baseType: !3123, size: 64, offset: 256)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!3126, !158}
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3128)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3129)
!3129 = !{!3130, !3131, !3135, !3139, !3145, !3149}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3128, file: !61, line: 40, baseType: !60, size: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3128, file: !61, line: 41, baseType: !3132, size: 64, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!422}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3128, file: !61, line: 42, baseType: !3136, size: 64, offset: 128)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!124}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3128, file: !61, line: 43, baseType: !3140, size: 64, offset: 192)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!2064, !3143}
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3128, file: !61, line: 44, baseType: !3146, size: 64, offset: 256)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!2064}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3128, file: !61, line: 45, baseType: !400, size: 64, offset: 320)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !221, file: !147, line: 144, baseType: !3151, size: 64, offset: 320)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!2064, !158}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !221, file: !147, line: 145, baseType: !3155, size: 64, offset: 384)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{null, !158, !3158, !3159}
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !146, file: !147, line: 70, baseType: !3161, size: 64, offset: 384)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !551, line: 123, size: 1024, elements: !3163)
!3163 = !{!3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3292, !3293, !3294, !3295, !3296}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3162, file: !551, line: 124, baseType: !683, size: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3162, file: !551, line: 125, baseType: !683, size: 32, offset: 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3162, file: !551, line: 135, baseType: !3161, size: 64, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3162, file: !551, line: 136, baseType: !130, size: 64, offset: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3162, file: !551, line: 138, baseType: !696, size: 192, align: 64, offset: 192)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3162, file: !551, line: 140, baseType: !2064, size: 64, offset: 384)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3162, file: !551, line: 141, baseType: !7, size: 32, offset: 448)
!3171 = !DIDerivedType(tag: DW_TAG_member, scope: !3162, file: !551, line: 142, baseType: !3172, size: 256, offset: 512)
!3172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3162, file: !551, line: 142, size: 256, elements: !3173)
!3173 = !{!3174, !3220, !3224}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3172, file: !551, line: 143, baseType: !3175, size: 192)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !551, line: 91, size: 192, elements: !3176)
!3176 = !{!3177, !3178, !3179}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3175, file: !551, line: 92, baseType: !256, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3175, file: !551, line: 94, baseType: !692, size: 64, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3175, file: !551, line: 100, baseType: !3180, size: 64, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !551, line: 180, size: 704, elements: !3182)
!3182 = !{!3183, !3184, !3185, !3192, !3193, !3194, !3218, !3219}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3181, file: !551, line: 182, baseType: !3161, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3181, file: !551, line: 183, baseType: !7, size: 32, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3181, file: !551, line: 186, baseType: !3186, size: 192, offset: 128)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3187, line: 19, size: 192, elements: !3188)
!3187 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3188 = !{!3189, !3190, !3191}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3186, file: !3187, line: 20, baseType: !674, size: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3186, file: !3187, line: 21, baseType: !7, size: 32, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3186, file: !3187, line: 22, baseType: !7, size: 32, offset: 160)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3181, file: !551, line: 187, baseType: !347, size: 32, offset: 320)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3181, file: !551, line: 188, baseType: !347, size: 32, offset: 352)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3181, file: !551, line: 189, baseType: !3195, size: 64, offset: 384)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !551, line: 168, size: 320, elements: !3197)
!3197 = !{!3198, !3202, !3206, !3210, !3214}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3196, file: !551, line: 169, baseType: !3199, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!137, !646, !3180}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3196, file: !551, line: 171, baseType: !3203, size: 64, offset: 64)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!137, !3161, !130, !247}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3196, file: !551, line: 173, baseType: !3207, size: 64, offset: 128)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!137, !3161}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3196, file: !551, line: 174, baseType: !3211, size: 64, offset: 192)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DISubroutineType(types: !3213)
!3213 = !{!137, !3161, !3161, !130}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3196, file: !551, line: 176, baseType: !3215, size: 64, offset: 256)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!137, !646, !3161, !3180}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3181, file: !551, line: 192, baseType: !151, size: 128, offset: 448)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3181, file: !551, line: 194, baseType: !1417, size: 128, offset: 576)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3172, file: !551, line: 144, baseType: !3221, size: 64)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !551, line: 103, size: 64, elements: !3222)
!3222 = !{!3223}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3221, file: !551, line: 104, baseType: !3161, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3172, file: !551, line: 145, baseType: !3225, size: 256)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !551, line: 107, size: 256, elements: !3226)
!3226 = !{!3227, !3287, !3290, !3291}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3225, file: !551, line: 108, baseType: !3228, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3230)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !551, line: 217, size: 768, elements: !3231)
!3231 = !{!3232, !3252, !3256, !3260, !3264, !3268, !3272, !3276, !3277, !3278, !3279, !3283}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3230, file: !551, line: 222, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!137, !3236}
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !551, line: 197, size: 1088, elements: !3238)
!3238 = !{!3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3237, file: !551, line: 199, baseType: !3161, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3237, file: !551, line: 200, baseType: !284, size: 64, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3237, file: !551, line: 201, baseType: !646, size: 64, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3237, file: !551, line: 202, baseType: !124, size: 64, offset: 192)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3237, file: !551, line: 205, baseType: !1109, size: 192, offset: 256)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3237, file: !551, line: 206, baseType: !1109, size: 192, offset: 448)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3237, file: !551, line: 207, baseType: !137, size: 32, offset: 640)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3237, file: !551, line: 208, baseType: !151, size: 128, offset: 704)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3237, file: !551, line: 209, baseType: !206, size: 64, offset: 832)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3237, file: !551, line: 211, baseType: !253, size: 64, offset: 896)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3237, file: !551, line: 212, baseType: !422, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3237, file: !551, line: 213, baseType: !422, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3237, file: !551, line: 214, baseType: !945, size: 64, offset: 1024)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3230, file: !551, line: 223, baseType: !3253, size: 64, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{null, !3236}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3230, file: !551, line: 236, baseType: !3257, size: 64, offset: 128)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!137, !646, !124}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3230, file: !551, line: 238, baseType: !3261, size: 64, offset: 192)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!124, !646, !2813}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3230, file: !551, line: 239, baseType: !3265, size: 64, offset: 256)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!124, !646, !124, !2813}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3230, file: !551, line: 240, baseType: !3269, size: 64, offset: 320)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{null, !646, !124}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3230, file: !551, line: 242, baseType: !3273, size: 64, offset: 384)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!237, !3236, !206, !253, !463}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3230, file: !551, line: 252, baseType: !253, size: 64, offset: 448)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3230, file: !551, line: 259, baseType: !422, size: 8, offset: 512)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3230, file: !551, line: 260, baseType: !3273, size: 64, offset: 576)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3230, file: !551, line: 263, baseType: !3280, size: 64, offset: 640)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!2842, !3236, !2844}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3230, file: !551, line: 266, baseType: !3284, size: 64, offset: 704)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!137, !3236, !917}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3225, file: !551, line: 109, baseType: !3288, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !551, line: 31, flags: DIFlagFwdDecl)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3225, file: !551, line: 110, baseType: !463, size: 64, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3225, file: !551, line: 111, baseType: !3161, size: 64, offset: 192)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3162, file: !551, line: 148, baseType: !124, size: 64, offset: 768)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3162, file: !551, line: 154, baseType: !353, size: 64, offset: 832)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3162, file: !551, line: 156, baseType: !248, size: 16, offset: 896)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3162, file: !551, line: 157, baseType: !247, size: 16, offset: 912)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3162, file: !551, line: 158, baseType: !3297, size: 64, offset: 960)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !551, line: 32, flags: DIFlagFwdDecl)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !146, file: !147, line: 71, baseType: !3300, size: 32, offset: 448)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3301, line: 19, size: 32, elements: !3302)
!3301 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3302 = !{!3303}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3300, file: !3301, line: 20, baseType: !1166, size: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !146, file: !147, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !146, file: !147, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !146, file: !147, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !146, file: !147, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !146, file: !147, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !143, file: !73, line: 463, baseType: !3310, size: 64, offset: 512)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !143, file: !73, line: 465, baseType: !3312, size: 64, offset: 576)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !143, file: !73, line: 467, baseType: !130, size: 64, offset: 640)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !73, line: 468, baseType: !3316, size: 64, offset: 704)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3318)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3319)
!3319 = !{!3320, !3321, !3322, !3326, !3331, !3335}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3318, file: !73, line: 88, baseType: !130, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3318, file: !73, line: 89, baseType: !260, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3318, file: !73, line: 90, baseType: !3323, size: 64, offset: 128)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!137, !3310, !201}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3318, file: !73, line: 91, baseType: !3327, size: 64, offset: 192)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!206, !3310, !3330, !3158, !3159}
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3318, file: !73, line: 93, baseType: !3332, size: 64, offset: 256)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{null, !3310}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3318, file: !73, line: 95, baseType: !3336, size: 64, offset: 320)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3338)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3339)
!3339 = !{!3340, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3338, file: !80, line: 279, baseType: !3341, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!137, !3310}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3338, file: !80, line: 280, baseType: !3332, size: 64, offset: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3338, file: !80, line: 281, baseType: !3341, size: 64, offset: 128)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3338, file: !80, line: 282, baseType: !3341, size: 64, offset: 192)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3338, file: !80, line: 283, baseType: !3341, size: 64, offset: 256)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3338, file: !80, line: 284, baseType: !3341, size: 64, offset: 320)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3338, file: !80, line: 285, baseType: !3341, size: 64, offset: 384)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3338, file: !80, line: 286, baseType: !3341, size: 64, offset: 448)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3338, file: !80, line: 287, baseType: !3341, size: 64, offset: 512)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3338, file: !80, line: 288, baseType: !3341, size: 64, offset: 576)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3338, file: !80, line: 289, baseType: !3341, size: 64, offset: 640)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3338, file: !80, line: 290, baseType: !3341, size: 64, offset: 704)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3338, file: !80, line: 291, baseType: !3341, size: 64, offset: 768)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3338, file: !80, line: 292, baseType: !3341, size: 64, offset: 832)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3338, file: !80, line: 293, baseType: !3341, size: 64, offset: 896)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3338, file: !80, line: 294, baseType: !3341, size: 64, offset: 960)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3338, file: !80, line: 295, baseType: !3341, size: 64, offset: 1024)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3338, file: !80, line: 296, baseType: !3341, size: 64, offset: 1088)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3338, file: !80, line: 297, baseType: !3341, size: 64, offset: 1152)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3338, file: !80, line: 298, baseType: !3341, size: 64, offset: 1216)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3338, file: !80, line: 299, baseType: !3341, size: 64, offset: 1280)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3338, file: !80, line: 300, baseType: !3341, size: 64, offset: 1344)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3338, file: !80, line: 301, baseType: !3341, size: 64, offset: 1408)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !143, file: !73, line: 470, baseType: !3367, size: 64, offset: 768)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3369, line: 82, size: 1408, elements: !3370)
!3369 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3370 = !{!3371, !3372, !3373, !3374, !3375, !3376, !3377, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3452, !3455, !3456}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3368, file: !3369, line: 83, baseType: !130, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3368, file: !3369, line: 84, baseType: !130, size: 64, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3368, file: !3369, line: 85, baseType: !3310, size: 64, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3368, file: !3369, line: 86, baseType: !260, size: 64, offset: 192)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3368, file: !3369, line: 87, baseType: !260, size: 64, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3368, file: !3369, line: 88, baseType: !260, size: 64, offset: 320)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3368, file: !3369, line: 90, baseType: !3378, size: 64, offset: 384)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!137, !3310, !3381}
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3383)
!3383 = !{!3384, !3385, !3386, !3387, !3388, !3389, !3390, !3403, !3416, !3417, !3418, !3419, !3420, !3428, !3429, !3430, !3431, !3432, !3433}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3382, file: !67, line: 96, baseType: !130, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3382, file: !67, line: 97, baseType: !3367, size: 64, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3382, file: !67, line: 99, baseType: !565, size: 64, offset: 128)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3382, file: !67, line: 100, baseType: !130, size: 64, offset: 192)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3382, file: !67, line: 102, baseType: !422, size: 8, offset: 256)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3382, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3382, file: !67, line: 105, baseType: !3391, size: 64, offset: 320)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3393)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3394, line: 262, size: 1600, elements: !3395)
!3394 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3395 = !{!3396, !3397, !3398, !3402}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3393, file: !3394, line: 263, baseType: !2637, size: 256)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3393, file: !3394, line: 264, baseType: !2637, size: 256, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3393, file: !3394, line: 265, baseType: !3399, size: 1024, offset: 512)
!3399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 1024, elements: !3400)
!3400 = !{!3401}
!3401 = !DISubrange(count: 128)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3393, file: !3394, line: 266, baseType: !2064, size: 64, offset: 1536)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3382, file: !67, line: 106, baseType: !3404, size: 64, offset: 384)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3406)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3394, line: 210, size: 256, elements: !3407)
!3407 = !{!3408, !3412, !3414, !3415}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3406, file: !3394, line: 211, baseType: !3409, size: 72)
!3409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1289, size: 72, elements: !3410)
!3410 = !{!3411}
!3411 = !DISubrange(count: 9)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3406, file: !3394, line: 212, baseType: !3413, size: 64, offset: 128)
!3413 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3394, line: 14, baseType: !256)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3406, file: !3394, line: 213, baseType: !349, size: 32, offset: 192)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3406, file: !3394, line: 214, baseType: !349, size: 32, offset: 224)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3382, file: !67, line: 108, baseType: !3341, size: 64, offset: 448)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3382, file: !67, line: 109, baseType: !3332, size: 64, offset: 512)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3382, file: !67, line: 110, baseType: !3341, size: 64, offset: 576)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3382, file: !67, line: 111, baseType: !3332, size: 64, offset: 640)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3382, file: !67, line: 112, baseType: !3421, size: 64, offset: 704)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!137, !3310, !3424}
!3424 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3425)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3426)
!3426 = !{!3427}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3425, file: !80, line: 51, baseType: !137, size: 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3382, file: !67, line: 113, baseType: !3341, size: 64, offset: 768)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3382, file: !67, line: 114, baseType: !260, size: 64, offset: 832)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3382, file: !67, line: 115, baseType: !260, size: 64, offset: 896)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3382, file: !67, line: 117, baseType: !3336, size: 64, offset: 960)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3382, file: !67, line: 118, baseType: !3332, size: 64, offset: 1024)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3382, file: !67, line: 120, baseType: !3434, size: 64, offset: 1088)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3368, file: !3369, line: 91, baseType: !3323, size: 64, offset: 448)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3368, file: !3369, line: 92, baseType: !3341, size: 64, offset: 512)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3368, file: !3369, line: 93, baseType: !3332, size: 64, offset: 576)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3368, file: !3369, line: 94, baseType: !3341, size: 64, offset: 640)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3368, file: !3369, line: 95, baseType: !3332, size: 64, offset: 704)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3368, file: !3369, line: 97, baseType: !3341, size: 64, offset: 768)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3368, file: !3369, line: 98, baseType: !3341, size: 64, offset: 832)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3368, file: !3369, line: 100, baseType: !3421, size: 64, offset: 896)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3368, file: !3369, line: 101, baseType: !3341, size: 64, offset: 960)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3368, file: !3369, line: 103, baseType: !3341, size: 64, offset: 1024)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3368, file: !3369, line: 105, baseType: !3341, size: 64, offset: 1088)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3368, file: !3369, line: 107, baseType: !3336, size: 64, offset: 1152)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3368, file: !3369, line: 109, baseType: !3449, size: 64, offset: 1216)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3451)
!3451 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3369, line: 109, flags: DIFlagFwdDecl)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3368, file: !3369, line: 111, baseType: !3453, size: 64, offset: 1280)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3369, line: 111, flags: DIFlagFwdDecl)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3368, file: !3369, line: 112, baseType: !580, offset: 1344)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3368, file: !3369, line: 114, baseType: !422, size: 8, offset: 1344)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !143, file: !73, line: 471, baseType: !3381, size: 64, offset: 832)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !143, file: !73, line: 473, baseType: !124, size: 64, offset: 896)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !143, file: !73, line: 475, baseType: !124, size: 64, offset: 960)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !143, file: !73, line: 480, baseType: !1109, size: 192, offset: 1024)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !143, file: !73, line: 484, baseType: !3462, size: 576, offset: 1216)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3463)
!3463 = !{!3464, !3465, !3466, !3467, !3468, !3469}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3462, file: !73, line: 362, baseType: !151, size: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3462, file: !73, line: 363, baseType: !151, size: 128, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3462, file: !73, line: 364, baseType: !151, size: 128, offset: 256)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3462, file: !73, line: 365, baseType: !151, size: 128, offset: 384)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3462, file: !73, line: 366, baseType: !422, size: 8, offset: 512)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3462, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !143, file: !73, line: 485, baseType: !3471, size: 2304, offset: 1792)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3472)
!3472 = !{!3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3568, !3572}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3471, file: !80, line: 566, baseType: !3424, size: 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3471, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3471, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3471, file: !80, line: 569, baseType: !422, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3471, file: !80, line: 570, baseType: !422, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3471, file: !80, line: 571, baseType: !422, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3471, file: !80, line: 572, baseType: !422, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3471, file: !80, line: 573, baseType: !422, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3471, file: !80, line: 574, baseType: !422, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3471, file: !80, line: 575, baseType: !422, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3471, file: !80, line: 576, baseType: !422, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3471, file: !80, line: 577, baseType: !347, size: 32, offset: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3471, file: !80, line: 578, baseType: !165, offset: 96)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3471, file: !80, line: 580, baseType: !151, size: 128, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3471, file: !80, line: 581, baseType: !1438, size: 192, offset: 256)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3471, file: !80, line: 582, baseType: !3489, size: 64, offset: 448)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3491, line: 43, size: 1472, elements: !3492)
!3491 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3492 = !{!3493, !3494, !3495, !3496, !3497, !3500, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3490, file: !3491, line: 44, baseType: !130, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3490, file: !3491, line: 45, baseType: !137, size: 32, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3490, file: !3491, line: 46, baseType: !151, size: 128, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3490, file: !3491, line: 47, baseType: !165, offset: 256)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3490, file: !3491, line: 48, baseType: !3498, size: 64, offset: 256)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3490, file: !3491, line: 49, baseType: !3501, size: 320, offset: 320)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3502, line: 11, size: 320, elements: !3503)
!3502 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3503 = !{!3504, !3505, !3506, !3511}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3501, file: !3502, line: 16, baseType: !574, size: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3501, file: !3502, line: 17, baseType: !256, size: 64, offset: 128)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3501, file: !3502, line: 18, baseType: !3507, size: 64, offset: 192)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{null, !3510}
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3501, file: !3502, line: 19, baseType: !347, size: 32, offset: 256)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3490, file: !3491, line: 50, baseType: !256, size: 64, offset: 640)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3490, file: !3491, line: 51, baseType: !1236, size: 64, offset: 704)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3490, file: !3491, line: 52, baseType: !1236, size: 64, offset: 768)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3490, file: !3491, line: 53, baseType: !1236, size: 64, offset: 832)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3490, file: !3491, line: 54, baseType: !1236, size: 64, offset: 896)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3490, file: !3491, line: 55, baseType: !1236, size: 64, offset: 960)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3490, file: !3491, line: 56, baseType: !256, size: 64, offset: 1024)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3490, file: !3491, line: 57, baseType: !256, size: 64, offset: 1088)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3490, file: !3491, line: 58, baseType: !256, size: 64, offset: 1152)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3490, file: !3491, line: 59, baseType: !256, size: 64, offset: 1216)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3490, file: !3491, line: 60, baseType: !256, size: 64, offset: 1280)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3490, file: !3491, line: 61, baseType: !3310, size: 64, offset: 1344)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3490, file: !3491, line: 62, baseType: !422, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3490, file: !3491, line: 63, baseType: !422, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3471, file: !80, line: 583, baseType: !422, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3471, file: !80, line: 584, baseType: !422, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3471, file: !80, line: 585, baseType: !422, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3471, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3471, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3471, file: !80, line: 592, baseType: !1228, size: 512, offset: 576)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3471, file: !80, line: 593, baseType: !353, size: 64, offset: 1088)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3471, file: !80, line: 594, baseType: !1894, size: 256, offset: 1152)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3471, file: !80, line: 595, baseType: !1417, size: 128, offset: 1408)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3471, file: !80, line: 596, baseType: !3498, size: 64, offset: 1536)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3471, file: !80, line: 597, baseType: !683, size: 32, offset: 1600)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3471, file: !80, line: 598, baseType: !683, size: 32, offset: 1632)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3471, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3471, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3471, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3471, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3471, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3471, file: !80, line: 604, baseType: !422, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3471, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3471, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3471, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3471, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3471, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3471, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3471, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3471, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3471, file: !80, line: 613, baseType: !137, size: 32, offset: 1792)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3471, file: !80, line: 614, baseType: !137, size: 32, offset: 1824)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3471, file: !80, line: 615, baseType: !353, size: 64, offset: 1856)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3471, file: !80, line: 616, baseType: !353, size: 64, offset: 1920)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3471, file: !80, line: 617, baseType: !353, size: 64, offset: 1984)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3471, file: !80, line: 618, baseType: !353, size: 64, offset: 2048)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3471, file: !80, line: 620, baseType: !3559, size: 64, offset: 2112)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3561)
!3561 = !{!3562, !3563, !3564, !3565}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3560, file: !80, line: 537, baseType: !165)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3560, file: !80, line: 538, baseType: !7, size: 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3560, file: !80, line: 540, baseType: !151, size: 128, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3560, file: !80, line: 543, baseType: !3566, size: 64, offset: 192)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3471, file: !80, line: 621, baseType: !3569, size: 64, offset: 2176)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{null, !3310, !1380}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3471, file: !80, line: 622, baseType: !3573, size: 64, offset: 2240)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !143, file: !73, line: 486, baseType: !3576, size: 64, offset: 4096)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3578)
!3578 = !{!3579, !3580, !3581, !3585, !3586, !3587}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3577, file: !80, line: 643, baseType: !3338, size: 1472)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3577, file: !80, line: 644, baseType: !3341, size: 64, offset: 1472)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3577, file: !80, line: 645, baseType: !3582, size: 64, offset: 1536)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{null, !3310, !422}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3577, file: !80, line: 646, baseType: !3341, size: 64, offset: 1600)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3577, file: !80, line: 647, baseType: !3332, size: 64, offset: 1664)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3577, file: !80, line: 648, baseType: !3332, size: 64, offset: 1728)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !143, file: !73, line: 493, baseType: !3589, size: 64, offset: 4160)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !143, file: !73, line: 499, baseType: !151, size: 128, offset: 4224)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !143, file: !73, line: 502, baseType: !3593, size: 64, offset: 4352)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3595)
!3595 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !143, file: !73, line: 504, baseType: !3597, size: 64, offset: 4416)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !143, file: !73, line: 505, baseType: !353, size: 64, offset: 4480)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !143, file: !73, line: 510, baseType: !353, size: 64, offset: 4544)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !143, file: !73, line: 511, baseType: !3601, size: 64, offset: 4608)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3603)
!3603 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !143, file: !73, line: 513, baseType: !3605, size: 64, offset: 4672)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3607)
!3607 = !{!3608, !3609}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3606, file: !73, line: 293, baseType: !7, size: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3606, file: !73, line: 294, baseType: !256, size: 64, offset: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !143, file: !73, line: 515, baseType: !151, size: 128, offset: 4736)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !143, file: !73, line: 526, baseType: !3612, offset: 4864)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3613, line: 5, elements: !179)
!3613 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !143, file: !73, line: 528, baseType: !3615, size: 64, offset: 4864)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3617, line: 14, flags: DIFlagFwdDecl)
!3617 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !143, file: !73, line: 529, baseType: !3619, size: 64, offset: 4928)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3621, line: 17, size: 192, elements: !3622)
!3621 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3622 = !{!3623, !3624, !3707}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3620, file: !3621, line: 18, baseType: !3619, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3620, file: !3621, line: 19, baseType: !3625, size: 64, offset: 64)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3627)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3621, line: 110, size: 1152, elements: !3628)
!3628 = !{!3629, !3633, !3637, !3643, !3649, !3653, !3657, !3662, !3666, !3667, !3671, !3675, !3679, !3690, !3691, !3692, !3693, !3703}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3627, file: !3621, line: 111, baseType: !3630, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!3619, !3619}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3627, file: !3621, line: 112, baseType: !3634, size: 64, offset: 64)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{null, !3619}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3627, file: !3621, line: 113, baseType: !3638, size: 64, offset: 128)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!422, !3641}
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3620)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3627, file: !3621, line: 114, baseType: !3644, size: 64, offset: 192)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!2064, !3641, !3647}
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3627, file: !3621, line: 116, baseType: !3650, size: 64, offset: 256)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!422, !3641, !130}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3627, file: !3621, line: 118, baseType: !3654, size: 64, offset: 320)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!137, !3641, !130, !7, !124, !253}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3627, file: !3621, line: 123, baseType: !3658, size: 64, offset: 384)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!137, !3641, !130, !3661, !253}
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3627, file: !3621, line: 126, baseType: !3663, size: 64, offset: 448)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!130, !3641}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3627, file: !3621, line: 127, baseType: !3663, size: 64, offset: 512)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3627, file: !3621, line: 128, baseType: !3668, size: 64, offset: 576)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!3619, !3641}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3627, file: !3621, line: 130, baseType: !3672, size: 64, offset: 640)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!3619, !3641, !3619}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3627, file: !3621, line: 133, baseType: !3676, size: 64, offset: 704)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!3619, !3641, !130}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3627, file: !3621, line: 135, baseType: !3680, size: 64, offset: 768)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!137, !3641, !130, !130, !7, !7, !3683}
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3621, line: 43, size: 640, elements: !3685)
!3685 = !{!3686, !3687, !3688}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3684, file: !3621, line: 44, baseType: !3619, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3684, file: !3621, line: 45, baseType: !7, size: 32, offset: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3684, file: !3621, line: 46, baseType: !3689, size: 512, offset: 128)
!3689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 512, elements: !1266)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3627, file: !3621, line: 140, baseType: !3672, size: 64, offset: 832)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3627, file: !3621, line: 143, baseType: !3668, size: 64, offset: 896)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3627, file: !3621, line: 145, baseType: !3630, size: 64, offset: 960)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3627, file: !3621, line: 146, baseType: !3694, size: 64, offset: 1024)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!137, !3641, !3697}
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3621, line: 29, size: 128, elements: !3699)
!3699 = !{!3700, !3701, !3702}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3698, file: !3621, line: 30, baseType: !7, size: 32)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3698, file: !3621, line: 31, baseType: !7, size: 32, offset: 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3698, file: !3621, line: 32, baseType: !3641, size: 64, offset: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3627, file: !3621, line: 148, baseType: !3704, size: 64, offset: 1088)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!137, !3641, !3310}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3620, file: !3621, line: 20, baseType: !3310, size: 64, offset: 128)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !143, file: !73, line: 534, baseType: !445, size: 32, offset: 4992)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !143, file: !73, line: 535, baseType: !347, size: 32, offset: 5024)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !143, file: !73, line: 537, baseType: !165, offset: 5056)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !143, file: !73, line: 538, baseType: !151, size: 128, offset: 5056)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !143, file: !73, line: 540, baseType: !3713, size: 64, offset: 5184)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3715, line: 54, size: 960, elements: !3716)
!3715 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3716 = !{!3717, !3718, !3719, !3720, !3721, !3722, !3723, !3727, !3731, !3732, !3733, !3734, !3738, !3742, !3743}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3714, file: !3715, line: 55, baseType: !130, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3714, file: !3715, line: 56, baseType: !565, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3714, file: !3715, line: 58, baseType: !260, size: 64, offset: 128)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3714, file: !3715, line: 59, baseType: !260, size: 64, offset: 192)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3714, file: !3715, line: 60, baseType: !158, size: 64, offset: 256)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3714, file: !3715, line: 62, baseType: !3323, size: 64, offset: 320)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3714, file: !3715, line: 63, baseType: !3724, size: 64, offset: 384)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!206, !3310, !3330}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3714, file: !3715, line: 65, baseType: !3728, size: 64, offset: 448)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{null, !3713}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3714, file: !3715, line: 66, baseType: !3332, size: 64, offset: 512)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3714, file: !3715, line: 68, baseType: !3341, size: 64, offset: 576)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3714, file: !3715, line: 70, baseType: !3126, size: 64, offset: 640)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3714, file: !3715, line: 71, baseType: !3735, size: 64, offset: 704)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!2064, !3310}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3714, file: !3715, line: 73, baseType: !3739, size: 64, offset: 768)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{null, !3310, !3158, !3159}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3714, file: !3715, line: 75, baseType: !3336, size: 64, offset: 832)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3714, file: !3715, line: 77, baseType: !3453, size: 64, offset: 896)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !143, file: !73, line: 541, baseType: !260, size: 64, offset: 5248)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !143, file: !73, line: 543, baseType: !3332, size: 64, offset: 5312)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !143, file: !73, line: 544, baseType: !3747, size: 64, offset: 5376)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !143, file: !73, line: 545, baseType: !3750, size: 64, offset: 5440)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !143, file: !73, line: 547, baseType: !422, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !143, file: !73, line: 548, baseType: !422, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !143, file: !73, line: 549, baseType: !422, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !143, file: !73, line: 550, baseType: !422, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !139, file: !140, line: 22, baseType: !3757, size: 64, offset: 5568)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_interface", file: !111, line: 31, size: 7168, elements: !3759)
!3759 = !{!3760, !3761, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3758, file: !111, line: 32, baseType: !143, size: 5568)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !3758, file: !111, line: 33, baseType: !3762, size: 64, offset: 5568)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_control", file: !3764, line: 15, size: 5888, elements: !3765)
!3764 = !DIFile(filename: "./include/linux/greybus/control.h", directory: "/home/lizy2001/genbc/linux")
!3765 = !{!3766, !3767, !3768, !3927, !3928, !3929, !3930, !3931, !3932}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3763, file: !3764, line: 16, baseType: !143, size: 5568)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !3763, file: !3764, line: 17, baseType: !3757, size: 64, offset: 5568)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !3763, file: !3764, line: 19, baseType: !3769, size: 64, offset: 5632)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_connection", file: !104, line: 38, size: 1408, elements: !3771)
!3771 = !{!3772, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "hd", scope: !3770, file: !104, line: 39, baseType: !3773, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_host_device", file: !3775, line: 44, size: 6272, elements: !3776)
!3775 = !DIFile(filename: "./include/linux/greybus/hd.h", directory: "/home/lizy2001/genbc/linux")
!3776 = !{!3777, !3778, !3779, !3870, !3871, !3872, !3876, !3877, !3878, !3903}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3774, file: !3775, line: 45, baseType: !143, size: 5568)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !3774, file: !3775, line: 46, baseType: !137, size: 32, offset: 5568)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3774, file: !3775, line: 47, baseType: !3780, size: 64, offset: 5632)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3782)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_hd_driver", file: !3775, line: 18, size: 960, elements: !3783)
!3783 = !{!3784, !3785, !3789, !3793, !3797, !3801, !3802, !3803, !3807, !3811, !3812, !3860, !3864, !3865, !3866}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "hd_priv_size", scope: !3782, file: !3775, line: 19, baseType: !253, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "cport_allocate", scope: !3782, file: !3775, line: 21, baseType: !3786, size: 64, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!137, !3773, !137, !256}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "cport_release", scope: !3782, file: !3775, line: 23, baseType: !3790, size: 64, offset: 128)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{null, !3773, !795}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "cport_enable", scope: !3782, file: !3775, line: 24, baseType: !3794, size: 64, offset: 192)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!137, !3773, !795, !256}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "cport_disable", scope: !3782, file: !3775, line: 26, baseType: !3798, size: 64, offset: 256)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!137, !3773, !795}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "cport_connected", scope: !3782, file: !3775, line: 27, baseType: !3798, size: 64, offset: 320)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "cport_flush", scope: !3782, file: !3775, line: 28, baseType: !3798, size: 64, offset: 384)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "cport_shutdown", scope: !3782, file: !3775, line: 29, baseType: !3804, size: 64, offset: 448)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!137, !3773, !795, !1288, !7}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "cport_quiesce", scope: !3782, file: !3775, line: 31, baseType: !3808, size: 64, offset: 512)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!137, !3773, !795, !253, !7}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "cport_clear", scope: !3782, file: !3775, line: 33, baseType: !3798, size: 64, offset: 576)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "message_send", scope: !3782, file: !3775, line: 35, baseType: !3813, size: 64, offset: 640)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!137, !3773, !795, !3816, !679}
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_message", file: !3818, line: 52, size: 384, elements: !3819)
!3818 = !DIFile(filename: "./include/linux/greybus/operation.h", directory: "/home/lizy2001/genbc/linux")
!3819 = !{!3820, !3844, !3856, !3857, !3858, !3859}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "operation", scope: !3817, file: !3818, line: 53, baseType: !3821, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_operation", file: !3818, line: 92, size: 1472, elements: !3823)
!3823 = !{!3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3837, !3838, !3839, !3840, !3841, !3842, !3843}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !3822, file: !3818, line: 93, baseType: !3769, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3822, file: !3818, line: 94, baseType: !3816, size: 64, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !3822, file: !3818, line: 95, baseType: !3816, size: 64, offset: 128)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3822, file: !3818, line: 97, baseType: !256, size: 64, offset: 192)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3822, file: !3818, line: 98, baseType: !1288, size: 8, offset: 256)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3822, file: !3818, line: 99, baseType: !795, size: 16, offset: 272)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "errno", scope: !3822, file: !3818, line: 100, baseType: !137, size: 32, offset: 288)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3822, file: !3818, line: 102, baseType: !1894, size: 256, offset: 320)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !3822, file: !3818, line: 103, baseType: !3833, size: 64, offset: 576)
!3833 = !DIDerivedType(tag: DW_TAG_typedef, name: "gb_operation_callback", file: !3818, line: 91, baseType: !3834)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{null, !3821}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3822, file: !3818, line: 104, baseType: !1438, size: 192, offset: 640)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3822, file: !3818, line: 105, baseType: !3501, size: 320, offset: 832)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3822, file: !3818, line: 107, baseType: !3300, size: 32, offset: 1152)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3822, file: !3818, line: 108, baseType: !683, size: 32, offset: 1184)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3822, file: !3818, line: 110, baseType: !137, size: 32, offset: 1216)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3822, file: !3818, line: 111, baseType: !151, size: 128, offset: 1280)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3822, file: !3818, line: 113, baseType: !124, size: 64, offset: 1408)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3817, file: !3818, line: 54, baseType: !3845, size: 64, offset: 64)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_operation_msg_hdr", file: !3847, line: 46, size: 64, elements: !3848)
!3847 = !DIFile(filename: "./include/linux/greybus/greybus_protocols.h", directory: "/home/lizy2001/genbc/linux")
!3848 = !{!3849, !3851, !3852, !3853, !3854}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3846, file: !3847, line: 47, baseType: !3850, size: 16)
!3850 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2843, line: 29, baseType: !796)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "operation_id", scope: !3846, file: !3847, line: 48, baseType: !3850, size: 16, offset: 16)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3846, file: !3847, line: 49, baseType: !1289, size: 8, offset: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !3846, file: !3847, line: 50, baseType: !1289, size: 8, offset: 40)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !3846, file: !3847, line: 51, baseType: !3855, size: 16, offset: 48)
!3855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1289, size: 16, elements: !1505)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !3817, file: !3818, line: 56, baseType: !124, size: 64, offset: 128)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "payload_size", scope: !3817, file: !3818, line: 57, baseType: !253, size: 64, offset: 192)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3817, file: !3818, line: 59, baseType: !124, size: 64, offset: 256)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3817, file: !3818, line: 61, baseType: !124, size: 64, offset: 320)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "message_cancel", scope: !3782, file: !3775, line: 37, baseType: !3861, size: 64, offset: 704)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{null, !3816}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tag_enable", scope: !3782, file: !3775, line: 38, baseType: !3798, size: 64, offset: 768)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tag_disable", scope: !3782, file: !3775, line: 39, baseType: !3798, size: 64, offset: 832)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !3782, file: !3775, line: 40, baseType: !3867, size: 64, offset: 896)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{!137, !3773, !124, !795, !1288, !422}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !3774, file: !3775, line: 49, baseType: !151, size: 128, offset: 5696)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !3774, file: !3775, line: 50, baseType: !151, size: 128, offset: 5824)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "cport_id_map", scope: !3774, file: !3775, line: 51, baseType: !3873, size: 128, offset: 5952)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !3187, line: 244, size: 128, elements: !3874)
!3874 = !{!3875}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3873, file: !3187, line: 245, baseType: !674, size: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "num_cports", scope: !3774, file: !3775, line: 54, baseType: !253, size: 64, offset: 6080)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_size_max", scope: !3774, file: !3775, line: 57, baseType: !253, size: 64, offset: 6144)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "svc", scope: !3774, file: !3775, line: 59, baseType: !3879, size: 64, offset: 6208)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_svc", file: !94, line: 39, size: 6272, elements: !3881)
!3881 = !{!3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3895, !3896, !3897}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3880, file: !94, line: 40, baseType: !143, size: 5568)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "hd", scope: !3880, file: !94, line: 42, baseType: !3773, size: 64, offset: 5568)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "connection", scope: !3880, file: !94, line: 43, baseType: !3769, size: 64, offset: 5632)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3880, file: !94, line: 44, baseType: !93, size: 32, offset: 5696)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "device_id_map", scope: !3880, file: !94, line: 45, baseType: !3873, size: 128, offset: 5760)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3880, file: !94, line: 46, baseType: !2730, size: 64, offset: 5888)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "endo_id", scope: !3880, file: !94, line: 48, baseType: !795, size: 16, offset: 5952)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "ap_intf_id", scope: !3880, file: !94, line: 49, baseType: !1288, size: 8, offset: 5968)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_major", scope: !3880, file: !94, line: 51, baseType: !1288, size: 8, offset: 5976)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_minor", scope: !3880, file: !94, line: 52, baseType: !1288, size: 8, offset: 5984)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog", scope: !3880, file: !94, line: 54, baseType: !3893, size: 64, offset: 6016)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DICompositeType(tag: DW_TAG_structure_type, name: "gb_svc_watchdog", file: !94, line: 32, flags: DIFlagFwdDecl)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3880, file: !94, line: 55, baseType: !99, size: 32, offset: 6080)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dentry", scope: !3880, file: !94, line: 57, baseType: !314, size: 64, offset: 6144)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "pwrmon_rails", scope: !3880, file: !94, line: 58, baseType: !3898, size: 64, offset: 6208)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "svc_debugfs_pwrmon_rail", file: !94, line: 34, size: 128, elements: !3900)
!3900 = !{!3901, !3902}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3899, file: !94, line: 35, baseType: !1288, size: 8)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "svc", scope: !3899, file: !94, line: 36, baseType: !3879, size: 64, offset: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "hd_priv", scope: !3774, file: !3775, line: 61, baseType: !3904, align: 64, offset: 6272)
!3904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, elements: !1659)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "intf", scope: !3770, file: !104, line: 40, baseType: !3757, size: 64, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "bundle", scope: !3770, file: !104, line: 41, baseType: !138, size: 64, offset: 128)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3770, file: !104, line: 42, baseType: !3300, size: 32, offset: 192)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "hd_cport_id", scope: !3770, file: !104, line: 43, baseType: !795, size: 16, offset: 224)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cport_id", scope: !3770, file: !104, line: 44, baseType: !795, size: 16, offset: 240)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "hd_links", scope: !3770, file: !104, line: 46, baseType: !151, size: 128, offset: 256)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "bundle_links", scope: !3770, file: !104, line: 47, baseType: !151, size: 128, offset: 384)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3770, file: !104, line: 49, baseType: !3913, size: 64, offset: 512)
!3913 = !DIDerivedType(tag: DW_TAG_typedef, name: "gb_request_handler_t", file: !104, line: 36, baseType: !3914)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!137, !3821}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3770, file: !104, line: 50, baseType: !256, size: 64, offset: 576)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3770, file: !104, line: 52, baseType: !1109, size: 192, offset: 640)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3770, file: !104, line: 53, baseType: !165, offset: 832)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3770, file: !104, line: 54, baseType: !103, size: 32, offset: 832)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "operations", scope: !3770, file: !104, line: 55, baseType: !151, size: 128, offset: 896)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3770, file: !104, line: 57, baseType: !1670, size: 128, offset: 1024)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3770, file: !104, line: 58, baseType: !2730, size: 64, offset: 1152)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "op_cycle", scope: !3770, file: !104, line: 60, baseType: !683, size: 32, offset: 1216)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3770, file: !104, line: 62, baseType: !124, size: 64, offset: 1280)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "mode_switch", scope: !3770, file: !104, line: 64, baseType: !422, size: 8, offset: 1344)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_major", scope: !3763, file: !3764, line: 21, baseType: !1288, size: 8, offset: 5696)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_minor", scope: !3763, file: !3764, line: 22, baseType: !1288, size: 8, offset: 5704)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "has_bundle_activate", scope: !3763, file: !3764, line: 24, baseType: !422, size: 8, offset: 5712)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "has_bundle_version", scope: !3763, file: !3764, line: 25, baseType: !422, size: 8, offset: 5720)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_string", scope: !3763, file: !3764, line: 27, baseType: !206, size: 64, offset: 5760)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "product_string", scope: !3763, file: !3764, line: 28, baseType: !206, size: 64, offset: 5824)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "bundles", scope: !3758, file: !111, line: 35, baseType: !151, size: 128, offset: 5632)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "module_node", scope: !3758, file: !111, line: 36, baseType: !151, size: 128, offset: 5760)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "manifest_descs", scope: !3758, file: !111, line: 37, baseType: !151, size: 128, offset: 5888)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "interface_id", scope: !3758, file: !111, line: 38, baseType: !1288, size: 8, offset: 6016)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "device_id", scope: !3758, file: !111, line: 39, baseType: !1288, size: 8, offset: 6024)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !3758, file: !111, line: 40, baseType: !1288, size: 8, offset: 6032)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3758, file: !111, line: 42, baseType: !110, size: 32, offset: 6048)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "ddbl1_manufacturer_id", scope: !3758, file: !111, line: 44, baseType: !347, size: 32, offset: 6080)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "ddbl1_product_id", scope: !3758, file: !111, line: 45, baseType: !347, size: 32, offset: 6112)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !3758, file: !111, line: 46, baseType: !347, size: 32, offset: 6144)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "product_id", scope: !3758, file: !111, line: 47, baseType: !347, size: 32, offset: 6176)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "serial_number", scope: !3758, file: !111, line: 48, baseType: !353, size: 64, offset: 6208)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "hd", scope: !3758, file: !111, line: 50, baseType: !3773, size: 64, offset: 6272)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3758, file: !111, line: 51, baseType: !3947, size: 64, offset: 6336)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gb_module", file: !3949, line: 15, size: 5952, elements: !3950)
!3949 = !DIFile(filename: "./include/linux/greybus/module.h", directory: "/home/lizy2001/genbc/linux")
!3950 = !{!3951, !3952, !3953, !3954, !3955, !3956, !3957}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3948, file: !3949, line: 16, baseType: !143, size: 5568)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "hd", scope: !3948, file: !3949, line: 17, baseType: !3773, size: 64, offset: 5568)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "hd_node", scope: !3948, file: !3949, line: 19, baseType: !151, size: 128, offset: 5632)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "module_id", scope: !3948, file: !3949, line: 21, baseType: !1288, size: 8, offset: 5760)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "num_interfaces", scope: !3948, file: !3949, line: 22, baseType: !253, size: 64, offset: 5824)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !3948, file: !3949, line: 24, baseType: !422, size: 8, offset: 5888)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "interfaces", scope: !3948, file: !3949, line: 26, baseType: !3958, offset: 5952)
!3958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3757, elements: !1659)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !3758, file: !111, line: 53, baseType: !256, size: 64, offset: 6400)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3758, file: !111, line: 55, baseType: !1109, size: 192, offset: 6464)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !3758, file: !111, line: 57, baseType: !422, size: 8, offset: 6656)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "ejected", scope: !3758, file: !111, line: 59, baseType: !422, size: 8, offset: 6664)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !3758, file: !111, line: 60, baseType: !422, size: 8, offset: 6672)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3758, file: !111, line: 61, baseType: !422, size: 8, offset: 6680)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3758, file: !111, line: 62, baseType: !422, size: 8, offset: 6688)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "mode_switch", scope: !3758, file: !111, line: 63, baseType: !422, size: 8, offset: 6696)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "dme_read", scope: !3758, file: !111, line: 64, baseType: !422, size: 8, offset: 6704)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "mode_switch_work", scope: !3758, file: !111, line: 66, baseType: !1894, size: 256, offset: 6720)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "mode_switch_completion", scope: !3758, file: !111, line: 67, baseType: !1438, size: 192, offset: 6976)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !139, file: !140, line: 24, baseType: !1288, size: 8, offset: 5632)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !139, file: !140, line: 25, baseType: !1288, size: 8, offset: 5640)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "class_major", scope: !139, file: !140, line: 26, baseType: !1288, size: 8, offset: 5648)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "class_minor", scope: !139, file: !140, line: 27, baseType: !1288, size: 8, offset: 5656)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "num_cports", scope: !139, file: !140, line: 29, baseType: !253, size: 64, offset: 5696)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "cport_desc", scope: !139, file: !140, line: 30, baseType: !3976, size: 64, offset: 5760)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "greybus_descriptor_cport", file: !3978, line: 148, size: 32, elements: !3979)
!3978 = !DIFile(filename: "./include/linux/greybus/greybus_manifest.h", directory: "/home/lizy2001/genbc/linux")
!3979 = !{!3980, !3981, !3982}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3977, file: !3978, line: 149, baseType: !3850, size: 16)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "bundle", scope: !3977, file: !3978, line: 150, baseType: !1289, size: 8, offset: 16)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_id", scope: !3977, file: !3978, line: 151, baseType: !1289, size: 8, offset: 24)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "connections", scope: !139, file: !140, line: 32, baseType: !151, size: 128, offset: 5824)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !139, file: !140, line: 33, baseType: !3985, size: 64, offset: 5952)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !139, file: !140, line: 35, baseType: !151, size: 128, offset: 6016)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3989)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "greybus_bundle_id", file: !3990, line: 13, size: 192, elements: !3991)
!3990 = !DIFile(filename: "./include/linux/greybus/greybus_id.h", directory: "/home/lizy2001/genbc/linux")
!3991 = !{!3992, !3993, !3994, !3995, !3996}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "match_flags", scope: !3989, file: !3990, line: 14, baseType: !796, size: 16)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3989, file: !3990, line: 15, baseType: !349, size: 32, offset: 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3989, file: !3990, line: 16, baseType: !349, size: 32, offset: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3989, file: !3990, line: 17, baseType: !1289, size: 8, offset: 96)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3989, file: !3990, line: 19, baseType: !3413, size: 64, align: 64, offset: 128)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !126, file: !127, line: 61, baseType: !3998, size: 64, offset: 128)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{null, !138}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !126, file: !127, line: 63, baseType: !3987, size: 64, offset: 192)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !126, file: !127, line: 65, baseType: !3382, size: 1152, offset: 256)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4005)
!4005 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !137)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !347)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4010)
!4010 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !155)
!4011 = !{!4012, !4064, !4066, !4068, !4073, !4078, !4083, !4088, !0}
!4012 = !DIGlobalVariableExpression(var: !4013, expr: !DIExpression())
!4013 = distinct !DIGlobalVariable(name: "__param_nogreybus", scope: !2, file: !3, line: 22, type: !4014, isLocal: true, isDefinition: true, align: 64)
!4014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4015)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4016, line: 69, size: 320, elements: !4017)
!4016 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!4017 = !{!4018, !4019, !4020, !4036, !4038, !4042, !4043}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4015, file: !4016, line: 70, baseType: !130, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4015, file: !4016, line: 71, baseType: !565, size: 64, offset: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4015, file: !4016, line: 72, baseType: !4021, size: 64, offset: 128)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4023)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4016, line: 47, size: 256, elements: !4024)
!4024 = !{!4025, !4026, !4031, !4035}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4023, file: !4016, line: 49, baseType: !7, size: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4023, file: !4016, line: 51, baseType: !4027, size: 64, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!137, !130, !4030}
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4023, file: !4016, line: 53, baseType: !4032, size: 64, offset: 128)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!137, !206, !4030}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4023, file: !4016, line: 55, baseType: !400, size: 64, offset: 192)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4015, file: !4016, line: 73, baseType: !4037, size: 16, offset: 192)
!4037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !795)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4015, file: !4016, line: 74, baseType: !4039, size: 8, offset: 208)
!4039 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !348, line: 16, baseType: !4040)
!4040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !350, line: 20, baseType: !4041)
!4041 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4015, file: !4016, line: 75, baseType: !1288, size: 8, offset: 216)
!4043 = !DIDerivedType(tag: DW_TAG_member, scope: !4015, file: !4016, line: 76, baseType: !4044, size: 64, offset: 256)
!4044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4015, file: !4016, line: 76, size: 64, elements: !4045)
!4045 = !{!4046, !4047, !4054}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4044, file: !4016, line: 77, baseType: !124, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4044, file: !4016, line: 78, baseType: !4048, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4050)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4016, line: 86, size: 128, elements: !4051)
!4051 = !{!4052, !4053}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4050, file: !4016, line: 87, baseType: !7, size: 32)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4050, file: !4016, line: 88, baseType: !206, size: 64, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4044, file: !4016, line: 79, baseType: !4055, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4057)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4016, line: 92, size: 256, elements: !4058)
!4058 = !{!4059, !4060, !4061, !4062, !4063}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4057, file: !4016, line: 94, baseType: !7, size: 32)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4057, file: !4016, line: 95, baseType: !7, size: 32, offset: 32)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4057, file: !4016, line: 96, baseType: !2620, size: 64, offset: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4057, file: !4016, line: 97, baseType: !4021, size: 64, offset: 128)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4057, file: !4016, line: 98, baseType: !124, size: 64, offset: 192)
!4064 = !DIGlobalVariableExpression(var: !4065, expr: !DIExpression())
!4065 = distinct !DIGlobalVariable(name: "greybus_bus_type", scope: !2, file: !3, line: 158, type: !3368, isLocal: false, isDefinition: true)
!4066 = !DIGlobalVariableExpression(var: !4067, expr: !DIExpression())
!4067 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gb_init249", scope: !2, file: !3, line: 337, type: !124, isLocal: true, isDefinition: true)
!4068 = !DIGlobalVariableExpression(var: !4069, expr: !DIExpression())
!4069 = distinct !DIGlobalVariable(name: "__exitcall_gb_exit", scope: !2, file: !3, line: 347, type: !4070, isLocal: true, isDefinition: true)
!4070 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4071, line: 117, baseType: !4072)
!4071 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!4073 = !DIGlobalVariableExpression(var: !4074, expr: !DIExpression())
!4074 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file250", scope: !2, file: !3, line: 348, type: !4075, isLocal: true, isDefinition: true, align: 8)
!4075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 296, elements: !4076)
!4076 = !{!4077}
!4077 = !DISubrange(count: 37)
!4078 = !DIGlobalVariableExpression(var: !4079, expr: !DIExpression())
!4079 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license251", scope: !2, file: !3, line: 348, type: !4080, isLocal: true, isDefinition: true, align: 8)
!4080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 184, elements: !4081)
!4081 = !{!4082}
!4082 = !DISubrange(count: 23)
!4083 = !DIGlobalVariableExpression(var: !4084, expr: !DIExpression())
!4084 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author252", scope: !2, file: !3, line: 349, type: !4085, isLocal: true, isDefinition: true, align: 8)
!4085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 504, elements: !4086)
!4086 = !{!4087}
!4087 = !DISubrange(count: 63)
!4088 = !DIGlobalVariableExpression(var: !4089, expr: !DIExpression())
!4089 = distinct !DIGlobalVariable(name: "nogreybus", scope: !2, file: !3, line: 18, type: !422, isLocal: true, isDefinition: true)
!4090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 80, elements: !4091)
!4091 = !{!4092}
!4092 = !DISubrange(count: 10)
!4093 = !{i32 7, !"Dwarf Version", i32 4}
!4094 = !{i32 2, !"Debug Info Version", i32 3}
!4095 = !{i32 1, !"wchar_size", i32 2}
!4096 = !{i32 1, !"Code Model", i32 2}
!4097 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4098 = distinct !DISubprogram(name: "greybus_disabled", scope: !3, file: !3, line: 24, type: !4099, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!137}
!4101 = !DILocation(line: 26, column: 9, scope: !4098)
!4102 = !DILocation(line: 26, column: 2, scope: !4098)
!4103 = distinct !DISubprogram(name: "greybus_match_device", scope: !3, file: !3, line: 63, type: !3379, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4104 = !DILocalVariable(name: "dev", arg: 1, scope: !4103, file: !3, line: 63, type: !3310)
!4105 = !DILocation(line: 63, column: 48, scope: !4103)
!4106 = !DILocalVariable(name: "drv", arg: 2, scope: !4103, file: !3, line: 63, type: !3381)
!4107 = !DILocation(line: 63, column: 75, scope: !4103)
!4108 = !DILocalVariable(name: "driver", scope: !4103, file: !3, line: 65, type: !125)
!4109 = !DILocation(line: 65, column: 25, scope: !4103)
!4110 = !DILocalVariable(name: "__mptr", scope: !4111, file: !3, line: 65, type: !124)
!4111 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 65, column: 34)
!4112 = !DILocation(line: 65, column: 34, scope: !4111)
!4113 = !DILocation(line: 65, column: 34, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4111, file: !3, line: 65, column: 34)
!4115 = !DILocalVariable(name: "bundle", scope: !4103, file: !3, line: 66, type: !138)
!4116 = !DILocation(line: 66, column: 20, scope: !4103)
!4117 = !DILocalVariable(name: "id", scope: !4103, file: !3, line: 67, type: !3987)
!4118 = !DILocation(line: 67, column: 34, scope: !4103)
!4119 = !DILocation(line: 69, column: 20, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 69, column: 6)
!4121 = !DILocation(line: 69, column: 7, scope: !4120)
!4122 = !DILocation(line: 69, column: 6, scope: !4103)
!4123 = !DILocation(line: 70, column: 3, scope: !4120)
!4124 = !DILocalVariable(name: "__mptr", scope: !4125, file: !3, line: 72, type: !124)
!4125 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 72, column: 11)
!4126 = !DILocation(line: 72, column: 11, scope: !4125)
!4127 = !DILocation(line: 72, column: 11, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 72, column: 11)
!4129 = !DILocation(line: 72, column: 9, scope: !4103)
!4130 = !DILocation(line: 74, column: 24, scope: !4103)
!4131 = !DILocation(line: 74, column: 32, scope: !4103)
!4132 = !DILocation(line: 74, column: 40, scope: !4103)
!4133 = !DILocation(line: 74, column: 7, scope: !4103)
!4134 = !DILocation(line: 74, column: 5, scope: !4103)
!4135 = !DILocation(line: 75, column: 6, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 75, column: 6)
!4137 = !DILocation(line: 75, column: 6, scope: !4103)
!4138 = !DILocation(line: 76, column: 3, scope: !4136)
!4139 = !DILocation(line: 78, column: 2, scope: !4103)
!4140 = !DILocation(line: 79, column: 1, scope: !4103)
!4141 = distinct !DISubprogram(name: "greybus_uevent", scope: !3, file: !3, line: 81, type: !3324, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4142 = !DILocalVariable(name: "dev", arg: 1, scope: !4141, file: !3, line: 81, type: !3310)
!4143 = !DILocation(line: 81, column: 42, scope: !4141)
!4144 = !DILocalVariable(name: "env", arg: 2, scope: !4141, file: !3, line: 81, type: !201)
!4145 = !DILocation(line: 81, column: 71, scope: !4141)
!4146 = !DILocalVariable(name: "hd", scope: !4141, file: !3, line: 83, type: !3773)
!4147 = !DILocation(line: 83, column: 25, scope: !4141)
!4148 = !DILocalVariable(name: "module", scope: !4141, file: !3, line: 84, type: !3947)
!4149 = !DILocation(line: 84, column: 20, scope: !4141)
!4150 = !DILocalVariable(name: "intf", scope: !4141, file: !3, line: 85, type: !3757)
!4151 = !DILocation(line: 85, column: 23, scope: !4141)
!4152 = !DILocalVariable(name: "control", scope: !4141, file: !3, line: 86, type: !3762)
!4153 = !DILocation(line: 86, column: 21, scope: !4141)
!4154 = !DILocalVariable(name: "bundle", scope: !4141, file: !3, line: 87, type: !138)
!4155 = !DILocation(line: 87, column: 20, scope: !4141)
!4156 = !DILocalVariable(name: "svc", scope: !4141, file: !3, line: 88, type: !3879)
!4157 = !DILocation(line: 88, column: 17, scope: !4141)
!4158 = !DILocation(line: 90, column: 24, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4141, file: !3, line: 90, column: 6)
!4160 = !DILocation(line: 90, column: 6, scope: !4159)
!4161 = !DILocation(line: 90, column: 6, scope: !4141)
!4162 = !DILocalVariable(name: "__mptr", scope: !4163, file: !3, line: 91, type: !124)
!4163 = distinct !DILexicalBlock(scope: !4164, file: !3, line: 91, column: 8)
!4164 = distinct !DILexicalBlock(scope: !4159, file: !3, line: 90, column: 30)
!4165 = !DILocation(line: 91, column: 8, scope: !4163)
!4166 = !DILocation(line: 91, column: 8, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4163, file: !3, line: 91, column: 8)
!4168 = !DILocation(line: 91, column: 6, scope: !4164)
!4169 = !DILocation(line: 92, column: 2, scope: !4164)
!4170 = !DILocation(line: 92, column: 26, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4159, file: !3, line: 92, column: 13)
!4172 = !DILocation(line: 92, column: 13, scope: !4171)
!4173 = !DILocation(line: 92, column: 13, scope: !4159)
!4174 = !DILocalVariable(name: "__mptr", scope: !4175, file: !3, line: 93, type: !124)
!4175 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 93, column: 12)
!4176 = distinct !DILexicalBlock(scope: !4171, file: !3, line: 92, column: 32)
!4177 = !DILocation(line: 93, column: 12, scope: !4175)
!4178 = !DILocation(line: 93, column: 12, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4175, file: !3, line: 93, column: 12)
!4180 = !DILocation(line: 93, column: 10, scope: !4176)
!4181 = !DILocation(line: 94, column: 8, scope: !4176)
!4182 = !DILocation(line: 94, column: 16, scope: !4176)
!4183 = !DILocation(line: 94, column: 6, scope: !4176)
!4184 = !DILocation(line: 95, column: 2, scope: !4176)
!4185 = !DILocation(line: 95, column: 29, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4171, file: !3, line: 95, column: 13)
!4187 = !DILocation(line: 95, column: 13, scope: !4186)
!4188 = !DILocation(line: 95, column: 13, scope: !4171)
!4189 = !DILocalVariable(name: "__mptr", scope: !4190, file: !3, line: 96, type: !124)
!4190 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 96, column: 10)
!4191 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 95, column: 35)
!4192 = !DILocation(line: 96, column: 10, scope: !4190)
!4193 = !DILocation(line: 96, column: 10, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4190, file: !3, line: 96, column: 10)
!4195 = !DILocation(line: 96, column: 8, scope: !4191)
!4196 = !DILocation(line: 97, column: 12, scope: !4191)
!4197 = !DILocation(line: 97, column: 18, scope: !4191)
!4198 = !DILocation(line: 97, column: 10, scope: !4191)
!4199 = !DILocation(line: 98, column: 8, scope: !4191)
!4200 = !DILocation(line: 98, column: 14, scope: !4191)
!4201 = !DILocation(line: 98, column: 6, scope: !4191)
!4202 = !DILocation(line: 99, column: 2, scope: !4191)
!4203 = !DILocation(line: 99, column: 27, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 99, column: 13)
!4205 = !DILocation(line: 99, column: 13, scope: !4204)
!4206 = !DILocation(line: 99, column: 13, scope: !4186)
!4207 = !DILocalVariable(name: "__mptr", scope: !4208, file: !3, line: 100, type: !124)
!4208 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 100, column: 13)
!4209 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 99, column: 33)
!4210 = !DILocation(line: 100, column: 13, scope: !4208)
!4211 = !DILocation(line: 100, column: 13, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 100, column: 13)
!4213 = !DILocation(line: 100, column: 11, scope: !4209)
!4214 = !DILocation(line: 101, column: 10, scope: !4209)
!4215 = !DILocation(line: 101, column: 19, scope: !4209)
!4216 = !DILocation(line: 101, column: 8, scope: !4209)
!4217 = !DILocation(line: 102, column: 12, scope: !4209)
!4218 = !DILocation(line: 102, column: 18, scope: !4209)
!4219 = !DILocation(line: 102, column: 10, scope: !4209)
!4220 = !DILocation(line: 103, column: 8, scope: !4209)
!4221 = !DILocation(line: 103, column: 14, scope: !4209)
!4222 = !DILocation(line: 103, column: 6, scope: !4209)
!4223 = !DILocation(line: 104, column: 2, scope: !4209)
!4224 = !DILocation(line: 104, column: 26, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 104, column: 13)
!4226 = !DILocation(line: 104, column: 13, scope: !4225)
!4227 = !DILocation(line: 104, column: 13, scope: !4204)
!4228 = !DILocalVariable(name: "__mptr", scope: !4229, file: !3, line: 105, type: !124)
!4229 = distinct !DILexicalBlock(scope: !4230, file: !3, line: 105, column: 12)
!4230 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 104, column: 32)
!4231 = !DILocation(line: 105, column: 12, scope: !4229)
!4232 = !DILocation(line: 105, column: 12, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4229, file: !3, line: 105, column: 12)
!4234 = !DILocation(line: 105, column: 10, scope: !4230)
!4235 = !DILocation(line: 106, column: 10, scope: !4230)
!4236 = !DILocation(line: 106, column: 18, scope: !4230)
!4237 = !DILocation(line: 106, column: 8, scope: !4230)
!4238 = !DILocation(line: 107, column: 12, scope: !4230)
!4239 = !DILocation(line: 107, column: 18, scope: !4230)
!4240 = !DILocation(line: 107, column: 10, scope: !4230)
!4241 = !DILocation(line: 108, column: 8, scope: !4230)
!4242 = !DILocation(line: 108, column: 14, scope: !4230)
!4243 = !DILocation(line: 108, column: 6, scope: !4230)
!4244 = !DILocation(line: 109, column: 2, scope: !4230)
!4245 = !DILocation(line: 109, column: 23, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 109, column: 13)
!4247 = !DILocation(line: 109, column: 13, scope: !4246)
!4248 = !DILocation(line: 109, column: 13, scope: !4225)
!4249 = !DILocalVariable(name: "__mptr", scope: !4250, file: !3, line: 110, type: !124)
!4250 = distinct !DILexicalBlock(scope: !4251, file: !3, line: 110, column: 9)
!4251 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 109, column: 29)
!4252 = !DILocation(line: 110, column: 9, scope: !4250)
!4253 = !DILocation(line: 110, column: 9, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4250, file: !3, line: 110, column: 9)
!4255 = !DILocation(line: 110, column: 7, scope: !4251)
!4256 = !DILocation(line: 111, column: 8, scope: !4251)
!4257 = !DILocation(line: 111, column: 13, scope: !4251)
!4258 = !DILocation(line: 111, column: 6, scope: !4251)
!4259 = !DILocation(line: 112, column: 2, scope: !4251)
!4260 = !DILocalVariable(name: "__ret_warn_on", scope: !4261, file: !3, line: 113, type: !137)
!4261 = distinct !DILexicalBlock(scope: !4262, file: !3, line: 113, column: 3)
!4262 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 112, column: 9)
!4263 = !DILocation(line: 113, column: 3, scope: !4261)
!4264 = !DILocation(line: 113, column: 3, scope: !4265)
!4265 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 113, column: 3)
!4266 = !DILocation(line: 113, column: 3, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4265, file: !3, line: 113, column: 3)
!4268 = !DILocation(line: 113, column: 3, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 113, column: 3)
!4270 = !DILocation(line: 113, column: 3, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 113, column: 3)
!4272 = !DILocation(line: 113, column: 3, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4271, file: !3, line: 113, column: 3)
!4274 = !DILocation(line: 113, column: 3, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4271, file: !3, line: 113, column: 3)
!4276 = !{i32 -2141727749, i32 -2141727720, i32 -2141727674, i32 -2141727616, i32 -2141727562, i32 -2141727508, i32 -2141727453, i32 -2141727422}
!4277 = !DILocation(line: 113, column: 3, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4271, file: !3, line: 113, column: 3)
!4279 = !{i32 -2141727007, i32 -2141727000, i32 -2141726948, i32 -2141726917, i32 -2141726887}
!4280 = !DILocation(line: 113, column: 3, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4271, file: !3, line: 113, column: 3)
!4282 = !DILocation(line: 113, column: 3, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4267, file: !3, line: 113, column: 3)
!4284 = !DILocation(line: 114, column: 3, scope: !4262)
!4285 = !DILocation(line: 117, column: 21, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4141, file: !3, line: 117, column: 6)
!4287 = !DILocation(line: 117, column: 36, scope: !4286)
!4288 = !DILocation(line: 117, column: 40, scope: !4286)
!4289 = !DILocation(line: 117, column: 6, scope: !4286)
!4290 = !DILocation(line: 117, column: 6, scope: !4141)
!4291 = !DILocation(line: 118, column: 3, scope: !4286)
!4292 = !DILocation(line: 120, column: 6, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4141, file: !3, line: 120, column: 6)
!4294 = !DILocation(line: 120, column: 6, scope: !4141)
!4295 = !DILocation(line: 121, column: 22, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4297, file: !3, line: 121, column: 7)
!4297 = distinct !DILexicalBlock(scope: !4293, file: !3, line: 120, column: 14)
!4298 = !DILocation(line: 121, column: 40, scope: !4296)
!4299 = !DILocation(line: 121, column: 48, scope: !4296)
!4300 = !DILocation(line: 121, column: 7, scope: !4296)
!4301 = !DILocation(line: 121, column: 7, scope: !4297)
!4302 = !DILocation(line: 122, column: 4, scope: !4296)
!4303 = !DILocation(line: 123, column: 2, scope: !4297)
!4304 = !DILocation(line: 125, column: 6, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4141, file: !3, line: 125, column: 6)
!4306 = !DILocation(line: 125, column: 6, scope: !4141)
!4307 = !DILocation(line: 126, column: 22, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4309, file: !3, line: 126, column: 7)
!4309 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 125, column: 12)
!4310 = !DILocation(line: 126, column: 43, scope: !4308)
!4311 = !DILocation(line: 126, column: 49, scope: !4308)
!4312 = !DILocation(line: 126, column: 7, scope: !4308)
!4313 = !DILocation(line: 126, column: 7, scope: !4309)
!4314 = !DILocation(line: 127, column: 4, scope: !4308)
!4315 = !DILocation(line: 128, column: 22, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4309, file: !3, line: 128, column: 7)
!4317 = !DILocation(line: 129, column: 8, scope: !4316)
!4318 = !DILocation(line: 129, column: 14, scope: !4316)
!4319 = !DILocation(line: 129, column: 25, scope: !4316)
!4320 = !DILocation(line: 129, column: 31, scope: !4316)
!4321 = !DILocation(line: 128, column: 7, scope: !4316)
!4322 = !DILocation(line: 128, column: 7, scope: !4309)
!4323 = !DILocation(line: 130, column: 4, scope: !4316)
!4324 = !DILocation(line: 131, column: 2, scope: !4309)
!4325 = !DILocation(line: 133, column: 6, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4141, file: !3, line: 133, column: 6)
!4327 = !DILocation(line: 133, column: 6, scope: !4141)
!4328 = !DILocation(line: 139, column: 22, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 139, column: 7)
!4330 = distinct !DILexicalBlock(scope: !4326, file: !3, line: 133, column: 14)
!4331 = !DILocation(line: 139, column: 40, scope: !4329)
!4332 = !DILocation(line: 139, column: 48, scope: !4329)
!4333 = !DILocation(line: 139, column: 7, scope: !4329)
!4334 = !DILocation(line: 139, column: 7, scope: !4330)
!4335 = !DILocation(line: 140, column: 4, scope: !4329)
!4336 = !DILocation(line: 141, column: 22, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 141, column: 7)
!4338 = !DILocation(line: 141, column: 48, scope: !4337)
!4339 = !DILocation(line: 141, column: 56, scope: !4337)
!4340 = !DILocation(line: 141, column: 7, scope: !4337)
!4341 = !DILocation(line: 141, column: 7, scope: !4330)
!4342 = !DILocation(line: 142, column: 4, scope: !4337)
!4343 = !DILocation(line: 143, column: 2, scope: !4330)
!4344 = !DILocation(line: 145, column: 2, scope: !4141)
!4345 = !DILocation(line: 146, column: 1, scope: !4141)
!4346 = distinct !DISubprogram(name: "greybus_shutdown", scope: !3, file: !3, line: 148, type: !3333, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4347 = !DILocalVariable(name: "dev", arg: 1, scope: !4346, file: !3, line: 148, type: !3310)
!4348 = !DILocation(line: 148, column: 45, scope: !4346)
!4349 = !DILocation(line: 150, column: 24, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4346, file: !3, line: 150, column: 6)
!4351 = !DILocation(line: 150, column: 6, scope: !4350)
!4352 = !DILocation(line: 150, column: 6, scope: !4346)
!4353 = !DILocalVariable(name: "hd", scope: !4354, file: !3, line: 151, type: !3773)
!4354 = distinct !DILexicalBlock(scope: !4350, file: !3, line: 150, column: 30)
!4355 = !DILocation(line: 151, column: 26, scope: !4354)
!4356 = !DILocalVariable(name: "__mptr", scope: !4357, file: !3, line: 153, type: !124)
!4357 = distinct !DILexicalBlock(scope: !4354, file: !3, line: 153, column: 8)
!4358 = !DILocation(line: 153, column: 8, scope: !4357)
!4359 = !DILocation(line: 153, column: 8, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 153, column: 8)
!4361 = !DILocation(line: 153, column: 6, scope: !4354)
!4362 = !DILocation(line: 154, column: 18, scope: !4354)
!4363 = !DILocation(line: 154, column: 3, scope: !4354)
!4364 = !DILocation(line: 155, column: 2, scope: !4354)
!4365 = !DILocation(line: 156, column: 1, scope: !4346)
!4366 = distinct !DISubprogram(name: "greybus_register_driver", scope: !3, file: !3, line: 268, type: !4367, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!137, !125, !565, !130}
!4369 = !DILocalVariable(name: "driver", arg: 1, scope: !4366, file: !3, line: 268, type: !125)
!4370 = !DILocation(line: 268, column: 52, scope: !4366)
!4371 = !DILocalVariable(name: "owner", arg: 2, scope: !4366, file: !3, line: 268, type: !565)
!4372 = !DILocation(line: 268, column: 75, scope: !4366)
!4373 = !DILocalVariable(name: "mod_name", arg: 3, scope: !4366, file: !3, line: 269, type: !130)
!4374 = !DILocation(line: 269, column: 20, scope: !4366)
!4375 = !DILocalVariable(name: "retval", scope: !4366, file: !3, line: 271, type: !137)
!4376 = !DILocation(line: 271, column: 6, scope: !4366)
!4377 = !DILocation(line: 273, column: 6, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 273, column: 6)
!4379 = !DILocation(line: 273, column: 6, scope: !4366)
!4380 = !DILocation(line: 274, column: 3, scope: !4378)
!4381 = !DILocation(line: 276, column: 2, scope: !4366)
!4382 = !DILocation(line: 276, column: 10, scope: !4366)
!4383 = !DILocation(line: 276, column: 17, scope: !4366)
!4384 = !DILocation(line: 276, column: 21, scope: !4366)
!4385 = !DILocation(line: 277, column: 24, scope: !4366)
!4386 = !DILocation(line: 277, column: 32, scope: !4366)
!4387 = !DILocation(line: 277, column: 2, scope: !4366)
!4388 = !DILocation(line: 277, column: 10, scope: !4366)
!4389 = !DILocation(line: 277, column: 17, scope: !4366)
!4390 = !DILocation(line: 277, column: 22, scope: !4366)
!4391 = !DILocation(line: 278, column: 2, scope: !4366)
!4392 = !DILocation(line: 278, column: 10, scope: !4366)
!4393 = !DILocation(line: 278, column: 17, scope: !4366)
!4394 = !DILocation(line: 278, column: 23, scope: !4366)
!4395 = !DILocation(line: 279, column: 2, scope: !4366)
!4396 = !DILocation(line: 279, column: 10, scope: !4366)
!4397 = !DILocation(line: 279, column: 17, scope: !4366)
!4398 = !DILocation(line: 279, column: 24, scope: !4366)
!4399 = !DILocation(line: 280, column: 25, scope: !4366)
!4400 = !DILocation(line: 280, column: 2, scope: !4366)
!4401 = !DILocation(line: 280, column: 10, scope: !4366)
!4402 = !DILocation(line: 280, column: 17, scope: !4366)
!4403 = !DILocation(line: 280, column: 23, scope: !4366)
!4404 = !DILocation(line: 281, column: 28, scope: !4366)
!4405 = !DILocation(line: 281, column: 2, scope: !4366)
!4406 = !DILocation(line: 281, column: 10, scope: !4366)
!4407 = !DILocation(line: 281, column: 17, scope: !4366)
!4408 = !DILocation(line: 281, column: 26, scope: !4366)
!4409 = !DILocation(line: 283, column: 28, scope: !4366)
!4410 = !DILocation(line: 283, column: 36, scope: !4366)
!4411 = !DILocation(line: 283, column: 11, scope: !4366)
!4412 = !DILocation(line: 283, column: 9, scope: !4366)
!4413 = !DILocation(line: 284, column: 6, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 284, column: 6)
!4415 = !DILocation(line: 284, column: 6, scope: !4366)
!4416 = !DILocation(line: 285, column: 10, scope: !4414)
!4417 = !DILocation(line: 285, column: 3, scope: !4414)
!4418 = !DILocation(line: 287, column: 2, scope: !4366)
!4419 = !DILocation(line: 288, column: 2, scope: !4366)
!4420 = !DILocation(line: 289, column: 1, scope: !4366)
!4421 = distinct !DISubprogram(name: "greybus_probe", scope: !3, file: !3, line: 165, type: !3342, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4422 = !DILocalVariable(name: "dev", arg: 1, scope: !4421, file: !3, line: 165, type: !3310)
!4423 = !DILocation(line: 165, column: 41, scope: !4421)
!4424 = !DILocalVariable(name: "driver", scope: !4421, file: !3, line: 167, type: !125)
!4425 = !DILocation(line: 167, column: 25, scope: !4421)
!4426 = !DILocalVariable(name: "__mptr", scope: !4427, file: !3, line: 167, type: !124)
!4427 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 167, column: 34)
!4428 = !DILocation(line: 167, column: 34, scope: !4427)
!4429 = !DILocation(line: 167, column: 34, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4427, file: !3, line: 167, column: 34)
!4431 = !DILocalVariable(name: "bundle", scope: !4421, file: !3, line: 168, type: !138)
!4432 = !DILocation(line: 168, column: 20, scope: !4421)
!4433 = !DILocalVariable(name: "__mptr", scope: !4434, file: !3, line: 168, type: !124)
!4434 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 168, column: 29)
!4435 = !DILocation(line: 168, column: 29, scope: !4434)
!4436 = !DILocation(line: 168, column: 29, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4434, file: !3, line: 168, column: 29)
!4438 = !DILocalVariable(name: "id", scope: !4421, file: !3, line: 169, type: !3987)
!4439 = !DILocation(line: 169, column: 34, scope: !4421)
!4440 = !DILocalVariable(name: "retval", scope: !4421, file: !3, line: 170, type: !137)
!4441 = !DILocation(line: 170, column: 6, scope: !4421)
!4442 = !DILocation(line: 173, column: 24, scope: !4421)
!4443 = !DILocation(line: 173, column: 32, scope: !4421)
!4444 = !DILocation(line: 173, column: 40, scope: !4421)
!4445 = !DILocation(line: 173, column: 7, scope: !4421)
!4446 = !DILocation(line: 173, column: 5, scope: !4421)
!4447 = !DILocation(line: 174, column: 7, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 174, column: 6)
!4449 = !DILocation(line: 174, column: 6, scope: !4421)
!4450 = !DILocation(line: 175, column: 3, scope: !4448)
!4451 = !DILocation(line: 177, column: 32, scope: !4421)
!4452 = !DILocation(line: 177, column: 40, scope: !4421)
!4453 = !DILocation(line: 177, column: 46, scope: !4421)
!4454 = !DILocation(line: 177, column: 11, scope: !4421)
!4455 = !DILocation(line: 177, column: 9, scope: !4421)
!4456 = !DILocation(line: 178, column: 6, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 178, column: 6)
!4458 = !DILocation(line: 178, column: 13, scope: !4457)
!4459 = !DILocation(line: 178, column: 6, scope: !4421)
!4460 = !DILocation(line: 179, column: 26, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4457, file: !3, line: 178, column: 18)
!4462 = !DILocation(line: 179, column: 34, scope: !4461)
!4463 = !DILocation(line: 179, column: 40, scope: !4461)
!4464 = !DILocation(line: 179, column: 3, scope: !4461)
!4465 = !DILocation(line: 180, column: 10, scope: !4461)
!4466 = !DILocation(line: 180, column: 3, scope: !4461)
!4467 = !DILocation(line: 183, column: 38, scope: !4421)
!4468 = !DILocation(line: 183, column: 46, scope: !4421)
!4469 = !DILocation(line: 183, column: 52, scope: !4421)
!4470 = !DILocation(line: 183, column: 61, scope: !4421)
!4471 = !DILocation(line: 183, column: 69, scope: !4421)
!4472 = !DILocation(line: 183, column: 11, scope: !4421)
!4473 = !DILocation(line: 183, column: 9, scope: !4421)
!4474 = !DILocation(line: 184, column: 6, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 184, column: 6)
!4476 = !DILocation(line: 184, column: 6, scope: !4421)
!4477 = !DILocation(line: 185, column: 19, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 184, column: 14)
!4479 = !DILocation(line: 185, column: 27, scope: !4478)
!4480 = !DILocation(line: 185, column: 33, scope: !4478)
!4481 = !DILocation(line: 185, column: 3, scope: !4478)
!4482 = !DILocation(line: 186, column: 10, scope: !4478)
!4483 = !DILocation(line: 186, column: 3, scope: !4478)
!4484 = !DILocation(line: 196, column: 35, scope: !4421)
!4485 = !DILocation(line: 196, column: 2, scope: !4421)
!4486 = !DILocation(line: 197, column: 29, scope: !4421)
!4487 = !DILocation(line: 197, column: 2, scope: !4421)
!4488 = !DILocation(line: 198, column: 26, scope: !4421)
!4489 = !DILocation(line: 198, column: 2, scope: !4421)
!4490 = !DILocation(line: 199, column: 24, scope: !4421)
!4491 = !DILocation(line: 199, column: 2, scope: !4421)
!4492 = !DILocation(line: 200, column: 20, scope: !4421)
!4493 = !DILocation(line: 200, column: 2, scope: !4421)
!4494 = !DILocation(line: 202, column: 11, scope: !4421)
!4495 = !DILocation(line: 202, column: 19, scope: !4421)
!4496 = !DILocation(line: 202, column: 25, scope: !4421)
!4497 = !DILocation(line: 202, column: 33, scope: !4421)
!4498 = !DILocation(line: 202, column: 9, scope: !4421)
!4499 = !DILocation(line: 203, column: 6, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4421, file: !3, line: 203, column: 6)
!4501 = !DILocation(line: 203, column: 6, scope: !4421)
!4502 = !DILocalVariable(name: "__ret_warn_on", scope: !4503, file: !3, line: 207, type: !137)
!4503 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 207, column: 3)
!4504 = distinct !DILexicalBlock(scope: !4500, file: !3, line: 203, column: 14)
!4505 = !DILocation(line: 207, column: 3, scope: !4503)
!4506 = !DILocation(line: 207, column: 3, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4503, file: !3, line: 207, column: 3)
!4508 = !DILocation(line: 207, column: 3, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4507, file: !3, line: 207, column: 3)
!4510 = !DILocation(line: 207, column: 3, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 207, column: 3)
!4512 = !DILocation(line: 207, column: 3, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 207, column: 3)
!4514 = !{i32 -2141721622, i32 -2141721593, i32 -2141721547, i32 -2141721489, i32 -2141721435, i32 -2141721381, i32 -2141721326, i32 -2141721295}
!4515 = !DILocation(line: 207, column: 3, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 207, column: 3)
!4517 = !{i32 -2141720891, i32 -2141720884, i32 -2141720832, i32 -2141720801, i32 -2141720771}
!4518 = !DILocation(line: 207, column: 3, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 207, column: 3)
!4520 = !DILocation(line: 209, column: 32, scope: !4504)
!4521 = !DILocation(line: 209, column: 40, scope: !4504)
!4522 = !DILocation(line: 209, column: 46, scope: !4504)
!4523 = !DILocation(line: 209, column: 55, scope: !4504)
!4524 = !DILocation(line: 209, column: 63, scope: !4504)
!4525 = !DILocation(line: 209, column: 3, scope: !4504)
!4526 = !DILocation(line: 211, column: 22, scope: !4504)
!4527 = !DILocation(line: 211, column: 3, scope: !4504)
!4528 = !DILocation(line: 212, column: 28, scope: !4504)
!4529 = !DILocation(line: 212, column: 3, scope: !4504)
!4530 = !DILocation(line: 213, column: 25, scope: !4504)
!4531 = !DILocation(line: 213, column: 3, scope: !4504)
!4532 = !DILocation(line: 214, column: 35, scope: !4504)
!4533 = !DILocation(line: 214, column: 3, scope: !4504)
!4534 = !DILocation(line: 215, column: 19, scope: !4504)
!4535 = !DILocation(line: 215, column: 27, scope: !4504)
!4536 = !DILocation(line: 215, column: 33, scope: !4504)
!4537 = !DILocation(line: 215, column: 3, scope: !4504)
!4538 = !DILocation(line: 217, column: 10, scope: !4504)
!4539 = !DILocation(line: 217, column: 3, scope: !4504)
!4540 = !DILocation(line: 220, column: 18, scope: !4421)
!4541 = !DILocation(line: 220, column: 26, scope: !4421)
!4542 = !DILocation(line: 220, column: 32, scope: !4421)
!4543 = !DILocation(line: 220, column: 2, scope: !4421)
!4544 = !DILocation(line: 222, column: 2, scope: !4421)
!4545 = !DILocation(line: 223, column: 1, scope: !4421)
!4546 = distinct !DISubprogram(name: "greybus_remove", scope: !3, file: !3, line: 225, type: !3342, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4547 = !DILocalVariable(name: "dev", arg: 1, scope: !4546, file: !3, line: 225, type: !3310)
!4548 = !DILocation(line: 225, column: 42, scope: !4546)
!4549 = !DILocalVariable(name: "driver", scope: !4546, file: !3, line: 227, type: !125)
!4550 = !DILocation(line: 227, column: 25, scope: !4546)
!4551 = !DILocalVariable(name: "__mptr", scope: !4552, file: !3, line: 227, type: !124)
!4552 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 227, column: 34)
!4553 = !DILocation(line: 227, column: 34, scope: !4552)
!4554 = !DILocation(line: 227, column: 34, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4552, file: !3, line: 227, column: 34)
!4556 = !DILocalVariable(name: "bundle", scope: !4546, file: !3, line: 228, type: !138)
!4557 = !DILocation(line: 228, column: 20, scope: !4546)
!4558 = !DILocalVariable(name: "__mptr", scope: !4559, file: !3, line: 228, type: !124)
!4559 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 228, column: 29)
!4560 = !DILocation(line: 228, column: 29, scope: !4559)
!4561 = !DILocation(line: 228, column: 29, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 228, column: 29)
!4563 = !DILocalVariable(name: "connection", scope: !4546, file: !3, line: 229, type: !3769)
!4564 = !DILocation(line: 229, column: 24, scope: !4546)
!4565 = !DILocalVariable(name: "retval", scope: !4546, file: !3, line: 230, type: !137)
!4566 = !DILocation(line: 230, column: 6, scope: !4546)
!4567 = !DILocation(line: 232, column: 31, scope: !4546)
!4568 = !DILocation(line: 232, column: 11, scope: !4546)
!4569 = !DILocation(line: 232, column: 9, scope: !4546)
!4570 = !DILocation(line: 233, column: 6, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 233, column: 6)
!4572 = !DILocation(line: 233, column: 13, scope: !4571)
!4573 = !DILocation(line: 233, column: 6, scope: !4546)
!4574 = !DILocation(line: 234, column: 3, scope: !4571)
!4575 = !DILocalVariable(name: "__mptr", scope: !4576, file: !3, line: 241, type: !124)
!4576 = distinct !DILexicalBlock(scope: !4577, file: !3, line: 241, column: 2)
!4577 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 241, column: 2)
!4578 = !DILocation(line: 241, column: 2, scope: !4576)
!4579 = !DILocation(line: 241, column: 2, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4576, file: !3, line: 241, column: 2)
!4581 = !DILocation(line: 241, column: 2, scope: !4577)
!4582 = !DILocation(line: 241, column: 2, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4577, file: !3, line: 241, column: 2)
!4584 = !DILocation(line: 242, column: 34, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 242, column: 7)
!4586 = distinct !DILexicalBlock(scope: !4583, file: !3, line: 241, column: 70)
!4587 = !DILocation(line: 242, column: 7, scope: !4585)
!4588 = !DILocation(line: 242, column: 7, scope: !4586)
!4589 = !DILocation(line: 243, column: 4, scope: !4585)
!4590 = !DILocation(line: 245, column: 7, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 245, column: 7)
!4592 = !DILocation(line: 245, column: 15, scope: !4591)
!4593 = !DILocation(line: 245, column: 21, scope: !4591)
!4594 = !DILocation(line: 245, column: 7, scope: !4586)
!4595 = !DILocation(line: 246, column: 33, scope: !4591)
!4596 = !DILocation(line: 246, column: 4, scope: !4591)
!4597 = !DILocation(line: 248, column: 29, scope: !4591)
!4598 = !DILocation(line: 248, column: 4, scope: !4591)
!4599 = !DILocation(line: 249, column: 2, scope: !4586)
!4600 = !DILocalVariable(name: "__mptr", scope: !4601, file: !3, line: 241, type: !124)
!4601 = distinct !DILexicalBlock(scope: !4583, file: !3, line: 241, column: 2)
!4602 = !DILocation(line: 241, column: 2, scope: !4601)
!4603 = !DILocation(line: 241, column: 2, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 241, column: 2)
!4605 = distinct !{!4605, !4581, !4606}
!4606 = !DILocation(line: 249, column: 2, scope: !4577)
!4607 = !DILocation(line: 251, column: 2, scope: !4546)
!4608 = !DILocation(line: 251, column: 10, scope: !4546)
!4609 = !DILocation(line: 251, column: 21, scope: !4546)
!4610 = !DILocalVariable(name: "__ret_warn_on", scope: !4611, file: !3, line: 254, type: !137)
!4611 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 254, column: 2)
!4612 = !DILocation(line: 254, column: 2, scope: !4611)
!4613 = !DILocation(line: 254, column: 2, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 254, column: 2)
!4615 = !DILocation(line: 254, column: 2, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4614, file: !3, line: 254, column: 2)
!4617 = !DILocation(line: 254, column: 2, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 254, column: 2)
!4619 = !DILocation(line: 254, column: 2, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 254, column: 2)
!4621 = !{i32 -2141712443, i32 -2141712414, i32 -2141712368, i32 -2141712310, i32 -2141712256, i32 -2141712202, i32 -2141712147, i32 -2141712116}
!4622 = !DILocation(line: 254, column: 2, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 254, column: 2)
!4624 = !{i32 -2141711712, i32 -2141711705, i32 -2141711653, i32 -2141711622, i32 -2141711592}
!4625 = !DILocation(line: 254, column: 2, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 254, column: 2)
!4627 = !DILocation(line: 256, column: 7, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 256, column: 6)
!4629 = !DILocation(line: 256, column: 15, scope: !4628)
!4630 = !DILocation(line: 256, column: 21, scope: !4628)
!4631 = !DILocation(line: 256, column: 6, scope: !4546)
!4632 = !DILocation(line: 257, column: 32, scope: !4628)
!4633 = !DILocation(line: 257, column: 40, scope: !4628)
!4634 = !DILocation(line: 257, column: 46, scope: !4628)
!4635 = !DILocation(line: 257, column: 55, scope: !4628)
!4636 = !DILocation(line: 257, column: 63, scope: !4628)
!4637 = !DILocation(line: 257, column: 3, scope: !4628)
!4638 = !DILocation(line: 259, column: 24, scope: !4546)
!4639 = !DILocation(line: 259, column: 2, scope: !4546)
!4640 = !DILocation(line: 260, column: 21, scope: !4546)
!4641 = !DILocation(line: 260, column: 2, scope: !4546)
!4642 = !DILocation(line: 261, column: 27, scope: !4546)
!4643 = !DILocation(line: 261, column: 2, scope: !4546)
!4644 = !DILocation(line: 262, column: 34, scope: !4546)
!4645 = !DILocation(line: 262, column: 2, scope: !4546)
!4646 = !DILocation(line: 263, column: 24, scope: !4546)
!4647 = !DILocation(line: 263, column: 2, scope: !4546)
!4648 = !DILocation(line: 265, column: 2, scope: !4546)
!4649 = distinct !DISubprogram(name: "greybus_deregister_driver", scope: !3, file: !3, line: 292, type: !4650, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{null, !125}
!4652 = !DILocalVariable(name: "driver", arg: 1, scope: !4649, file: !3, line: 292, type: !125)
!4653 = !DILocation(line: 292, column: 55, scope: !4649)
!4654 = !DILocation(line: 294, column: 21, scope: !4649)
!4655 = !DILocation(line: 294, column: 29, scope: !4649)
!4656 = !DILocation(line: 294, column: 2, scope: !4649)
!4657 = !DILocation(line: 295, column: 1, scope: !4649)
!4658 = distinct !DISubprogram(name: "gb_init", scope: !3, file: !3, line: 298, type: !4099, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4659 = !DILocalVariable(name: "retval", scope: !4658, file: !3, line: 300, type: !137)
!4660 = !DILocation(line: 300, column: 6, scope: !4658)
!4661 = !DILocation(line: 302, column: 6, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 302, column: 6)
!4663 = !DILocation(line: 302, column: 6, scope: !4658)
!4664 = !DILocation(line: 303, column: 3, scope: !4662)
!4665 = !DILocation(line: 305, column: 2, scope: !4658)
!4666 = !DILocation(line: 305, column: 2, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 305, column: 2)
!4668 = !DILocation(line: 307, column: 2, scope: !4658)
!4669 = !DILocation(line: 309, column: 11, scope: !4658)
!4670 = !DILocation(line: 309, column: 9, scope: !4658)
!4671 = !DILocation(line: 310, column: 6, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 310, column: 6)
!4673 = !DILocation(line: 310, column: 6, scope: !4658)
!4674 = !DILocation(line: 311, column: 3, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 310, column: 14)
!4676 = !DILocation(line: 312, column: 3, scope: !4675)
!4677 = !DILocation(line: 315, column: 11, scope: !4658)
!4678 = !DILocation(line: 315, column: 9, scope: !4658)
!4679 = !DILocation(line: 316, column: 6, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 316, column: 6)
!4681 = !DILocation(line: 316, column: 6, scope: !4658)
!4682 = !DILocation(line: 317, column: 3, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4680, file: !3, line: 316, column: 14)
!4684 = !DILocation(line: 318, column: 3, scope: !4683)
!4685 = !DILocation(line: 321, column: 11, scope: !4658)
!4686 = !DILocation(line: 321, column: 9, scope: !4658)
!4687 = !DILocation(line: 322, column: 6, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 322, column: 6)
!4689 = !DILocation(line: 322, column: 6, scope: !4658)
!4690 = !DILocation(line: 323, column: 3, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 322, column: 14)
!4692 = !DILocation(line: 324, column: 3, scope: !4691)
!4693 = !DILocation(line: 326, column: 2, scope: !4658)
!4694 = !DILabel(scope: !4658, name: "error_operation", file: !3, line: 328)
!4695 = !DILocation(line: 328, column: 1, scope: !4658)
!4696 = !DILocation(line: 329, column: 2, scope: !4658)
!4697 = !DILabel(scope: !4658, name: "error_hd", file: !3, line: 330)
!4698 = !DILocation(line: 330, column: 1, scope: !4658)
!4699 = !DILocation(line: 331, column: 2, scope: !4658)
!4700 = !DILabel(scope: !4658, name: "error_bus", file: !3, line: 332)
!4701 = !DILocation(line: 332, column: 1, scope: !4658)
!4702 = !DILocation(line: 333, column: 2, scope: !4658)
!4703 = !DILocation(line: 335, column: 9, scope: !4658)
!4704 = !DILocation(line: 335, column: 2, scope: !4658)
!4705 = !DILocation(line: 336, column: 1, scope: !4658)
!4706 = distinct !DISubprogram(name: "gb_exit", scope: !3, file: !3, line: 339, type: !1815, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4707 = !DILocation(line: 341, column: 2, scope: !4706)
!4708 = !DILocation(line: 342, column: 2, scope: !4706)
!4709 = !DILocation(line: 343, column: 2, scope: !4706)
!4710 = !DILocation(line: 344, column: 2, scope: !4706)
!4711 = !DILocation(line: 345, column: 2, scope: !4706)
!4712 = !DILocation(line: 346, column: 1, scope: !4706)
!4713 = distinct !DISubprogram(name: "tracepoint_synchronize_unregister", scope: !4714, file: !4714, line: 87, type: !1815, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4714 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/lizy2001/genbc/linux")
!4715 = !DILocation(line: 88, column: 3, scope: !4713)
!4716 = distinct !DISubprogram(name: "is_gb_bundle", scope: !127, file: !127, line: 136, type: !4717, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4717 = !DISubroutineType(types: !4718)
!4718 = !{!137, !3647}
!4719 = !DILocalVariable(name: "dev", arg: 1, scope: !4716, file: !127, line: 136, type: !3647)
!4720 = !DILocation(line: 136, column: 53, scope: !4716)
!4721 = !DILocation(line: 138, column: 9, scope: !4716)
!4722 = !DILocation(line: 138, column: 14, scope: !4716)
!4723 = !DILocation(line: 138, column: 19, scope: !4716)
!4724 = !DILocation(line: 138, column: 2, scope: !4716)
!4725 = distinct !DISubprogram(name: "greybus_match_id", scope: !3, file: !3, line: 49, type: !4726, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4726 = !DISubroutineType(types: !4727)
!4727 = !{!3987, !138, !3987}
!4728 = !DILocalVariable(name: "bundle", arg: 1, scope: !4725, file: !3, line: 49, type: !138)
!4729 = !DILocation(line: 49, column: 36, scope: !4725)
!4730 = !DILocalVariable(name: "id", arg: 2, scope: !4725, file: !3, line: 49, type: !3987)
!4731 = !DILocation(line: 49, column: 76, scope: !4725)
!4732 = !DILocation(line: 51, column: 7, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 51, column: 6)
!4734 = !DILocation(line: 51, column: 6, scope: !4725)
!4735 = !DILocation(line: 52, column: 3, scope: !4733)
!4736 = !DILocation(line: 54, column: 2, scope: !4725)
!4737 = !DILocation(line: 54, column: 9, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 54, column: 2)
!4739 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 54, column: 2)
!4740 = !DILocation(line: 54, column: 13, scope: !4738)
!4741 = !DILocation(line: 54, column: 20, scope: !4738)
!4742 = !DILocation(line: 54, column: 23, scope: !4738)
!4743 = !DILocation(line: 54, column: 27, scope: !4738)
!4744 = !DILocation(line: 54, column: 35, scope: !4738)
!4745 = !DILocation(line: 54, column: 38, scope: !4738)
!4746 = !DILocation(line: 54, column: 42, scope: !4738)
!4747 = !DILocation(line: 54, column: 48, scope: !4738)
!4748 = !DILocation(line: 54, column: 51, scope: !4738)
!4749 = !DILocation(line: 54, column: 55, scope: !4738)
!4750 = !DILocation(line: 54, column: 2, scope: !4739)
!4751 = !DILocation(line: 56, column: 28, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4753, file: !3, line: 56, column: 7)
!4753 = distinct !DILexicalBlock(scope: !4738, file: !3, line: 55, column: 16)
!4754 = !DILocation(line: 56, column: 36, scope: !4752)
!4755 = !DILocation(line: 56, column: 7, scope: !4752)
!4756 = !DILocation(line: 56, column: 7, scope: !4753)
!4757 = !DILocation(line: 57, column: 11, scope: !4752)
!4758 = !DILocation(line: 57, column: 4, scope: !4752)
!4759 = !DILocation(line: 58, column: 2, scope: !4753)
!4760 = !DILocation(line: 55, column: 12, scope: !4738)
!4761 = !DILocation(line: 54, column: 2, scope: !4738)
!4762 = distinct !{!4762, !4750, !4763}
!4763 = !DILocation(line: 58, column: 2, scope: !4739)
!4764 = !DILocation(line: 60, column: 2, scope: !4725)
!4765 = !DILocation(line: 61, column: 1, scope: !4725)
!4766 = distinct !DISubprogram(name: "greybus_match_one_id", scope: !3, file: !3, line: 30, type: !4767, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!422, !138, !3987}
!4769 = !DILocalVariable(name: "bundle", arg: 1, scope: !4766, file: !3, line: 30, type: !138)
!4770 = !DILocation(line: 30, column: 52, scope: !4766)
!4771 = !DILocalVariable(name: "id", arg: 2, scope: !4766, file: !3, line: 31, type: !3987)
!4772 = !DILocation(line: 31, column: 38, scope: !4766)
!4773 = !DILocation(line: 33, column: 7, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4766, file: !3, line: 33, column: 6)
!4775 = !DILocation(line: 33, column: 11, scope: !4774)
!4776 = !DILocation(line: 33, column: 23, scope: !4774)
!4777 = !DILocation(line: 33, column: 50, scope: !4774)
!4778 = !DILocation(line: 34, column: 7, scope: !4774)
!4779 = !DILocation(line: 34, column: 11, scope: !4774)
!4780 = !DILocation(line: 34, column: 21, scope: !4774)
!4781 = !DILocation(line: 34, column: 29, scope: !4774)
!4782 = !DILocation(line: 34, column: 35, scope: !4774)
!4783 = !DILocation(line: 34, column: 18, scope: !4774)
!4784 = !DILocation(line: 33, column: 6, scope: !4766)
!4785 = !DILocation(line: 35, column: 3, scope: !4774)
!4786 = !DILocation(line: 37, column: 7, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4766, file: !3, line: 37, column: 6)
!4788 = !DILocation(line: 37, column: 11, scope: !4787)
!4789 = !DILocation(line: 37, column: 23, scope: !4787)
!4790 = !DILocation(line: 37, column: 51, scope: !4787)
!4791 = !DILocation(line: 38, column: 7, scope: !4787)
!4792 = !DILocation(line: 38, column: 11, scope: !4787)
!4793 = !DILocation(line: 38, column: 22, scope: !4787)
!4794 = !DILocation(line: 38, column: 30, scope: !4787)
!4795 = !DILocation(line: 38, column: 36, scope: !4787)
!4796 = !DILocation(line: 38, column: 19, scope: !4787)
!4797 = !DILocation(line: 37, column: 6, scope: !4766)
!4798 = !DILocation(line: 39, column: 3, scope: !4787)
!4799 = !DILocation(line: 41, column: 7, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4766, file: !3, line: 41, column: 6)
!4801 = !DILocation(line: 41, column: 11, scope: !4800)
!4802 = !DILocation(line: 41, column: 23, scope: !4800)
!4803 = !DILocation(line: 41, column: 49, scope: !4800)
!4804 = !DILocation(line: 42, column: 7, scope: !4800)
!4805 = !DILocation(line: 42, column: 11, scope: !4800)
!4806 = !DILocation(line: 42, column: 20, scope: !4800)
!4807 = !DILocation(line: 42, column: 28, scope: !4800)
!4808 = !DILocation(line: 42, column: 17, scope: !4800)
!4809 = !DILocation(line: 41, column: 6, scope: !4766)
!4810 = !DILocation(line: 43, column: 3, scope: !4800)
!4811 = !DILocation(line: 45, column: 2, scope: !4766)
!4812 = !DILocation(line: 46, column: 1, scope: !4766)
!4813 = distinct !DISubprogram(name: "is_gb_host_device", scope: !127, file: !127, line: 116, type: !4717, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4814 = !DILocalVariable(name: "dev", arg: 1, scope: !4813, file: !127, line: 116, type: !3647)
!4815 = !DILocation(line: 116, column: 58, scope: !4813)
!4816 = !DILocation(line: 118, column: 9, scope: !4813)
!4817 = !DILocation(line: 118, column: 14, scope: !4813)
!4818 = !DILocation(line: 118, column: 19, scope: !4813)
!4819 = !DILocation(line: 118, column: 2, scope: !4813)
!4820 = distinct !DISubprogram(name: "is_gb_module", scope: !127, file: !127, line: 121, type: !4717, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4821 = !DILocalVariable(name: "dev", arg: 1, scope: !4820, file: !127, line: 121, type: !3647)
!4822 = !DILocation(line: 121, column: 53, scope: !4820)
!4823 = !DILocation(line: 123, column: 9, scope: !4820)
!4824 = !DILocation(line: 123, column: 14, scope: !4820)
!4825 = !DILocation(line: 123, column: 19, scope: !4820)
!4826 = !DILocation(line: 123, column: 2, scope: !4820)
!4827 = distinct !DISubprogram(name: "is_gb_interface", scope: !127, file: !127, line: 126, type: !4717, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4828 = !DILocalVariable(name: "dev", arg: 1, scope: !4827, file: !127, line: 126, type: !3647)
!4829 = !DILocation(line: 126, column: 56, scope: !4827)
!4830 = !DILocation(line: 128, column: 9, scope: !4827)
!4831 = !DILocation(line: 128, column: 14, scope: !4827)
!4832 = !DILocation(line: 128, column: 19, scope: !4827)
!4833 = !DILocation(line: 128, column: 2, scope: !4827)
!4834 = distinct !DISubprogram(name: "is_gb_control", scope: !127, file: !127, line: 131, type: !4717, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4835 = !DILocalVariable(name: "dev", arg: 1, scope: !4834, file: !127, line: 131, type: !3647)
!4836 = !DILocation(line: 131, column: 54, scope: !4834)
!4837 = !DILocation(line: 133, column: 9, scope: !4834)
!4838 = !DILocation(line: 133, column: 14, scope: !4834)
!4839 = !DILocation(line: 133, column: 19, scope: !4834)
!4840 = !DILocation(line: 133, column: 2, scope: !4834)
!4841 = distinct !DISubprogram(name: "is_gb_svc", scope: !127, file: !127, line: 141, type: !4717, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4842 = !DILocalVariable(name: "dev", arg: 1, scope: !4841, file: !127, line: 141, type: !3647)
!4843 = !DILocation(line: 141, column: 50, scope: !4841)
!4844 = !DILocation(line: 143, column: 9, scope: !4841)
!4845 = !DILocation(line: 143, column: 14, scope: !4841)
!4846 = !DILocation(line: 143, column: 19, scope: !4841)
!4847 = !DILocation(line: 143, column: 2, scope: !4841)
!4848 = distinct !DISubprogram(name: "dev_name", scope: !73, file: !73, line: 609, type: !4849, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{!130, !3647}
!4851 = !DILocalVariable(name: "dev", arg: 1, scope: !4848, file: !73, line: 609, type: !3647)
!4852 = !DILocation(line: 609, column: 57, scope: !4848)
!4853 = !DILocation(line: 612, column: 6, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4848, file: !73, line: 612, column: 6)
!4855 = !DILocation(line: 612, column: 11, scope: !4854)
!4856 = !DILocation(line: 612, column: 6, scope: !4848)
!4857 = !DILocation(line: 613, column: 10, scope: !4854)
!4858 = !DILocation(line: 613, column: 15, scope: !4854)
!4859 = !DILocation(line: 613, column: 3, scope: !4854)
!4860 = !DILocation(line: 615, column: 23, scope: !4848)
!4861 = !DILocation(line: 615, column: 28, scope: !4848)
!4862 = !DILocation(line: 615, column: 9, scope: !4848)
!4863 = !DILocation(line: 615, column: 2, scope: !4848)
!4864 = !DILocation(line: 616, column: 1, scope: !4848)
!4865 = distinct !DISubprogram(name: "kobject_name", scope: !147, file: !147, line: 88, type: !4866, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!130, !4868}
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!4870 = !DILocalVariable(name: "kobj", arg: 1, scope: !4865, file: !147, line: 88, type: !4868)
!4871 = !DILocation(line: 88, column: 62, scope: !4865)
!4872 = !DILocation(line: 90, column: 9, scope: !4865)
!4873 = !DILocation(line: 90, column: 15, scope: !4865)
!4874 = !DILocation(line: 90, column: 2, scope: !4865)
!4875 = distinct !DISubprogram(name: "pm_runtime_get_sync", scope: !4876, file: !4876, line: 384, type: !3342, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4876 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!4877 = !DILocalVariable(name: "dev", arg: 1, scope: !4875, file: !4876, line: 384, type: !3310)
!4878 = !DILocation(line: 384, column: 54, scope: !4875)
!4879 = !DILocation(line: 386, column: 29, scope: !4875)
!4880 = !DILocation(line: 386, column: 9, scope: !4875)
!4881 = !DILocation(line: 386, column: 2, scope: !4875)
!4882 = distinct !DISubprogram(name: "pm_runtime_put_noidle", scope: !4876, file: !4876, line: 103, type: !3333, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4883 = !DILocalVariable(name: "v", arg: 1, scope: !4884, file: !4885, line: 200, type: !4888)
!4884 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !4885, file: !4885, line: 200, type: !4886, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4885 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!422, !4888, !640, !137}
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!4889 = !DILocation(line: 200, column: 63, scope: !4884, inlinedAt: !4890)
!4890 = distinct !DILocation(line: 1093, column: 12, scope: !4891, inlinedAt: !4895)
!4891 = distinct !DISubprogram(name: "arch_atomic_fetch_add_unless", scope: !4892, file: !4892, line: 1086, type: !4893, scopeLine: 1087, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4892 = !DIFile(filename: "./include/linux/atomic-arch-fallback.h", directory: "/home/lizy2001/genbc/linux")
!4893 = !DISubroutineType(types: !4894)
!4894 = !{!137, !4888, !137, !137}
!4895 = distinct !DILocation(line: 1113, column: 9, scope: !4896, inlinedAt: !4899)
!4896 = distinct !DISubprogram(name: "arch_atomic_add_unless", scope: !4892, file: !4892, line: 1111, type: !4897, scopeLine: 1112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!422, !4888, !137, !137}
!4899 = distinct !DILocation(line: 789, column: 9, scope: !4900, inlinedAt: !4902)
!4900 = distinct !DISubprogram(name: "atomic_add_unless", scope: !4901, file: !4901, line: 786, type: !4897, scopeLine: 787, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4901 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4902 = distinct !DILocation(line: 105, column: 2, scope: !4882)
!4903 = !DILocalVariable(name: "old", arg: 2, scope: !4884, file: !4885, line: 200, type: !640)
!4904 = !DILocation(line: 200, column: 71, scope: !4884, inlinedAt: !4890)
!4905 = !DILocalVariable(name: "new", arg: 3, scope: !4884, file: !4885, line: 200, type: !137)
!4906 = !DILocation(line: 200, column: 80, scope: !4884, inlinedAt: !4890)
!4907 = !DILocalVariable(name: "success", scope: !4908, file: !4885, line: 202, type: !422)
!4908 = distinct !DILexicalBlock(scope: !4884, file: !4885, line: 202, column: 9)
!4909 = !DILocation(line: 202, column: 9, scope: !4908, inlinedAt: !4890)
!4910 = !DILocalVariable(name: "_old", scope: !4908, file: !4885, line: 202, type: !640)
!4911 = !DILocalVariable(name: "__old", scope: !4908, file: !4885, line: 202, type: !137)
!4912 = !DILocalVariable(name: "__new", scope: !4908, file: !4885, line: 202, type: !137)
!4913 = !DILocalVariable(name: "__ptr", scope: !4908, file: !4885, line: 202, type: !4006)
!4914 = !DILocalVariable(name: "v", arg: 1, scope: !4915, file: !4885, line: 23, type: !4918)
!4915 = distinct !DISubprogram(name: "arch_atomic_read", scope: !4885, file: !4885, line: 23, type: !4916, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{!137, !4918}
!4918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4919, size: 64)
!4919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !683)
!4920 = !DILocation(line: 23, column: 61, scope: !4915, inlinedAt: !4921)
!4921 = distinct !DILocation(line: 1088, column: 10, scope: !4891, inlinedAt: !4895)
!4922 = !DILocalVariable(name: "v", arg: 1, scope: !4891, file: !4892, line: 1086, type: !4888)
!4923 = !DILocation(line: 1086, column: 40, scope: !4891, inlinedAt: !4895)
!4924 = !DILocalVariable(name: "a", arg: 2, scope: !4891, file: !4892, line: 1086, type: !137)
!4925 = !DILocation(line: 1086, column: 47, scope: !4891, inlinedAt: !4895)
!4926 = !DILocalVariable(name: "u", arg: 3, scope: !4891, file: !4892, line: 1086, type: !137)
!4927 = !DILocation(line: 1086, column: 54, scope: !4891, inlinedAt: !4895)
!4928 = !DILocalVariable(name: "c", scope: !4891, file: !4892, line: 1088, type: !137)
!4929 = !DILocation(line: 1088, column: 6, scope: !4891, inlinedAt: !4895)
!4930 = !DILocalVariable(name: "v", arg: 1, scope: !4896, file: !4892, line: 1111, type: !4888)
!4931 = !DILocation(line: 1111, column: 34, scope: !4896, inlinedAt: !4899)
!4932 = !DILocalVariable(name: "a", arg: 2, scope: !4896, file: !4892, line: 1111, type: !137)
!4933 = !DILocation(line: 1111, column: 41, scope: !4896, inlinedAt: !4899)
!4934 = !DILocalVariable(name: "u", arg: 3, scope: !4896, file: !4892, line: 1111, type: !137)
!4935 = !DILocation(line: 1111, column: 48, scope: !4896, inlinedAt: !4899)
!4936 = !DILocalVariable(name: "v", arg: 1, scope: !4937, file: !4938, line: 99, type: !4941)
!4937 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4938, file: !4938, line: 99, type: !4939, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4938 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4939 = !DISubroutineType(types: !4940)
!4940 = !{null, !4941, !253}
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4943)
!4943 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4944 = !DILocation(line: 99, column: 79, scope: !4937, inlinedAt: !4945)
!4945 = distinct !DILocation(line: 788, column: 2, scope: !4900, inlinedAt: !4902)
!4946 = !DILocalVariable(name: "size", arg: 2, scope: !4937, file: !4938, line: 99, type: !253)
!4947 = !DILocation(line: 99, column: 89, scope: !4937, inlinedAt: !4945)
!4948 = !DILocalVariable(name: "v", arg: 1, scope: !4900, file: !4901, line: 786, type: !4888)
!4949 = !DILocation(line: 786, column: 29, scope: !4900, inlinedAt: !4902)
!4950 = !DILocalVariable(name: "a", arg: 2, scope: !4900, file: !4901, line: 786, type: !137)
!4951 = !DILocation(line: 786, column: 36, scope: !4900, inlinedAt: !4902)
!4952 = !DILocalVariable(name: "u", arg: 3, scope: !4900, file: !4901, line: 786, type: !137)
!4953 = !DILocation(line: 786, column: 43, scope: !4900, inlinedAt: !4902)
!4954 = !DILocalVariable(name: "dev", arg: 1, scope: !4882, file: !4876, line: 103, type: !3310)
!4955 = !DILocation(line: 103, column: 57, scope: !4882)
!4956 = !DILocation(line: 105, column: 21, scope: !4882)
!4957 = !DILocation(line: 105, column: 26, scope: !4882)
!4958 = !DILocation(line: 105, column: 32, scope: !4882)
!4959 = !DILocation(line: 788, column: 31, scope: !4900, inlinedAt: !4902)
!4960 = !DILocation(line: 101, column: 20, scope: !4937, inlinedAt: !4945)
!4961 = !DILocation(line: 101, column: 23, scope: !4937, inlinedAt: !4945)
!4962 = !DILocation(line: 101, column: 2, scope: !4937, inlinedAt: !4945)
!4963 = !DILocation(line: 102, column: 2, scope: !4937, inlinedAt: !4945)
!4964 = !DILocation(line: 789, column: 32, scope: !4900, inlinedAt: !4902)
!4965 = !DILocation(line: 789, column: 35, scope: !4900, inlinedAt: !4902)
!4966 = !DILocation(line: 789, column: 38, scope: !4900, inlinedAt: !4902)
!4967 = !DILocation(line: 1113, column: 38, scope: !4896, inlinedAt: !4899)
!4968 = !DILocation(line: 1113, column: 41, scope: !4896, inlinedAt: !4899)
!4969 = !DILocation(line: 1113, column: 44, scope: !4896, inlinedAt: !4899)
!4970 = !DILocation(line: 1088, column: 27, scope: !4891, inlinedAt: !4895)
!4971 = !DILocation(line: 29, column: 9, scope: !4915, inlinedAt: !4921)
!4972 = !DILocation(line: 1090, column: 2, scope: !4891, inlinedAt: !4895)
!4973 = !DILocation(line: 1091, column: 7, scope: !4974, inlinedAt: !4895)
!4974 = distinct !DILexicalBlock(scope: !4975, file: !4892, line: 1091, column: 7)
!4975 = distinct !DILexicalBlock(scope: !4891, file: !4892, line: 1090, column: 5)
!4976 = !DILocation(line: 1091, column: 7, scope: !4975, inlinedAt: !4895)
!4977 = !DILocation(line: 1092, column: 4, scope: !4974, inlinedAt: !4895)
!4978 = !DILocation(line: 1093, column: 36, scope: !4891, inlinedAt: !4895)
!4979 = !DILocation(line: 1093, column: 43, scope: !4891, inlinedAt: !4895)
!4980 = !DILocation(line: 1093, column: 47, scope: !4891, inlinedAt: !4895)
!4981 = !DILocation(line: 1093, column: 45, scope: !4891, inlinedAt: !4895)
!4982 = !{i32 -2146438538, i32 -2146438383}
!4983 = !DILocation(line: 202, column: 9, scope: !4984, inlinedAt: !4890)
!4984 = distinct !DILexicalBlock(scope: !4908, file: !4885, line: 202, column: 9)
!4985 = !DILocation(line: 202, column: 9, scope: !4884, inlinedAt: !4890)
!4986 = !DILocation(line: 1093, column: 11, scope: !4891, inlinedAt: !4895)
!4987 = !DILocation(line: 1093, column: 2, scope: !4975, inlinedAt: !4895)
!4988 = distinct !{!4988, !4972, !4989}
!4989 = !DILocation(line: 1093, column: 49, scope: !4891, inlinedAt: !4895)
!4990 = !DILocation(line: 1095, column: 9, scope: !4891, inlinedAt: !4895)
!4991 = !DILocation(line: 1113, column: 50, scope: !4896, inlinedAt: !4899)
!4992 = !DILocation(line: 1113, column: 47, scope: !4896, inlinedAt: !4899)
!4993 = !DILocation(line: 106, column: 1, scope: !4882)
!4994 = distinct !DISubprogram(name: "pm_runtime_put", scope: !4876, file: !4876, line: 417, type: !3342, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!4995 = !DILocalVariable(name: "dev", arg: 1, scope: !4994, file: !4876, line: 417, type: !3310)
!4996 = !DILocation(line: 417, column: 49, scope: !4994)
!4997 = !DILocation(line: 419, column: 27, scope: !4994)
!4998 = !DILocation(line: 419, column: 9, scope: !4994)
!4999 = !DILocation(line: 419, column: 2, scope: !4994)
!5000 = distinct !DISubprogram(name: "pm_runtime_use_autosuspend", scope: !4876, file: !4876, line: 537, type: !3333, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5001 = !DILocalVariable(name: "dev", arg: 1, scope: !5000, file: !4876, line: 537, type: !3310)
!5002 = !DILocation(line: 537, column: 62, scope: !5000)
!5003 = !DILocation(line: 539, column: 31, scope: !5000)
!5004 = !DILocation(line: 539, column: 2, scope: !5000)
!5005 = !DILocation(line: 540, column: 1, scope: !5000)
!5006 = distinct !DISubprogram(name: "pm_runtime_get_noresume", scope: !4876, file: !4876, line: 92, type: !3333, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5007 = !DILocalVariable(name: "v", arg: 1, scope: !5008, file: !4885, line: 93, type: !4888)
!5008 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !4885, file: !4885, line: 93, type: !5009, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{null, !4888}
!5011 = !DILocation(line: 93, column: 55, scope: !5008, inlinedAt: !5012)
!5012 = distinct !DILocation(line: 241, column: 2, scope: !5013, inlinedAt: !5014)
!5013 = distinct !DISubprogram(name: "atomic_inc", scope: !4901, file: !4901, line: 238, type: !5009, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5014 = distinct !DILocation(line: 94, column: 2, scope: !5006)
!5015 = !DILocation(line: 99, column: 79, scope: !4937, inlinedAt: !5016)
!5016 = distinct !DILocation(line: 240, column: 2, scope: !5013, inlinedAt: !5014)
!5017 = !DILocation(line: 99, column: 89, scope: !4937, inlinedAt: !5016)
!5018 = !DILocalVariable(name: "v", arg: 1, scope: !5013, file: !4901, line: 238, type: !4888)
!5019 = !DILocation(line: 238, column: 22, scope: !5013, inlinedAt: !5014)
!5020 = !DILocalVariable(name: "dev", arg: 1, scope: !5006, file: !4876, line: 92, type: !3310)
!5021 = !DILocation(line: 92, column: 59, scope: !5006)
!5022 = !DILocation(line: 94, column: 14, scope: !5006)
!5023 = !DILocation(line: 94, column: 19, scope: !5006)
!5024 = !DILocation(line: 94, column: 25, scope: !5006)
!5025 = !DILocation(line: 240, column: 31, scope: !5013, inlinedAt: !5014)
!5026 = !DILocation(line: 101, column: 20, scope: !4937, inlinedAt: !5016)
!5027 = !DILocation(line: 101, column: 23, scope: !4937, inlinedAt: !5016)
!5028 = !DILocation(line: 101, column: 2, scope: !4937, inlinedAt: !5016)
!5029 = !DILocation(line: 102, column: 2, scope: !4937, inlinedAt: !5016)
!5030 = !DILocation(line: 241, column: 18, scope: !5013, inlinedAt: !5014)
!5031 = !DILocation(line: 96, column: 16, scope: !5008, inlinedAt: !5012)
!5032 = !DILocation(line: 96, column: 19, scope: !5008, inlinedAt: !5012)
!5033 = !DILocation(line: 95, column: 2, scope: !5008, inlinedAt: !5012)
!5034 = !{i32 -2146450135}
!5035 = !DILocation(line: 95, column: 1, scope: !5006)
!5036 = distinct !DISubprogram(name: "pm_runtime_set_active", scope: !4876, file: !4876, line: 495, type: !3342, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5037 = !DILocalVariable(name: "dev", arg: 1, scope: !5036, file: !4876, line: 495, type: !3310)
!5038 = !DILocation(line: 495, column: 56, scope: !5036)
!5039 = !DILocation(line: 497, column: 33, scope: !5036)
!5040 = !DILocation(line: 497, column: 9, scope: !5036)
!5041 = !DILocation(line: 497, column: 2, scope: !5036)
!5042 = distinct !DISubprogram(name: "list_empty", scope: !5043, file: !5043, line: 280, type: !5044, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5043 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!137, !5046}
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!5048 = !DILocalVariable(name: "head", arg: 1, scope: !5042, file: !5043, line: 280, type: !5046)
!5049 = !DILocation(line: 280, column: 54, scope: !5042)
!5050 = !DILocation(line: 282, column: 9, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5042, file: !5043, line: 282, column: 9)
!5052 = !DILocation(line: 282, column: 9, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5051, file: !5043, line: 282, column: 9)
!5054 = !DILocation(line: 282, column: 34, scope: !5042)
!5055 = !DILocation(line: 282, column: 31, scope: !5042)
!5056 = !DILocation(line: 282, column: 2, scope: !5042)
!5057 = distinct !DISubprogram(name: "pm_runtime_disable", scope: !4876, file: !4876, line: 524, type: !3333, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5058 = !DILocalVariable(name: "dev", arg: 1, scope: !5057, file: !4876, line: 524, type: !3310)
!5059 = !DILocation(line: 524, column: 54, scope: !5057)
!5060 = !DILocation(line: 526, column: 23, scope: !5057)
!5061 = !DILocation(line: 526, column: 2, scope: !5057)
!5062 = !DILocation(line: 527, column: 1, scope: !5057)
!5063 = distinct !DISubprogram(name: "pm_runtime_set_suspended", scope: !4876, file: !4876, line: 509, type: !3342, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5064 = !DILocalVariable(name: "dev", arg: 1, scope: !5063, file: !4876, line: 509, type: !3310)
!5065 = !DILocation(line: 509, column: 59, scope: !5063)
!5066 = !DILocation(line: 511, column: 33, scope: !5063)
!5067 = !DILocation(line: 511, column: 9, scope: !5063)
!5068 = !DILocation(line: 511, column: 2, scope: !5063)
!5069 = distinct !DISubprogram(name: "pm_runtime_dont_use_autosuspend", scope: !4876, file: !4876, line: 550, type: !3333, scopeLine: 551, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5070 = !DILocalVariable(name: "dev", arg: 1, scope: !5069, file: !4876, line: 550, type: !3310)
!5071 = !DILocation(line: 550, column: 67, scope: !5069)
!5072 = !DILocation(line: 552, column: 31, scope: !5069)
!5073 = !DILocation(line: 552, column: 2, scope: !5069)
!5074 = !DILocation(line: 553, column: 1, scope: !5069)
!5075 = distinct !DISubprogram(name: "kasan_check_write", scope: !5076, file: !5076, line: 38, type: !5077, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5076 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5077 = !DISubroutineType(types: !5078)
!5078 = !{!422, !4941, !7}
!5079 = !DILocalVariable(name: "p", arg: 1, scope: !5075, file: !5076, line: 38, type: !4941)
!5080 = !DILocation(line: 38, column: 59, scope: !5075)
!5081 = !DILocalVariable(name: "size", arg: 2, scope: !5075, file: !5076, line: 38, type: !7)
!5082 = !DILocation(line: 38, column: 75, scope: !5075)
!5083 = !DILocation(line: 40, column: 2, scope: !5075)
!5084 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5085, file: !5085, line: 178, type: !5086, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5085 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5086 = !DISubroutineType(types: !5087)
!5087 = !{null, !4941, !253, !137}
!5088 = !DILocalVariable(name: "ptr", arg: 1, scope: !5084, file: !5085, line: 178, type: !4941)
!5089 = !DILocation(line: 178, column: 60, scope: !5084)
!5090 = !DILocalVariable(name: "size", arg: 2, scope: !5084, file: !5085, line: 178, type: !253)
!5091 = !DILocation(line: 178, column: 72, scope: !5084)
!5092 = !DILocalVariable(name: "type", arg: 3, scope: !5084, file: !5085, line: 179, type: !137)
!5093 = !DILocation(line: 179, column: 15, scope: !5084)
!5094 = !DILocation(line: 179, column: 23, scope: !5084)
!5095 = distinct !DISubprogram(name: "gb_connection_is_offloaded", scope: !104, file: !104, line: 110, type: !5096, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !179)
!5096 = !DISubroutineType(types: !5097)
!5097 = !{!422, !3769}
!5098 = !DILocalVariable(name: "connection", arg: 1, scope: !5095, file: !104, line: 110, type: !3769)
!5099 = !DILocation(line: 110, column: 69, scope: !5095)
!5100 = !DILocation(line: 112, column: 9, scope: !5095)
!5101 = !DILocation(line: 112, column: 21, scope: !5095)
!5102 = !DILocation(line: 112, column: 27, scope: !5095)
!5103 = !DILocation(line: 112, column: 2, scope: !5095)
