; ModuleID = '../bcout/drivers/hwtracing/intel_th/core.llvm.bc'
source_filename = "drivers/hwtracing/intel_th/core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall4.init\22, \22a\22\09"
module asm "__initcall_intel_th_init4:\09\09\09"
module asm ".long\09intel_th_init - .\09\09\09"
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
%struct.page = type { i64, %union.anon.3, %union.anon.53, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.intel_th_subdevice = type { i8*, [3 x %struct.resource], i32, i32, i32, i8, i32, i32 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.ida = type { %struct.xarray }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.kmem_cache = type opaque
%struct.intel_th_driver = type { %struct.device_driver, i32 (%struct.intel_th_device*)*, void (%struct.intel_th_device*)*, i32 (%struct.intel_th_device*, %struct.intel_th_device*)*, void (%struct.intel_th_device*, %struct.intel_th_device*)*, void (%struct.intel_th_device*, %struct.intel_th_output*)*, void (%struct.intel_th_device*, %struct.intel_th_output*)*, void (%struct.intel_th_device*, %struct.intel_th_output*)*, i32 (%struct.intel_th_device*)*, void (%struct.intel_th_device*)*, i32 (%struct.intel_th_device*)*, void (%struct.intel_th_device*)*, %struct.file_operations*, %struct.attribute_group*, i32 (%struct.intel_th_device*, i32)* }
%struct.intel_th_device = type { %struct.device, %struct.intel_th_drvdata*, %struct.resource*, i32, i32, i32, i8, %struct.intel_th_output, [0 x i8] }
%struct.intel_th_drvdata = type { i8, [3 x i8] }
%struct.intel_th_output = type { i32, i32, i32, i8, i8 }
%struct.intel_th = type { %struct.device*, [10 x %struct.intel_th_device*], %struct.intel_th_device*, %struct.intel_th_drvdata*, [3 x %struct.resource], i32 (%struct.intel_th*)*, void (%struct.intel_th*)*, i32, i32, i32, i32, i32, i32 }

@__param_str_host_mode = internal constant [19 x i8] c"intel_th.host_mode\00", align 16, !dbg !0
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@host_mode = internal global i8 0, section ".data..read_mostly", align 1, !dbg !3942
@__param_host_mode = internal constant %struct.kernel_param { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__param_str_host_mode, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon { i8* @host_mode } }, section "__param", align 8, !dbg !3858
@__UNIQUE_ID_host_modetype239 = internal constant [33 x i8] c"intel_th.parmtype=host_mode:bool\00", section ".modinfo", align 1, !dbg !3910
@intel_th_bus = internal global %struct.bus_type { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* null, %struct.device* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.attribute_group** null, i32 (%struct.device*, %struct.device_driver*)* @intel_th_match, i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i32 (%struct.device*)* @intel_th_probe, void (%struct.device*)* null, i32 (%struct.device*)* @intel_th_remove, void (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, %struct.dev_pm_ops* null, %struct.iommu_ops* null, %struct.subsys_private* null, %struct.lock_class_key zeroinitializer, i8 0 }, align 8, !dbg !3944
@intel_th_subdevices = internal constant [8 x %struct.intel_th_subdevice] [%struct.intel_th_subdevice { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), [3 x %struct.resource] [%struct.resource { i64 0, i64 16383, i8* null, i64 512, i64 0, %struct.resource* null, %struct.resource* null, %struct.resource* null }, %struct.resource zeroinitializer, %struct.resource zeroinitializer], i32 1, i32 2, i32 0, i8 0, i32 0, i32 -1 }, %struct.intel_th_subdevice { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), [3 x %struct.resource] [%struct.resource { i64 655360, i64 663551, i8* null, i64 512, i64 0, %struct.resource* null, %struct.resource* null, %struct.resource* null }, %struct.resource { i64 524288, i64 655359, i8* null, i64 512, i64 0, %struct.resource* null, %struct.resource* null, %struct.resource* null }, %struct.resource zeroinitializer], i32 2, i32 1, i32 1, i8 1, i32 513, i32 0 }, %struct.intel_th_subdevice { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), [3 x %struct.resource] [%struct.resource { i64 655360, i64 663551, i8* null, i64 512, i64 0, %struct.resource* null, %struct.resource* null, %struct.resource* null }, %struct.resource { i64 524288, i64 655359, i8* null, i64 512, i64 0, %struct.resource* null, %struct.resource* null, %struct.resource* null }, %struct.resource zeroinitializer], i32 2, i32 1, i32 1, i8 1, i32 1025, i32 1 }, %struct.intel_th_subdevice { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), [3 x %struct.resource] [%struct.resource { i64 16384, i64 24575, i8* null, i64 512, i64 0, %struct.resource* null, %struct.resource* null, %struct.resource* null }, %struct.resource { i64 1, i64 0, i8* null, i64 512, i64 0, %struct.resource* null, %struct.resource* null, %struct.resource* null }, %struct.resource zeroinitializer], i32 2, i32 0, i32 0, i8 0, i32 0, i32 -1 }, %struct.intel_th_subdevice { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), [3 x %struct.resource] [%struct.resource { i64 16384, i64 24575, i8* null, i64 512, i64 0, %struct.resource* null, %struct.resource* null, %struct.resource* null }, %struct.resource { i64 2, i64 0, i8* null, i64 512, i64 0, %struct.resource* null, %struct.resource* null, %struct.resource* null }, %struct.resource zeroinitializer], i32 2, i32 0, i32 0, i8 0, i32 0, i32 -1 }, %struct.intel_th_subdevice { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), [3 x %struct.resource] [%struct.resource { i64 0, i64 8191, i8* null, i64 512, i64 0, %struct.resource* null, %struct.resource* null, %struct.resource* null }, %struct.resource zeroinitializer, %struct.resource zeroinitializer], i32 1, i32 1, i32 4, i8 0, i32 4, i32 -1 }, %struct.intel_th_subdevice { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), [3 x %struct.resource] [%struct.resource { i64 0, i64 8191, i8* null, i64 512, i64 0, %struct.resource* null, %struct.resource* null, %struct.resource* null }, %struct.resource zeroinitializer, %struct.resource zeroinitializer], i32 1, i32 1, i32 3, i8 0, i32 4, i32 -1 }, %struct.intel_th_subdevice { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), [3 x %struct.resource] [%struct.resource { i64 655360, i64 663551, i8* null, i64 512, i64 0, %struct.resource* null, %struct.resource* null, %struct.resource* null }, %struct.resource zeroinitializer, %struct.resource zeroinitializer], i32 1, i32 1, i32 0, i8 0, i32 0, i32 -1 }], align 16, !dbg !3946
@intel_th_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock undef, i32 8388613, i8* null } }, align 8, !dbg !3995
@.str = private unnamed_addr constant [16 x i8] c"intel_th/output\00", align 1
@intel_th_output_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @noop_llseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @intel_th_output_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !4000
@.str.1 = private unnamed_addr constant [27 x i8] c"Unknown resource type %lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"drivers/hwtracing/intel_th/core.c\00", align 1
@__UNIQUE_ID___addressable_intel_th_init275 = internal global i8* bitcast (i32 ()* @intel_th_init to i8*), section ".discard.addressable", align 8, !dbg !3915
@__exitcall_intel_th_exit = internal global void ()* @intel_th_exit, section ".exitcall.exit", align 8, !dbg !3917
@__UNIQUE_ID_file276 = internal constant [50 x i8] c"intel_th.file=drivers/hwtracing/intel_th/intel_th\00", section ".modinfo", align 1, !dbg !3922
@__UNIQUE_ID_license277 = internal constant [24 x i8] c"intel_th.license=GPL v2\00", section ".modinfo", align 1, !dbg !3927
@__UNIQUE_ID_description278 = internal constant [58 x i8] c"intel_th.description=Intel(R) Trace Hub controller driver\00", section ".modinfo", align 1, !dbg !3932
@__UNIQUE_ID_author279 = internal constant [72 x i8] c"intel_th.author=Alexander Shishkin <alexander.shishkin@linux.intel.com>\00", section ".modinfo", align 1, !dbg !3937
@.str.3 = private unnamed_addr constant [9 x i8] c"intel_th\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"drivers/hwtracing/intel_th/intel_th.h\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"gth\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"msc\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"sth\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"rtit\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"pti\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"lpp\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"dcih\00", align 1
@intel_th_device_type = internal global [3 x %struct.device_type*] [%struct.device_type* @intel_th_source_device_type, %struct.device_type* @intel_th_output_device_type, %struct.device_type* @intel_th_switch_device_type], align 16, !dbg !3961
@.str.12 = private unnamed_addr constant [8 x i8] c"%d-%s%d\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%d-%s\00", align 1
@intel_th_source_device_type = internal global %struct.device_type { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), %struct.attribute_group** null, i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)* null, void (%struct.device*)* @intel_th_device_release, %struct.dev_pm_ops* null }, align 8, !dbg !3965
@intel_th_output_device_type = internal global %struct.device_type { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @intel_th_output_groups, i32 0, i32 0), i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)* @intel_th_output_devnode, void (%struct.device*)* @intel_th_device_release, %struct.dev_pm_ops* null }, align 8, !dbg !3967
@intel_th_switch_device_type = internal global %struct.device_type { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i32 0, i32 0), %struct.attribute_group** null, i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)* null, void (%struct.device*)* @intel_th_device_release, %struct.dev_pm_ops* null }, align 8, !dbg !3993
@.str.14 = private unnamed_addr constant [23 x i8] c"intel_th_source_device\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"intel_th_output_device\00", align 1
@intel_th_output_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @intel_th_output_group, %struct.attribute_group* null], align 16, !dbg !3969
@intel_th_output_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([3 x %struct.attribute*], [3 x %struct.attribute*]* @intel_th_output_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !3972
@intel_th_output_attrs = internal global [3 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_port, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_active, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !3974
@dev_attr_port = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @port_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !3977
@dev_attr_active = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @active_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @active_store }, align 8, !dbg !3991
@.str.16 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"unassigned\0A\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"intel_th%d/%s%d\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"intel_th%d/%s\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"intel_th_switch_device\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.24 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@llvm.used = appending global [9 x i8*] [i8* bitcast (%struct.kernel_param* @__param_host_mode to i8*), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__UNIQUE_ID_host_modetype239, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_intel_th_init275 to i8*), i8* bitcast (void ()* @intel_th_exit to i8*), i8* bitcast (void ()** @__exitcall_intel_th_exit to i8*), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__UNIQUE_ID_file276, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__UNIQUE_ID_license277, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__UNIQUE_ID_description278, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @__UNIQUE_ID_author279, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @intel_th_driver_register(%struct.intel_th_driver* %thdrv) #0 !dbg !4010 {
entry:
  %retval = alloca i32, align 4
  %thdrv.addr = alloca %struct.intel_th_driver*, align 8
  store %struct.intel_th_driver* %thdrv, %struct.intel_th_driver** %thdrv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th_driver** %thdrv.addr, metadata !4013, metadata !DIExpression()), !dbg !4014
  %0 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv.addr, align 8, !dbg !4015
  %probe = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %0, i32 0, i32 1, !dbg !4017
  %1 = load i32 (%struct.intel_th_device*)*, i32 (%struct.intel_th_device*)** %probe, align 8, !dbg !4017
  %tobool = icmp ne i32 (%struct.intel_th_device*)* %1, null, !dbg !4015
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4018

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv.addr, align 8, !dbg !4019
  %remove = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %2, i32 0, i32 2, !dbg !4020
  %3 = load void (%struct.intel_th_device*)*, void (%struct.intel_th_device*)** %remove, align 8, !dbg !4020
  %tobool1 = icmp ne void (%struct.intel_th_device*)* %3, null, !dbg !4019
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4021

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !4022
  br label %return, !dbg !4022

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv.addr, align 8, !dbg !4023
  %driver = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %4, i32 0, i32 0, !dbg !4024
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver, i32 0, i32 1, !dbg !4025
  store %struct.bus_type* @intel_th_bus, %struct.bus_type** %bus, align 8, !dbg !4026
  %5 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv.addr, align 8, !dbg !4027
  %driver2 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %5, i32 0, i32 0, !dbg !4028
  %call = call i32 @driver_register(%struct.device_driver* %driver2) #9, !dbg !4029
  store i32 %call, i32* %retval, align 4, !dbg !4030
  br label %return, !dbg !4030

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4031
  ret i32 %6, !dbg !4031
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @driver_register(%struct.device_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @intel_th_driver_unregister(%struct.intel_th_driver* %thdrv) #0 !dbg !4032 {
entry:
  %thdrv.addr = alloca %struct.intel_th_driver*, align 8
  store %struct.intel_th_driver* %thdrv, %struct.intel_th_driver** %thdrv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th_driver** %thdrv.addr, metadata !4035, metadata !DIExpression()), !dbg !4036
  %0 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv.addr, align 8, !dbg !4037
  %driver = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %0, i32 0, i32 0, !dbg !4038
  call void @driver_unregister(%struct.device_driver* %driver) #9, !dbg !4039
  ret void, !dbg !4040
}

; Function Attrs: noredzone
declare dso_local void @driver_unregister(%struct.device_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @intel_th_output_enable(%struct.intel_th* %th, i32 %otype) #0 !dbg !4041 {
entry:
  %retval = alloca i32, align 4
  %th.addr = alloca %struct.intel_th*, align 8
  %otype.addr = alloca i32, align 4
  %thdev = alloca %struct.intel_th_device*, align 8
  %src = alloca i32, align 4
  %dst = alloca i32, align 4
  store %struct.intel_th* %th, %struct.intel_th** %th.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th** %th.addr, metadata !4069, metadata !DIExpression()), !dbg !4070
  store i32 %otype, i32* %otype.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %otype.addr, metadata !4071, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev, metadata !4073, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.declare(metadata i32* %src, metadata !4075, metadata !DIExpression()), !dbg !4076
  store i32 0, i32* %src, align 4, !dbg !4076
  call void @llvm.dbg.declare(metadata i32* %dst, metadata !4077, metadata !DIExpression()), !dbg !4078
  store i32 0, i32* %dst, align 4, !dbg !4078
  store i32 0, i32* %src, align 4, !dbg !4079
  store i32 0, i32* %dst, align 4, !dbg !4081
  br label %for.cond, !dbg !4082

for.cond:                                         ; preds = %for.inc48, %entry
  %0 = load i32, i32* %dst, align 4, !dbg !4083
  %1 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !4085
  %num_thdevs = getelementptr inbounds %struct.intel_th, %struct.intel_th* %1, i32 0, i32 7, !dbg !4086
  %2 = load i32, i32* %num_thdevs, align 8, !dbg !4086
  %cmp = icmp ule i32 %0, %2, !dbg !4087
  br i1 %cmp, label %for.body, label %for.end51, !dbg !4088

for.body:                                         ; preds = %for.cond
  br label %for.cond1, !dbg !4089

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %src, align 4, !dbg !4091
  %conv = sext i32 %3 to i64, !dbg !4091
  %cmp2 = icmp ult i64 %conv, 8, !dbg !4094
  br i1 %cmp2, label %for.body4, label %for.end, !dbg !4095

for.body4:                                        ; preds = %for.cond1
  %4 = load i32, i32* %src, align 4, !dbg !4096
  %idxprom = sext i32 %4 to i64, !dbg !4099
  %arrayidx = getelementptr [8 x %struct.intel_th_subdevice], [8 x %struct.intel_th_subdevice]* @intel_th_subdevices, i64 0, i64 %idxprom, !dbg !4099
  %type = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %arrayidx, i32 0, i32 3, !dbg !4100
  %5 = load i32, i32* %type, align 4, !dbg !4100
  %cmp5 = icmp ne i32 %5, 1, !dbg !4101
  br i1 %cmp5, label %if.then, label %if.end, !dbg !4102

if.then:                                          ; preds = %for.body4
  br label %for.inc, !dbg !4103

if.end:                                           ; preds = %for.body4
  %6 = load i32, i32* %src, align 4, !dbg !4104
  %idxprom7 = sext i32 %6 to i64, !dbg !4106
  %arrayidx8 = getelementptr [8 x %struct.intel_th_subdevice], [8 x %struct.intel_th_subdevice]* @intel_th_subdevices, i64 0, i64 %idxprom7, !dbg !4106
  %otype9 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %arrayidx8, i32 0, i32 4, !dbg !4107
  %7 = load i32, i32* %otype9, align 16, !dbg !4107
  %8 = load i32, i32* %otype.addr, align 4, !dbg !4108
  %cmp10 = icmp ne i32 %7, %8, !dbg !4109
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !4110

if.then12:                                        ; preds = %if.end
  br label %for.inc, !dbg !4111

if.end13:                                         ; preds = %if.end
  br label %for.end, !dbg !4112

for.inc:                                          ; preds = %if.then12, %if.then
  %9 = load i32, i32* %src, align 4, !dbg !4113
  %inc = add i32 %9, 1, !dbg !4113
  store i32 %inc, i32* %src, align 4, !dbg !4113
  br label %for.cond1, !dbg !4114, !llvm.loop !4115

for.end:                                          ; preds = %if.end13, %for.cond1
  %10 = load i32, i32* %src, align 4, !dbg !4117
  %conv14 = sext i32 %10 to i64, !dbg !4117
  %cmp15 = icmp eq i64 %conv14, 8, !dbg !4119
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !4120

if.then17:                                        ; preds = %for.end
  store i32 -19, i32* %retval, align 4, !dbg !4121
  br label %return, !dbg !4121

if.end18:                                         ; preds = %for.end
  br label %for.cond19, !dbg !4122

for.cond19:                                       ; preds = %for.inc40, %if.end18
  %11 = load i32, i32* %dst, align 4, !dbg !4123
  %12 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !4126
  %num_thdevs20 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %12, i32 0, i32 7, !dbg !4127
  %13 = load i32, i32* %num_thdevs20, align 8, !dbg !4127
  %cmp21 = icmp ult i32 %11, %13, !dbg !4128
  br i1 %cmp21, label %for.body23, label %for.end42, !dbg !4129

for.body23:                                       ; preds = %for.cond19
  %14 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !4130
  %thdev24 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %14, i32 0, i32 1, !dbg !4133
  %15 = load i32, i32* %dst, align 4, !dbg !4134
  %idxprom25 = sext i32 %15 to i64, !dbg !4130
  %arrayidx26 = getelementptr [10 x %struct.intel_th_device*], [10 x %struct.intel_th_device*]* %thdev24, i64 0, i64 %idxprom25, !dbg !4130
  %16 = load %struct.intel_th_device*, %struct.intel_th_device** %arrayidx26, align 8, !dbg !4130
  %type27 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %16, i32 0, i32 4, !dbg !4135
  %17 = load i32, i32* %type27, align 4, !dbg !4135
  %cmp28 = icmp ne i32 %17, 1, !dbg !4136
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !4137

if.then30:                                        ; preds = %for.body23
  br label %for.inc40, !dbg !4138

if.end31:                                         ; preds = %for.body23
  %18 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !4139
  %thdev32 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %18, i32 0, i32 1, !dbg !4141
  %19 = load i32, i32* %dst, align 4, !dbg !4142
  %idxprom33 = sext i32 %19 to i64, !dbg !4139
  %arrayidx34 = getelementptr [10 x %struct.intel_th_device*], [10 x %struct.intel_th_device*]* %thdev32, i64 0, i64 %idxprom33, !dbg !4139
  %20 = load %struct.intel_th_device*, %struct.intel_th_device** %arrayidx34, align 8, !dbg !4139
  %output = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %20, i32 0, i32 7, !dbg !4143
  %type35 = getelementptr inbounds %struct.intel_th_output, %struct.intel_th_output* %output, i32 0, i32 1, !dbg !4144
  %21 = load i32, i32* %type35, align 4, !dbg !4144
  %22 = load i32, i32* %otype.addr, align 4, !dbg !4145
  %cmp36 = icmp ne i32 %21, %22, !dbg !4146
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !4147

if.then38:                                        ; preds = %if.end31
  br label %for.inc40, !dbg !4148

if.end39:                                         ; preds = %if.end31
  br label %for.end42, !dbg !4149

for.inc40:                                        ; preds = %if.then38, %if.then30
  %23 = load i32, i32* %dst, align 4, !dbg !4150
  %inc41 = add i32 %23, 1, !dbg !4150
  store i32 %inc41, i32* %dst, align 4, !dbg !4150
  br label %for.cond19, !dbg !4151, !llvm.loop !4152

for.end42:                                        ; preds = %if.end39, %for.cond19
  %24 = load i32, i32* %dst, align 4, !dbg !4154
  %25 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !4156
  %num_thdevs43 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %25, i32 0, i32 7, !dbg !4157
  %26 = load i32, i32* %num_thdevs43, align 8, !dbg !4157
  %cmp44 = icmp eq i32 %24, %26, !dbg !4158
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !4159

if.then46:                                        ; preds = %for.end42
  br label %found, !dbg !4160

if.end47:                                         ; preds = %for.end42
  br label %for.inc48, !dbg !4161

for.inc48:                                        ; preds = %if.end47
  %27 = load i32, i32* %src, align 4, !dbg !4162
  %inc49 = add i32 %27, 1, !dbg !4162
  store i32 %inc49, i32* %src, align 4, !dbg !4162
  %28 = load i32, i32* %dst, align 4, !dbg !4163
  %inc50 = add i32 %28, 1, !dbg !4163
  store i32 %inc50, i32* %dst, align 4, !dbg !4163
  br label %for.cond, !dbg !4164, !llvm.loop !4165

for.end51:                                        ; preds = %for.cond
  store i32 -19, i32* %retval, align 4, !dbg !4167
  br label %return, !dbg !4167

found:                                            ; preds = %if.then46
  call void @llvm.dbg.label(metadata !4168), !dbg !4169
  %29 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !4170
  %30 = load i32, i32* %src, align 4, !dbg !4171
  %idxprom52 = sext i32 %30 to i64, !dbg !4172
  %arrayidx53 = getelementptr [8 x %struct.intel_th_subdevice], [8 x %struct.intel_th_subdevice]* @intel_th_subdevices, i64 0, i64 %idxprom52, !dbg !4172
  %call = call %struct.intel_th_device* @intel_th_subdevice_alloc(%struct.intel_th* %29, %struct.intel_th_subdevice* %arrayidx53) #9, !dbg !4173
  store %struct.intel_th_device* %call, %struct.intel_th_device** %thdev, align 8, !dbg !4174
  %31 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !4175
  %32 = bitcast %struct.intel_th_device* %31 to i8*, !dbg !4175
  %call54 = call zeroext i1 @IS_ERR(i8* %32) #9, !dbg !4177
  br i1 %call54, label %if.then55, label %if.end58, !dbg !4178

if.then55:                                        ; preds = %found
  %33 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !4179
  %34 = bitcast %struct.intel_th_device* %33 to i8*, !dbg !4179
  %call56 = call i64 @PTR_ERR(i8* %34) #9, !dbg !4180
  %conv57 = trunc i64 %call56 to i32, !dbg !4180
  store i32 %conv57, i32* %retval, align 4, !dbg !4181
  br label %return, !dbg !4181

if.end58:                                         ; preds = %found
  %35 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !4182
  %36 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !4183
  %thdev59 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %36, i32 0, i32 1, !dbg !4184
  %37 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !4185
  %num_thdevs60 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %37, i32 0, i32 7, !dbg !4186
  %38 = load i32, i32* %num_thdevs60, align 8, !dbg !4187
  %inc61 = add i32 %38, 1, !dbg !4187
  store i32 %inc61, i32* %num_thdevs60, align 8, !dbg !4187
  %idxprom62 = zext i32 %38 to i64, !dbg !4183
  %arrayidx63 = getelementptr [10 x %struct.intel_th_device*], [10 x %struct.intel_th_device*]* %thdev59, i64 0, i64 %idxprom62, !dbg !4183
  store %struct.intel_th_device* %35, %struct.intel_th_device** %arrayidx63, align 8, !dbg !4188
  store i32 0, i32* %retval, align 4, !dbg !4189
  br label %return, !dbg !4189

return:                                           ; preds = %if.end58, %if.then55, %for.end51, %if.then17
  %39 = load i32, i32* %retval, align 4, !dbg !4190
  ret i32 %39, !dbg !4190
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.intel_th_device* @intel_th_subdevice_alloc(%struct.intel_th* %th, %struct.intel_th_subdevice* %subdev) #0 !dbg !4191 {
entry:
  %retval = alloca %struct.intel_th_device*, align 8
  %th.addr = alloca %struct.intel_th*, align 8
  %subdev.addr = alloca %struct.intel_th_subdevice*, align 8
  %thdev = alloca %struct.intel_th_device*, align 8
  %res = alloca [3 x %struct.resource], align 16
  %req = alloca i32, align 4
  %r = alloca i32, align 4
  %err = alloca i32, align 4
  %devres = alloca %struct.resource*, align 8
  %bar = alloca i32, align 4
  store %struct.intel_th* %th, %struct.intel_th** %th.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th** %th.addr, metadata !4195, metadata !DIExpression()), !dbg !4196
  store %struct.intel_th_subdevice* %subdev, %struct.intel_th_subdevice** %subdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th_subdevice** %subdev.addr, metadata !4197, metadata !DIExpression()), !dbg !4198
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev, metadata !4199, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.declare(metadata [3 x %struct.resource]* %res, metadata !4201, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.declare(metadata i32* %req, metadata !4203, metadata !DIExpression()), !dbg !4204
  store i32 0, i32* %req, align 4, !dbg !4204
  call void @llvm.dbg.declare(metadata i32* %r, metadata !4205, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4207, metadata !DIExpression()), !dbg !4208
  %0 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !4209
  %1 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %subdev.addr, align 8, !dbg !4210
  %type = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %1, i32 0, i32 3, !dbg !4211
  %2 = load i32, i32* %type, align 4, !dbg !4211
  %3 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %subdev.addr, align 8, !dbg !4212
  %name = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %3, i32 0, i32 0, !dbg !4213
  %4 = load i8*, i8** %name, align 8, !dbg !4213
  %5 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %subdev.addr, align 8, !dbg !4214
  %id = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %5, i32 0, i32 7, !dbg !4215
  %6 = load i32, i32* %id, align 4, !dbg !4215
  %call = call %struct.intel_th_device* @intel_th_device_alloc(%struct.intel_th* %0, i32 %2, i8* %4, i32 %6) #9, !dbg !4216
  store %struct.intel_th_device* %call, %struct.intel_th_device** %thdev, align 8, !dbg !4217
  %7 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !4218
  %tobool = icmp ne %struct.intel_th_device* %7, null, !dbg !4218
  br i1 %tobool, label %if.end, label %if.then, !dbg !4220

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #9, !dbg !4221
  %8 = bitcast i8* %call1 to %struct.intel_th_device*, !dbg !4221
  store %struct.intel_th_device* %8, %struct.intel_th_device** %retval, align 8, !dbg !4222
  br label %return, !dbg !4222

if.end:                                           ; preds = %entry
  %9 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !4223
  %drvdata = getelementptr inbounds %struct.intel_th, %struct.intel_th* %9, i32 0, i32 3, !dbg !4224
  %10 = load %struct.intel_th_drvdata*, %struct.intel_th_drvdata** %drvdata, align 8, !dbg !4224
  %11 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !4225
  %drvdata2 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %11, i32 0, i32 1, !dbg !4226
  store %struct.intel_th_drvdata* %10, %struct.intel_th_drvdata** %drvdata2, align 8, !dbg !4227
  %arraydecay = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %res, i64 0, i64 0, !dbg !4228
  %12 = bitcast %struct.resource* %arraydecay to i8*, !dbg !4228
  %13 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %subdev.addr, align 8, !dbg !4229
  %res3 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %13, i32 0, i32 1, !dbg !4230
  %arraydecay4 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %res3, i64 0, i64 0, !dbg !4228
  %14 = bitcast %struct.resource* %arraydecay4 to i8*, !dbg !4228
  %15 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %subdev.addr, align 8, !dbg !4231
  %nres = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %15, i32 0, i32 2, !dbg !4232
  %16 = load i32, i32* %nres, align 8, !dbg !4232
  %conv = zext i32 %16 to i64, !dbg !4231
  %mul = mul i64 64, %conv, !dbg !4233
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 8 %14, i64 %mul, i1 false), !dbg !4228
  store i32 0, i32* %r, align 4, !dbg !4234
  br label %for.cond, !dbg !4236

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, i32* %r, align 4, !dbg !4237
  %18 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %subdev.addr, align 8, !dbg !4239
  %nres5 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %18, i32 0, i32 2, !dbg !4240
  %19 = load i32, i32* %nres5, align 8, !dbg !4240
  %cmp = icmp ult i32 %17, %19, !dbg !4241
  br i1 %cmp, label %for.body, label %for.end, !dbg !4242

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.resource** %devres, metadata !4243, metadata !DIExpression()), !dbg !4245
  %20 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !4246
  %resource = getelementptr inbounds %struct.intel_th, %struct.intel_th* %20, i32 0, i32 4, !dbg !4247
  %arraydecay7 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %resource, i64 0, i64 0, !dbg !4246
  store %struct.resource* %arraydecay7, %struct.resource** %devres, align 8, !dbg !4245
  call void @llvm.dbg.declare(metadata i32* %bar, metadata !4248, metadata !DIExpression()), !dbg !4249
  store i32 0, i32* %bar, align 4, !dbg !4249
  %21 = load i32, i32* %r, align 4, !dbg !4250
  %idxprom = sext i32 %21 to i64, !dbg !4252
  %arrayidx = getelementptr [3 x %struct.resource], [3 x %struct.resource]* %res, i64 0, i64 %idxprom, !dbg !4252
  %end = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 1, !dbg !4253
  %22 = load i64, i64* %end, align 8, !dbg !4253
  %tobool8 = icmp ne i64 %22, 0, !dbg !4252
  br i1 %tobool8, label %if.end30, label %land.lhs.true, !dbg !4254

land.lhs.true:                                    ; preds = %for.body
  %23 = load i32, i32* %r, align 4, !dbg !4255
  %idxprom9 = sext i32 %23 to i64, !dbg !4256
  %arrayidx10 = getelementptr [3 x %struct.resource], [3 x %struct.resource]* %res, i64 0, i64 %idxprom9, !dbg !4256
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx10, i32 0, i32 3, !dbg !4257
  %24 = load i64, i64* %flags, align 8, !dbg !4257
  %cmp11 = icmp eq i64 %24, 512, !dbg !4258
  br i1 %cmp11, label %if.then13, label %if.end30, !dbg !4259

if.then13:                                        ; preds = %land.lhs.true
  %25 = load i32, i32* %r, align 4, !dbg !4260
  %idxprom14 = sext i32 %25 to i64, !dbg !4262
  %arrayidx15 = getelementptr [3 x %struct.resource], [3 x %struct.resource]* %res, i64 0, i64 %idxprom14, !dbg !4262
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx15, i32 0, i32 0, !dbg !4263
  %26 = load i64, i64* %start, align 16, !dbg !4263
  %conv16 = trunc i64 %26 to i32, !dbg !4262
  store i32 %conv16, i32* %bar, align 4, !dbg !4264
  store i32 -19, i32* %err, align 4, !dbg !4265
  %27 = load i32, i32* %bar, align 4, !dbg !4266
  %28 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !4268
  %num_resources = getelementptr inbounds %struct.intel_th, %struct.intel_th* %28, i32 0, i32 8, !dbg !4269
  %29 = load i32, i32* %num_resources, align 4, !dbg !4269
  %cmp17 = icmp uge i32 %27, %29, !dbg !4270
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !4271

if.then19:                                        ; preds = %if.then13
  br label %fail_put_device, !dbg !4272

if.end20:                                         ; preds = %if.then13
  %30 = load i32, i32* %r, align 4, !dbg !4273
  %idxprom21 = sext i32 %30 to i64, !dbg !4274
  %arrayidx22 = getelementptr [3 x %struct.resource], [3 x %struct.resource]* %res, i64 0, i64 %idxprom21, !dbg !4274
  %start23 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx22, i32 0, i32 0, !dbg !4275
  store i64 0, i64* %start23, align 16, !dbg !4276
  %31 = load %struct.resource*, %struct.resource** %devres, align 8, !dbg !4277
  %32 = load i32, i32* %bar, align 4, !dbg !4278
  %idxprom24 = sext i32 %32 to i64, !dbg !4277
  %arrayidx25 = getelementptr %struct.resource, %struct.resource* %31, i64 %idxprom24, !dbg !4277
  %call26 = call i64 @resource_size(%struct.resource* %arrayidx25) #9, !dbg !4279
  %sub = sub i64 %call26, 1, !dbg !4280
  %33 = load i32, i32* %r, align 4, !dbg !4281
  %idxprom27 = sext i32 %33 to i64, !dbg !4282
  %arrayidx28 = getelementptr [3 x %struct.resource], [3 x %struct.resource]* %res, i64 0, i64 %idxprom27, !dbg !4282
  %end29 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx28, i32 0, i32 1, !dbg !4283
  store i64 %sub, i64* %end29, align 8, !dbg !4284
  br label %if.end30, !dbg !4285

if.end30:                                         ; preds = %if.end20, %land.lhs.true, %for.body
  %34 = load i32, i32* %r, align 4, !dbg !4286
  %idxprom31 = sext i32 %34 to i64, !dbg !4288
  %arrayidx32 = getelementptr [3 x %struct.resource], [3 x %struct.resource]* %res, i64 0, i64 %idxprom31, !dbg !4288
  %flags33 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx32, i32 0, i32 3, !dbg !4289
  %35 = load i64, i64* %flags33, align 8, !dbg !4289
  %and = and i64 %35, 512, !dbg !4290
  %tobool34 = icmp ne i64 %and, 0, !dbg !4290
  br i1 %tobool34, label %if.then35, label %if.else, !dbg !4291

if.then35:                                        ; preds = %if.end30
  %36 = load %struct.resource*, %struct.resource** %devres, align 8, !dbg !4292
  %37 = load i32, i32* %bar, align 4, !dbg !4294
  %idxprom36 = sext i32 %37 to i64, !dbg !4292
  %arrayidx37 = getelementptr %struct.resource, %struct.resource* %36, i64 %idxprom36, !dbg !4292
  %start38 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx37, i32 0, i32 0, !dbg !4295
  %38 = load i64, i64* %start38, align 8, !dbg !4295
  %39 = load i32, i32* %r, align 4, !dbg !4296
  %idxprom39 = sext i32 %39 to i64, !dbg !4297
  %arrayidx40 = getelementptr [3 x %struct.resource], [3 x %struct.resource]* %res, i64 0, i64 %idxprom39, !dbg !4297
  %start41 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx40, i32 0, i32 0, !dbg !4298
  %40 = load i64, i64* %start41, align 16, !dbg !4299
  %add = add i64 %40, %38, !dbg !4299
  store i64 %add, i64* %start41, align 16, !dbg !4299
  %41 = load %struct.resource*, %struct.resource** %devres, align 8, !dbg !4300
  %42 = load i32, i32* %bar, align 4, !dbg !4301
  %idxprom42 = sext i32 %42 to i64, !dbg !4300
  %arrayidx43 = getelementptr %struct.resource, %struct.resource* %41, i64 %idxprom42, !dbg !4300
  %start44 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx43, i32 0, i32 0, !dbg !4302
  %43 = load i64, i64* %start44, align 8, !dbg !4302
  %44 = load i32, i32* %r, align 4, !dbg !4303
  %idxprom45 = sext i32 %44 to i64, !dbg !4304
  %arrayidx46 = getelementptr [3 x %struct.resource], [3 x %struct.resource]* %res, i64 0, i64 %idxprom45, !dbg !4304
  %end47 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx46, i32 0, i32 1, !dbg !4305
  %45 = load i64, i64* %end47, align 8, !dbg !4306
  %add48 = add i64 %45, %43, !dbg !4306
  store i64 %add48, i64* %end47, align 8, !dbg !4306
  br label %if.end70, !dbg !4307

if.else:                                          ; preds = %if.end30
  %46 = load i32, i32* %r, align 4, !dbg !4308
  %idxprom49 = sext i32 %46 to i64, !dbg !4310
  %arrayidx50 = getelementptr [3 x %struct.resource], [3 x %struct.resource]* %res, i64 0, i64 %idxprom49, !dbg !4310
  %flags51 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx50, i32 0, i32 3, !dbg !4311
  %47 = load i64, i64* %flags51, align 8, !dbg !4311
  %and52 = and i64 %47, 1024, !dbg !4312
  %tobool53 = icmp ne i64 %and52, 0, !dbg !4312
  br i1 %tobool53, label %if.then54, label %if.end69, !dbg !4313

if.then54:                                        ; preds = %if.else
  %48 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !4314
  %drvdata55 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %48, i32 0, i32 3, !dbg !4314
  %49 = load %struct.intel_th_drvdata*, %struct.intel_th_drvdata** %drvdata55, align 8, !dbg !4314
  %tobool56 = icmp ne %struct.intel_th_drvdata* %49, null, !dbg !4314
  br i1 %tobool56, label %cond.true, label %cond.false, !dbg !4317

cond.true:                                        ; preds = %if.then54
  %50 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !4314
  %drvdata57 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %50, i32 0, i32 3, !dbg !4314
  %51 = load %struct.intel_th_drvdata*, %struct.intel_th_drvdata** %drvdata57, align 8, !dbg !4314
  %52 = bitcast %struct.intel_th_drvdata* %51 to i8*, !dbg !4314
  %bf.load = load i8, i8* %52, align 4, !dbg !4314
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !4314
  %bf.clear = and i8 %bf.lshr, 1, !dbg !4314
  %bf.cast = zext i8 %bf.clear to i32, !dbg !4314
  %tobool58 = icmp ne i32 %bf.cast, 0, !dbg !4314
  br i1 %tobool58, label %land.lhs.true59, label %if.end68, !dbg !4314

cond.false:                                       ; preds = %if.then54
  br i1 false, label %land.lhs.true59, label %if.end68, !dbg !4317

land.lhs.true59:                                  ; preds = %cond.false, %cond.true
  %53 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !4318
  %irq = getelementptr inbounds %struct.intel_th, %struct.intel_th* %53, i32 0, i32 9, !dbg !4319
  %54 = load i32, i32* %irq, align 8, !dbg !4319
  %cmp60 = icmp ne i32 %54, -1, !dbg !4320
  br i1 %cmp60, label %if.then62, label %if.end68, !dbg !4321

if.then62:                                        ; preds = %land.lhs.true59
  %55 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !4322
  %irq63 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %55, i32 0, i32 9, !dbg !4323
  %56 = load i32, i32* %irq63, align 8, !dbg !4323
  %conv64 = sext i32 %56 to i64, !dbg !4322
  %57 = load i32, i32* %r, align 4, !dbg !4324
  %idxprom65 = sext i32 %57 to i64, !dbg !4325
  %arrayidx66 = getelementptr [3 x %struct.resource], [3 x %struct.resource]* %res, i64 0, i64 %idxprom65, !dbg !4325
  %start67 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx66, i32 0, i32 0, !dbg !4326
  store i64 %conv64, i64* %start67, align 16, !dbg !4327
  br label %if.end68, !dbg !4325

if.end68:                                         ; preds = %if.then62, %land.lhs.true59, %cond.false, %cond.true
  br label %if.end69, !dbg !4328

if.end69:                                         ; preds = %if.end68, %if.else
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then35
  br label %for.inc, !dbg !4329

for.inc:                                          ; preds = %if.end70
  %58 = load i32, i32* %r, align 4, !dbg !4330
  %inc = add i32 %58, 1, !dbg !4330
  store i32 %inc, i32* %r, align 4, !dbg !4330
  br label %for.cond, !dbg !4331, !llvm.loop !4332

for.end:                                          ; preds = %for.cond
  %59 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !4334
  %arraydecay71 = getelementptr inbounds [3 x %struct.resource], [3 x %struct.resource]* %res, i64 0, i64 0, !dbg !4335
  %60 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %subdev.addr, align 8, !dbg !4336
  %nres72 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %60, i32 0, i32 2, !dbg !4337
  %61 = load i32, i32* %nres72, align 8, !dbg !4337
  %call73 = call i32 @intel_th_device_add_resources(%struct.intel_th_device* %59, %struct.resource* %arraydecay71, i32 %61) #9, !dbg !4338
  store i32 %call73, i32* %err, align 4, !dbg !4339
  %62 = load i32, i32* %err, align 4, !dbg !4340
  %tobool74 = icmp ne i32 %62, 0, !dbg !4340
  br i1 %tobool74, label %if.then75, label %if.end76, !dbg !4342

if.then75:                                        ; preds = %for.end
  br label %fail_put_device, !dbg !4343

if.end76:                                         ; preds = %for.end
  %63 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %subdev.addr, align 8, !dbg !4344
  %type77 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %63, i32 0, i32 3, !dbg !4346
  %64 = load i32, i32* %type77, align 4, !dbg !4346
  %cmp78 = icmp eq i32 %64, 1, !dbg !4347
  br i1 %cmp78, label %if.then80, label %if.else87, !dbg !4348

if.then80:                                        ; preds = %if.end76
  %65 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %subdev.addr, align 8, !dbg !4349
  %mknode = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %65, i32 0, i32 5, !dbg !4352
  %66 = load i8, i8* %mknode, align 4, !dbg !4352
  %tobool81 = trunc i8 %66 to i1, !dbg !4352
  br i1 %tobool81, label %if.then82, label %if.end83, !dbg !4353

if.then82:                                        ; preds = %if.then80
  %67 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !4354
  %major = getelementptr inbounds %struct.intel_th, %struct.intel_th* %67, i32 0, i32 12, !dbg !4354
  %68 = load i32, i32* %major, align 4, !dbg !4354
  %shl = shl i32 %68, 20, !dbg !4354
  %69 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !4354
  %num_thdevs = getelementptr inbounds %struct.intel_th, %struct.intel_th* %69, i32 0, i32 7, !dbg !4354
  %70 = load i32, i32* %num_thdevs, align 8, !dbg !4354
  %or = or i32 %shl, %70, !dbg !4354
  %71 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !4355
  %dev = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %71, i32 0, i32 0, !dbg !4356
  %devt = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 25, !dbg !4357
  store i32 %or, i32* %devt, align 8, !dbg !4358
  br label %if.end83, !dbg !4355

if.end83:                                         ; preds = %if.then82, %if.then80
  %72 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %subdev.addr, align 8, !dbg !4359
  %otype = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %72, i32 0, i32 4, !dbg !4360
  %73 = load i32, i32* %otype, align 8, !dbg !4360
  %74 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !4361
  %output = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %74, i32 0, i32 7, !dbg !4362
  %type84 = getelementptr inbounds %struct.intel_th_output, %struct.intel_th_output* %output, i32 0, i32 1, !dbg !4363
  store i32 %73, i32* %type84, align 4, !dbg !4364
  %75 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !4365
  %output85 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %75, i32 0, i32 7, !dbg !4366
  %port = getelementptr inbounds %struct.intel_th_output, %struct.intel_th_output* %output85, i32 0, i32 0, !dbg !4367
  store i32 -1, i32* %port, align 8, !dbg !4368
  %76 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %subdev.addr, align 8, !dbg !4369
  %scrpd = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %76, i32 0, i32 6, !dbg !4370
  %77 = load i32, i32* %scrpd, align 8, !dbg !4370
  %78 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !4371
  %output86 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %78, i32 0, i32 7, !dbg !4372
  %scratchpad = getelementptr inbounds %struct.intel_th_output, %struct.intel_th_output* %output86, i32 0, i32 2, !dbg !4373
  store i32 %77, i32* %scratchpad, align 8, !dbg !4374
  br label %if.end108, !dbg !4375

if.else87:                                        ; preds = %if.end76
  %79 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %subdev.addr, align 8, !dbg !4376
  %type88 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %79, i32 0, i32 3, !dbg !4378
  %80 = load i32, i32* %type88, align 4, !dbg !4378
  %cmp89 = icmp eq i32 %80, 2, !dbg !4379
  br i1 %cmp89, label %if.then91, label %if.end107, !dbg !4380

if.then91:                                        ; preds = %if.else87
  %81 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !4381
  %drvdata92 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %81, i32 0, i32 3, !dbg !4381
  %82 = load %struct.intel_th_drvdata*, %struct.intel_th_drvdata** %drvdata92, align 8, !dbg !4381
  %tobool93 = icmp ne %struct.intel_th_drvdata* %82, null, !dbg !4381
  br i1 %tobool93, label %cond.true94, label %cond.false101, !dbg !4381

cond.true94:                                      ; preds = %if.then91
  %83 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !4381
  %drvdata95 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %83, i32 0, i32 3, !dbg !4381
  %84 = load %struct.intel_th_drvdata*, %struct.intel_th_drvdata** %drvdata95, align 8, !dbg !4381
  %85 = bitcast %struct.intel_th_drvdata* %84 to i8*, !dbg !4381
  %bf.load96 = load i8, i8* %85, align 4, !dbg !4381
  %bf.lshr97 = lshr i8 %bf.load96, 3, !dbg !4381
  %bf.clear98 = and i8 %bf.lshr97, 1, !dbg !4381
  %bf.cast99 = zext i8 %bf.clear98 to i32, !dbg !4381
  %tobool100 = icmp ne i32 %bf.cast99, 0, !dbg !4381
  br i1 %tobool100, label %cond.true102, label %cond.false103, !dbg !4381

cond.false101:                                    ; preds = %if.then91
  br i1 false, label %cond.true102, label %cond.false103, !dbg !4381

cond.true102:                                     ; preds = %cond.false101, %cond.true94
  br label %cond.end, !dbg !4381

cond.false103:                                    ; preds = %cond.false101, %cond.true94
  %86 = load i8, i8* @host_mode, align 1, !dbg !4383
  %tobool104 = trunc i8 %86 to i1, !dbg !4383
  %conv105 = zext i1 %tobool104 to i32, !dbg !4383
  br label %cond.end, !dbg !4381

cond.end:                                         ; preds = %cond.false103, %cond.true102
  %cond = phi i32 [ 1, %cond.true102 ], [ %conv105, %cond.false103 ], !dbg !4381
  %tobool106 = icmp ne i32 %cond, 0, !dbg !4381
  %87 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !4384
  %host_mode = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %87, i32 0, i32 6, !dbg !4385
  %frombool = zext i1 %tobool106 to i8, !dbg !4386
  store i8 %frombool, i8* %host_mode, align 4, !dbg !4386
  %88 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !4387
  %89 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !4388
  %hub = getelementptr inbounds %struct.intel_th, %struct.intel_th* %89, i32 0, i32 2, !dbg !4389
  store %struct.intel_th_device* %88, %struct.intel_th_device** %hub, align 8, !dbg !4390
  br label %if.end107, !dbg !4391

if.end107:                                        ; preds = %cond.end, %if.else87
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end83
  %90 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !4392
  %dev109 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %90, i32 0, i32 0, !dbg !4393
  %call110 = call i32 @device_add(%struct.device* %dev109) #9, !dbg !4394
  store i32 %call110, i32* %err, align 4, !dbg !4395
  %91 = load i32, i32* %err, align 4, !dbg !4396
  %tobool111 = icmp ne i32 %91, 0, !dbg !4396
  br i1 %tobool111, label %if.then112, label %if.end113, !dbg !4398

if.then112:                                       ; preds = %if.end108
  br label %fail_free_res, !dbg !4399

if.end113:                                        ; preds = %if.end108
  %92 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %subdev.addr, align 8, !dbg !4400
  %type114 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %92, i32 0, i32 3, !dbg !4402
  %93 = load i32, i32* %type114, align 4, !dbg !4402
  %cmp115 = icmp eq i32 %93, 2, !dbg !4403
  br i1 %cmp115, label %land.lhs.true117, label %if.end125, !dbg !4404

land.lhs.true117:                                 ; preds = %if.end113
  %94 = load i32, i32* %req, align 4, !dbg !4405
  %tobool118 = icmp ne i32 %94, 0, !dbg !4405
  br i1 %tobool118, label %if.end125, label %if.then119, !dbg !4406

if.then119:                                       ; preds = %land.lhs.true117
  %95 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !4407
  %call120 = call i32 @intel_th_request_hub_module(%struct.intel_th* %95) #9, !dbg !4409
  store i32 %call120, i32* %err, align 4, !dbg !4410
  %96 = load i32, i32* %err, align 4, !dbg !4411
  %tobool121 = icmp ne i32 %96, 0, !dbg !4411
  br i1 %tobool121, label %if.end124, label %if.then122, !dbg !4413

if.then122:                                       ; preds = %if.then119
  %97 = load i32, i32* %req, align 4, !dbg !4414
  %inc123 = add i32 %97, 1, !dbg !4414
  store i32 %inc123, i32* %req, align 4, !dbg !4414
  br label %if.end124, !dbg !4415

if.end124:                                        ; preds = %if.then122, %if.then119
  br label %if.end125, !dbg !4416

if.end125:                                        ; preds = %if.end124, %land.lhs.true117, %if.end113
  %98 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !4417
  store %struct.intel_th_device* %98, %struct.intel_th_device** %retval, align 8, !dbg !4418
  br label %return, !dbg !4418

fail_free_res:                                    ; preds = %if.then112
  call void @llvm.dbg.label(metadata !4419), !dbg !4420
  %99 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !4421
  %resource126 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %99, i32 0, i32 2, !dbg !4422
  %100 = load %struct.resource*, %struct.resource** %resource126, align 8, !dbg !4422
  %101 = bitcast %struct.resource* %100 to i8*, !dbg !4421
  call void @kfree(i8* %101) #9, !dbg !4423
  br label %fail_put_device, !dbg !4423

fail_put_device:                                  ; preds = %fail_free_res, %if.then75, %if.then19
  call void @llvm.dbg.label(metadata !4424), !dbg !4425
  %102 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !4426
  %dev127 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %102, i32 0, i32 0, !dbg !4427
  call void @put_device(%struct.device* %dev127) #9, !dbg !4428
  %103 = load i32, i32* %err, align 4, !dbg !4429
  %conv128 = sext i32 %103 to i64, !dbg !4429
  %call129 = call i8* @ERR_PTR(i64 %conv128) #9, !dbg !4430
  %104 = bitcast i8* %call129 to %struct.intel_th_device*, !dbg !4430
  store %struct.intel_th_device* %104, %struct.intel_th_device** %retval, align 8, !dbg !4431
  br label %return, !dbg !4431

return:                                           ; preds = %fail_put_device, %if.end125, %if.then
  %105 = load %struct.intel_th_device*, %struct.intel_th_device** %retval, align 8, !dbg !4432
  ret %struct.intel_th_device* %105, !dbg !4432
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !4433 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4437, metadata !DIExpression()), !dbg !4438
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4439
  %1 = ptrtoint i8* %0 to i64, !dbg !4439
  %2 = inttoptr i64 %1 to i8*, !dbg !4439
  %3 = ptrtoint i8* %2 to i64, !dbg !4439
  %cmp = icmp uge i64 %3, -4095, !dbg !4439
  %lnot = xor i1 %cmp, true, !dbg !4439
  %lnot1 = xor i1 %lnot, true, !dbg !4439
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4439
  %conv = sext i32 %lnot.ext to i64, !dbg !4439
  %tobool = icmp ne i64 %conv, 0, !dbg !4439
  ret i1 %tobool, !dbg !4440
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !4441 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4444, metadata !DIExpression()), !dbg !4445
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4446
  %1 = ptrtoint i8* %0 to i64, !dbg !4447
  ret i64 %1, !dbg !4448
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.intel_th* @intel_th_alloc(%struct.device* %dev, %struct.intel_th_drvdata* %drvdata, %struct.resource* %devres, i32 %ndevres) #0 !dbg !4449 {
entry:
  %retval = alloca %struct.intel_th*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %drvdata.addr = alloca %struct.intel_th_drvdata*, align 8
  %devres.addr = alloca %struct.resource*, align 8
  %ndevres.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %r = alloca i32, align 4
  %nr_mmios = alloca i32, align 4
  %th = alloca %struct.intel_th*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4452, metadata !DIExpression()), !dbg !4453
  store %struct.intel_th_drvdata* %drvdata, %struct.intel_th_drvdata** %drvdata.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th_drvdata** %drvdata.addr, metadata !4454, metadata !DIExpression()), !dbg !4455
  store %struct.resource* %devres, %struct.resource** %devres.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %devres.addr, metadata !4456, metadata !DIExpression()), !dbg !4457
  store i32 %ndevres, i32* %ndevres.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ndevres.addr, metadata !4458, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4460, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.declare(metadata i32* %r, metadata !4462, metadata !DIExpression()), !dbg !4463
  call void @llvm.dbg.declare(metadata i32* %nr_mmios, metadata !4464, metadata !DIExpression()), !dbg !4465
  store i32 0, i32* %nr_mmios, align 4, !dbg !4465
  call void @llvm.dbg.declare(metadata %struct.intel_th** %th, metadata !4466, metadata !DIExpression()), !dbg !4467
  %call = call i8* @kzalloc(i64 336, i32 3264) #9, !dbg !4468
  %0 = bitcast i8* %call to %struct.intel_th*, !dbg !4468
  store %struct.intel_th* %0, %struct.intel_th** %th, align 8, !dbg !4469
  %1 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4470
  %tobool = icmp ne %struct.intel_th* %1, null, !dbg !4470
  br i1 %tobool, label %if.end, label %if.then, !dbg !4472

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #9, !dbg !4473
  %2 = bitcast i8* %call1 to %struct.intel_th*, !dbg !4473
  store %struct.intel_th* %2, %struct.intel_th** %retval, align 8, !dbg !4474
  br label %return, !dbg !4474

if.end:                                           ; preds = %entry
  %call2 = call i32 @ida_alloc_range(%struct.ida* @intel_th_ida, i32 0, i32 -1, i32 3264) #9, !dbg !4475
  %3 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4476
  %id = getelementptr inbounds %struct.intel_th, %struct.intel_th* %3, i32 0, i32 11, !dbg !4477
  store i32 %call2, i32* %id, align 8, !dbg !4478
  %4 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4479
  %id3 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %4, i32 0, i32 11, !dbg !4481
  %5 = load i32, i32* %id3, align 8, !dbg !4481
  %cmp = icmp slt i32 %5, 0, !dbg !4482
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !4483

if.then4:                                         ; preds = %if.end
  %6 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4484
  %id5 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %6, i32 0, i32 11, !dbg !4486
  %7 = load i32, i32* %id5, align 8, !dbg !4486
  store i32 %7, i32* %err, align 4, !dbg !4487
  br label %err_alloc, !dbg !4488

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @__register_chrdev(i32 0, i32 0, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.file_operations* @intel_th_output_fops) #9, !dbg !4489
  %8 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4490
  %major = getelementptr inbounds %struct.intel_th, %struct.intel_th* %8, i32 0, i32 12, !dbg !4491
  store i32 %call7, i32* %major, align 4, !dbg !4492
  %9 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4493
  %major8 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %9, i32 0, i32 12, !dbg !4495
  %10 = load i32, i32* %major8, align 4, !dbg !4495
  %cmp9 = icmp slt i32 %10, 0, !dbg !4496
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !4497

if.then10:                                        ; preds = %if.end6
  %11 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4498
  %major11 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %11, i32 0, i32 12, !dbg !4500
  %12 = load i32, i32* %major11, align 4, !dbg !4500
  store i32 %12, i32* %err, align 4, !dbg !4501
  br label %err_ida, !dbg !4502

if.end12:                                         ; preds = %if.end6
  %13 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4503
  %irq = getelementptr inbounds %struct.intel_th, %struct.intel_th* %13, i32 0, i32 9, !dbg !4504
  store i32 -1, i32* %irq, align 8, !dbg !4505
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4506
  %15 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4507
  %dev13 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %15, i32 0, i32 0, !dbg !4508
  store %struct.device* %14, %struct.device** %dev13, align 8, !dbg !4509
  %16 = load %struct.intel_th_drvdata*, %struct.intel_th_drvdata** %drvdata.addr, align 8, !dbg !4510
  %17 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4511
  %drvdata14 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %17, i32 0, i32 3, !dbg !4512
  store %struct.intel_th_drvdata* %16, %struct.intel_th_drvdata** %drvdata14, align 8, !dbg !4513
  store i32 0, i32* %r, align 4, !dbg !4514
  br label %for.cond, !dbg !4516

for.cond:                                         ; preds = %for.inc, %if.end12
  %18 = load i32, i32* %r, align 4, !dbg !4517
  %19 = load i32, i32* %ndevres.addr, align 4, !dbg !4519
  %cmp15 = icmp ult i32 %18, %19, !dbg !4520
  br i1 %cmp15, label %for.body, label %for.end, !dbg !4521

for.body:                                         ; preds = %for.cond
  %20 = load %struct.resource*, %struct.resource** %devres.addr, align 8, !dbg !4522
  %21 = load i32, i32* %r, align 4, !dbg !4523
  %idxprom = sext i32 %21 to i64, !dbg !4522
  %arrayidx = getelementptr %struct.resource, %struct.resource* %20, i64 %idxprom, !dbg !4522
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 3, !dbg !4524
  %22 = load i64, i64* %flags, align 8, !dbg !4524
  %and = and i64 %22, 7936, !dbg !4525
  switch i64 %and, label %sw.default [
    i64 512, label %sw.bb
    i64 1024, label %sw.bb20
  ], !dbg !4526

sw.bb:                                            ; preds = %for.body
  %23 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4527
  %resource = getelementptr inbounds %struct.intel_th, %struct.intel_th* %23, i32 0, i32 4, !dbg !4529
  %24 = load i32, i32* %nr_mmios, align 4, !dbg !4530
  %inc = add i32 %24, 1, !dbg !4530
  store i32 %inc, i32* %nr_mmios, align 4, !dbg !4530
  %idxprom16 = sext i32 %24 to i64, !dbg !4527
  %arrayidx17 = getelementptr [3 x %struct.resource], [3 x %struct.resource]* %resource, i64 0, i64 %idxprom16, !dbg !4527
  %25 = load %struct.resource*, %struct.resource** %devres.addr, align 8, !dbg !4531
  %26 = load i32, i32* %r, align 4, !dbg !4532
  %idxprom18 = sext i32 %26 to i64, !dbg !4531
  %arrayidx19 = getelementptr %struct.resource, %struct.resource* %25, i64 %idxprom18, !dbg !4531
  %27 = bitcast %struct.resource* %arrayidx17 to i8*, !dbg !4531
  %28 = bitcast %struct.resource* %arrayidx19 to i8*, !dbg !4531
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 64, i1 false), !dbg !4531
  br label %sw.epilog, !dbg !4533

sw.bb20:                                          ; preds = %for.body
  %29 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4534
  %30 = load %struct.resource*, %struct.resource** %devres.addr, align 8, !dbg !4535
  %31 = load i32, i32* %r, align 4, !dbg !4536
  %idxprom21 = sext i32 %31 to i64, !dbg !4535
  %arrayidx22 = getelementptr %struct.resource, %struct.resource* %30, i64 %idxprom21, !dbg !4535
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx22, i32 0, i32 0, !dbg !4537
  %32 = load i64, i64* %start, align 8, !dbg !4537
  %conv = trunc i64 %32 to i32, !dbg !4535
  %33 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4538
  %call23 = call i8* @dev_name(%struct.device* %33) #9, !dbg !4539
  %34 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4540
  %35 = bitcast %struct.intel_th* %34 to i8*, !dbg !4540
  %call24 = call i32 @devm_request_irq(%struct.device* %29, i32 %conv, i32 (i32, i8*)* @intel_th_irq, i64 128, i8* %call23, i8* %35) #9, !dbg !4541
  store i32 %call24, i32* %err, align 4, !dbg !4542
  %36 = load i32, i32* %err, align 4, !dbg !4543
  %tobool25 = icmp ne i32 %36, 0, !dbg !4543
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !4545

if.then26:                                        ; preds = %sw.bb20
  br label %err_chrdev, !dbg !4546

if.end27:                                         ; preds = %sw.bb20
  %37 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4547
  %irq28 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %37, i32 0, i32 9, !dbg !4549
  %38 = load i32, i32* %irq28, align 8, !dbg !4549
  %cmp29 = icmp eq i32 %38, -1, !dbg !4550
  br i1 %cmp29, label %if.then31, label %if.end37, !dbg !4551

if.then31:                                        ; preds = %if.end27
  %39 = load %struct.resource*, %struct.resource** %devres.addr, align 8, !dbg !4552
  %40 = load i32, i32* %r, align 4, !dbg !4553
  %idxprom32 = sext i32 %40 to i64, !dbg !4552
  %arrayidx33 = getelementptr %struct.resource, %struct.resource* %39, i64 %idxprom32, !dbg !4552
  %start34 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx33, i32 0, i32 0, !dbg !4554
  %41 = load i64, i64* %start34, align 8, !dbg !4554
  %conv35 = trunc i64 %41 to i32, !dbg !4552
  %42 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4555
  %irq36 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %42, i32 0, i32 9, !dbg !4556
  store i32 %conv35, i32* %irq36, align 8, !dbg !4557
  br label %if.end37, !dbg !4555

if.end37:                                         ; preds = %if.then31, %if.end27
  %43 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4558
  %num_irqs = getelementptr inbounds %struct.intel_th, %struct.intel_th* %43, i32 0, i32 10, !dbg !4559
  %44 = load i32, i32* %num_irqs, align 4, !dbg !4560
  %inc38 = add i32 %44, 1, !dbg !4560
  store i32 %inc38, i32* %num_irqs, align 4, !dbg !4560
  br label %sw.epilog, !dbg !4561

sw.default:                                       ; preds = %for.body
  %45 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4562
  %46 = load %struct.resource*, %struct.resource** %devres.addr, align 8, !dbg !4562
  %47 = load i32, i32* %r, align 4, !dbg !4562
  %idxprom39 = sext i32 %47 to i64, !dbg !4562
  %arrayidx40 = getelementptr %struct.resource, %struct.resource* %46, i64 %idxprom39, !dbg !4562
  %flags41 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx40, i32 0, i32 3, !dbg !4562
  %48 = load i64, i64* %flags41, align 8, !dbg !4562
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %48) #10, !dbg !4562
  br label %sw.epilog, !dbg !4563

sw.epilog:                                        ; preds = %sw.default, %if.end37, %sw.bb
  br label %for.inc, !dbg !4564

for.inc:                                          ; preds = %sw.epilog
  %49 = load i32, i32* %r, align 4, !dbg !4565
  %inc42 = add i32 %49, 1, !dbg !4565
  store i32 %inc42, i32* %r, align 4, !dbg !4565
  br label %for.cond, !dbg !4566, !llvm.loop !4567

for.end:                                          ; preds = %for.cond
  %50 = load i32, i32* %nr_mmios, align 4, !dbg !4569
  %51 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4570
  %num_resources = getelementptr inbounds %struct.intel_th, %struct.intel_th* %51, i32 0, i32 8, !dbg !4571
  store i32 %50, i32* %num_resources, align 4, !dbg !4572
  %52 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4573
  %53 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4574
  %54 = bitcast %struct.intel_th* %53 to i8*, !dbg !4574
  call void @dev_set_drvdata(%struct.device* %52, i8* %54) #9, !dbg !4575
  %55 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4576
  call void @pm_runtime_no_callbacks(%struct.device* %55) #9, !dbg !4577
  %56 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4578
  %call43 = call i32 @pm_runtime_put(%struct.device* %56) #9, !dbg !4579
  %57 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4580
  call void @pm_runtime_allow(%struct.device* %57) #9, !dbg !4581
  %58 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4582
  %call44 = call i32 @intel_th_populate(%struct.intel_th* %58) #9, !dbg !4583
  store i32 %call44, i32* %err, align 4, !dbg !4584
  %59 = load i32, i32* %err, align 4, !dbg !4585
  %tobool45 = icmp ne i32 %59, 0, !dbg !4585
  br i1 %tobool45, label %if.then46, label %if.end49, !dbg !4587

if.then46:                                        ; preds = %for.end
  %60 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4588
  call void @intel_th_free(%struct.intel_th* %60) #9, !dbg !4590
  %61 = load i32, i32* %err, align 4, !dbg !4591
  %conv47 = sext i32 %61 to i64, !dbg !4591
  %call48 = call i8* @ERR_PTR(i64 %conv47) #9, !dbg !4592
  %62 = bitcast i8* %call48 to %struct.intel_th*, !dbg !4592
  store %struct.intel_th* %62, %struct.intel_th** %retval, align 8, !dbg !4593
  br label %return, !dbg !4593

if.end49:                                         ; preds = %for.end
  %63 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4594
  store %struct.intel_th* %63, %struct.intel_th** %retval, align 8, !dbg !4595
  br label %return, !dbg !4595

err_chrdev:                                       ; preds = %if.then26
  call void @llvm.dbg.label(metadata !4596), !dbg !4597
  %64 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4598
  %major50 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %64, i32 0, i32 12, !dbg !4599
  %65 = load i32, i32* %major50, align 4, !dbg !4599
  call void @__unregister_chrdev(i32 %65, i32 0, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #9, !dbg !4600
  br label %err_ida, !dbg !4600

err_ida:                                          ; preds = %err_chrdev, %if.then10
  call void @llvm.dbg.label(metadata !4601), !dbg !4602
  %66 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4603
  %id51 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %66, i32 0, i32 11, !dbg !4603
  %67 = load i32, i32* %id51, align 8, !dbg !4603
  call void @ida_free(%struct.ida* @intel_th_ida, i32 %67) #9, !dbg !4603
  br label %err_alloc, !dbg !4603

err_alloc:                                        ; preds = %err_ida, %if.then4
  call void @llvm.dbg.label(metadata !4604), !dbg !4605
  %68 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4606
  %69 = bitcast %struct.intel_th* %68 to i8*, !dbg !4606
  call void @kfree(i8* %69) #9, !dbg !4607
  %70 = load i32, i32* %err, align 4, !dbg !4608
  %conv52 = sext i32 %70 to i64, !dbg !4608
  %call53 = call i8* @ERR_PTR(i64 %conv52) #9, !dbg !4609
  %71 = bitcast i8* %call53 to %struct.intel_th*, !dbg !4609
  store %struct.intel_th* %71, %struct.intel_th** %retval, align 8, !dbg !4610
  br label %return, !dbg !4610

return:                                           ; preds = %err_alloc, %if.end49, %if.then46, %if.then
  %72 = load %struct.intel_th*, %struct.intel_th** %retval, align 8, !dbg !4611
  ret %struct.intel_th* %72, !dbg !4611
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4612 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4615, metadata !DIExpression()), !dbg !4619
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4625, metadata !DIExpression()), !dbg !4626
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4627, metadata !DIExpression()), !dbg !4628
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4629, metadata !DIExpression()), !dbg !4630
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4631, metadata !DIExpression()), !dbg !4635
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4637, metadata !DIExpression()), !dbg !4641
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4643, metadata !DIExpression()), !dbg !4647
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4652, metadata !DIExpression()), !dbg !4653
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4654, metadata !DIExpression()), !dbg !4655
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4656, metadata !DIExpression()), !dbg !4657
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4658, metadata !DIExpression()), !dbg !4659
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4660, metadata !DIExpression()), !dbg !4661
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4662, metadata !DIExpression()), !dbg !4663
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4664, metadata !DIExpression()), !dbg !4665
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4666, metadata !DIExpression()), !dbg !4667
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4668, metadata !DIExpression()), !dbg !4669
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4670, metadata !DIExpression()), !dbg !4671
  %0 = load i64, i64* %size.addr, align 8, !dbg !4672
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4673
  %or = or i32 %1, 256, !dbg !4674
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4675
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !4676
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4677

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4678
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4679
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4680

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4681
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4682
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4683
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !4684
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4661
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4685
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4686
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4687
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4688
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4689
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4690
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !4691
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4691
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4691
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4691
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !4691
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4692
  br label %kmalloc.exit, !dbg !4692

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4693
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4694
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4694
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4696

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4697
  br label %kmalloc_index.exit.i, !dbg !4697

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4698
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4700
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4701

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4702
  br label %kmalloc_index.exit.i, !dbg !4702

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4703
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4705
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4706

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4707
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4708
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4709

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4710
  br label %kmalloc_index.exit.i, !dbg !4710

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4711
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4713
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4714

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4715
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4716
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4717

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4718
  br label %kmalloc_index.exit.i, !dbg !4718

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4719
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4721
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4722

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4723
  br label %kmalloc_index.exit.i, !dbg !4723

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4724
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4726
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4727

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4728
  br label %kmalloc_index.exit.i, !dbg !4728

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4729
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4731
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4732

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4733
  br label %kmalloc_index.exit.i, !dbg !4733

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4734
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4736
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4737

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4738
  br label %kmalloc_index.exit.i, !dbg !4738

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4739
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4741
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4742

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4743
  br label %kmalloc_index.exit.i, !dbg !4743

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4744
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4746
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4747

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4748
  br label %kmalloc_index.exit.i, !dbg !4748

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4749
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4751
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4752

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4753
  br label %kmalloc_index.exit.i, !dbg !4753

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4754
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4756
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4757

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4758
  br label %kmalloc_index.exit.i, !dbg !4758

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4759
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4761
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4762

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4763
  br label %kmalloc_index.exit.i, !dbg !4763

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4764
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4766
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4767

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4768
  br label %kmalloc_index.exit.i, !dbg !4768

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4769
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4771
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4772

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4773
  br label %kmalloc_index.exit.i, !dbg !4773

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4774
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4776
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4777

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4778
  br label %kmalloc_index.exit.i, !dbg !4778

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4779
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4781
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4782

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4783
  br label %kmalloc_index.exit.i, !dbg !4783

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4784
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4786
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4787

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4788
  br label %kmalloc_index.exit.i, !dbg !4788

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4789
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4791
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4792

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4793
  br label %kmalloc_index.exit.i, !dbg !4793

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4794
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4796
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4797

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4798
  br label %kmalloc_index.exit.i, !dbg !4798

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4799
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4801
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4802

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4803
  br label %kmalloc_index.exit.i, !dbg !4803

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4804
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4806
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4807

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4808
  br label %kmalloc_index.exit.i, !dbg !4808

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4809
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4811
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4812

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4813
  br label %kmalloc_index.exit.i, !dbg !4813

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4814
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4816
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4817

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4818
  br label %kmalloc_index.exit.i, !dbg !4818

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4819
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4821
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4822

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4823
  br label %kmalloc_index.exit.i, !dbg !4823

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4824
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4826
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4827

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4828
  br label %kmalloc_index.exit.i, !dbg !4828

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4829
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4831
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4832

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4833
  br label %kmalloc_index.exit.i, !dbg !4833

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4834
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4836
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4837

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4838
  br label %kmalloc_index.exit.i, !dbg !4838

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !4839, !srcloc !4842
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 204) #11, !dbg !4843, !srcloc !4846
  unreachable, !dbg !4847

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4848
  store i32 %45, i32* %index.i, align 4, !dbg !4849
  %46 = load i32, i32* %index.i, align 4, !dbg !4850
  %tobool.i = icmp ne i32 %46, 0, !dbg !4850
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4852

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4853
  br label %kmalloc.exit, !dbg !4853

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4854
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4855
  %and.i.i = and i32 %48, 17, !dbg !4855
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4855
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4855
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4855
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4855
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4857

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4858
  br label %kmalloc_type.exit.i, !dbg !4858

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4859
  %and2.i.i = and i32 %49, 1, !dbg !4860
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4859
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4859
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4859
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4861
  br label %kmalloc_type.exit.i, !dbg !4861

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4862
  %idxprom.i = zext i32 %51 to i64, !dbg !4863
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4863
  %52 = load i32, i32* %index.i, align 4, !dbg !4864
  %idxprom6.i = zext i32 %52 to i64, !dbg !4863
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4863
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4863
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4865
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4866
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4867
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4868
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !4869
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4869
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4869
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4869
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !4869
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4630
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4870
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4871
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4872
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4873
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !4874
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4875
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4876
  store i8* %62, i8** %retval.i, align 8, !dbg !4877
  br label %kmalloc.exit, !dbg !4877

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4878
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4879
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !4880
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4880
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4880
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4880
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !4880
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4881
  br label %kmalloc.exit, !dbg !4881

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4882
  ret i8* %65, !dbg !4883
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !4884 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !4887, metadata !DIExpression()), !dbg !4888
  %0 = load i64, i64* %error.addr, align 8, !dbg !4889
  %1 = inttoptr i64 %0 to i8*, !dbg !4890
  ret i8* %1, !dbg !4891
}

; Function Attrs: noredzone
declare dso_local i32 @ida_alloc_range(%struct.ida*, i32, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @__register_chrdev(i32, i32, i32, i8*, %struct.file_operations*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_request_irq(%struct.device* %dev, i32 %irq, i32 (i32, i8*)* %handler, i64 %irqflags, i8* %devname, i8* %dev_id) #0 !dbg !4892 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %irqflags.addr = alloca i64, align 8
  %devname.addr = alloca i8*, align 8
  %dev_id.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4900, metadata !DIExpression()), !dbg !4901
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4902, metadata !DIExpression()), !dbg !4903
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !4904, metadata !DIExpression()), !dbg !4905
  store i64 %irqflags, i64* %irqflags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %irqflags.addr, metadata !4906, metadata !DIExpression()), !dbg !4907
  store i8* %devname, i8** %devname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %devname.addr, metadata !4908, metadata !DIExpression()), !dbg !4909
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !4910, metadata !DIExpression()), !dbg !4911
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4912
  %1 = load i32, i32* %irq.addr, align 4, !dbg !4913
  %2 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !4914
  %3 = load i64, i64* %irqflags.addr, align 8, !dbg !4915
  %4 = load i8*, i8** %devname.addr, align 8, !dbg !4916
  %5 = load i8*, i8** %dev_id.addr, align 8, !dbg !4917
  %call = call i32 @devm_request_threaded_irq(%struct.device* %0, i32 %1, i32 (i32, i8*)* %2, i32 (i32, i8*)* null, i64 %3, i8* %4, i8* %5) #9, !dbg !4918
  ret i32 %call, !dbg !4919
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_th_irq(i32 %irq, i8* %data) #0 !dbg !4920 {
entry:
  %irq.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %th = alloca %struct.intel_th*, align 8
  %ret = alloca i32, align 4
  %d = alloca %struct.intel_th_driver*, align 8
  %i = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.intel_th_driver*, align 8
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !4921, metadata !DIExpression()), !dbg !4922
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4923, metadata !DIExpression()), !dbg !4924
  call void @llvm.dbg.declare(metadata %struct.intel_th** %th, metadata !4925, metadata !DIExpression()), !dbg !4926
  %0 = load i8*, i8** %data.addr, align 8, !dbg !4927
  %1 = bitcast i8* %0 to %struct.intel_th*, !dbg !4927
  store %struct.intel_th* %1, %struct.intel_th** %th, align 8, !dbg !4926
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4928, metadata !DIExpression()), !dbg !4929
  store i32 0, i32* %ret, align 4, !dbg !4929
  call void @llvm.dbg.declare(metadata %struct.intel_th_driver** %d, metadata !4930, metadata !DIExpression()), !dbg !4931
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4932, metadata !DIExpression()), !dbg !4933
  store i32 0, i32* %i, align 4, !dbg !4934
  br label %for.cond, !dbg !4936

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !4937
  %3 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4939
  %num_thdevs = getelementptr inbounds %struct.intel_th, %struct.intel_th* %3, i32 0, i32 7, !dbg !4940
  %4 = load i32, i32* %num_thdevs, align 8, !dbg !4940
  %cmp = icmp ult i32 %2, %4, !dbg !4941
  br i1 %cmp, label %for.body, label %for.end, !dbg !4942

for.body:                                         ; preds = %for.cond
  %5 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4943
  %thdev = getelementptr inbounds %struct.intel_th, %struct.intel_th* %5, i32 0, i32 1, !dbg !4946
  %6 = load i32, i32* %i, align 4, !dbg !4947
  %idxprom = sext i32 %6 to i64, !dbg !4943
  %arrayidx = getelementptr [10 x %struct.intel_th_device*], [10 x %struct.intel_th_device*]* %thdev, i64 0, i64 %idxprom, !dbg !4943
  %7 = load %struct.intel_th_device*, %struct.intel_th_device** %arrayidx, align 8, !dbg !4943
  %type = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %7, i32 0, i32 4, !dbg !4948
  %8 = load i32, i32* %type, align 4, !dbg !4948
  %cmp1 = icmp ne i32 %8, 1, !dbg !4949
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4950

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !4951

if.end:                                           ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4952, metadata !DIExpression()), !dbg !4954
  %9 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4954
  %thdev2 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %9, i32 0, i32 1, !dbg !4954
  %10 = load i32, i32* %i, align 4, !dbg !4954
  %idxprom3 = sext i32 %10 to i64, !dbg !4954
  %arrayidx4 = getelementptr [10 x %struct.intel_th_device*], [10 x %struct.intel_th_device*]* %thdev2, i64 0, i64 %idxprom3, !dbg !4954
  %11 = load %struct.intel_th_device*, %struct.intel_th_device** %arrayidx4, align 8, !dbg !4954
  %dev = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %11, i32 0, i32 0, !dbg !4954
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 6, !dbg !4954
  %12 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !4954
  %13 = bitcast %struct.device_driver* %12 to i8*, !dbg !4954
  store i8* %13, i8** %__mptr, align 8, !dbg !4954
  br label %do.body, !dbg !4954

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4955

do.end:                                           ; preds = %do.body
  %14 = load i8*, i8** %__mptr, align 8, !dbg !4954
  %add.ptr = getelementptr i8, i8* %14, i64 0, !dbg !4954
  %15 = bitcast i8* %add.ptr to %struct.intel_th_driver*, !dbg !4954
  store %struct.intel_th_driver* %15, %struct.intel_th_driver** %tmp, align 8, !dbg !4955
  %16 = load %struct.intel_th_driver*, %struct.intel_th_driver** %tmp, align 8, !dbg !4954
  store %struct.intel_th_driver* %16, %struct.intel_th_driver** %d, align 8, !dbg !4957
  %17 = load %struct.intel_th_driver*, %struct.intel_th_driver** %d, align 8, !dbg !4958
  %tobool = icmp ne %struct.intel_th_driver* %17, null, !dbg !4958
  br i1 %tobool, label %land.lhs.true, label %if.end12, !dbg !4960

land.lhs.true:                                    ; preds = %do.end
  %18 = load %struct.intel_th_driver*, %struct.intel_th_driver** %d, align 8, !dbg !4961
  %irq5 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %18, i32 0, i32 8, !dbg !4962
  %19 = load i32 (%struct.intel_th_device*)*, i32 (%struct.intel_th_device*)** %irq5, align 8, !dbg !4962
  %tobool6 = icmp ne i32 (%struct.intel_th_device*)* %19, null, !dbg !4961
  br i1 %tobool6, label %if.then7, label %if.end12, !dbg !4963

if.then7:                                         ; preds = %land.lhs.true
  %20 = load %struct.intel_th_driver*, %struct.intel_th_driver** %d, align 8, !dbg !4964
  %irq8 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %20, i32 0, i32 8, !dbg !4965
  %21 = load i32 (%struct.intel_th_device*)*, i32 (%struct.intel_th_device*)** %irq8, align 8, !dbg !4965
  %22 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !4966
  %thdev9 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %22, i32 0, i32 1, !dbg !4967
  %23 = load i32, i32* %i, align 4, !dbg !4968
  %idxprom10 = sext i32 %23 to i64, !dbg !4966
  %arrayidx11 = getelementptr [10 x %struct.intel_th_device*], [10 x %struct.intel_th_device*]* %thdev9, i64 0, i64 %idxprom10, !dbg !4966
  %24 = load %struct.intel_th_device*, %struct.intel_th_device** %arrayidx11, align 8, !dbg !4966
  %call = call i32 %21(%struct.intel_th_device* %24) #9, !dbg !4964
  %25 = load i32, i32* %ret, align 4, !dbg !4969
  %or = or i32 %25, %call, !dbg !4969
  store i32 %or, i32* %ret, align 4, !dbg !4969
  br label %if.end12, !dbg !4970

if.end12:                                         ; preds = %if.then7, %land.lhs.true, %do.end
  br label %for.inc, !dbg !4971

for.inc:                                          ; preds = %if.end12, %if.then
  %26 = load i32, i32* %i, align 4, !dbg !4972
  %inc = add i32 %26, 1, !dbg !4972
  store i32 %inc, i32* %i, align 4, !dbg !4972
  br label %for.cond, !dbg !4973, !llvm.loop !4974

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %ret, align 4, !dbg !4976
  ret i32 %27, !dbg !4977
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !4978 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4981, metadata !DIExpression()), !dbg !4982
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4983
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !4985
  %1 = load i8*, i8** %init_name, align 8, !dbg !4985
  %tobool = icmp ne i8* %1, null, !dbg !4983
  br i1 %tobool, label %if.then, label %if.end, !dbg !4986

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4987
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !4988
  %3 = load i8*, i8** %init_name1, align 8, !dbg !4988
  store i8* %3, i8** %retval, align 8, !dbg !4989
  br label %return, !dbg !4989

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4990
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !4991
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #9, !dbg !4992
  store i8* %call, i8** %retval, align 8, !dbg !4993
  br label %return, !dbg !4993

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !4994
  ret i8* %5, !dbg !4994
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !4995 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4998, metadata !DIExpression()), !dbg !4999
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5000, metadata !DIExpression()), !dbg !5001
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5002
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5003
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5004
  store i8* %0, i8** %driver_data, align 8, !dbg !5005
  ret void, !dbg !5006
}

; Function Attrs: noredzone
declare dso_local void @pm_runtime_no_callbacks(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_put(%struct.device* %dev) #0 !dbg !5007 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5009, metadata !DIExpression()), !dbg !5010
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5011
  %call = call i32 @__pm_runtime_idle(%struct.device* %0, i32 5) #9, !dbg !5012
  ret i32 %call, !dbg !5013
}

; Function Attrs: noredzone
declare dso_local void @pm_runtime_allow(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_th_populate(%struct.intel_th* %th) #0 !dbg !5014 {
entry:
  %retval = alloca i32, align 4
  %th.addr = alloca %struct.intel_th*, align 8
  %src = alloca i32, align 4
  %subdev = alloca %struct.intel_th_subdevice*, align 8
  %thdev = alloca %struct.intel_th_device*, align 8
  store %struct.intel_th* %th, %struct.intel_th** %th.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th** %th.addr, metadata !5015, metadata !DIExpression()), !dbg !5016
  call void @llvm.dbg.declare(metadata i32* %src, metadata !5017, metadata !DIExpression()), !dbg !5018
  store i32 0, i32* %src, align 4, !dbg !5019
  br label %for.cond, !dbg !5021

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %src, align 4, !dbg !5022
  %conv = sext i32 %0 to i64, !dbg !5022
  %cmp = icmp ult i64 %conv, 8, !dbg !5024
  br i1 %cmp, label %for.body, label %for.end, !dbg !5025

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.intel_th_subdevice** %subdev, metadata !5026, metadata !DIExpression()), !dbg !5028
  %1 = load i32, i32* %src, align 4, !dbg !5029
  %idxprom = sext i32 %1 to i64, !dbg !5030
  %arrayidx = getelementptr [8 x %struct.intel_th_subdevice], [8 x %struct.intel_th_subdevice]* @intel_th_subdevices, i64 0, i64 %idxprom, !dbg !5030
  store %struct.intel_th_subdevice* %arrayidx, %struct.intel_th_subdevice** %subdev, align 8, !dbg !5028
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev, metadata !5031, metadata !DIExpression()), !dbg !5032
  %2 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5033
  %drvdata = getelementptr inbounds %struct.intel_th, %struct.intel_th* %2, i32 0, i32 3, !dbg !5033
  %3 = load %struct.intel_th_drvdata*, %struct.intel_th_drvdata** %drvdata, align 8, !dbg !5033
  %tobool = icmp ne %struct.intel_th_drvdata* %3, null, !dbg !5033
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5035

cond.true:                                        ; preds = %for.body
  %4 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5033
  %drvdata2 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %4, i32 0, i32 3, !dbg !5033
  %5 = load %struct.intel_th_drvdata*, %struct.intel_th_drvdata** %drvdata2, align 8, !dbg !5033
  %6 = bitcast %struct.intel_th_drvdata* %5 to i8*, !dbg !5033
  %bf.load = load i8, i8* %6, align 4, !dbg !5033
  %bf.lshr = lshr i8 %bf.load, 3, !dbg !5033
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5033
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5033
  %tobool3 = icmp ne i32 %bf.cast, 0, !dbg !5033
  br i1 %tobool3, label %land.lhs.true, label %lor.lhs.false, !dbg !5033

cond.false:                                       ; preds = %for.body
  br i1 false, label %land.lhs.true, label %lor.lhs.false, !dbg !5035

lor.lhs.false:                                    ; preds = %cond.false, %cond.true
  %7 = load i8, i8* @host_mode, align 1, !dbg !5036
  %tobool4 = trunc i8 %7 to i1, !dbg !5036
  br i1 %tobool4, label %land.lhs.true, label %if.end, !dbg !5037

land.lhs.true:                                    ; preds = %lor.lhs.false, %cond.false, %cond.true
  %8 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %subdev, align 8, !dbg !5038
  %type = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %8, i32 0, i32 3, !dbg !5039
  %9 = load i32, i32* %type, align 4, !dbg !5039
  %cmp6 = icmp eq i32 %9, 1, !dbg !5040
  br i1 %cmp6, label %if.then, label %if.end, !dbg !5041

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc, !dbg !5042

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %10 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %subdev, align 8, !dbg !5043
  %type8 = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %10, i32 0, i32 3, !dbg !5045
  %11 = load i32, i32* %type8, align 4, !dbg !5045
  %cmp9 = icmp eq i32 %11, 1, !dbg !5046
  br i1 %cmp9, label %land.lhs.true11, label %if.end15, !dbg !5047

land.lhs.true11:                                  ; preds = %if.end
  %12 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %subdev, align 8, !dbg !5048
  %otype = getelementptr inbounds %struct.intel_th_subdevice, %struct.intel_th_subdevice* %12, i32 0, i32 4, !dbg !5049
  %13 = load i32, i32* %otype, align 8, !dbg !5049
  %cmp12 = icmp ne i32 %13, 0, !dbg !5050
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !5051

if.then14:                                        ; preds = %land.lhs.true11
  br label %for.inc, !dbg !5052

if.end15:                                         ; preds = %land.lhs.true11, %if.end
  %14 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5053
  %15 = load %struct.intel_th_subdevice*, %struct.intel_th_subdevice** %subdev, align 8, !dbg !5054
  %call = call %struct.intel_th_device* @intel_th_subdevice_alloc(%struct.intel_th* %14, %struct.intel_th_subdevice* %15) #9, !dbg !5055
  store %struct.intel_th_device* %call, %struct.intel_th_device** %thdev, align 8, !dbg !5056
  %16 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5057
  %17 = bitcast %struct.intel_th_device* %16 to i8*, !dbg !5057
  %call16 = call zeroext i1 @IS_ERR(i8* %17) #9, !dbg !5059
  br i1 %call16, label %if.then17, label %if.end25, !dbg !5060

if.then17:                                        ; preds = %if.end15
  %18 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5061
  %19 = bitcast %struct.intel_th_device* %18 to i8*, !dbg !5061
  %call18 = call i64 @PTR_ERR(i8* %19) #9, !dbg !5064
  %cmp19 = icmp eq i64 %call18, -19, !dbg !5065
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !5066

if.then21:                                        ; preds = %if.then17
  br label %for.inc, !dbg !5067

if.end22:                                         ; preds = %if.then17
  %20 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5068
  %21 = bitcast %struct.intel_th_device* %20 to i8*, !dbg !5068
  %call23 = call i64 @PTR_ERR(i8* %21) #9, !dbg !5069
  %conv24 = trunc i64 %call23 to i32, !dbg !5069
  store i32 %conv24, i32* %retval, align 4, !dbg !5070
  br label %return, !dbg !5070

if.end25:                                         ; preds = %if.end15
  %22 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5071
  %23 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5072
  %thdev26 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %23, i32 0, i32 1, !dbg !5073
  %24 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5074
  %num_thdevs = getelementptr inbounds %struct.intel_th, %struct.intel_th* %24, i32 0, i32 7, !dbg !5075
  %25 = load i32, i32* %num_thdevs, align 8, !dbg !5076
  %inc = add i32 %25, 1, !dbg !5076
  store i32 %inc, i32* %num_thdevs, align 8, !dbg !5076
  %idxprom27 = zext i32 %25 to i64, !dbg !5072
  %arrayidx28 = getelementptr [10 x %struct.intel_th_device*], [10 x %struct.intel_th_device*]* %thdev26, i64 0, i64 %idxprom27, !dbg !5072
  store %struct.intel_th_device* %22, %struct.intel_th_device** %arrayidx28, align 8, !dbg !5077
  br label %for.inc, !dbg !5078

for.inc:                                          ; preds = %if.end25, %if.then21, %if.then14, %if.then
  %26 = load i32, i32* %src, align 4, !dbg !5079
  %inc29 = add i32 %26, 1, !dbg !5079
  store i32 %inc29, i32* %src, align 4, !dbg !5079
  br label %for.cond, !dbg !5080, !llvm.loop !5081

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !5083
  br label %return, !dbg !5083

return:                                           ; preds = %for.end, %if.end22
  %27 = load i32, i32* %retval, align 4, !dbg !5084
  ret i32 %27, !dbg !5084
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @intel_th_free(%struct.intel_th* %th) #0 !dbg !5085 {
entry:
  %th.addr = alloca %struct.intel_th*, align 8
  %i = alloca i32, align 4
  store %struct.intel_th* %th, %struct.intel_th** %th.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th** %th.addr, metadata !5086, metadata !DIExpression()), !dbg !5087
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5088, metadata !DIExpression()), !dbg !5089
  %0 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5090
  call void @intel_th_request_hub_module_flush(%struct.intel_th* %0) #9, !dbg !5091
  %1 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5092
  %hub = getelementptr inbounds %struct.intel_th, %struct.intel_th* %1, i32 0, i32 2, !dbg !5093
  %2 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5093
  call void @intel_th_device_remove(%struct.intel_th_device* %2) #9, !dbg !5094
  store i32 0, i32* %i, align 4, !dbg !5095
  br label %for.cond, !dbg !5097

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !5098
  %4 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5100
  %num_thdevs = getelementptr inbounds %struct.intel_th, %struct.intel_th* %4, i32 0, i32 7, !dbg !5101
  %5 = load i32, i32* %num_thdevs, align 8, !dbg !5101
  %cmp = icmp ult i32 %3, %5, !dbg !5102
  br i1 %cmp, label %for.body, label %for.end, !dbg !5103

for.body:                                         ; preds = %for.cond
  %6 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5104
  %thdev = getelementptr inbounds %struct.intel_th, %struct.intel_th* %6, i32 0, i32 1, !dbg !5107
  %7 = load i32, i32* %i, align 4, !dbg !5108
  %idxprom = sext i32 %7 to i64, !dbg !5104
  %arrayidx = getelementptr [10 x %struct.intel_th_device*], [10 x %struct.intel_th_device*]* %thdev, i64 0, i64 %idxprom, !dbg !5104
  %8 = load %struct.intel_th_device*, %struct.intel_th_device** %arrayidx, align 8, !dbg !5104
  %9 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5109
  %hub1 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %9, i32 0, i32 2, !dbg !5110
  %10 = load %struct.intel_th_device*, %struct.intel_th_device** %hub1, align 8, !dbg !5110
  %cmp2 = icmp ne %struct.intel_th_device* %8, %10, !dbg !5111
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5112

if.then:                                          ; preds = %for.body
  %11 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5113
  %thdev3 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %11, i32 0, i32 1, !dbg !5114
  %12 = load i32, i32* %i, align 4, !dbg !5115
  %idxprom4 = sext i32 %12 to i64, !dbg !5113
  %arrayidx5 = getelementptr [10 x %struct.intel_th_device*], [10 x %struct.intel_th_device*]* %thdev3, i64 0, i64 %idxprom4, !dbg !5113
  %13 = load %struct.intel_th_device*, %struct.intel_th_device** %arrayidx5, align 8, !dbg !5113
  call void @intel_th_device_remove(%struct.intel_th_device* %13) #9, !dbg !5116
  br label %if.end, !dbg !5116

if.end:                                           ; preds = %if.then, %for.body
  %14 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5117
  %thdev6 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %14, i32 0, i32 1, !dbg !5118
  %15 = load i32, i32* %i, align 4, !dbg !5119
  %idxprom7 = sext i32 %15 to i64, !dbg !5117
  %arrayidx8 = getelementptr [10 x %struct.intel_th_device*], [10 x %struct.intel_th_device*]* %thdev6, i64 0, i64 %idxprom7, !dbg !5117
  store %struct.intel_th_device* null, %struct.intel_th_device** %arrayidx8, align 8, !dbg !5120
  br label %for.inc, !dbg !5121

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4, !dbg !5122
  %inc = add i32 %16, 1, !dbg !5122
  store i32 %inc, i32* %i, align 4, !dbg !5122
  br label %for.cond, !dbg !5123, !llvm.loop !5124

for.end:                                          ; preds = %for.cond
  %17 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5126
  %num_thdevs9 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %17, i32 0, i32 7, !dbg !5127
  store i32 0, i32* %num_thdevs9, align 8, !dbg !5128
  store i32 0, i32* %i, align 4, !dbg !5129
  br label %for.cond10, !dbg !5131

for.cond10:                                       ; preds = %for.inc13, %for.end
  %18 = load i32, i32* %i, align 4, !dbg !5132
  %19 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5134
  %num_irqs = getelementptr inbounds %struct.intel_th, %struct.intel_th* %19, i32 0, i32 10, !dbg !5135
  %20 = load i32, i32* %num_irqs, align 4, !dbg !5135
  %cmp11 = icmp slt i32 %18, %20, !dbg !5136
  br i1 %cmp11, label %for.body12, label %for.end15, !dbg !5137

for.body12:                                       ; preds = %for.cond10
  %21 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5138
  %dev = getelementptr inbounds %struct.intel_th, %struct.intel_th* %21, i32 0, i32 0, !dbg !5139
  %22 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5139
  %23 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5140
  %irq = getelementptr inbounds %struct.intel_th, %struct.intel_th* %23, i32 0, i32 9, !dbg !5141
  %24 = load i32, i32* %irq, align 8, !dbg !5141
  %25 = load i32, i32* %i, align 4, !dbg !5142
  %add = add i32 %24, %25, !dbg !5143
  %26 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5144
  %27 = bitcast %struct.intel_th* %26 to i8*, !dbg !5144
  call void @devm_free_irq(%struct.device* %22, i32 %add, i8* %27) #9, !dbg !5145
  br label %for.inc13, !dbg !5145

for.inc13:                                        ; preds = %for.body12
  %28 = load i32, i32* %i, align 4, !dbg !5146
  %inc14 = add i32 %28, 1, !dbg !5146
  store i32 %inc14, i32* %i, align 4, !dbg !5146
  br label %for.cond10, !dbg !5147, !llvm.loop !5148

for.end15:                                        ; preds = %for.cond10
  %29 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5150
  %dev16 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %29, i32 0, i32 0, !dbg !5151
  %30 = load %struct.device*, %struct.device** %dev16, align 8, !dbg !5151
  %call = call i32 @pm_runtime_get_sync(%struct.device* %30) #9, !dbg !5152
  %31 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5153
  %dev17 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %31, i32 0, i32 0, !dbg !5154
  %32 = load %struct.device*, %struct.device** %dev17, align 8, !dbg !5154
  call void @pm_runtime_forbid(%struct.device* %32) #9, !dbg !5155
  %33 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5156
  %major = getelementptr inbounds %struct.intel_th, %struct.intel_th* %33, i32 0, i32 12, !dbg !5157
  %34 = load i32, i32* %major, align 4, !dbg !5157
  call void @__unregister_chrdev(i32 %34, i32 0, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #9, !dbg !5158
  %35 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5159
  %id = getelementptr inbounds %struct.intel_th, %struct.intel_th* %35, i32 0, i32 11, !dbg !5159
  %36 = load i32, i32* %id, align 8, !dbg !5159
  call void @ida_free(%struct.ida* @intel_th_ida, i32 %36) #9, !dbg !5159
  %37 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5160
  %38 = bitcast %struct.intel_th* %37 to i8*, !dbg !5160
  call void @kfree(i8* %38) #9, !dbg !5161
  ret void, !dbg !5162
}

; Function Attrs: noredzone
declare dso_local void @__unregister_chrdev(i32, i32, i32, i8*) #2

; Function Attrs: noredzone
declare dso_local void @ida_free(%struct.ida*, i32) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @intel_th_request_hub_module_flush(%struct.intel_th* %th) #0 !dbg !5163 {
entry:
  %th.addr = alloca %struct.intel_th*, align 8
  store %struct.intel_th* %th, %struct.intel_th** %th.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th** %th.addr, metadata !5164, metadata !DIExpression()), !dbg !5165
  ret void, !dbg !5166
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @intel_th_device_remove(%struct.intel_th_device* %thdev) #0 !dbg !5167 {
entry:
  %thdev.addr = alloca %struct.intel_th_device*, align 8
  store %struct.intel_th_device* %thdev, %struct.intel_th_device** %thdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev.addr, metadata !5168, metadata !DIExpression()), !dbg !5169
  %0 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5170
  %dev = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %0, i32 0, i32 0, !dbg !5171
  call void @device_del(%struct.device* %dev) #9, !dbg !5172
  %1 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5173
  %dev1 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %1, i32 0, i32 0, !dbg !5174
  call void @put_device(%struct.device* %dev1) #9, !dbg !5175
  ret void, !dbg !5176
}

; Function Attrs: noredzone
declare dso_local void @devm_free_irq(%struct.device*, i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_get_sync(%struct.device* %dev) #0 !dbg !5177 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5178, metadata !DIExpression()), !dbg !5179
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5180
  %call = call i32 @__pm_runtime_resume(%struct.device* %0, i32 4) #9, !dbg !5181
  ret i32 %call, !dbg !5182
}

; Function Attrs: noredzone
declare dso_local void @pm_runtime_forbid(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @intel_th_trace_enable(%struct.intel_th_device* %thdev) #0 !dbg !5183 {
entry:
  %retval = alloca i32, align 4
  %thdev.addr = alloca %struct.intel_th_device*, align 8
  %hub = alloca %struct.intel_th_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.intel_th_device*, align 8
  %hubdrv = alloca %struct.intel_th_driver*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp5 = alloca %struct.intel_th_driver*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp21 = alloca i64, align 8
  %__ret_warn_on31 = alloca i32, align 4
  %tmp56 = alloca i64, align 8
  store %struct.intel_th_device* %thdev, %struct.intel_th_device** %thdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev.addr, metadata !5184, metadata !DIExpression()), !dbg !5185
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %hub, metadata !5186, metadata !DIExpression()), !dbg !5187
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5188, metadata !DIExpression()), !dbg !5190
  %0 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5190
  %dev = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %0, i32 0, i32 0, !dbg !5190
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !5190
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5190
  %2 = bitcast %struct.device* %1 to i8*, !dbg !5190
  store i8* %2, i8** %__mptr, align 8, !dbg !5190
  br label %do.body, !dbg !5190

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5191

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5190
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5190
  %4 = bitcast i8* %add.ptr to %struct.intel_th_device*, !dbg !5190
  store %struct.intel_th_device* %4, %struct.intel_th_device** %tmp, align 8, !dbg !5191
  %5 = load %struct.intel_th_device*, %struct.intel_th_device** %tmp, align 8, !dbg !5190
  store %struct.intel_th_device* %5, %struct.intel_th_device** %hub, align 8, !dbg !5187
  call void @llvm.dbg.declare(metadata %struct.intel_th_driver** %hubdrv, metadata !5193, metadata !DIExpression()), !dbg !5194
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !5195, metadata !DIExpression()), !dbg !5197
  %6 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5197
  %dev2 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %6, i32 0, i32 0, !dbg !5197
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev2, i32 0, i32 6, !dbg !5197
  %7 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !5197
  %8 = bitcast %struct.device_driver* %7 to i8*, !dbg !5197
  store i8* %8, i8** %__mptr1, align 8, !dbg !5197
  br label %do.body3, !dbg !5197

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5198

do.end4:                                          ; preds = %do.body3
  %9 = load i8*, i8** %__mptr1, align 8, !dbg !5197
  %add.ptr6 = getelementptr i8, i8* %9, i64 0, !dbg !5197
  %10 = bitcast i8* %add.ptr6 to %struct.intel_th_driver*, !dbg !5197
  store %struct.intel_th_driver* %10, %struct.intel_th_driver** %tmp5, align 8, !dbg !5198
  %11 = load %struct.intel_th_driver*, %struct.intel_th_driver** %tmp5, align 8, !dbg !5197
  store %struct.intel_th_driver* %11, %struct.intel_th_driver** %hubdrv, align 8, !dbg !5194
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5200, metadata !DIExpression()), !dbg !5203
  %12 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5203
  %type = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %12, i32 0, i32 4, !dbg !5203
  %13 = load i32, i32* %type, align 4, !dbg !5203
  %cmp = icmp ne i32 %13, 2, !dbg !5203
  %lnot = xor i1 %cmp, true, !dbg !5203
  %lnot7 = xor i1 %lnot, true, !dbg !5203
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !5203
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5203
  %14 = load i32, i32* %__ret_warn_on, align 4, !dbg !5204
  %tobool = icmp ne i32 %14, 0, !dbg !5204
  %lnot8 = xor i1 %tobool, true, !dbg !5204
  %lnot10 = xor i1 %lnot8, true, !dbg !5204
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !5204
  %conv = sext i32 %lnot.ext11 to i64, !dbg !5204
  %tobool12 = icmp ne i64 %conv, 0, !dbg !5204
  br i1 %tobool12, label %if.then, label %if.end, !dbg !5203

if.then:                                          ; preds = %do.end4
  br label %do.body13, !dbg !5204

do.body13:                                        ; preds = %if.then
  br label %do.body14, !dbg !5206

do.body14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5208

do.end15:                                         ; preds = %do.body14
  br label %do.body16, !dbg !5206

do.body16:                                        ; preds = %do.end15
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 965, i32 2307, i64 12) #11, !dbg !5210, !srcloc !5212
  br label %do.end17, !dbg !5210

do.end17:                                         ; preds = %do.body16
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 263) #11, !dbg !5213, !srcloc !5215
  br label %do.body18, !dbg !5206

do.body18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !5216

do.end19:                                         ; preds = %do.body18
  br label %do.end20, !dbg !5206

do.end20:                                         ; preds = %do.end19
  br label %if.end, !dbg !5206

if.end:                                           ; preds = %do.end20, %do.end4
  %15 = load i32, i32* %__ret_warn_on, align 4, !dbg !5203
  %tobool22 = icmp ne i32 %15, 0, !dbg !5203
  %lnot23 = xor i1 %tobool22, true, !dbg !5203
  %lnot25 = xor i1 %lnot23, true, !dbg !5203
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !5203
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !5203
  store i64 %conv27, i64* %tmp21, align 8, !dbg !5204
  %16 = load i64, i64* %tmp21, align 8, !dbg !5203
  %tobool28 = icmp ne i64 %16, 0, !dbg !5218
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !5219

if.then29:                                        ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5220
  br label %return, !dbg !5220

if.end30:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on31, metadata !5221, metadata !DIExpression()), !dbg !5224
  %17 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5224
  %type32 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %17, i32 0, i32 4, !dbg !5224
  %18 = load i32, i32* %type32, align 4, !dbg !5224
  %cmp33 = icmp ne i32 %18, 1, !dbg !5224
  %lnot35 = xor i1 %cmp33, true, !dbg !5224
  %lnot37 = xor i1 %lnot35, true, !dbg !5224
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !5224
  store i32 %lnot.ext38, i32* %__ret_warn_on31, align 4, !dbg !5224
  %19 = load i32, i32* %__ret_warn_on31, align 4, !dbg !5225
  %tobool39 = icmp ne i32 %19, 0, !dbg !5225
  %lnot40 = xor i1 %tobool39, true, !dbg !5225
  %lnot42 = xor i1 %lnot40, true, !dbg !5225
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !5225
  %conv44 = sext i32 %lnot.ext43 to i64, !dbg !5225
  %tobool45 = icmp ne i64 %conv44, 0, !dbg !5225
  br i1 %tobool45, label %if.then46, label %if.end55, !dbg !5224

if.then46:                                        ; preds = %if.end30
  br label %do.body47, !dbg !5225

do.body47:                                        ; preds = %if.then46
  br label %do.body48, !dbg !5227

do.body48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !5229

do.end49:                                         ; preds = %do.body48
  br label %do.body50, !dbg !5227

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 968, i32 2307, i64 12) #11, !dbg !5231, !srcloc !5233
  br label %do.end51, !dbg !5231

do.end51:                                         ; preds = %do.body50
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 264) #11, !dbg !5234, !srcloc !5236
  br label %do.body52, !dbg !5227

do.body52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !5237

do.end53:                                         ; preds = %do.body52
  br label %do.end54, !dbg !5227

do.end54:                                         ; preds = %do.end53
  br label %if.end55, !dbg !5227

if.end55:                                         ; preds = %do.end54, %if.end30
  %20 = load i32, i32* %__ret_warn_on31, align 4, !dbg !5224
  %tobool57 = icmp ne i32 %20, 0, !dbg !5224
  %lnot58 = xor i1 %tobool57, true, !dbg !5224
  %lnot60 = xor i1 %lnot58, true, !dbg !5224
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !5224
  %conv62 = sext i32 %lnot.ext61 to i64, !dbg !5224
  store i64 %conv62, i64* %tmp56, align 8, !dbg !5225
  %21 = load i64, i64* %tmp56, align 8, !dbg !5224
  %tobool63 = icmp ne i64 %21, 0, !dbg !5239
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !5240

if.then64:                                        ; preds = %if.end55
  store i32 -22, i32* %retval, align 4, !dbg !5241
  br label %return, !dbg !5241

if.end65:                                         ; preds = %if.end55
  %22 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5242
  %dev66 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %22, i32 0, i32 0, !dbg !5243
  %call = call i32 @pm_runtime_get_sync(%struct.device* %dev66) #9, !dbg !5244
  %23 = load %struct.intel_th_driver*, %struct.intel_th_driver** %hubdrv, align 8, !dbg !5245
  %enable = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %23, i32 0, i32 5, !dbg !5246
  %24 = load void (%struct.intel_th_device*, %struct.intel_th_output*)*, void (%struct.intel_th_device*, %struct.intel_th_output*)** %enable, align 8, !dbg !5246
  %25 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5247
  %26 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5248
  %output = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %26, i32 0, i32 7, !dbg !5249
  call void %24(%struct.intel_th_device* %25, %struct.intel_th_output* %output) #9, !dbg !5245
  store i32 0, i32* %retval, align 4, !dbg !5250
  br label %return, !dbg !5250

return:                                           ; preds = %if.end65, %if.then64, %if.then29
  %27 = load i32, i32* %retval, align 4, !dbg !5251
  ret i32 %27, !dbg !5251
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @intel_th_trace_switch(%struct.intel_th_device* %thdev) #0 !dbg !5252 {
entry:
  %retval = alloca i32, align 4
  %thdev.addr = alloca %struct.intel_th_device*, align 8
  %hub = alloca %struct.intel_th_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.intel_th_device*, align 8
  %hubdrv = alloca %struct.intel_th_driver*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp5 = alloca %struct.intel_th_driver*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp21 = alloca i64, align 8
  %__ret_warn_on31 = alloca i32, align 4
  %tmp56 = alloca i64, align 8
  store %struct.intel_th_device* %thdev, %struct.intel_th_device** %thdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev.addr, metadata !5253, metadata !DIExpression()), !dbg !5254
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %hub, metadata !5255, metadata !DIExpression()), !dbg !5256
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5257, metadata !DIExpression()), !dbg !5259
  %0 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5259
  %dev = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %0, i32 0, i32 0, !dbg !5259
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !5259
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5259
  %2 = bitcast %struct.device* %1 to i8*, !dbg !5259
  store i8* %2, i8** %__mptr, align 8, !dbg !5259
  br label %do.body, !dbg !5259

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5260

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5259
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5259
  %4 = bitcast i8* %add.ptr to %struct.intel_th_device*, !dbg !5259
  store %struct.intel_th_device* %4, %struct.intel_th_device** %tmp, align 8, !dbg !5260
  %5 = load %struct.intel_th_device*, %struct.intel_th_device** %tmp, align 8, !dbg !5259
  store %struct.intel_th_device* %5, %struct.intel_th_device** %hub, align 8, !dbg !5256
  call void @llvm.dbg.declare(metadata %struct.intel_th_driver** %hubdrv, metadata !5262, metadata !DIExpression()), !dbg !5263
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !5264, metadata !DIExpression()), !dbg !5266
  %6 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5266
  %dev2 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %6, i32 0, i32 0, !dbg !5266
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev2, i32 0, i32 6, !dbg !5266
  %7 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !5266
  %8 = bitcast %struct.device_driver* %7 to i8*, !dbg !5266
  store i8* %8, i8** %__mptr1, align 8, !dbg !5266
  br label %do.body3, !dbg !5266

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5267

do.end4:                                          ; preds = %do.body3
  %9 = load i8*, i8** %__mptr1, align 8, !dbg !5266
  %add.ptr6 = getelementptr i8, i8* %9, i64 0, !dbg !5266
  %10 = bitcast i8* %add.ptr6 to %struct.intel_th_driver*, !dbg !5266
  store %struct.intel_th_driver* %10, %struct.intel_th_driver** %tmp5, align 8, !dbg !5267
  %11 = load %struct.intel_th_driver*, %struct.intel_th_driver** %tmp5, align 8, !dbg !5266
  store %struct.intel_th_driver* %11, %struct.intel_th_driver** %hubdrv, align 8, !dbg !5263
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5269, metadata !DIExpression()), !dbg !5272
  %12 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5272
  %type = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %12, i32 0, i32 4, !dbg !5272
  %13 = load i32, i32* %type, align 4, !dbg !5272
  %cmp = icmp ne i32 %13, 2, !dbg !5272
  %lnot = xor i1 %cmp, true, !dbg !5272
  %lnot7 = xor i1 %lnot, true, !dbg !5272
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !5272
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5272
  %14 = load i32, i32* %__ret_warn_on, align 4, !dbg !5273
  %tobool = icmp ne i32 %14, 0, !dbg !5273
  %lnot8 = xor i1 %tobool, true, !dbg !5273
  %lnot10 = xor i1 %lnot8, true, !dbg !5273
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !5273
  %conv = sext i32 %lnot.ext11 to i64, !dbg !5273
  %tobool12 = icmp ne i64 %conv, 0, !dbg !5273
  br i1 %tobool12, label %if.then, label %if.end, !dbg !5272

if.then:                                          ; preds = %do.end4
  br label %do.body13, !dbg !5273

do.body13:                                        ; preds = %if.then
  br label %do.body14, !dbg !5275

do.body14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5277

do.end15:                                         ; preds = %do.body14
  br label %do.body16, !dbg !5275

do.body16:                                        ; preds = %do.end15
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 987, i32 2307, i64 12) #11, !dbg !5279, !srcloc !5281
  br label %do.end17, !dbg !5279

do.end17:                                         ; preds = %do.body16
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 267) #11, !dbg !5282, !srcloc !5284
  br label %do.body18, !dbg !5275

do.body18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !5285

do.end19:                                         ; preds = %do.body18
  br label %do.end20, !dbg !5275

do.end20:                                         ; preds = %do.end19
  br label %if.end, !dbg !5275

if.end:                                           ; preds = %do.end20, %do.end4
  %15 = load i32, i32* %__ret_warn_on, align 4, !dbg !5272
  %tobool22 = icmp ne i32 %15, 0, !dbg !5272
  %lnot23 = xor i1 %tobool22, true, !dbg !5272
  %lnot25 = xor i1 %lnot23, true, !dbg !5272
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !5272
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !5272
  store i64 %conv27, i64* %tmp21, align 8, !dbg !5273
  %16 = load i64, i64* %tmp21, align 8, !dbg !5272
  %tobool28 = icmp ne i64 %16, 0, !dbg !5287
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !5288

if.then29:                                        ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5289
  br label %return, !dbg !5289

if.end30:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on31, metadata !5290, metadata !DIExpression()), !dbg !5293
  %17 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5293
  %type32 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %17, i32 0, i32 4, !dbg !5293
  %18 = load i32, i32* %type32, align 4, !dbg !5293
  %cmp33 = icmp ne i32 %18, 1, !dbg !5293
  %lnot35 = xor i1 %cmp33, true, !dbg !5293
  %lnot37 = xor i1 %lnot35, true, !dbg !5293
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !5293
  store i32 %lnot.ext38, i32* %__ret_warn_on31, align 4, !dbg !5293
  %19 = load i32, i32* %__ret_warn_on31, align 4, !dbg !5294
  %tobool39 = icmp ne i32 %19, 0, !dbg !5294
  %lnot40 = xor i1 %tobool39, true, !dbg !5294
  %lnot42 = xor i1 %lnot40, true, !dbg !5294
  %lnot.ext43 = zext i1 %lnot42 to i32, !dbg !5294
  %conv44 = sext i32 %lnot.ext43 to i64, !dbg !5294
  %tobool45 = icmp ne i64 %conv44, 0, !dbg !5294
  br i1 %tobool45, label %if.then46, label %if.end55, !dbg !5293

if.then46:                                        ; preds = %if.end30
  br label %do.body47, !dbg !5294

do.body47:                                        ; preds = %if.then46
  br label %do.body48, !dbg !5296

do.body48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !5298

do.end49:                                         ; preds = %do.body48
  br label %do.body50, !dbg !5296

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 990, i32 2307, i64 12) #11, !dbg !5300, !srcloc !5302
  br label %do.end51, !dbg !5300

do.end51:                                         ; preds = %do.body50
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 268) #11, !dbg !5303, !srcloc !5305
  br label %do.body52, !dbg !5296

do.body52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !5306

do.end53:                                         ; preds = %do.body52
  br label %do.end54, !dbg !5296

do.end54:                                         ; preds = %do.end53
  br label %if.end55, !dbg !5296

if.end55:                                         ; preds = %do.end54, %if.end30
  %20 = load i32, i32* %__ret_warn_on31, align 4, !dbg !5293
  %tobool57 = icmp ne i32 %20, 0, !dbg !5293
  %lnot58 = xor i1 %tobool57, true, !dbg !5293
  %lnot60 = xor i1 %lnot58, true, !dbg !5293
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !5293
  %conv62 = sext i32 %lnot.ext61 to i64, !dbg !5293
  store i64 %conv62, i64* %tmp56, align 8, !dbg !5294
  %21 = load i64, i64* %tmp56, align 8, !dbg !5293
  %tobool63 = icmp ne i64 %21, 0, !dbg !5308
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !5309

if.then64:                                        ; preds = %if.end55
  store i32 -22, i32* %retval, align 4, !dbg !5310
  br label %return, !dbg !5310

if.end65:                                         ; preds = %if.end55
  %22 = load %struct.intel_th_driver*, %struct.intel_th_driver** %hubdrv, align 8, !dbg !5311
  %trig_switch = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %22, i32 0, i32 6, !dbg !5312
  %23 = load void (%struct.intel_th_device*, %struct.intel_th_output*)*, void (%struct.intel_th_device*, %struct.intel_th_output*)** %trig_switch, align 8, !dbg !5312
  %24 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5313
  %25 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5314
  %output = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %25, i32 0, i32 7, !dbg !5315
  call void %23(%struct.intel_th_device* %24, %struct.intel_th_output* %output) #9, !dbg !5311
  store i32 0, i32* %retval, align 4, !dbg !5316
  br label %return, !dbg !5316

return:                                           ; preds = %if.end65, %if.then64, %if.then29
  %26 = load i32, i32* %retval, align 4, !dbg !5317
  ret i32 %26, !dbg !5317
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @intel_th_trace_disable(%struct.intel_th_device* %thdev) #0 !dbg !5318 {
entry:
  %retval = alloca i32, align 4
  %thdev.addr = alloca %struct.intel_th_device*, align 8
  %hub = alloca %struct.intel_th_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.intel_th_device*, align 8
  %hubdrv = alloca %struct.intel_th_driver*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp5 = alloca %struct.intel_th_driver*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp21 = alloca i64, align 8
  %__ret_warn_on28 = alloca i32, align 4
  %tmp53 = alloca i64, align 8
  store %struct.intel_th_device* %thdev, %struct.intel_th_device** %thdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev.addr, metadata !5319, metadata !DIExpression()), !dbg !5320
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %hub, metadata !5321, metadata !DIExpression()), !dbg !5322
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5323, metadata !DIExpression()), !dbg !5325
  %0 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5325
  %dev = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %0, i32 0, i32 0, !dbg !5325
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !5325
  %1 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5325
  %2 = bitcast %struct.device* %1 to i8*, !dbg !5325
  store i8* %2, i8** %__mptr, align 8, !dbg !5325
  br label %do.body, !dbg !5325

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5326

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5325
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5325
  %4 = bitcast i8* %add.ptr to %struct.intel_th_device*, !dbg !5325
  store %struct.intel_th_device* %4, %struct.intel_th_device** %tmp, align 8, !dbg !5326
  %5 = load %struct.intel_th_device*, %struct.intel_th_device** %tmp, align 8, !dbg !5325
  store %struct.intel_th_device* %5, %struct.intel_th_device** %hub, align 8, !dbg !5322
  call void @llvm.dbg.declare(metadata %struct.intel_th_driver** %hubdrv, metadata !5328, metadata !DIExpression()), !dbg !5329
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !5330, metadata !DIExpression()), !dbg !5332
  %6 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5332
  %dev2 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %6, i32 0, i32 0, !dbg !5332
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev2, i32 0, i32 6, !dbg !5332
  %7 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !5332
  %8 = bitcast %struct.device_driver* %7 to i8*, !dbg !5332
  store i8* %8, i8** %__mptr1, align 8, !dbg !5332
  br label %do.body3, !dbg !5332

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5333

do.end4:                                          ; preds = %do.body3
  %9 = load i8*, i8** %__mptr1, align 8, !dbg !5332
  %add.ptr6 = getelementptr i8, i8* %9, i64 0, !dbg !5332
  %10 = bitcast i8* %add.ptr6 to %struct.intel_th_driver*, !dbg !5332
  store %struct.intel_th_driver* %10, %struct.intel_th_driver** %tmp5, align 8, !dbg !5333
  %11 = load %struct.intel_th_driver*, %struct.intel_th_driver** %tmp5, align 8, !dbg !5332
  store %struct.intel_th_driver* %11, %struct.intel_th_driver** %hubdrv, align 8, !dbg !5329
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5335, metadata !DIExpression()), !dbg !5337
  %12 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5337
  %type = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %12, i32 0, i32 4, !dbg !5337
  %13 = load i32, i32* %type, align 4, !dbg !5337
  %cmp = icmp ne i32 %13, 2, !dbg !5337
  %lnot = xor i1 %cmp, true, !dbg !5337
  %lnot7 = xor i1 %lnot, true, !dbg !5337
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !5337
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5337
  %14 = load i32, i32* %__ret_warn_on, align 4, !dbg !5338
  %tobool = icmp ne i32 %14, 0, !dbg !5338
  %lnot8 = xor i1 %tobool, true, !dbg !5338
  %lnot10 = xor i1 %lnot8, true, !dbg !5338
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !5338
  %conv = sext i32 %lnot.ext11 to i64, !dbg !5338
  %tobool12 = icmp ne i64 %conv, 0, !dbg !5338
  br i1 %tobool12, label %if.then, label %if.end, !dbg !5337

if.then:                                          ; preds = %do.end4
  br label %do.body13, !dbg !5338

do.body13:                                        ; preds = %if.then
  br label %do.body14, !dbg !5340

do.body14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5342

do.end15:                                         ; preds = %do.body14
  br label %do.body16, !dbg !5340

do.body16:                                        ; preds = %do.end15
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 1008, i32 2307, i64 12) #11, !dbg !5344, !srcloc !5346
  br label %do.end17, !dbg !5344

do.end17:                                         ; preds = %do.body16
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 271) #11, !dbg !5347, !srcloc !5349
  br label %do.body18, !dbg !5340

do.body18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !5350

do.end19:                                         ; preds = %do.body18
  br label %do.end20, !dbg !5340

do.end20:                                         ; preds = %do.end19
  br label %if.end, !dbg !5340

if.end:                                           ; preds = %do.end20, %do.end4
  %15 = load i32, i32* %__ret_warn_on, align 4, !dbg !5337
  %tobool22 = icmp ne i32 %15, 0, !dbg !5337
  %lnot23 = xor i1 %tobool22, true, !dbg !5337
  %lnot25 = xor i1 %lnot23, true, !dbg !5337
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !5337
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !5337
  store i64 %conv27, i64* %tmp21, align 8, !dbg !5338
  %16 = load i64, i64* %tmp21, align 8, !dbg !5337
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on28, metadata !5352, metadata !DIExpression()), !dbg !5355
  %17 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5355
  %type29 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %17, i32 0, i32 4, !dbg !5355
  %18 = load i32, i32* %type29, align 4, !dbg !5355
  %cmp30 = icmp ne i32 %18, 1, !dbg !5355
  %lnot32 = xor i1 %cmp30, true, !dbg !5355
  %lnot34 = xor i1 %lnot32, true, !dbg !5355
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !5355
  store i32 %lnot.ext35, i32* %__ret_warn_on28, align 4, !dbg !5355
  %19 = load i32, i32* %__ret_warn_on28, align 4, !dbg !5356
  %tobool36 = icmp ne i32 %19, 0, !dbg !5356
  %lnot37 = xor i1 %tobool36, true, !dbg !5356
  %lnot39 = xor i1 %lnot37, true, !dbg !5356
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !5356
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !5356
  %tobool42 = icmp ne i64 %conv41, 0, !dbg !5356
  br i1 %tobool42, label %if.then43, label %if.end52, !dbg !5355

if.then43:                                        ; preds = %if.end
  br label %do.body44, !dbg !5356

do.body44:                                        ; preds = %if.then43
  br label %do.body45, !dbg !5358

do.body45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !5360

do.end46:                                         ; preds = %do.body45
  br label %do.body47, !dbg !5358

do.body47:                                        ; preds = %do.end46
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 1009, i32 2307, i64 12) #11, !dbg !5362, !srcloc !5364
  br label %do.end48, !dbg !5362

do.end48:                                         ; preds = %do.body47
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 272) #11, !dbg !5365, !srcloc !5367
  br label %do.body49, !dbg !5358

do.body49:                                        ; preds = %do.end48
  br label %do.end50, !dbg !5368

do.end50:                                         ; preds = %do.body49
  br label %do.end51, !dbg !5358

do.end51:                                         ; preds = %do.end50
  br label %if.end52, !dbg !5358

if.end52:                                         ; preds = %do.end51, %if.end
  %20 = load i32, i32* %__ret_warn_on28, align 4, !dbg !5355
  %tobool54 = icmp ne i32 %20, 0, !dbg !5355
  %lnot55 = xor i1 %tobool54, true, !dbg !5355
  %lnot57 = xor i1 %lnot55, true, !dbg !5355
  %lnot.ext58 = zext i1 %lnot57 to i32, !dbg !5355
  %conv59 = sext i32 %lnot.ext58 to i64, !dbg !5355
  store i64 %conv59, i64* %tmp53, align 8, !dbg !5356
  %21 = load i64, i64* %tmp53, align 8, !dbg !5355
  %tobool60 = icmp ne i64 %21, 0, !dbg !5370
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !5371

if.then61:                                        ; preds = %if.end52
  store i32 -22, i32* %retval, align 4, !dbg !5372
  br label %return, !dbg !5372

if.end62:                                         ; preds = %if.end52
  %22 = load %struct.intel_th_driver*, %struct.intel_th_driver** %hubdrv, align 8, !dbg !5373
  %disable = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %22, i32 0, i32 7, !dbg !5374
  %23 = load void (%struct.intel_th_device*, %struct.intel_th_output*)*, void (%struct.intel_th_device*, %struct.intel_th_output*)** %disable, align 8, !dbg !5374
  %24 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5375
  %25 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5376
  %output = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %25, i32 0, i32 7, !dbg !5377
  call void %23(%struct.intel_th_device* %24, %struct.intel_th_output* %output) #9, !dbg !5373
  %26 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5378
  %dev63 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %26, i32 0, i32 0, !dbg !5379
  %call = call i32 @pm_runtime_put(%struct.device* %dev63) #9, !dbg !5380
  store i32 0, i32* %retval, align 4, !dbg !5381
  br label %return, !dbg !5381

return:                                           ; preds = %if.end62, %if.then61
  %27 = load i32, i32* %retval, align 4, !dbg !5382
  ret i32 %27, !dbg !5382
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @intel_th_set_output(%struct.intel_th_device* %thdev, i32 %master) #0 !dbg !5383 {
entry:
  %retval = alloca i32, align 4
  %thdev.addr = alloca %struct.intel_th_device*, align 8
  %master.addr = alloca i32, align 4
  %hub = alloca %struct.intel_th_device*, align 8
  %hubdrv = alloca %struct.intel_th_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.intel_th_driver*, align 8
  %ret = alloca i32, align 4
  %__mptr1 = alloca i8*, align 8
  %tmp6 = alloca %struct.intel_th_driver*, align 8
  store %struct.intel_th_device* %thdev, %struct.intel_th_device** %thdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev.addr, metadata !5384, metadata !DIExpression()), !dbg !5385
  store i32 %master, i32* %master.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %master.addr, metadata !5386, metadata !DIExpression()), !dbg !5387
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %hub, metadata !5388, metadata !DIExpression()), !dbg !5389
  %0 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5390
  %call = call %struct.intel_th_device* @to_intel_th_hub(%struct.intel_th_device* %0) #9, !dbg !5391
  store %struct.intel_th_device* %call, %struct.intel_th_device** %hub, align 8, !dbg !5389
  call void @llvm.dbg.declare(metadata %struct.intel_th_driver** %hubdrv, metadata !5392, metadata !DIExpression()), !dbg !5393
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5394, metadata !DIExpression()), !dbg !5396
  %1 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5396
  %dev = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %1, i32 0, i32 0, !dbg !5396
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 6, !dbg !5396
  %2 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !5396
  %3 = bitcast %struct.device_driver* %2 to i8*, !dbg !5396
  store i8* %3, i8** %__mptr, align 8, !dbg !5396
  br label %do.body, !dbg !5396

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5397

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5396
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !5396
  %5 = bitcast i8* %add.ptr to %struct.intel_th_driver*, !dbg !5396
  store %struct.intel_th_driver* %5, %struct.intel_th_driver** %tmp, align 8, !dbg !5397
  %6 = load %struct.intel_th_driver*, %struct.intel_th_driver** %tmp, align 8, !dbg !5396
  store %struct.intel_th_driver* %6, %struct.intel_th_driver** %hubdrv, align 8, !dbg !5393
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5399, metadata !DIExpression()), !dbg !5400
  %7 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5401
  %host_mode = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %7, i32 0, i32 6, !dbg !5403
  %8 = load i8, i8* %host_mode, align 4, !dbg !5403
  %tobool = trunc i8 %8 to i1, !dbg !5403
  br i1 %tobool, label %if.then, label %if.end, !dbg !5404

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !5405
  br label %return, !dbg !5405

if.end:                                           ; preds = %do.end
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !5406, metadata !DIExpression()), !dbg !5408
  %9 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5408
  %dev2 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %9, i32 0, i32 0, !dbg !5408
  %driver3 = getelementptr inbounds %struct.device, %struct.device* %dev2, i32 0, i32 6, !dbg !5408
  %10 = load %struct.device_driver*, %struct.device_driver** %driver3, align 8, !dbg !5408
  %11 = bitcast %struct.device_driver* %10 to i8*, !dbg !5408
  store i8* %11, i8** %__mptr1, align 8, !dbg !5408
  br label %do.body4, !dbg !5408

do.body4:                                         ; preds = %if.end
  br label %do.end5, !dbg !5409

do.end5:                                          ; preds = %do.body4
  %12 = load i8*, i8** %__mptr1, align 8, !dbg !5408
  %add.ptr7 = getelementptr i8, i8* %12, i64 0, !dbg !5408
  %13 = bitcast i8* %add.ptr7 to %struct.intel_th_driver*, !dbg !5408
  store %struct.intel_th_driver* %13, %struct.intel_th_driver** %tmp6, align 8, !dbg !5409
  %14 = load %struct.intel_th_driver*, %struct.intel_th_driver** %tmp6, align 8, !dbg !5408
  store %struct.intel_th_driver* %14, %struct.intel_th_driver** %hubdrv, align 8, !dbg !5411
  %15 = load %struct.intel_th_driver*, %struct.intel_th_driver** %hubdrv, align 8, !dbg !5412
  %tobool8 = icmp ne %struct.intel_th_driver* %15, null, !dbg !5412
  br i1 %tobool8, label %lor.lhs.false, label %if.then11, !dbg !5414

lor.lhs.false:                                    ; preds = %do.end5
  %16 = load %struct.intel_th_driver*, %struct.intel_th_driver** %hubdrv, align 8, !dbg !5415
  %driver9 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %16, i32 0, i32 0, !dbg !5416
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver9, i32 0, i32 2, !dbg !5417
  %17 = load %struct.module*, %struct.module** %owner, align 8, !dbg !5417
  %call10 = call zeroext i1 @try_module_get(%struct.module* %17) #9, !dbg !5418
  br i1 %call10, label %if.end12, label %if.then11, !dbg !5419

if.then11:                                        ; preds = %lor.lhs.false, %do.end5
  store i32 -22, i32* %retval, align 4, !dbg !5420
  br label %return, !dbg !5420

if.end12:                                         ; preds = %lor.lhs.false
  %18 = load %struct.intel_th_driver*, %struct.intel_th_driver** %hubdrv, align 8, !dbg !5421
  %set_output = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %18, i32 0, i32 14, !dbg !5423
  %19 = load i32 (%struct.intel_th_device*, i32)*, i32 (%struct.intel_th_device*, i32)** %set_output, align 8, !dbg !5423
  %tobool13 = icmp ne i32 (%struct.intel_th_device*, i32)* %19, null, !dbg !5421
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !5424

if.then14:                                        ; preds = %if.end12
  store i32 -524, i32* %ret, align 4, !dbg !5425
  br label %out, !dbg !5427

if.end15:                                         ; preds = %if.end12
  %20 = load %struct.intel_th_driver*, %struct.intel_th_driver** %hubdrv, align 8, !dbg !5428
  %set_output16 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %20, i32 0, i32 14, !dbg !5429
  %21 = load i32 (%struct.intel_th_device*, i32)*, i32 (%struct.intel_th_device*, i32)** %set_output16, align 8, !dbg !5429
  %22 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5430
  %23 = load i32, i32* %master.addr, align 4, !dbg !5431
  %call17 = call i32 %21(%struct.intel_th_device* %22, i32 %23) #9, !dbg !5428
  store i32 %call17, i32* %ret, align 4, !dbg !5432
  br label %out, !dbg !5433

out:                                              ; preds = %if.end15, %if.then14
  call void @llvm.dbg.label(metadata !5434), !dbg !5435
  %24 = load %struct.intel_th_driver*, %struct.intel_th_driver** %hubdrv, align 8, !dbg !5436
  %driver18 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %24, i32 0, i32 0, !dbg !5437
  %owner19 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver18, i32 0, i32 2, !dbg !5438
  %25 = load %struct.module*, %struct.module** %owner19, align 8, !dbg !5438
  call void @module_put(%struct.module* %25) #9, !dbg !5439
  %26 = load i32, i32* %ret, align 4, !dbg !5440
  store i32 %26, i32* %retval, align 4, !dbg !5441
  br label %return, !dbg !5441

return:                                           ; preds = %out, %if.then11, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !5442
  ret i32 %27, !dbg !5442
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.intel_th_device* @to_intel_th_hub(%struct.intel_th_device* %thdev) #0 !dbg !5443 {
entry:
  %retval = alloca %struct.intel_th_device*, align 8
  %thdev.addr = alloca %struct.intel_th_device*, align 8
  store %struct.intel_th_device* %thdev, %struct.intel_th_device** %thdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev.addr, metadata !5446, metadata !DIExpression()), !dbg !5447
  %0 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5448
  %type = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %0, i32 0, i32 4, !dbg !5450
  %1 = load i32, i32* %type, align 4, !dbg !5450
  %cmp = icmp eq i32 %1, 2, !dbg !5451
  br i1 %cmp, label %if.then, label %if.else, !dbg !5452

if.then:                                          ; preds = %entry
  %2 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5453
  store %struct.intel_th_device* %2, %struct.intel_th_device** %retval, align 8, !dbg !5454
  br label %return, !dbg !5454

if.else:                                          ; preds = %entry
  %3 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5455
  %type1 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %3, i32 0, i32 4, !dbg !5457
  %4 = load i32, i32* %type1, align 4, !dbg !5457
  %cmp2 = icmp eq i32 %4, 1, !dbg !5458
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !5459

if.then3:                                         ; preds = %if.else
  %5 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5460
  %call = call %struct.intel_th_device* @to_intel_th_parent(%struct.intel_th_device* %5) #9, !dbg !5461
  store %struct.intel_th_device* %call, %struct.intel_th_device** %retval, align 8, !dbg !5462
  br label %return, !dbg !5462

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end
  %6 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5463
  %call5 = call %struct.intel_th* @to_intel_th(%struct.intel_th_device* %6) #9, !dbg !5464
  %hub = getelementptr inbounds %struct.intel_th, %struct.intel_th* %call5, i32 0, i32 2, !dbg !5465
  %7 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5465
  store %struct.intel_th_device* %7, %struct.intel_th_device** %retval, align 8, !dbg !5466
  br label %return, !dbg !5466

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %8 = load %struct.intel_th_device*, %struct.intel_th_device** %retval, align 8, !dbg !5467
  ret %struct.intel_th_device* %8, !dbg !5467
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !5468 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !5472, metadata !DIExpression()), !dbg !5473
  ret i1 true, !dbg !5474
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_put(%struct.module* %module) #0 !dbg !5475 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !5478, metadata !DIExpression()), !dbg !5479
  ret void, !dbg !5480
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_th_init() #5 section ".init.text" !dbg !5481 {
entry:
  call void @intel_th_debug_init() #9, !dbg !5484
  %call = call i32 @bus_register(%struct.bus_type* @intel_th_bus) #9, !dbg !5485
  ret i32 %call, !dbg !5486
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @intel_th_exit() #5 section ".exit.text" !dbg !5487 {
entry:
  call void @intel_th_debug_done() #9, !dbg !5488
  call void @bus_unregister(%struct.bus_type* @intel_th_bus) #9, !dbg !5489
  ret void, !dbg !5490
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @intel_th_debug_done() #0 !dbg !5491 {
entry:
  ret void, !dbg !5493
}

; Function Attrs: noredzone
declare dso_local void @bus_unregister(%struct.bus_type*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_th_match(%struct.device* %dev, %struct.device_driver* %driver) #0 !dbg !5494 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %driver.addr = alloca %struct.device_driver*, align 8
  %thdrv = alloca %struct.intel_th_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.intel_th_driver*, align 8
  %thdev = alloca %struct.intel_th_device*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.intel_th_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5495, metadata !DIExpression()), !dbg !5496
  store %struct.device_driver* %driver, %struct.device_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %driver.addr, metadata !5497, metadata !DIExpression()), !dbg !5498
  call void @llvm.dbg.declare(metadata %struct.intel_th_driver** %thdrv, metadata !5499, metadata !DIExpression()), !dbg !5500
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5501, metadata !DIExpression()), !dbg !5503
  %0 = load %struct.device_driver*, %struct.device_driver** %driver.addr, align 8, !dbg !5503
  %1 = bitcast %struct.device_driver* %0 to i8*, !dbg !5503
  store i8* %1, i8** %__mptr, align 8, !dbg !5503
  br label %do.body, !dbg !5503

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5504

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5503
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5503
  %3 = bitcast i8* %add.ptr to %struct.intel_th_driver*, !dbg !5503
  store %struct.intel_th_driver* %3, %struct.intel_th_driver** %tmp, align 8, !dbg !5504
  %4 = load %struct.intel_th_driver*, %struct.intel_th_driver** %tmp, align 8, !dbg !5503
  store %struct.intel_th_driver* %4, %struct.intel_th_driver** %thdrv, align 8, !dbg !5500
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev, metadata !5506, metadata !DIExpression()), !dbg !5507
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !5508, metadata !DIExpression()), !dbg !5510
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5510
  %6 = bitcast %struct.device* %5 to i8*, !dbg !5510
  store i8* %6, i8** %__mptr1, align 8, !dbg !5510
  br label %do.body2, !dbg !5510

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !5511

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !5510
  %add.ptr5 = getelementptr i8, i8* %7, i64 0, !dbg !5510
  %8 = bitcast i8* %add.ptr5 to %struct.intel_th_device*, !dbg !5510
  store %struct.intel_th_device* %8, %struct.intel_th_device** %tmp4, align 8, !dbg !5511
  %9 = load %struct.intel_th_device*, %struct.intel_th_device** %tmp4, align 8, !dbg !5510
  store %struct.intel_th_device* %9, %struct.intel_th_device** %thdev, align 8, !dbg !5507
  %10 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5513
  %type = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %10, i32 0, i32 4, !dbg !5515
  %11 = load i32, i32* %type, align 4, !dbg !5515
  %cmp = icmp eq i32 %11, 2, !dbg !5516
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5517

land.lhs.true:                                    ; preds = %do.end3
  %12 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv, align 8, !dbg !5518
  %enable = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %12, i32 0, i32 5, !dbg !5519
  %13 = load void (%struct.intel_th_device*, %struct.intel_th_output*)*, void (%struct.intel_th_device*, %struct.intel_th_output*)** %enable, align 8, !dbg !5519
  %tobool = icmp ne void (%struct.intel_th_device*, %struct.intel_th_output*)* %13, null, !dbg !5518
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5520

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv, align 8, !dbg !5521
  %disable = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %14, i32 0, i32 7, !dbg !5522
  %15 = load void (%struct.intel_th_device*, %struct.intel_th_output*)*, void (%struct.intel_th_device*, %struct.intel_th_output*)** %disable, align 8, !dbg !5522
  %tobool6 = icmp ne void (%struct.intel_th_device*, %struct.intel_th_output*)* %15, null, !dbg !5521
  br i1 %tobool6, label %if.end, label %if.then, !dbg !5523

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !5524
  br label %return, !dbg !5524

if.end:                                           ; preds = %lor.lhs.false, %do.end3
  %16 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5525
  %name = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %16, i32 0, i32 8, !dbg !5526
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name, i64 0, i64 0, !dbg !5525
  %17 = load %struct.device_driver*, %struct.device_driver** %driver.addr, align 8, !dbg !5527
  %name7 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %17, i32 0, i32 0, !dbg !5528
  %18 = load i8*, i8** %name7, align 8, !dbg !5528
  %call = call i32 @strcmp(i8* %arraydecay, i8* %18) #9, !dbg !5529
  %tobool8 = icmp ne i32 %call, 0, !dbg !5530
  %lnot = xor i1 %tobool8, true, !dbg !5530
  %lnot.ext = zext i1 %lnot to i32, !dbg !5530
  store i32 %lnot.ext, i32* %retval, align 4, !dbg !5531
  br label %return, !dbg !5531

return:                                           ; preds = %if.end, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !5532
  ret i32 %19, !dbg !5532
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_th_probe(%struct.device* %dev) #0 !dbg !5533 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %thdrv = alloca %struct.intel_th_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.intel_th_driver*, align 8
  %thdev = alloca %struct.intel_th_device*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.intel_th_device*, align 8
  %hubdrv = alloca %struct.intel_th_driver*, align 8
  %hub = alloca %struct.intel_th_device*, align 8
  %ret = alloca i32, align 4
  %__mptr7 = alloca i8*, align 8
  %tmp11 = alloca %struct.intel_th_device*, align 8
  %__mptr20 = alloca i8*, align 8
  %tmp25 = alloca %struct.intel_th_driver*, align 8
  %__mptr27 = alloca i8*, align 8
  %tmp30 = alloca %struct.intel_th_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5534, metadata !DIExpression()), !dbg !5535
  call void @llvm.dbg.declare(metadata %struct.intel_th_driver** %thdrv, metadata !5536, metadata !DIExpression()), !dbg !5537
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5538, metadata !DIExpression()), !dbg !5540
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5540
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !5540
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !5540
  %2 = bitcast %struct.device_driver* %1 to i8*, !dbg !5540
  store i8* %2, i8** %__mptr, align 8, !dbg !5540
  br label %do.body, !dbg !5540

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5541

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5540
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5540
  %4 = bitcast i8* %add.ptr to %struct.intel_th_driver*, !dbg !5540
  store %struct.intel_th_driver* %4, %struct.intel_th_driver** %tmp, align 8, !dbg !5541
  %5 = load %struct.intel_th_driver*, %struct.intel_th_driver** %tmp, align 8, !dbg !5540
  store %struct.intel_th_driver* %5, %struct.intel_th_driver** %thdrv, align 8, !dbg !5537
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev, metadata !5543, metadata !DIExpression()), !dbg !5544
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !5545, metadata !DIExpression()), !dbg !5547
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5547
  %7 = bitcast %struct.device* %6 to i8*, !dbg !5547
  store i8* %7, i8** %__mptr1, align 8, !dbg !5547
  br label %do.body2, !dbg !5547

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !5548

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !5547
  %add.ptr5 = getelementptr i8, i8* %8, i64 0, !dbg !5547
  %9 = bitcast i8* %add.ptr5 to %struct.intel_th_device*, !dbg !5547
  store %struct.intel_th_device* %9, %struct.intel_th_device** %tmp4, align 8, !dbg !5548
  %10 = load %struct.intel_th_device*, %struct.intel_th_device** %tmp4, align 8, !dbg !5547
  store %struct.intel_th_device* %10, %struct.intel_th_device** %thdev, align 8, !dbg !5544
  call void @llvm.dbg.declare(metadata %struct.intel_th_driver** %hubdrv, metadata !5550, metadata !DIExpression()), !dbg !5551
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %hub, metadata !5552, metadata !DIExpression()), !dbg !5553
  store %struct.intel_th_device* null, %struct.intel_th_device** %hub, align 8, !dbg !5553
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5554, metadata !DIExpression()), !dbg !5555
  %11 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5556
  %type = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %11, i32 0, i32 4, !dbg !5558
  %12 = load i32, i32* %type, align 4, !dbg !5558
  %cmp = icmp eq i32 %12, 2, !dbg !5559
  br i1 %cmp, label %if.then, label %if.else, !dbg !5560

if.then:                                          ; preds = %do.end3
  %13 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5561
  store %struct.intel_th_device* %13, %struct.intel_th_device** %hub, align 8, !dbg !5562
  br label %if.end13, !dbg !5563

if.else:                                          ; preds = %do.end3
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5564
  %parent = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 1, !dbg !5566
  %15 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5566
  %tobool = icmp ne %struct.device* %15, null, !dbg !5564
  br i1 %tobool, label %if.then6, label %if.end, !dbg !5567

if.then6:                                         ; preds = %if.else
  call void @llvm.dbg.declare(metadata i8** %__mptr7, metadata !5568, metadata !DIExpression()), !dbg !5570
  %16 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5570
  %parent8 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 1, !dbg !5570
  %17 = load %struct.device*, %struct.device** %parent8, align 8, !dbg !5570
  %18 = bitcast %struct.device* %17 to i8*, !dbg !5570
  store i8* %18, i8** %__mptr7, align 8, !dbg !5570
  br label %do.body9, !dbg !5570

do.body9:                                         ; preds = %if.then6
  br label %do.end10, !dbg !5571

do.end10:                                         ; preds = %do.body9
  %19 = load i8*, i8** %__mptr7, align 8, !dbg !5570
  %add.ptr12 = getelementptr i8, i8* %19, i64 0, !dbg !5570
  %20 = bitcast i8* %add.ptr12 to %struct.intel_th_device*, !dbg !5570
  store %struct.intel_th_device* %20, %struct.intel_th_device** %tmp11, align 8, !dbg !5571
  %21 = load %struct.intel_th_device*, %struct.intel_th_device** %tmp11, align 8, !dbg !5570
  store %struct.intel_th_device* %21, %struct.intel_th_device** %hub, align 8, !dbg !5573
  br label %if.end, !dbg !5574

if.end:                                           ; preds = %do.end10, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then
  %22 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5575
  %tobool14 = icmp ne %struct.intel_th_device* %22, null, !dbg !5575
  br i1 %tobool14, label %lor.lhs.false, label %if.then18, !dbg !5577

lor.lhs.false:                                    ; preds = %if.end13
  %23 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5578
  %dev15 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %23, i32 0, i32 0, !dbg !5579
  %driver16 = getelementptr inbounds %struct.device, %struct.device* %dev15, i32 0, i32 6, !dbg !5580
  %24 = load %struct.device_driver*, %struct.device_driver** %driver16, align 8, !dbg !5580
  %tobool17 = icmp ne %struct.device_driver* %24, null, !dbg !5578
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !5581

if.then18:                                        ; preds = %lor.lhs.false, %if.end13
  store i32 -517, i32* %retval, align 4, !dbg !5582
  br label %return, !dbg !5582

if.end19:                                         ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i8** %__mptr20, metadata !5583, metadata !DIExpression()), !dbg !5585
  %25 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5585
  %dev21 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %25, i32 0, i32 0, !dbg !5585
  %driver22 = getelementptr inbounds %struct.device, %struct.device* %dev21, i32 0, i32 6, !dbg !5585
  %26 = load %struct.device_driver*, %struct.device_driver** %driver22, align 8, !dbg !5585
  %27 = bitcast %struct.device_driver* %26 to i8*, !dbg !5585
  store i8* %27, i8** %__mptr20, align 8, !dbg !5585
  br label %do.body23, !dbg !5585

do.body23:                                        ; preds = %if.end19
  br label %do.end24, !dbg !5586

do.end24:                                         ; preds = %do.body23
  %28 = load i8*, i8** %__mptr20, align 8, !dbg !5585
  %add.ptr26 = getelementptr i8, i8* %28, i64 0, !dbg !5585
  %29 = bitcast i8* %add.ptr26 to %struct.intel_th_driver*, !dbg !5585
  store %struct.intel_th_driver* %29, %struct.intel_th_driver** %tmp25, align 8, !dbg !5586
  %30 = load %struct.intel_th_driver*, %struct.intel_th_driver** %tmp25, align 8, !dbg !5585
  store %struct.intel_th_driver* %30, %struct.intel_th_driver** %hubdrv, align 8, !dbg !5588
  %31 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5589
  %call = call i32 @pm_runtime_set_active(%struct.device* %31) #9, !dbg !5590
  %32 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5591
  call void @pm_runtime_no_callbacks(%struct.device* %32) #9, !dbg !5592
  %33 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5593
  call void @pm_runtime_enable(%struct.device* %33) #9, !dbg !5594
  %34 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv, align 8, !dbg !5595
  %probe = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %34, i32 0, i32 1, !dbg !5596
  %35 = load i32 (%struct.intel_th_device*)*, i32 (%struct.intel_th_device*)** %probe, align 8, !dbg !5596
  call void @llvm.dbg.declare(metadata i8** %__mptr27, metadata !5597, metadata !DIExpression()), !dbg !5599
  %36 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5599
  %37 = bitcast %struct.device* %36 to i8*, !dbg !5599
  store i8* %37, i8** %__mptr27, align 8, !dbg !5599
  br label %do.body28, !dbg !5599

do.body28:                                        ; preds = %do.end24
  br label %do.end29, !dbg !5600

do.end29:                                         ; preds = %do.body28
  %38 = load i8*, i8** %__mptr27, align 8, !dbg !5599
  %add.ptr31 = getelementptr i8, i8* %38, i64 0, !dbg !5599
  %39 = bitcast i8* %add.ptr31 to %struct.intel_th_device*, !dbg !5599
  store %struct.intel_th_device* %39, %struct.intel_th_device** %tmp30, align 8, !dbg !5600
  %40 = load %struct.intel_th_device*, %struct.intel_th_device** %tmp30, align 8, !dbg !5599
  %call32 = call i32 %35(%struct.intel_th_device* %40) #9, !dbg !5595
  store i32 %call32, i32* %ret, align 4, !dbg !5602
  %41 = load i32, i32* %ret, align 4, !dbg !5603
  %tobool33 = icmp ne i32 %41, 0, !dbg !5603
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !5605

if.then34:                                        ; preds = %do.end29
  br label %out_pm, !dbg !5606

if.end35:                                         ; preds = %do.end29
  %42 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv, align 8, !dbg !5607
  %attr_group = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %42, i32 0, i32 13, !dbg !5609
  %43 = load %struct.attribute_group*, %struct.attribute_group** %attr_group, align 8, !dbg !5609
  %tobool36 = icmp ne %struct.attribute_group* %43, null, !dbg !5607
  br i1 %tobool36, label %if.then37, label %if.end44, !dbg !5610

if.then37:                                        ; preds = %if.end35
  %44 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5611
  %dev38 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %44, i32 0, i32 0, !dbg !5613
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev38, i32 0, i32 0, !dbg !5614
  %45 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv, align 8, !dbg !5615
  %attr_group39 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %45, i32 0, i32 13, !dbg !5616
  %46 = load %struct.attribute_group*, %struct.attribute_group** %attr_group39, align 8, !dbg !5616
  %call40 = call i32 @sysfs_create_group(%struct.kobject* %kobj, %struct.attribute_group* %46) #9, !dbg !5617
  store i32 %call40, i32* %ret, align 4, !dbg !5618
  %47 = load i32, i32* %ret, align 4, !dbg !5619
  %tobool41 = icmp ne i32 %47, 0, !dbg !5619
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !5621

if.then42:                                        ; preds = %if.then37
  br label %out, !dbg !5622

if.end43:                                         ; preds = %if.then37
  br label %if.end44, !dbg !5623

if.end44:                                         ; preds = %if.end43, %if.end35
  %48 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5624
  %type45 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %48, i32 0, i32 4, !dbg !5626
  %49 = load i32, i32* %type45, align 4, !dbg !5626
  %cmp46 = icmp eq i32 %49, 1, !dbg !5627
  br i1 %cmp46, label %land.lhs.true, label %if.end50, !dbg !5628

land.lhs.true:                                    ; preds = %if.end44
  %50 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5629
  %call47 = call zeroext i1 @intel_th_output_assigned(%struct.intel_th_device* %50) #9, !dbg !5630
  br i1 %call47, label %if.end50, label %if.then48, !dbg !5631

if.then48:                                        ; preds = %land.lhs.true
  %51 = load %struct.intel_th_driver*, %struct.intel_th_driver** %hubdrv, align 8, !dbg !5632
  %assign = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %51, i32 0, i32 3, !dbg !5633
  %52 = load i32 (%struct.intel_th_device*, %struct.intel_th_device*)*, i32 (%struct.intel_th_device*, %struct.intel_th_device*)** %assign, align 8, !dbg !5633
  %53 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5634
  %54 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5635
  %call49 = call i32 %52(%struct.intel_th_device* %53, %struct.intel_th_device* %54) #9, !dbg !5632
  store i32 %call49, i32* %ret, align 4, !dbg !5636
  br label %if.end50, !dbg !5637

if.end50:                                         ; preds = %if.then48, %land.lhs.true, %if.end44
  br label %out, !dbg !5638

out:                                              ; preds = %if.end50, %if.then42
  call void @llvm.dbg.label(metadata !5639), !dbg !5640
  %55 = load i32, i32* %ret, align 4, !dbg !5641
  %tobool51 = icmp ne i32 %55, 0, !dbg !5641
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !5643

if.then52:                                        ; preds = %out
  %56 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv, align 8, !dbg !5644
  %remove = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %56, i32 0, i32 2, !dbg !5645
  %57 = load void (%struct.intel_th_device*)*, void (%struct.intel_th_device*)** %remove, align 8, !dbg !5645
  %58 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5646
  call void %57(%struct.intel_th_device* %58) #9, !dbg !5644
  br label %if.end53, !dbg !5644

if.end53:                                         ; preds = %if.then52, %out
  br label %out_pm, !dbg !5641

out_pm:                                           ; preds = %if.end53, %if.then34
  call void @llvm.dbg.label(metadata !5647), !dbg !5648
  %59 = load i32, i32* %ret, align 4, !dbg !5649
  %tobool54 = icmp ne i32 %59, 0, !dbg !5649
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !5651

if.then55:                                        ; preds = %out_pm
  %60 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5652
  call void @pm_runtime_disable(%struct.device* %60) #9, !dbg !5653
  br label %if.end56, !dbg !5653

if.end56:                                         ; preds = %if.then55, %out_pm
  %61 = load i32, i32* %ret, align 4, !dbg !5654
  store i32 %61, i32* %retval, align 4, !dbg !5655
  br label %return, !dbg !5655

return:                                           ; preds = %if.end56, %if.then18
  %62 = load i32, i32* %retval, align 4, !dbg !5656
  ret i32 %62, !dbg !5656
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_th_remove(%struct.device* %dev) #0 !dbg !5657 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %thdrv = alloca %struct.intel_th_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.intel_th_driver*, align 8
  %thdev = alloca %struct.intel_th_device*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.intel_th_device*, align 8
  %hub = alloca %struct.intel_th_device*, align 8
  %err = alloca i32, align 4
  %th = alloca %struct.intel_th*, align 8
  %i = alloca i32, align 4
  %lowest = alloca i32, align 4
  %hubdrv = alloca %struct.intel_th_driver*, align 8
  %__mptr50 = alloca i8*, align 8
  %tmp54 = alloca %struct.intel_th_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5658, metadata !DIExpression()), !dbg !5659
  call void @llvm.dbg.declare(metadata %struct.intel_th_driver** %thdrv, metadata !5660, metadata !DIExpression()), !dbg !5661
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5662, metadata !DIExpression()), !dbg !5664
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5664
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !5664
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !5664
  %2 = bitcast %struct.device_driver* %1 to i8*, !dbg !5664
  store i8* %2, i8** %__mptr, align 8, !dbg !5664
  br label %do.body, !dbg !5664

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5665

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5664
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5664
  %4 = bitcast i8* %add.ptr to %struct.intel_th_driver*, !dbg !5664
  store %struct.intel_th_driver* %4, %struct.intel_th_driver** %tmp, align 8, !dbg !5665
  %5 = load %struct.intel_th_driver*, %struct.intel_th_driver** %tmp, align 8, !dbg !5664
  store %struct.intel_th_driver* %5, %struct.intel_th_driver** %thdrv, align 8, !dbg !5661
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev, metadata !5667, metadata !DIExpression()), !dbg !5668
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !5669, metadata !DIExpression()), !dbg !5671
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5671
  %7 = bitcast %struct.device* %6 to i8*, !dbg !5671
  store i8* %7, i8** %__mptr1, align 8, !dbg !5671
  br label %do.body2, !dbg !5671

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !5672

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !5671
  %add.ptr5 = getelementptr i8, i8* %8, i64 0, !dbg !5671
  %9 = bitcast i8* %add.ptr5 to %struct.intel_th_device*, !dbg !5671
  store %struct.intel_th_device* %9, %struct.intel_th_device** %tmp4, align 8, !dbg !5672
  %10 = load %struct.intel_th_device*, %struct.intel_th_device** %tmp4, align 8, !dbg !5671
  store %struct.intel_th_device* %10, %struct.intel_th_device** %thdev, align 8, !dbg !5668
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %hub, metadata !5674, metadata !DIExpression()), !dbg !5675
  %11 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5676
  %call = call %struct.intel_th_device* @to_intel_th_hub(%struct.intel_th_device* %11) #9, !dbg !5677
  store %struct.intel_th_device* %call, %struct.intel_th_device** %hub, align 8, !dbg !5675
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5678, metadata !DIExpression()), !dbg !5679
  %12 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5680
  %type = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %12, i32 0, i32 4, !dbg !5682
  %13 = load i32, i32* %type, align 4, !dbg !5682
  %cmp = icmp eq i32 %13, 2, !dbg !5683
  br i1 %cmp, label %if.then, label %if.end41, !dbg !5684

if.then:                                          ; preds = %do.end3
  call void @llvm.dbg.declare(metadata %struct.intel_th** %th, metadata !5685, metadata !DIExpression()), !dbg !5687
  %14 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5688
  %call6 = call %struct.intel_th* @to_intel_th(%struct.intel_th_device* %14) #9, !dbg !5689
  store %struct.intel_th* %call6, %struct.intel_th** %th, align 8, !dbg !5687
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5690, metadata !DIExpression()), !dbg !5691
  call void @llvm.dbg.declare(metadata i32* %lowest, metadata !5692, metadata !DIExpression()), !dbg !5693
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5694
  %16 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5695
  %17 = bitcast %struct.intel_th_device* %16 to i8*, !dbg !5695
  %call7 = call i32 @device_for_each_child(%struct.device* %15, i8* %17, i32 (%struct.device*, i8*)* @intel_th_child_remove) #9, !dbg !5696
  store i32 %call7, i32* %err, align 4, !dbg !5697
  %18 = load i32, i32* %err, align 4, !dbg !5698
  %tobool = icmp ne i32 %18, 0, !dbg !5698
  br i1 %tobool, label %if.then8, label %if.end, !dbg !5700

if.then8:                                         ; preds = %if.then
  %19 = load i32, i32* %err, align 4, !dbg !5701
  store i32 %19, i32* %retval, align 4, !dbg !5702
  br label %return, !dbg !5702

if.end:                                           ; preds = %if.then
  store i32 0, i32* %i, align 4, !dbg !5703
  store i32 -1, i32* %lowest, align 4, !dbg !5705
  br label %for.cond, !dbg !5706

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load i32, i32* %i, align 4, !dbg !5707
  %21 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !5709
  %num_thdevs = getelementptr inbounds %struct.intel_th, %struct.intel_th* %21, i32 0, i32 7, !dbg !5710
  %22 = load i32, i32* %num_thdevs, align 8, !dbg !5710
  %cmp9 = icmp ult i32 %20, %22, !dbg !5711
  br i1 %cmp9, label %for.body, label %for.end, !dbg !5712

for.body:                                         ; preds = %for.cond
  %23 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !5713
  %thdev10 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %23, i32 0, i32 1, !dbg !5716
  %24 = load i32, i32* %i, align 4, !dbg !5717
  %idxprom = sext i32 %24 to i64, !dbg !5713
  %arrayidx = getelementptr [10 x %struct.intel_th_device*], [10 x %struct.intel_th_device*]* %thdev10, i64 0, i64 %idxprom, !dbg !5713
  %25 = load %struct.intel_th_device*, %struct.intel_th_device** %arrayidx, align 8, !dbg !5713
  %type11 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %25, i32 0, i32 4, !dbg !5718
  %26 = load i32, i32* %type11, align 4, !dbg !5718
  %cmp12 = icmp ne i32 %26, 1, !dbg !5719
  br i1 %cmp12, label %if.then13, label %if.end26, !dbg !5720

if.then13:                                        ; preds = %for.body
  %27 = load i32, i32* %lowest, align 4, !dbg !5721
  %cmp14 = icmp sge i32 %27, 0, !dbg !5724
  br i1 %cmp14, label %if.then15, label %if.end25, !dbg !5725

if.then15:                                        ; preds = %if.then13
  %28 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !5726
  %thdev16 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %28, i32 0, i32 1, !dbg !5728
  %29 = load i32, i32* %i, align 4, !dbg !5729
  %idxprom17 = sext i32 %29 to i64, !dbg !5726
  %arrayidx18 = getelementptr [10 x %struct.intel_th_device*], [10 x %struct.intel_th_device*]* %thdev16, i64 0, i64 %idxprom17, !dbg !5726
  %30 = load %struct.intel_th_device*, %struct.intel_th_device** %arrayidx18, align 8, !dbg !5726
  %31 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !5730
  %thdev19 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %31, i32 0, i32 1, !dbg !5731
  %32 = load i32, i32* %lowest, align 4, !dbg !5732
  %idxprom20 = sext i32 %32 to i64, !dbg !5730
  %arrayidx21 = getelementptr [10 x %struct.intel_th_device*], [10 x %struct.intel_th_device*]* %thdev19, i64 0, i64 %idxprom20, !dbg !5730
  store %struct.intel_th_device* %30, %struct.intel_th_device** %arrayidx21, align 8, !dbg !5733
  %33 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !5734
  %thdev22 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %33, i32 0, i32 1, !dbg !5735
  %34 = load i32, i32* %i, align 4, !dbg !5736
  %idxprom23 = sext i32 %34 to i64, !dbg !5734
  %arrayidx24 = getelementptr [10 x %struct.intel_th_device*], [10 x %struct.intel_th_device*]* %thdev22, i64 0, i64 %idxprom23, !dbg !5734
  store %struct.intel_th_device* null, %struct.intel_th_device** %arrayidx24, align 8, !dbg !5737
  %35 = load i32, i32* %lowest, align 4, !dbg !5738
  %inc = add i32 %35, 1, !dbg !5738
  store i32 %inc, i32* %lowest, align 4, !dbg !5738
  br label %if.end25, !dbg !5739

if.end25:                                         ; preds = %if.then15, %if.then13
  br label %for.inc, !dbg !5740

if.end26:                                         ; preds = %for.body
  %36 = load i32, i32* %lowest, align 4, !dbg !5741
  %cmp27 = icmp eq i32 %36, -1, !dbg !5743
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5744

if.then28:                                        ; preds = %if.end26
  %37 = load i32, i32* %i, align 4, !dbg !5745
  store i32 %37, i32* %lowest, align 4, !dbg !5746
  br label %if.end29, !dbg !5747

if.end29:                                         ; preds = %if.then28, %if.end26
  %38 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !5748
  %thdev30 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %38, i32 0, i32 1, !dbg !5749
  %39 = load i32, i32* %i, align 4, !dbg !5750
  %idxprom31 = sext i32 %39 to i64, !dbg !5748
  %arrayidx32 = getelementptr [10 x %struct.intel_th_device*], [10 x %struct.intel_th_device*]* %thdev30, i64 0, i64 %idxprom31, !dbg !5748
  %40 = load %struct.intel_th_device*, %struct.intel_th_device** %arrayidx32, align 8, !dbg !5748
  call void @intel_th_device_remove(%struct.intel_th_device* %40) #9, !dbg !5751
  %41 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !5752
  %thdev33 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %41, i32 0, i32 1, !dbg !5753
  %42 = load i32, i32* %i, align 4, !dbg !5754
  %idxprom34 = sext i32 %42 to i64, !dbg !5752
  %arrayidx35 = getelementptr [10 x %struct.intel_th_device*], [10 x %struct.intel_th_device*]* %thdev33, i64 0, i64 %idxprom34, !dbg !5752
  store %struct.intel_th_device* null, %struct.intel_th_device** %arrayidx35, align 8, !dbg !5755
  br label %for.inc, !dbg !5756

for.inc:                                          ; preds = %if.end29, %if.end25
  %43 = load i32, i32* %i, align 4, !dbg !5757
  %inc36 = add i32 %43, 1, !dbg !5757
  store i32 %inc36, i32* %i, align 4, !dbg !5757
  br label %for.cond, !dbg !5758, !llvm.loop !5759

for.end:                                          ; preds = %for.cond
  %44 = load i32, i32* %lowest, align 4, !dbg !5761
  %cmp37 = icmp sge i32 %44, 0, !dbg !5763
  br i1 %cmp37, label %if.then38, label %if.end40, !dbg !5764

if.then38:                                        ; preds = %for.end
  %45 = load i32, i32* %lowest, align 4, !dbg !5765
  %46 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !5766
  %num_thdevs39 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %46, i32 0, i32 7, !dbg !5767
  store i32 %45, i32* %num_thdevs39, align 8, !dbg !5768
  br label %if.end40, !dbg !5766

if.end40:                                         ; preds = %if.then38, %for.end
  br label %if.end41, !dbg !5769

if.end41:                                         ; preds = %if.end40, %do.end3
  %47 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv, align 8, !dbg !5770
  %attr_group = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %47, i32 0, i32 13, !dbg !5772
  %48 = load %struct.attribute_group*, %struct.attribute_group** %attr_group, align 8, !dbg !5772
  %tobool42 = icmp ne %struct.attribute_group* %48, null, !dbg !5770
  br i1 %tobool42, label %if.then43, label %if.end46, !dbg !5773

if.then43:                                        ; preds = %if.end41
  %49 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5774
  %dev44 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %49, i32 0, i32 0, !dbg !5775
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev44, i32 0, i32 0, !dbg !5776
  %50 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv, align 8, !dbg !5777
  %attr_group45 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %50, i32 0, i32 13, !dbg !5778
  %51 = load %struct.attribute_group*, %struct.attribute_group** %attr_group45, align 8, !dbg !5778
  call void @sysfs_remove_group(%struct.kobject* %kobj, %struct.attribute_group* %51) #9, !dbg !5779
  br label %if.end46, !dbg !5779

if.end46:                                         ; preds = %if.then43, %if.end41
  %52 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5780
  %call47 = call i32 @pm_runtime_get_sync(%struct.device* %52) #9, !dbg !5781
  %53 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv, align 8, !dbg !5782
  %remove = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %53, i32 0, i32 2, !dbg !5783
  %54 = load void (%struct.intel_th_device*)*, void (%struct.intel_th_device*)** %remove, align 8, !dbg !5783
  %55 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5784
  call void %54(%struct.intel_th_device* %55) #9, !dbg !5782
  %56 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5785
  %call48 = call zeroext i1 @intel_th_output_assigned(%struct.intel_th_device* %56) #9, !dbg !5787
  br i1 %call48, label %if.then49, label %if.end61, !dbg !5788

if.then49:                                        ; preds = %if.end46
  call void @llvm.dbg.declare(metadata %struct.intel_th_driver** %hubdrv, metadata !5789, metadata !DIExpression()), !dbg !5791
  call void @llvm.dbg.declare(metadata i8** %__mptr50, metadata !5792, metadata !DIExpression()), !dbg !5794
  %57 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5794
  %parent = getelementptr inbounds %struct.device, %struct.device* %57, i32 0, i32 1, !dbg !5794
  %58 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5794
  %driver51 = getelementptr inbounds %struct.device, %struct.device* %58, i32 0, i32 6, !dbg !5794
  %59 = load %struct.device_driver*, %struct.device_driver** %driver51, align 8, !dbg !5794
  %60 = bitcast %struct.device_driver* %59 to i8*, !dbg !5794
  store i8* %60, i8** %__mptr50, align 8, !dbg !5794
  br label %do.body52, !dbg !5794

do.body52:                                        ; preds = %if.then49
  br label %do.end53, !dbg !5795

do.end53:                                         ; preds = %do.body52
  %61 = load i8*, i8** %__mptr50, align 8, !dbg !5794
  %add.ptr55 = getelementptr i8, i8* %61, i64 0, !dbg !5794
  %62 = bitcast i8* %add.ptr55 to %struct.intel_th_driver*, !dbg !5794
  store %struct.intel_th_driver* %62, %struct.intel_th_driver** %tmp54, align 8, !dbg !5795
  %63 = load %struct.intel_th_driver*, %struct.intel_th_driver** %tmp54, align 8, !dbg !5794
  store %struct.intel_th_driver* %63, %struct.intel_th_driver** %hubdrv, align 8, !dbg !5791
  %64 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5797
  %dev56 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %64, i32 0, i32 0, !dbg !5799
  %driver57 = getelementptr inbounds %struct.device, %struct.device* %dev56, i32 0, i32 6, !dbg !5800
  %65 = load %struct.device_driver*, %struct.device_driver** %driver57, align 8, !dbg !5800
  %tobool58 = icmp ne %struct.device_driver* %65, null, !dbg !5797
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !5801

if.then59:                                        ; preds = %do.end53
  %66 = load %struct.intel_th_driver*, %struct.intel_th_driver** %hubdrv, align 8, !dbg !5802
  %unassign = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %66, i32 0, i32 4, !dbg !5803
  %67 = load void (%struct.intel_th_device*, %struct.intel_th_device*)*, void (%struct.intel_th_device*, %struct.intel_th_device*)** %unassign, align 8, !dbg !5803
  %68 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5804
  %69 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5805
  call void %67(%struct.intel_th_device* %68, %struct.intel_th_device* %69) #9, !dbg !5802
  br label %if.end60, !dbg !5802

if.end60:                                         ; preds = %if.then59, %do.end53
  br label %if.end61, !dbg !5806

if.end61:                                         ; preds = %if.end60, %if.end46
  %70 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5807
  call void @pm_runtime_disable(%struct.device* %70) #9, !dbg !5808
  %71 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5809
  %call62 = call i32 @pm_runtime_set_active(%struct.device* %71) #9, !dbg !5810
  %72 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5811
  call void @pm_runtime_enable(%struct.device* %72) #9, !dbg !5812
  store i32 0, i32* %retval, align 4, !dbg !5813
  br label %return, !dbg !5813

return:                                           ; preds = %if.end61, %if.then8
  %73 = load i32, i32* %retval, align 4, !dbg !5814
  ret i32 %73, !dbg !5814
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pm_runtime_set_active(%struct.device* %dev) #0 !dbg !5815 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5816, metadata !DIExpression()), !dbg !5817
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5818
  %call = call i32 @__pm_runtime_set_status(%struct.device* %0, i32 0) #9, !dbg !5819
  ret i32 %call, !dbg !5820
}

; Function Attrs: noredzone
declare dso_local void @pm_runtime_enable(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_group(%struct.kobject*, %struct.attribute_group*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @intel_th_output_assigned(%struct.intel_th_device* %thdev) #0 !dbg !5821 {
entry:
  %thdev.addr = alloca %struct.intel_th_device*, align 8
  store %struct.intel_th_device* %thdev, %struct.intel_th_device** %thdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev.addr, metadata !5824, metadata !DIExpression()), !dbg !5825
  %0 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5826
  %type = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %0, i32 0, i32 4, !dbg !5827
  %1 = load i32, i32* %type, align 4, !dbg !5827
  %cmp = icmp eq i32 %1, 1, !dbg !5828
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5829

land.rhs:                                         ; preds = %entry
  %2 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5830
  %output = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %2, i32 0, i32 7, !dbg !5831
  %port = getelementptr inbounds %struct.intel_th_output, %struct.intel_th_output* %output, i32 0, i32 0, !dbg !5832
  %3 = load i32, i32* %port, align 8, !dbg !5832
  %cmp1 = icmp sge i32 %3, 0, !dbg !5833
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !5834

lor.rhs:                                          ; preds = %land.rhs
  %4 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5835
  %output2 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %4, i32 0, i32 7, !dbg !5836
  %type3 = getelementptr inbounds %struct.intel_th_output, %struct.intel_th_output* %output2, i32 0, i32 1, !dbg !5837
  %5 = load i32, i32* %type3, align 4, !dbg !5837
  %cmp4 = icmp eq i32 %5, 0, !dbg !5838
  br label %lor.end, !dbg !5834

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %6 = phi i1 [ true, %land.rhs ], [ %cmp4, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %7 = phi i1 [ false, %entry ], [ %6, %lor.end ], !dbg !5839
  ret i1 %7, !dbg !5840
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pm_runtime_disable(%struct.device* %dev) #0 !dbg !5841 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5842, metadata !DIExpression()), !dbg !5843
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5844
  call void @__pm_runtime_disable(%struct.device* %0, i1 zeroext true) #9, !dbg !5845
  ret void, !dbg !5846
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_set_status(%struct.device*, i32) #2

; Function Attrs: noredzone
declare dso_local void @__pm_runtime_disable(%struct.device*, i1 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.intel_th* @to_intel_th(%struct.intel_th_device* %thdev) #0 !dbg !5847 {
entry:
  %retval = alloca %struct.intel_th*, align 8
  %thdev.addr = alloca %struct.intel_th_device*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.intel_th_device* %thdev, %struct.intel_th_device** %thdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev.addr, metadata !5850, metadata !DIExpression()), !dbg !5851
  %0 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5852
  %type = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %0, i32 0, i32 4, !dbg !5854
  %1 = load i32, i32* %type, align 4, !dbg !5854
  %cmp = icmp eq i32 %1, 1, !dbg !5855
  br i1 %cmp, label %if.then, label %if.end, !dbg !5856

if.then:                                          ; preds = %entry
  %2 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5857
  %call = call %struct.intel_th_device* @to_intel_th_parent(%struct.intel_th_device* %2) #9, !dbg !5858
  store %struct.intel_th_device* %call, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5859
  br label %if.end, !dbg !5860

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5861, metadata !DIExpression()), !dbg !5864
  %3 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5864
  %tobool = icmp ne %struct.intel_th_device* %3, null, !dbg !5864
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !5864

lor.rhs:                                          ; preds = %if.end
  %4 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5864
  %type1 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %4, i32 0, i32 4, !dbg !5864
  %5 = load i32, i32* %type1, align 4, !dbg !5864
  %cmp2 = icmp eq i32 %5, 1, !dbg !5864
  br label %lor.end, !dbg !5864

lor.end:                                          ; preds = %lor.rhs, %if.end
  %6 = phi i1 [ true, %if.end ], [ %cmp2, %lor.rhs ]
  %lnot = xor i1 %6, true, !dbg !5864
  %lnot3 = xor i1 %lnot, true, !dbg !5864
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5864
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !5864
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !5865
  %tobool4 = icmp ne i32 %7, 0, !dbg !5865
  %lnot5 = xor i1 %tobool4, true, !dbg !5865
  %lnot7 = xor i1 %lnot5, true, !dbg !5865
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5865
  %conv = sext i32 %lnot.ext8 to i64, !dbg !5865
  %tobool9 = icmp ne i64 %conv, 0, !dbg !5865
  br i1 %tobool9, label %if.then10, label %if.end17, !dbg !5864

if.then10:                                        ; preds = %lor.end
  br label %do.body, !dbg !5865

do.body:                                          ; preds = %if.then10
  br label %do.body11, !dbg !5867

do.body11:                                        ; preds = %do.body
  br label %do.end, !dbg !5869

do.end:                                           ; preds = %do.body11
  br label %do.body12, !dbg !5867

do.body12:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 220, i32 2307, i64 12) #11, !dbg !5871, !srcloc !5873
  br label %do.end13, !dbg !5871

do.end13:                                         ; preds = %do.body12
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 238) #11, !dbg !5874, !srcloc !5876
  br label %do.body14, !dbg !5867

do.body14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !5877

do.end15:                                         ; preds = %do.body14
  br label %do.end16, !dbg !5867

do.end16:                                         ; preds = %do.end15
  br label %if.end17, !dbg !5867

if.end17:                                         ; preds = %do.end16, %lor.end
  %8 = load i32, i32* %__ret_warn_on, align 4, !dbg !5864
  %tobool18 = icmp ne i32 %8, 0, !dbg !5864
  %lnot19 = xor i1 %tobool18, true, !dbg !5864
  %lnot21 = xor i1 %lnot19, true, !dbg !5864
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5864
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5864
  store i64 %conv23, i64* %tmp, align 8, !dbg !5865
  %9 = load i64, i64* %tmp, align 8, !dbg !5864
  %tobool24 = icmp ne i64 %9, 0, !dbg !5879
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !5880

if.then25:                                        ; preds = %if.end17
  store %struct.intel_th* null, %struct.intel_th** %retval, align 8, !dbg !5881
  br label %return, !dbg !5881

if.end26:                                         ; preds = %if.end17
  %10 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5882
  %dev = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %10, i32 0, i32 0, !dbg !5883
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !5884
  %11 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5884
  %call27 = call i8* @dev_get_drvdata(%struct.device* %11) #9, !dbg !5885
  %12 = bitcast i8* %call27 to %struct.intel_th*, !dbg !5885
  store %struct.intel_th* %12, %struct.intel_th** %retval, align 8, !dbg !5886
  br label %return, !dbg !5886

return:                                           ; preds = %if.end26, %if.then25
  %13 = load %struct.intel_th*, %struct.intel_th** %retval, align 8, !dbg !5887
  ret %struct.intel_th* %13, !dbg !5887
}

; Function Attrs: noredzone
declare dso_local i32 @device_for_each_child(%struct.device*, i8*, i32 (%struct.device*, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_th_child_remove(%struct.device* %dev, i8* %data) #0 !dbg !5888 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5891, metadata !DIExpression()), !dbg !5892
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5893, metadata !DIExpression()), !dbg !5894
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5895
  call void @device_release_driver(%struct.device* %0) #9, !dbg !5896
  ret i32 0, !dbg !5897
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_group(%struct.kobject*, %struct.attribute_group*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.intel_th_device* @to_intel_th_parent(%struct.intel_th_device* %thdev) #0 !dbg !5898 {
entry:
  %retval = alloca %struct.intel_th_device*, align 8
  %thdev.addr = alloca %struct.intel_th_device*, align 8
  %parent = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.intel_th_device*, align 8
  store %struct.intel_th_device* %thdev, %struct.intel_th_device** %thdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev.addr, metadata !5899, metadata !DIExpression()), !dbg !5900
  call void @llvm.dbg.declare(metadata %struct.device** %parent, metadata !5901, metadata !DIExpression()), !dbg !5902
  %0 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !5903
  %dev = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %0, i32 0, i32 0, !dbg !5904
  %parent1 = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !5905
  %1 = load %struct.device*, %struct.device** %parent1, align 8, !dbg !5905
  store %struct.device* %1, %struct.device** %parent, align 8, !dbg !5902
  %2 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5906
  %tobool = icmp ne %struct.device* %2, null, !dbg !5906
  br i1 %tobool, label %if.end, label %if.then, !dbg !5908

if.then:                                          ; preds = %entry
  store %struct.intel_th_device* null, %struct.intel_th_device** %retval, align 8, !dbg !5909
  br label %return, !dbg !5909

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5910, metadata !DIExpression()), !dbg !5912
  %3 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5912
  %4 = bitcast %struct.device* %3 to i8*, !dbg !5912
  store i8* %4, i8** %__mptr, align 8, !dbg !5912
  br label %do.body, !dbg !5912

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !5913

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !5912
  %add.ptr = getelementptr i8, i8* %5, i64 0, !dbg !5912
  %6 = bitcast i8* %add.ptr to %struct.intel_th_device*, !dbg !5912
  store %struct.intel_th_device* %6, %struct.intel_th_device** %tmp, align 8, !dbg !5913
  %7 = load %struct.intel_th_device*, %struct.intel_th_device** %tmp, align 8, !dbg !5912
  store %struct.intel_th_device* %7, %struct.intel_th_device** %retval, align 8, !dbg !5915
  br label %return, !dbg !5915

return:                                           ; preds = %do.end, %if.then
  %8 = load %struct.intel_th_device*, %struct.intel_th_device** %retval, align 8, !dbg !5916
  ret %struct.intel_th_device* %8, !dbg !5916
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !5917 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5920, metadata !DIExpression()), !dbg !5921
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5922
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5923
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5923
  ret i8* %1, !dbg !5924
}

; Function Attrs: noredzone
declare dso_local void @device_release_driver(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.intel_th_device* @intel_th_device_alloc(%struct.intel_th* %th, i32 %type, i8* %name, i32 %id) #0 !dbg !5925 {
entry:
  %retval = alloca %struct.intel_th_device*, align 8
  %th.addr = alloca %struct.intel_th*, align 8
  %type.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %id.addr = alloca i32, align 4
  %parent = alloca %struct.device*, align 8
  %thdev = alloca %struct.intel_th_device*, align 8
  store %struct.intel_th* %th, %struct.intel_th** %th.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th** %th.addr, metadata !5928, metadata !DIExpression()), !dbg !5929
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5930, metadata !DIExpression()), !dbg !5931
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5932, metadata !DIExpression()), !dbg !5933
  store i32 %id, i32* %id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %id.addr, metadata !5934, metadata !DIExpression()), !dbg !5935
  call void @llvm.dbg.declare(metadata %struct.device** %parent, metadata !5936, metadata !DIExpression()), !dbg !5937
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev, metadata !5938, metadata !DIExpression()), !dbg !5939
  %0 = load i32, i32* %type.addr, align 4, !dbg !5940
  %cmp = icmp eq i32 %0, 1, !dbg !5942
  br i1 %cmp, label %if.then, label %if.else, !dbg !5943

if.then:                                          ; preds = %entry
  %1 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5944
  %hub = getelementptr inbounds %struct.intel_th, %struct.intel_th* %1, i32 0, i32 2, !dbg !5945
  %2 = load %struct.intel_th_device*, %struct.intel_th_device** %hub, align 8, !dbg !5945
  %dev = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %2, i32 0, i32 0, !dbg !5946
  store %struct.device* %dev, %struct.device** %parent, align 8, !dbg !5947
  br label %if.end, !dbg !5948

if.else:                                          ; preds = %entry
  %3 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !5949
  %dev1 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %3, i32 0, i32 0, !dbg !5950
  %4 = load %struct.device*, %struct.device** %dev1, align 8, !dbg !5950
  store %struct.device* %4, %struct.device** %parent, align 8, !dbg !5951
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i8*, i8** %name.addr, align 8, !dbg !5952
  %call = call i64 @strlen(i8* %5) #9, !dbg !5953
  %add = add i64 744, %call, !dbg !5954
  %add2 = add i64 %add, 1, !dbg !5955
  %call3 = call i8* @kzalloc(i64 %add2, i32 3264) #9, !dbg !5956
  %6 = bitcast i8* %call3 to %struct.intel_th_device*, !dbg !5956
  store %struct.intel_th_device* %6, %struct.intel_th_device** %thdev, align 8, !dbg !5957
  %7 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5958
  %tobool = icmp ne %struct.intel_th_device* %7, null, !dbg !5958
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !5960

if.then4:                                         ; preds = %if.end
  store %struct.intel_th_device* null, %struct.intel_th_device** %retval, align 8, !dbg !5961
  br label %return, !dbg !5961

if.end5:                                          ; preds = %if.end
  %8 = load i32, i32* %id.addr, align 4, !dbg !5962
  %9 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5963
  %id6 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %9, i32 0, i32 5, !dbg !5964
  store i32 %8, i32* %id6, align 8, !dbg !5965
  %10 = load i32, i32* %type.addr, align 4, !dbg !5966
  %11 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5967
  %type7 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %11, i32 0, i32 4, !dbg !5968
  store i32 %10, i32* %type7, align 4, !dbg !5969
  %12 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5970
  %name8 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %12, i32 0, i32 8, !dbg !5971
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name8, i64 0, i64 0, !dbg !5970
  %13 = load i8*, i8** %name.addr, align 8, !dbg !5972
  %call9 = call i8* @strcpy(i8* %arraydecay, i8* %13) #9, !dbg !5973
  %14 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5974
  %dev10 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %14, i32 0, i32 0, !dbg !5975
  call void @device_initialize(%struct.device* %dev10) #9, !dbg !5976
  %15 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5977
  %dev11 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %15, i32 0, i32 0, !dbg !5978
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev11, i32 0, i32 5, !dbg !5979
  store %struct.bus_type* @intel_th_bus, %struct.bus_type** %bus, align 8, !dbg !5980
  %16 = load i32, i32* %type.addr, align 4, !dbg !5981
  %idxprom = zext i32 %16 to i64, !dbg !5982
  %arrayidx = getelementptr [3 x %struct.device_type*], [3 x %struct.device_type*]* @intel_th_device_type, i64 0, i64 %idxprom, !dbg !5982
  %17 = load %struct.device_type*, %struct.device_type** %arrayidx, align 8, !dbg !5982
  %18 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5983
  %dev12 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %18, i32 0, i32 0, !dbg !5984
  %type13 = getelementptr inbounds %struct.device, %struct.device* %dev12, i32 0, i32 4, !dbg !5985
  store %struct.device_type* %17, %struct.device_type** %type13, align 8, !dbg !5986
  %19 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5987
  %20 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5988
  %dev14 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %20, i32 0, i32 0, !dbg !5989
  %parent15 = getelementptr inbounds %struct.device, %struct.device* %dev14, i32 0, i32 1, !dbg !5990
  store %struct.device* %19, %struct.device** %parent15, align 8, !dbg !5991
  %21 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5992
  %dma_mask = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 16, !dbg !5993
  %22 = load i64*, i64** %dma_mask, align 8, !dbg !5993
  %23 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !5994
  %dev16 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %23, i32 0, i32 0, !dbg !5995
  %dma_mask17 = getelementptr inbounds %struct.device, %struct.device* %dev16, i32 0, i32 16, !dbg !5996
  store i64* %22, i64** %dma_mask17, align 8, !dbg !5997
  %24 = load %struct.device*, %struct.device** %parent, align 8, !dbg !5998
  %dma_parms = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 20, !dbg !5999
  %25 = load %struct.device_dma_parameters*, %struct.device_dma_parameters** %dma_parms, align 8, !dbg !5999
  %26 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !6000
  %dev18 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %26, i32 0, i32 0, !dbg !6001
  %dma_parms19 = getelementptr inbounds %struct.device, %struct.device* %dev18, i32 0, i32 20, !dbg !6002
  store %struct.device_dma_parameters* %25, %struct.device_dma_parameters** %dma_parms19, align 8, !dbg !6003
  %27 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !6004
  %dev20 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %27, i32 0, i32 0, !dbg !6005
  %28 = load %struct.device*, %struct.device** %parent, align 8, !dbg !6006
  %coherent_dma_mask = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 17, !dbg !6007
  %29 = load i64, i64* %coherent_dma_mask, align 8, !dbg !6007
  %call21 = call i32 @dma_set_coherent_mask(%struct.device* %dev20, i64 %29) #9, !dbg !6008
  %30 = load i32, i32* %id.addr, align 4, !dbg !6009
  %cmp22 = icmp sge i32 %30, 0, !dbg !6011
  br i1 %cmp22, label %if.then23, label %if.else27, !dbg !6012

if.then23:                                        ; preds = %if.end5
  %31 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !6013
  %dev24 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %31, i32 0, i32 0, !dbg !6014
  %32 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !6015
  %id25 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %32, i32 0, i32 11, !dbg !6016
  %33 = load i32, i32* %id25, align 8, !dbg !6016
  %34 = load i8*, i8** %name.addr, align 8, !dbg !6017
  %35 = load i32, i32* %id.addr, align 4, !dbg !6018
  %call26 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %33, i8* %34, i32 %35) #9, !dbg !6019
  br label %if.end31, !dbg !6019

if.else27:                                        ; preds = %if.end5
  %36 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !6020
  %dev28 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %36, i32 0, i32 0, !dbg !6021
  %37 = load %struct.intel_th*, %struct.intel_th** %th.addr, align 8, !dbg !6022
  %id29 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %37, i32 0, i32 11, !dbg !6023
  %38 = load i32, i32* %id29, align 8, !dbg !6023
  %39 = load i8*, i8** %name.addr, align 8, !dbg !6024
  %call30 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %38, i8* %39) #9, !dbg !6025
  br label %if.end31

if.end31:                                         ; preds = %if.else27, %if.then23
  %40 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !6026
  store %struct.intel_th_device* %40, %struct.intel_th_device** %retval, align 8, !dbg !6027
  br label %return, !dbg !6027

return:                                           ; preds = %if.end31, %if.then4
  %41 = load %struct.intel_th_device*, %struct.intel_th_device** %retval, align 8, !dbg !6028
  ret %struct.intel_th_device* %41, !dbg !6028
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @resource_size(%struct.resource* %res) #0 !dbg !6029 {
entry:
  %res.addr = alloca %struct.resource*, align 8
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !6034, metadata !DIExpression()), !dbg !6035
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !6036
  %end = getelementptr inbounds %struct.resource, %struct.resource* %0, i32 0, i32 1, !dbg !6037
  %1 = load i64, i64* %end, align 8, !dbg !6037
  %2 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !6038
  %start = getelementptr inbounds %struct.resource, %struct.resource* %2, i32 0, i32 0, !dbg !6039
  %3 = load i64, i64* %start, align 8, !dbg !6039
  %sub = sub i64 %1, %3, !dbg !6040
  %add = add i64 %sub, 1, !dbg !6041
  ret i64 %add, !dbg !6042
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_th_device_add_resources(%struct.intel_th_device* %thdev, %struct.resource* %res, i32 %nres) #0 !dbg !6043 {
entry:
  %retval = alloca i32, align 4
  %thdev.addr = alloca %struct.intel_th_device*, align 8
  %res.addr = alloca %struct.resource*, align 8
  %nres.addr = alloca i32, align 4
  %r = alloca %struct.resource*, align 8
  store %struct.intel_th_device* %thdev, %struct.intel_th_device** %thdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev.addr, metadata !6046, metadata !DIExpression()), !dbg !6047
  store %struct.resource* %res, %struct.resource** %res.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %res.addr, metadata !6048, metadata !DIExpression()), !dbg !6049
  store i32 %nres, i32* %nres.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nres.addr, metadata !6050, metadata !DIExpression()), !dbg !6051
  call void @llvm.dbg.declare(metadata %struct.resource** %r, metadata !6052, metadata !DIExpression()), !dbg !6053
  %0 = load %struct.resource*, %struct.resource** %res.addr, align 8, !dbg !6054
  %1 = bitcast %struct.resource* %0 to i8*, !dbg !6054
  %2 = load i32, i32* %nres.addr, align 4, !dbg !6055
  %conv = sext i32 %2 to i64, !dbg !6055
  %mul = mul i64 64, %conv, !dbg !6056
  %call = call i8* @kmemdup(i8* %1, i64 %mul, i32 3264) #9, !dbg !6057
  %3 = bitcast i8* %call to %struct.resource*, !dbg !6057
  store %struct.resource* %3, %struct.resource** %r, align 8, !dbg !6058
  %4 = load %struct.resource*, %struct.resource** %r, align 8, !dbg !6059
  %tobool = icmp ne %struct.resource* %4, null, !dbg !6059
  br i1 %tobool, label %if.end, label %if.then, !dbg !6061

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !6062
  br label %return, !dbg !6062

if.end:                                           ; preds = %entry
  %5 = load %struct.resource*, %struct.resource** %r, align 8, !dbg !6063
  %6 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !6064
  %resource = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %6, i32 0, i32 2, !dbg !6065
  store %struct.resource* %5, %struct.resource** %resource, align 8, !dbg !6066
  %7 = load i32, i32* %nres.addr, align 4, !dbg !6067
  %8 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !6068
  %num_resources = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %8, i32 0, i32 3, !dbg !6069
  store i32 %7, i32* %num_resources, align 8, !dbg !6070
  store i32 0, i32* %retval, align 4, !dbg !6071
  br label %return, !dbg !6071

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !6072
  ret i32 %9, !dbg !6072
}

; Function Attrs: noredzone
declare dso_local i32 @device_add(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_th_request_hub_module(%struct.intel_th* %th) #0 !dbg !6073 {
entry:
  %th.addr = alloca %struct.intel_th*, align 8
  store %struct.intel_th* %th, %struct.intel_th** %th.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th** %th.addr, metadata !6074, metadata !DIExpression()), !dbg !6075
  ret i32 -22, !dbg !6076
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @device_initialize(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @dma_set_coherent_mask(%struct.device*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @intel_th_device_release(%struct.device* %dev) #0 !dbg !6077 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.intel_th_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6078, metadata !DIExpression()), !dbg !6079
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6080, metadata !DIExpression()), !dbg !6082
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6082
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6082
  store i8* %1, i8** %__mptr, align 8, !dbg !6082
  br label %do.body, !dbg !6082

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6083

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6082
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !6082
  %3 = bitcast i8* %add.ptr to %struct.intel_th_device*, !dbg !6082
  store %struct.intel_th_device* %3, %struct.intel_th_device** %tmp, align 8, !dbg !6083
  %4 = load %struct.intel_th_device*, %struct.intel_th_device** %tmp, align 8, !dbg !6082
  call void @intel_th_device_free(%struct.intel_th_device* %4) #9, !dbg !6085
  ret void, !dbg !6086
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @intel_th_device_free(%struct.intel_th_device* %thdev) #0 !dbg !6087 {
entry:
  %thdev.addr = alloca %struct.intel_th_device*, align 8
  store %struct.intel_th_device* %thdev, %struct.intel_th_device** %thdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev.addr, metadata !6088, metadata !DIExpression()), !dbg !6089
  %0 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !6090
  %resource = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %0, i32 0, i32 2, !dbg !6091
  %1 = load %struct.resource*, %struct.resource** %resource, align 8, !dbg !6091
  %2 = bitcast %struct.resource* %1 to i8*, !dbg !6090
  call void @kfree(i8* %2) #9, !dbg !6092
  %3 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !6093
  %4 = bitcast %struct.intel_th_device* %3 to i8*, !dbg !6093
  call void @kfree(i8* %4) #9, !dbg !6094
  ret void, !dbg !6095
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @intel_th_output_devnode(%struct.device* %dev, i16* %mode, %struct.kuid_t* %uid, %struct.kgid_t* %gid) #0 !dbg !6096 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %mode.addr = alloca i16*, align 8
  %uid.addr = alloca %struct.kuid_t*, align 8
  %gid.addr = alloca %struct.kgid_t*, align 8
  %thdev = alloca %struct.intel_th_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.intel_th_device*, align 8
  %th = alloca %struct.intel_th*, align 8
  %node = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6097, metadata !DIExpression()), !dbg !6098
  store i16* %mode, i16** %mode.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %mode.addr, metadata !6099, metadata !DIExpression()), !dbg !6100
  store %struct.kuid_t* %uid, %struct.kuid_t** %uid.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kuid_t** %uid.addr, metadata !6101, metadata !DIExpression()), !dbg !6102
  store %struct.kgid_t* %gid, %struct.kgid_t** %gid.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kgid_t** %gid.addr, metadata !6103, metadata !DIExpression()), !dbg !6104
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev, metadata !6105, metadata !DIExpression()), !dbg !6106
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6107, metadata !DIExpression()), !dbg !6109
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6109
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6109
  store i8* %1, i8** %__mptr, align 8, !dbg !6109
  br label %do.body, !dbg !6109

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6110

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6109
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !6109
  %3 = bitcast i8* %add.ptr to %struct.intel_th_device*, !dbg !6109
  store %struct.intel_th_device* %3, %struct.intel_th_device** %tmp, align 8, !dbg !6110
  %4 = load %struct.intel_th_device*, %struct.intel_th_device** %tmp, align 8, !dbg !6109
  store %struct.intel_th_device* %4, %struct.intel_th_device** %thdev, align 8, !dbg !6106
  call void @llvm.dbg.declare(metadata %struct.intel_th** %th, metadata !6112, metadata !DIExpression()), !dbg !6113
  %5 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !6114
  %call = call %struct.intel_th* @to_intel_th(%struct.intel_th_device* %5) #9, !dbg !6115
  store %struct.intel_th* %call, %struct.intel_th** %th, align 8, !dbg !6113
  call void @llvm.dbg.declare(metadata i8** %node, metadata !6116, metadata !DIExpression()), !dbg !6117
  %6 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !6118
  %id = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %6, i32 0, i32 5, !dbg !6120
  %7 = load i32, i32* %id, align 8, !dbg !6120
  %cmp = icmp sge i32 %7, 0, !dbg !6121
  br i1 %cmp, label %if.then, label %if.else, !dbg !6122

if.then:                                          ; preds = %do.end
  %8 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !6123
  %id1 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %8, i32 0, i32 11, !dbg !6124
  %9 = load i32, i32* %id1, align 8, !dbg !6124
  %10 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !6125
  %name = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %10, i32 0, i32 8, !dbg !6126
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name, i64 0, i64 0, !dbg !6125
  %11 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !6127
  %id2 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %11, i32 0, i32 5, !dbg !6128
  %12 = load i32, i32* %id2, align 8, !dbg !6128
  %call3 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3264, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i32 %9, i8* %arraydecay, i32 %12) #9, !dbg !6129
  store i8* %call3, i8** %node, align 8, !dbg !6130
  br label %if.end, !dbg !6131

if.else:                                          ; preds = %do.end
  %13 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !6132
  %id4 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %13, i32 0, i32 11, !dbg !6133
  %14 = load i32, i32* %id4, align 8, !dbg !6133
  %15 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !6134
  %name5 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %15, i32 0, i32 8, !dbg !6135
  %arraydecay6 = getelementptr inbounds [0 x i8], [0 x i8]* %name5, i64 0, i64 0, !dbg !6134
  %call7 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3264, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 %14, i8* %arraydecay6) #9, !dbg !6136
  store i8* %call7, i8** %node, align 8, !dbg !6137
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load i8*, i8** %node, align 8, !dbg !6138
  ret i8* %16, !dbg !6139
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @port_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !6140 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %thdev = alloca %struct.intel_th_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.intel_th_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6141, metadata !DIExpression()), !dbg !6142
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6143, metadata !DIExpression()), !dbg !6144
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6145, metadata !DIExpression()), !dbg !6146
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev, metadata !6147, metadata !DIExpression()), !dbg !6148
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6149, metadata !DIExpression()), !dbg !6151
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6151
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6151
  store i8* %1, i8** %__mptr, align 8, !dbg !6151
  br label %do.body, !dbg !6151

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6152

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6151
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !6151
  %3 = bitcast i8* %add.ptr to %struct.intel_th_device*, !dbg !6151
  store %struct.intel_th_device* %3, %struct.intel_th_device** %tmp, align 8, !dbg !6152
  %4 = load %struct.intel_th_device*, %struct.intel_th_device** %tmp, align 8, !dbg !6151
  store %struct.intel_th_device* %4, %struct.intel_th_device** %thdev, align 8, !dbg !6148
  %5 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !6154
  %output = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %5, i32 0, i32 7, !dbg !6156
  %port = getelementptr inbounds %struct.intel_th_output, %struct.intel_th_output* %output, i32 0, i32 0, !dbg !6157
  %6 = load i32, i32* %port, align 8, !dbg !6157
  %cmp = icmp sge i32 %6, 0, !dbg !6158
  br i1 %cmp, label %if.then, label %if.end, !dbg !6159

if.then:                                          ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !6160
  %8 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !6161
  %output1 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %8, i32 0, i32 7, !dbg !6162
  %port2 = getelementptr inbounds %struct.intel_th_output, %struct.intel_th_output* %output1, i32 0, i32 0, !dbg !6163
  %9 = load i32, i32* %port2, align 8, !dbg !6163
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %7, i64 4096, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %9) #9, !dbg !6164
  %conv = sext i32 %call to i64, !dbg !6164
  store i64 %conv, i64* %retval, align 8, !dbg !6165
  br label %return, !dbg !6165

if.end:                                           ; preds = %do.end
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !6166
  %call3 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %10, i64 4096, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !6167
  %conv4 = sext i32 %call3 to i64, !dbg !6167
  store i64 %conv4, i64* %retval, align 8, !dbg !6168
  br label %return, !dbg !6168

return:                                           ; preds = %if.end, %if.then
  %11 = load i64, i64* %retval, align 8, !dbg !6169
  ret i64 %11, !dbg !6169
}

; Function Attrs: noredzone
declare dso_local i32 @scnprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @active_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !6170 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %thdev = alloca %struct.intel_th_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.intel_th_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6171, metadata !DIExpression()), !dbg !6172
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6173, metadata !DIExpression()), !dbg !6174
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6175, metadata !DIExpression()), !dbg !6176
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev, metadata !6177, metadata !DIExpression()), !dbg !6178
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6179, metadata !DIExpression()), !dbg !6181
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6181
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6181
  store i8* %1, i8** %__mptr, align 8, !dbg !6181
  br label %do.body, !dbg !6181

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6182

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6181
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !6181
  %3 = bitcast i8* %add.ptr to %struct.intel_th_device*, !dbg !6181
  store %struct.intel_th_device* %3, %struct.intel_th_device** %tmp, align 8, !dbg !6182
  %4 = load %struct.intel_th_device*, %struct.intel_th_device** %tmp, align 8, !dbg !6181
  store %struct.intel_th_device* %4, %struct.intel_th_device** %thdev, align 8, !dbg !6178
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !6184
  %6 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !6185
  %output = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %6, i32 0, i32 7, !dbg !6186
  %active = getelementptr inbounds %struct.intel_th_output, %struct.intel_th_output* %output, i32 0, i32 4, !dbg !6187
  %7 = load i8, i8* %active, align 1, !dbg !6187
  %tobool = trunc i8 %7 to i1, !dbg !6187
  %conv = zext i1 %tobool to i32, !dbg !6185
  %call = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %5, i64 4096, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 %conv) #9, !dbg !6188
  %conv1 = sext i32 %call to i64, !dbg !6188
  ret i64 %conv1, !dbg !6189
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @active_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %size) #0 !dbg !6190 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %thdev = alloca %struct.intel_th_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.intel_th_device*, align 8
  %val = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6191, metadata !DIExpression()), !dbg !6192
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !6193, metadata !DIExpression()), !dbg !6194
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !6195, metadata !DIExpression()), !dbg !6196
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6197, metadata !DIExpression()), !dbg !6198
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev, metadata !6199, metadata !DIExpression()), !dbg !6200
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6201, metadata !DIExpression()), !dbg !6203
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6203
  %1 = bitcast %struct.device* %0 to i8*, !dbg !6203
  store i8* %1, i8** %__mptr, align 8, !dbg !6203
  br label %do.body, !dbg !6203

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6204

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6203
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !6203
  %3 = bitcast i8* %add.ptr to %struct.intel_th_device*, !dbg !6203
  store %struct.intel_th_device* %3, %struct.intel_th_device** %tmp, align 8, !dbg !6204
  %4 = load %struct.intel_th_device*, %struct.intel_th_device** %tmp, align 8, !dbg !6203
  store %struct.intel_th_device* %4, %struct.intel_th_device** %thdev, align 8, !dbg !6200
  call void @llvm.dbg.declare(metadata i64* %val, metadata !6206, metadata !DIExpression()), !dbg !6207
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6208, metadata !DIExpression()), !dbg !6209
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !6210
  %call = call i32 @kstrtoul(i8* %5, i32 10, i64* %val) #9, !dbg !6211
  store i32 %call, i32* %ret, align 4, !dbg !6212
  %6 = load i32, i32* %ret, align 4, !dbg !6213
  %tobool = icmp ne i32 %6, 0, !dbg !6213
  br i1 %tobool, label %if.then, label %if.end, !dbg !6215

if.then:                                          ; preds = %do.end
  %7 = load i32, i32* %ret, align 4, !dbg !6216
  %conv = sext i32 %7 to i64, !dbg !6216
  store i64 %conv, i64* %retval, align 8, !dbg !6217
  br label %return, !dbg !6217

if.end:                                           ; preds = %do.end
  %8 = load i64, i64* %val, align 8, !dbg !6218
  %tobool1 = icmp ne i64 %8, 0, !dbg !6220
  %lnot = xor i1 %tobool1, true, !dbg !6220
  %lnot2 = xor i1 %lnot, true, !dbg !6221
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6221
  %9 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !6222
  %output = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %9, i32 0, i32 7, !dbg !6223
  %active = getelementptr inbounds %struct.intel_th_output, %struct.intel_th_output* %output, i32 0, i32 4, !dbg !6224
  %10 = load i8, i8* %active, align 1, !dbg !6224
  %tobool3 = trunc i8 %10 to i1, !dbg !6224
  %conv4 = zext i1 %tobool3 to i32, !dbg !6222
  %cmp = icmp ne i32 %lnot.ext, %conv4, !dbg !6225
  br i1 %cmp, label %if.then6, label %if.end11, !dbg !6226

if.then6:                                         ; preds = %if.end
  %11 = load i64, i64* %val, align 8, !dbg !6227
  %tobool7 = icmp ne i64 %11, 0, !dbg !6227
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !6230

if.then8:                                         ; preds = %if.then6
  %12 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !6231
  %call9 = call i32 @intel_th_output_activate(%struct.intel_th_device* %12) #9, !dbg !6232
  store i32 %call9, i32* %ret, align 4, !dbg !6233
  br label %if.end10, !dbg !6234

if.else:                                          ; preds = %if.then6
  %13 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev, align 8, !dbg !6235
  call void @intel_th_output_deactivate(%struct.intel_th_device* %13) #9, !dbg !6236
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  br label %if.end11, !dbg !6237

if.end11:                                         ; preds = %if.end10, %if.end
  %14 = load i32, i32* %ret, align 4, !dbg !6238
  %tobool12 = icmp ne i32 %14, 0, !dbg !6238
  br i1 %tobool12, label %cond.true, label %cond.false, !dbg !6238

cond.true:                                        ; preds = %if.end11
  %15 = load i32, i32* %ret, align 4, !dbg !6239
  %conv13 = sext i32 %15 to i64, !dbg !6239
  br label %cond.end, !dbg !6238

cond.false:                                       ; preds = %if.end11
  %16 = load i64, i64* %size.addr, align 8, !dbg !6240
  br label %cond.end, !dbg !6238

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv13, %cond.true ], [ %16, %cond.false ], !dbg !6238
  store i64 %cond, i64* %retval, align 8, !dbg !6241
  br label %return, !dbg !6241

return:                                           ; preds = %cond.end, %if.then
  %17 = load i64, i64* %retval, align 8, !dbg !6242
  ret i64 %17, !dbg !6242
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtoul(i8* %s, i32 %base, i64* %res) #0 !dbg !6243 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i64*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !6248, metadata !DIExpression()), !dbg !6249
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !6250, metadata !DIExpression()), !dbg !6251
  store i64* %res, i64** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %res.addr, metadata !6252, metadata !DIExpression()), !dbg !6253
  %0 = load i8*, i8** %s.addr, align 8, !dbg !6254
  %1 = load i32, i32* %base.addr, align 4, !dbg !6256
  %2 = load i64*, i64** %res.addr, align 8, !dbg !6257
  %call = call i32 @kstrtoull(i8* %0, i32 %1, i64* %2) #9, !dbg !6258
  ret i32 %call, !dbg !6259
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_th_output_activate(%struct.intel_th_device* %thdev) #0 !dbg !6260 {
entry:
  %retval = alloca i32, align 4
  %thdev.addr = alloca %struct.intel_th_device*, align 8
  %thdrv = alloca %struct.intel_th_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.intel_th_driver*, align 8
  %th = alloca %struct.intel_th*, align 8
  %ret = alloca i32, align 4
  store %struct.intel_th_device* %thdev, %struct.intel_th_device** %thdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev.addr, metadata !6261, metadata !DIExpression()), !dbg !6262
  call void @llvm.dbg.declare(metadata %struct.intel_th_driver** %thdrv, metadata !6263, metadata !DIExpression()), !dbg !6264
  %0 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !6265
  %dev = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %0, i32 0, i32 0, !dbg !6265
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 6, !dbg !6265
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !6265
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !6265
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6265

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6266, metadata !DIExpression()), !dbg !6268
  %2 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !6268
  %dev1 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %2, i32 0, i32 0, !dbg !6268
  %driver2 = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 6, !dbg !6268
  %3 = load %struct.device_driver*, %struct.device_driver** %driver2, align 8, !dbg !6268
  %4 = bitcast %struct.device_driver* %3 to i8*, !dbg !6268
  store i8* %4, i8** %__mptr, align 8, !dbg !6268
  br label %do.body, !dbg !6268

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !6269

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !6268
  %add.ptr = getelementptr i8, i8* %5, i64 0, !dbg !6268
  %6 = bitcast i8* %add.ptr to %struct.intel_th_driver*, !dbg !6268
  store %struct.intel_th_driver* %6, %struct.intel_th_driver** %tmp, align 8, !dbg !6269
  %7 = load %struct.intel_th_driver*, %struct.intel_th_driver** %tmp, align 8, !dbg !6268
  br label %cond.end, !dbg !6265

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6265

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.intel_th_driver* [ %7, %do.end ], [ null, %cond.false ], !dbg !6265
  store %struct.intel_th_driver* %cond, %struct.intel_th_driver** %thdrv, align 8, !dbg !6264
  call void @llvm.dbg.declare(metadata %struct.intel_th** %th, metadata !6271, metadata !DIExpression()), !dbg !6272
  %8 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !6273
  %call = call %struct.intel_th* @to_intel_th(%struct.intel_th_device* %8) #9, !dbg !6274
  store %struct.intel_th* %call, %struct.intel_th** %th, align 8, !dbg !6272
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6275, metadata !DIExpression()), !dbg !6276
  store i32 0, i32* %ret, align 4, !dbg !6276
  %9 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv, align 8, !dbg !6277
  %tobool3 = icmp ne %struct.intel_th_driver* %9, null, !dbg !6277
  br i1 %tobool3, label %if.end, label %if.then, !dbg !6279

if.then:                                          ; preds = %cond.end
  store i32 -19, i32* %retval, align 4, !dbg !6280
  br label %return, !dbg !6280

if.end:                                           ; preds = %cond.end
  %10 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv, align 8, !dbg !6281
  %driver4 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %10, i32 0, i32 0, !dbg !6283
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver4, i32 0, i32 2, !dbg !6284
  %11 = load %struct.module*, %struct.module** %owner, align 8, !dbg !6284
  %call5 = call zeroext i1 @try_module_get(%struct.module* %11) #9, !dbg !6285
  br i1 %call5, label %if.end7, label %if.then6, !dbg !6286

if.then6:                                         ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !6287
  br label %return, !dbg !6287

if.end7:                                          ; preds = %if.end
  %12 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !6288
  %dev8 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %12, i32 0, i32 0, !dbg !6289
  %call9 = call i32 @pm_runtime_get_sync(%struct.device* %dev8) #9, !dbg !6290
  %13 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !6291
  %activate = getelementptr inbounds %struct.intel_th, %struct.intel_th* %13, i32 0, i32 5, !dbg !6293
  %14 = load i32 (%struct.intel_th*)*, i32 (%struct.intel_th*)** %activate, align 8, !dbg !6293
  %tobool10 = icmp ne i32 (%struct.intel_th*)* %14, null, !dbg !6291
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !6294

if.then11:                                        ; preds = %if.end7
  %15 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !6295
  %activate12 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %15, i32 0, i32 5, !dbg !6296
  %16 = load i32 (%struct.intel_th*)*, i32 (%struct.intel_th*)** %activate12, align 8, !dbg !6296
  %17 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !6297
  %call13 = call i32 %16(%struct.intel_th* %17) #9, !dbg !6295
  store i32 %call13, i32* %ret, align 4, !dbg !6298
  br label %if.end14, !dbg !6299

if.end14:                                         ; preds = %if.then11, %if.end7
  %18 = load i32, i32* %ret, align 4, !dbg !6300
  %tobool15 = icmp ne i32 %18, 0, !dbg !6300
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6302

if.then16:                                        ; preds = %if.end14
  br label %fail_put, !dbg !6303

if.end17:                                         ; preds = %if.end14
  %19 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv, align 8, !dbg !6304
  %activate18 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %19, i32 0, i32 10, !dbg !6306
  %20 = load i32 (%struct.intel_th_device*)*, i32 (%struct.intel_th_device*)** %activate18, align 8, !dbg !6306
  %tobool19 = icmp ne i32 (%struct.intel_th_device*)* %20, null, !dbg !6304
  br i1 %tobool19, label %if.then20, label %if.else, !dbg !6307

if.then20:                                        ; preds = %if.end17
  %21 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv, align 8, !dbg !6308
  %activate21 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %21, i32 0, i32 10, !dbg !6309
  %22 = load i32 (%struct.intel_th_device*)*, i32 (%struct.intel_th_device*)** %activate21, align 8, !dbg !6309
  %23 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !6310
  %call22 = call i32 %22(%struct.intel_th_device* %23) #9, !dbg !6308
  store i32 %call22, i32* %ret, align 4, !dbg !6311
  br label %if.end24, !dbg !6312

if.else:                                          ; preds = %if.end17
  %24 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !6313
  %call23 = call i32 @intel_th_trace_enable(%struct.intel_th_device* %24) #9, !dbg !6314
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then20
  %25 = load i32, i32* %ret, align 4, !dbg !6315
  %tobool25 = icmp ne i32 %25, 0, !dbg !6315
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !6317

if.then26:                                        ; preds = %if.end24
  br label %fail_deactivate, !dbg !6318

if.end27:                                         ; preds = %if.end24
  store i32 0, i32* %retval, align 4, !dbg !6319
  br label %return, !dbg !6319

fail_deactivate:                                  ; preds = %if.then26
  call void @llvm.dbg.label(metadata !6320), !dbg !6321
  %26 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !6322
  %deactivate = getelementptr inbounds %struct.intel_th, %struct.intel_th* %26, i32 0, i32 6, !dbg !6324
  %27 = load void (%struct.intel_th*)*, void (%struct.intel_th*)** %deactivate, align 8, !dbg !6324
  %tobool28 = icmp ne void (%struct.intel_th*)* %27, null, !dbg !6322
  br i1 %tobool28, label %if.then29, label %if.end31, !dbg !6325

if.then29:                                        ; preds = %fail_deactivate
  %28 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !6326
  %deactivate30 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %28, i32 0, i32 6, !dbg !6327
  %29 = load void (%struct.intel_th*)*, void (%struct.intel_th*)** %deactivate30, align 8, !dbg !6327
  %30 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !6328
  call void %29(%struct.intel_th* %30) #9, !dbg !6326
  br label %if.end31, !dbg !6326

if.end31:                                         ; preds = %if.then29, %fail_deactivate
  br label %fail_put, !dbg !6324

fail_put:                                         ; preds = %if.end31, %if.then16
  call void @llvm.dbg.label(metadata !6329), !dbg !6330
  %31 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !6331
  %dev32 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %31, i32 0, i32 0, !dbg !6332
  %call33 = call i32 @pm_runtime_put(%struct.device* %dev32) #9, !dbg !6333
  %32 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv, align 8, !dbg !6334
  %driver34 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %32, i32 0, i32 0, !dbg !6335
  %owner35 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver34, i32 0, i32 2, !dbg !6336
  %33 = load %struct.module*, %struct.module** %owner35, align 8, !dbg !6336
  call void @module_put(%struct.module* %33) #9, !dbg !6337
  %34 = load i32, i32* %ret, align 4, !dbg !6338
  store i32 %34, i32* %retval, align 4, !dbg !6339
  br label %return, !dbg !6339

return:                                           ; preds = %fail_put, %if.end27, %if.then6, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !6340
  ret i32 %35, !dbg !6340
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @intel_th_output_deactivate(%struct.intel_th_device* %thdev) #0 !dbg !6341 {
entry:
  %thdev.addr = alloca %struct.intel_th_device*, align 8
  %thdrv = alloca %struct.intel_th_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.intel_th_driver*, align 8
  %th = alloca %struct.intel_th*, align 8
  store %struct.intel_th_device* %thdev, %struct.intel_th_device** %thdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.intel_th_device** %thdev.addr, metadata !6342, metadata !DIExpression()), !dbg !6343
  call void @llvm.dbg.declare(metadata %struct.intel_th_driver** %thdrv, metadata !6344, metadata !DIExpression()), !dbg !6345
  %0 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !6346
  %dev = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %0, i32 0, i32 0, !dbg !6346
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 6, !dbg !6346
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !6346
  %tobool = icmp ne %struct.device_driver* %1, null, !dbg !6346
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6346

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6347, metadata !DIExpression()), !dbg !6349
  %2 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !6349
  %dev1 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %2, i32 0, i32 0, !dbg !6349
  %driver2 = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 6, !dbg !6349
  %3 = load %struct.device_driver*, %struct.device_driver** %driver2, align 8, !dbg !6349
  %4 = bitcast %struct.device_driver* %3 to i8*, !dbg !6349
  store i8* %4, i8** %__mptr, align 8, !dbg !6349
  br label %do.body, !dbg !6349

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !6350

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !6349
  %add.ptr = getelementptr i8, i8* %5, i64 0, !dbg !6349
  %6 = bitcast i8* %add.ptr to %struct.intel_th_driver*, !dbg !6349
  store %struct.intel_th_driver* %6, %struct.intel_th_driver** %tmp, align 8, !dbg !6350
  %7 = load %struct.intel_th_driver*, %struct.intel_th_driver** %tmp, align 8, !dbg !6349
  br label %cond.end, !dbg !6346

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6346

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.intel_th_driver* [ %7, %do.end ], [ null, %cond.false ], !dbg !6346
  store %struct.intel_th_driver* %cond, %struct.intel_th_driver** %thdrv, align 8, !dbg !6345
  call void @llvm.dbg.declare(metadata %struct.intel_th** %th, metadata !6352, metadata !DIExpression()), !dbg !6353
  %8 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !6354
  %call = call %struct.intel_th* @to_intel_th(%struct.intel_th_device* %8) #9, !dbg !6355
  store %struct.intel_th* %call, %struct.intel_th** %th, align 8, !dbg !6353
  %9 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv, align 8, !dbg !6356
  %tobool3 = icmp ne %struct.intel_th_driver* %9, null, !dbg !6356
  br i1 %tobool3, label %if.end, label %if.then, !dbg !6358

if.then:                                          ; preds = %cond.end
  br label %return, !dbg !6359

if.end:                                           ; preds = %cond.end
  %10 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv, align 8, !dbg !6360
  %deactivate = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %10, i32 0, i32 11, !dbg !6362
  %11 = load void (%struct.intel_th_device*)*, void (%struct.intel_th_device*)** %deactivate, align 8, !dbg !6362
  %tobool4 = icmp ne void (%struct.intel_th_device*)* %11, null, !dbg !6360
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !6363

if.then5:                                         ; preds = %if.end
  %12 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv, align 8, !dbg !6364
  %deactivate6 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %12, i32 0, i32 11, !dbg !6365
  %13 = load void (%struct.intel_th_device*)*, void (%struct.intel_th_device*)** %deactivate6, align 8, !dbg !6365
  %14 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !6366
  call void %13(%struct.intel_th_device* %14) #9, !dbg !6364
  br label %if.end8, !dbg !6364

if.else:                                          ; preds = %if.end
  %15 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !6367
  %call7 = call i32 @intel_th_trace_disable(%struct.intel_th_device* %15) #9, !dbg !6368
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %16 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !6369
  %deactivate9 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %16, i32 0, i32 6, !dbg !6371
  %17 = load void (%struct.intel_th*)*, void (%struct.intel_th*)** %deactivate9, align 8, !dbg !6371
  %tobool10 = icmp ne void (%struct.intel_th*)* %17, null, !dbg !6369
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !6372

if.then11:                                        ; preds = %if.end8
  %18 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !6373
  %deactivate12 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %18, i32 0, i32 6, !dbg !6374
  %19 = load void (%struct.intel_th*)*, void (%struct.intel_th*)** %deactivate12, align 8, !dbg !6374
  %20 = load %struct.intel_th*, %struct.intel_th** %th, align 8, !dbg !6375
  call void %19(%struct.intel_th* %20) #9, !dbg !6373
  br label %if.end13, !dbg !6373

if.end13:                                         ; preds = %if.then11, %if.end8
  %21 = load %struct.intel_th_device*, %struct.intel_th_device** %thdev.addr, align 8, !dbg !6376
  %dev14 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %21, i32 0, i32 0, !dbg !6377
  %call15 = call i32 @pm_runtime_put(%struct.device* %dev14) #9, !dbg !6378
  %22 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv, align 8, !dbg !6379
  %driver16 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %22, i32 0, i32 0, !dbg !6380
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver16, i32 0, i32 2, !dbg !6381
  %23 = load %struct.module*, %struct.module** %owner, align 8, !dbg !6381
  call void @module_put(%struct.module* %23) #9, !dbg !6382
  br label %return, !dbg !6383

return:                                           ; preds = %if.end13, %if.then
  ret void, !dbg !6383
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtoull(i8*, i32, i64*) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kasprintf(i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @kmemdup(i8*, i64, i32) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !6384 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6388, metadata !DIExpression()), !dbg !6393
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6395, metadata !DIExpression()), !dbg !6396
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6397, metadata !DIExpression()), !dbg !6398
  %0 = load i64, i64* %size.addr, align 8, !dbg !6399
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6401
  br i1 %1, label %if.then, label %if.end447, !dbg !6402

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6403
  %tobool = icmp ne i64 %2, 0, !dbg !6403
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6406

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6407
  br label %return, !dbg !6407

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6408
  %cmp = icmp ult i64 %3, 4096, !dbg !6410
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6411

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6412
  br label %return, !dbg !6412

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub = sub i64 %4, 1, !dbg !6413
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6413
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6413

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub4 = sub i64 %6, 1, !dbg !6413
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6413
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6413

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub6 = sub i64 %8, 1, !dbg !6413
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6413
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6413

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6413

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub9 = sub i64 %9, 1, !dbg !6413
  %and = and i64 %sub9, -9223372036854775808, !dbg !6413
  %tobool10 = icmp ne i64 %and, 0, !dbg !6413
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6413

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6413

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub13 = sub i64 %10, 1, !dbg !6413
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6413
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6413
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6413

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6413

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub18 = sub i64 %11, 1, !dbg !6413
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6413
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6413
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6413

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6413

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub23 = sub i64 %12, 1, !dbg !6413
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6413
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6413
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6413

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6413

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub28 = sub i64 %13, 1, !dbg !6413
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6413
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6413
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6413

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6413

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub33 = sub i64 %14, 1, !dbg !6413
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6413
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6413
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6413

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6413

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub38 = sub i64 %15, 1, !dbg !6413
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6413
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6413
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6413

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6413

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub43 = sub i64 %16, 1, !dbg !6413
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6413
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6413
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6413

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6413

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub48 = sub i64 %17, 1, !dbg !6413
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6413
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6413
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6413

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6413

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub53 = sub i64 %18, 1, !dbg !6413
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6413
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6413
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6413

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6413

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub58 = sub i64 %19, 1, !dbg !6413
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6413
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6413
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6413

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6413

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub63 = sub i64 %20, 1, !dbg !6413
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6413
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6413
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6413

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6413

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub68 = sub i64 %21, 1, !dbg !6413
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6413
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6413
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6413

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6413

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub73 = sub i64 %22, 1, !dbg !6413
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6413
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6413
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6413

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6413

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub78 = sub i64 %23, 1, !dbg !6413
  %and79 = and i64 %sub78, 562949953421312, !dbg !6413
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6413
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6413

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6413

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub83 = sub i64 %24, 1, !dbg !6413
  %and84 = and i64 %sub83, 281474976710656, !dbg !6413
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6413
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6413

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6413

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub88 = sub i64 %25, 1, !dbg !6413
  %and89 = and i64 %sub88, 140737488355328, !dbg !6413
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6413
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6413

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6413

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub93 = sub i64 %26, 1, !dbg !6413
  %and94 = and i64 %sub93, 70368744177664, !dbg !6413
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6413
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6413

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6413

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub98 = sub i64 %27, 1, !dbg !6413
  %and99 = and i64 %sub98, 35184372088832, !dbg !6413
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6413
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6413

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6413

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub103 = sub i64 %28, 1, !dbg !6413
  %and104 = and i64 %sub103, 17592186044416, !dbg !6413
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6413
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6413

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6413

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub108 = sub i64 %29, 1, !dbg !6413
  %and109 = and i64 %sub108, 8796093022208, !dbg !6413
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6413
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6413

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6413

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub113 = sub i64 %30, 1, !dbg !6413
  %and114 = and i64 %sub113, 4398046511104, !dbg !6413
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6413
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6413

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6413

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub118 = sub i64 %31, 1, !dbg !6413
  %and119 = and i64 %sub118, 2199023255552, !dbg !6413
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6413
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6413

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6413

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub123 = sub i64 %32, 1, !dbg !6413
  %and124 = and i64 %sub123, 1099511627776, !dbg !6413
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6413
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6413

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6413

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub128 = sub i64 %33, 1, !dbg !6413
  %and129 = and i64 %sub128, 549755813888, !dbg !6413
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6413
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6413

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6413

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub133 = sub i64 %34, 1, !dbg !6413
  %and134 = and i64 %sub133, 274877906944, !dbg !6413
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6413
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6413

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6413

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub138 = sub i64 %35, 1, !dbg !6413
  %and139 = and i64 %sub138, 137438953472, !dbg !6413
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6413
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6413

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6413

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub143 = sub i64 %36, 1, !dbg !6413
  %and144 = and i64 %sub143, 68719476736, !dbg !6413
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6413
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6413

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6413

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub148 = sub i64 %37, 1, !dbg !6413
  %and149 = and i64 %sub148, 34359738368, !dbg !6413
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6413
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6413

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6413

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub153 = sub i64 %38, 1, !dbg !6413
  %and154 = and i64 %sub153, 17179869184, !dbg !6413
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6413
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6413

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6413

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub158 = sub i64 %39, 1, !dbg !6413
  %and159 = and i64 %sub158, 8589934592, !dbg !6413
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6413
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6413

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6413

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub163 = sub i64 %40, 1, !dbg !6413
  %and164 = and i64 %sub163, 4294967296, !dbg !6413
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6413
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6413

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6413

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub168 = sub i64 %41, 1, !dbg !6413
  %and169 = and i64 %sub168, 2147483648, !dbg !6413
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6413
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6413

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6413

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub173 = sub i64 %42, 1, !dbg !6413
  %and174 = and i64 %sub173, 1073741824, !dbg !6413
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6413
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6413

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6413

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub178 = sub i64 %43, 1, !dbg !6413
  %and179 = and i64 %sub178, 536870912, !dbg !6413
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6413
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6413

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6413

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub183 = sub i64 %44, 1, !dbg !6413
  %and184 = and i64 %sub183, 268435456, !dbg !6413
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6413
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6413

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6413

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub188 = sub i64 %45, 1, !dbg !6413
  %and189 = and i64 %sub188, 134217728, !dbg !6413
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6413
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6413

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6413

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub193 = sub i64 %46, 1, !dbg !6413
  %and194 = and i64 %sub193, 67108864, !dbg !6413
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6413
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6413

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6413

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub198 = sub i64 %47, 1, !dbg !6413
  %and199 = and i64 %sub198, 33554432, !dbg !6413
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6413
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6413

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6413

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub203 = sub i64 %48, 1, !dbg !6413
  %and204 = and i64 %sub203, 16777216, !dbg !6413
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6413
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6413

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6413

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub208 = sub i64 %49, 1, !dbg !6413
  %and209 = and i64 %sub208, 8388608, !dbg !6413
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6413
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6413

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6413

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub213 = sub i64 %50, 1, !dbg !6413
  %and214 = and i64 %sub213, 4194304, !dbg !6413
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6413
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6413

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6413

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub218 = sub i64 %51, 1, !dbg !6413
  %and219 = and i64 %sub218, 2097152, !dbg !6413
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6413
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6413

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6413

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub223 = sub i64 %52, 1, !dbg !6413
  %and224 = and i64 %sub223, 1048576, !dbg !6413
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6413
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6413

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6413

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub228 = sub i64 %53, 1, !dbg !6413
  %and229 = and i64 %sub228, 524288, !dbg !6413
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6413
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6413

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6413

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub233 = sub i64 %54, 1, !dbg !6413
  %and234 = and i64 %sub233, 262144, !dbg !6413
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6413
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6413

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6413

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub238 = sub i64 %55, 1, !dbg !6413
  %and239 = and i64 %sub238, 131072, !dbg !6413
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6413
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6413

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6413

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub243 = sub i64 %56, 1, !dbg !6413
  %and244 = and i64 %sub243, 65536, !dbg !6413
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6413
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6413

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6413

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub248 = sub i64 %57, 1, !dbg !6413
  %and249 = and i64 %sub248, 32768, !dbg !6413
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6413
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6413

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6413

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub253 = sub i64 %58, 1, !dbg !6413
  %and254 = and i64 %sub253, 16384, !dbg !6413
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6413
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6413

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6413

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub258 = sub i64 %59, 1, !dbg !6413
  %and259 = and i64 %sub258, 8192, !dbg !6413
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6413
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6413

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6413

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub263 = sub i64 %60, 1, !dbg !6413
  %and264 = and i64 %sub263, 4096, !dbg !6413
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6413
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6413

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6413

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub268 = sub i64 %61, 1, !dbg !6413
  %and269 = and i64 %sub268, 2048, !dbg !6413
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6413
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6413

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6413

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub273 = sub i64 %62, 1, !dbg !6413
  %and274 = and i64 %sub273, 1024, !dbg !6413
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6413
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6413

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6413

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub278 = sub i64 %63, 1, !dbg !6413
  %and279 = and i64 %sub278, 512, !dbg !6413
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6413
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6413

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6413

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub283 = sub i64 %64, 1, !dbg !6413
  %and284 = and i64 %sub283, 256, !dbg !6413
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6413
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6413

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6413

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub288 = sub i64 %65, 1, !dbg !6413
  %and289 = and i64 %sub288, 128, !dbg !6413
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6413
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6413

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6413

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub293 = sub i64 %66, 1, !dbg !6413
  %and294 = and i64 %sub293, 64, !dbg !6413
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6413
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6413

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6413

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub298 = sub i64 %67, 1, !dbg !6413
  %and299 = and i64 %sub298, 32, !dbg !6413
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6413
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6413

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6413

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub303 = sub i64 %68, 1, !dbg !6413
  %and304 = and i64 %sub303, 16, !dbg !6413
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6413
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6413

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6413

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub308 = sub i64 %69, 1, !dbg !6413
  %and309 = and i64 %sub308, 8, !dbg !6413
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6413
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6413

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6413

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub313 = sub i64 %70, 1, !dbg !6413
  %and314 = and i64 %sub313, 4, !dbg !6413
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6413
  %71 = zext i1 %tobool315 to i64, !dbg !6413
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6413
  br label %cond.end, !dbg !6413

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6413
  br label %cond.end317, !dbg !6413

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6413
  br label %cond.end319, !dbg !6413

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6413
  br label %cond.end321, !dbg !6413

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6413
  br label %cond.end323, !dbg !6413

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6413
  br label %cond.end325, !dbg !6413

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6413
  br label %cond.end327, !dbg !6413

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6413
  br label %cond.end329, !dbg !6413

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6413
  br label %cond.end331, !dbg !6413

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6413
  br label %cond.end333, !dbg !6413

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6413
  br label %cond.end335, !dbg !6413

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6413
  br label %cond.end337, !dbg !6413

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6413
  br label %cond.end339, !dbg !6413

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6413
  br label %cond.end341, !dbg !6413

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6413
  br label %cond.end343, !dbg !6413

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6413
  br label %cond.end345, !dbg !6413

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6413
  br label %cond.end347, !dbg !6413

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6413
  br label %cond.end349, !dbg !6413

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6413
  br label %cond.end351, !dbg !6413

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6413
  br label %cond.end353, !dbg !6413

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6413
  br label %cond.end355, !dbg !6413

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6413
  br label %cond.end357, !dbg !6413

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6413
  br label %cond.end359, !dbg !6413

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6413
  br label %cond.end361, !dbg !6413

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6413
  br label %cond.end363, !dbg !6413

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6413
  br label %cond.end365, !dbg !6413

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6413
  br label %cond.end367, !dbg !6413

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6413
  br label %cond.end369, !dbg !6413

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6413
  br label %cond.end371, !dbg !6413

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6413
  br label %cond.end373, !dbg !6413

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6413
  br label %cond.end375, !dbg !6413

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6413
  br label %cond.end377, !dbg !6413

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6413
  br label %cond.end379, !dbg !6413

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6413
  br label %cond.end381, !dbg !6413

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6413
  br label %cond.end383, !dbg !6413

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6413
  br label %cond.end385, !dbg !6413

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6413
  br label %cond.end387, !dbg !6413

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6413
  br label %cond.end389, !dbg !6413

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6413
  br label %cond.end391, !dbg !6413

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6413
  br label %cond.end393, !dbg !6413

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6413
  br label %cond.end395, !dbg !6413

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6413
  br label %cond.end397, !dbg !6413

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6413
  br label %cond.end399, !dbg !6413

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6413
  br label %cond.end401, !dbg !6413

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6413
  br label %cond.end403, !dbg !6413

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6413
  br label %cond.end405, !dbg !6413

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6413
  br label %cond.end407, !dbg !6413

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6413
  br label %cond.end409, !dbg !6413

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6413
  br label %cond.end411, !dbg !6413

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6413
  br label %cond.end413, !dbg !6413

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6413
  br label %cond.end415, !dbg !6413

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6413
  br label %cond.end417, !dbg !6413

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6413
  br label %cond.end419, !dbg !6413

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6413
  br label %cond.end421, !dbg !6413

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6413
  br label %cond.end423, !dbg !6413

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6413
  br label %cond.end425, !dbg !6413

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6413
  br label %cond.end427, !dbg !6413

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6413
  br label %cond.end429, !dbg !6413

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6413
  br label %cond.end431, !dbg !6413

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6413
  br label %cond.end433, !dbg !6413

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6413
  br label %cond.end435, !dbg !6413

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6413
  br label %cond.end437, !dbg !6413

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6413
  br label %cond.end440, !dbg !6413

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6413

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6413
  br label %cond.end444, !dbg !6413

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6413
  %sub443 = sub i64 %72, 1, !dbg !6413
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !6413
  br label %cond.end444, !dbg !6413

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6413
  %sub446 = sub i32 %cond445, 12, !dbg !6414
  %add = add i32 %sub446, 1, !dbg !6415
  store i32 %add, i32* %retval, align 4, !dbg !6416
  br label %return, !dbg !6416

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6417
  %dec = add i64 %73, -1, !dbg !6417
  store i64 %dec, i64* %size.addr, align 8, !dbg !6417
  %74 = load i64, i64* %size.addr, align 8, !dbg !6418
  %shr = lshr i64 %74, 12, !dbg !6418
  store i64 %shr, i64* %size.addr, align 8, !dbg !6418
  %75 = load i64, i64* %size.addr, align 8, !dbg !6419
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6396
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6420
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6421
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !6420, !srcloc !6422
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6420
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6423
  %add.i = add i32 %79, 1, !dbg !6424
  store i32 %add.i, i32* %retval, align 4, !dbg !6425
  br label %return, !dbg !6425

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6426
  ret i32 %80, !dbg !6426
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !6427 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6388, metadata !DIExpression()), !dbg !6431
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6395, metadata !DIExpression()), !dbg !6433
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6434, metadata !DIExpression()), !dbg !6435
  %0 = load i64, i64* %n.addr, align 8, !dbg !6436
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6433
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6437
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6438
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !6437, !srcloc !6422
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6437
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6439
  %add.i = add i32 %4, 1, !dbg !6440
  %sub = sub i32 %add.i, 1, !dbg !6441
  ret i32 %sub, !dbg !6442
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !6443 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6447, metadata !DIExpression()), !dbg !6448
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6449, metadata !DIExpression()), !dbg !6450
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6451, metadata !DIExpression()), !dbg !6452
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6453, metadata !DIExpression()), !dbg !6454
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6455
  ret i8* %0, !dbg !6456
}

; Function Attrs: noredzone
declare dso_local i64 @noop_llseek(%struct.file*, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @intel_th_output_open(%struct.inode* %inode, %struct.file* %file) #0 !dbg !6457 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  %fops = alloca %struct.file_operations*, align 8
  %thdrv = alloca %struct.intel_th_driver*, align 8
  %dev = alloca %struct.device*, align 8
  %err = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.intel_th_driver*, align 8
  %__file = alloca %struct.file*, align 8
  %__mptr37 = alloca i8*, align 8
  %tmp40 = alloca %struct.intel_th_device*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !6458, metadata !DIExpression()), !dbg !6459
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !6460, metadata !DIExpression()), !dbg !6461
  call void @llvm.dbg.declare(metadata %struct.file_operations** %fops, metadata !6462, metadata !DIExpression()), !dbg !6463
  call void @llvm.dbg.declare(metadata %struct.intel_th_driver** %thdrv, metadata !6464, metadata !DIExpression()), !dbg !6465
  call void @llvm.dbg.declare(metadata %struct.device** %dev, metadata !6466, metadata !DIExpression()), !dbg !6467
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6468, metadata !DIExpression()), !dbg !6469
  %0 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !6470
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %0, i32 0, i32 10, !dbg !6471
  %1 = load i32, i32* %i_rdev, align 4, !dbg !6471
  %call = call %struct.device* @bus_find_device_by_devt(%struct.bus_type* @intel_th_bus, i32 %1) #9, !dbg !6472
  store %struct.device* %call, %struct.device** %dev, align 8, !dbg !6473
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6474
  %tobool = icmp ne %struct.device* %2, null, !dbg !6474
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6476

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6477
  %driver = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 6, !dbg !6478
  %4 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !6478
  %tobool1 = icmp ne %struct.device_driver* %4, null, !dbg !6477
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6479

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, i32* %retval, align 4, !dbg !6480
  br label %return, !dbg !6480

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6481, metadata !DIExpression()), !dbg !6483
  %5 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6483
  %driver2 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 6, !dbg !6483
  %6 = load %struct.device_driver*, %struct.device_driver** %driver2, align 8, !dbg !6483
  %7 = bitcast %struct.device_driver* %6 to i8*, !dbg !6483
  store i8* %7, i8** %__mptr, align 8, !dbg !6483
  br label %do.body, !dbg !6483

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !6484

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !6483
  %add.ptr = getelementptr i8, i8* %8, i64 0, !dbg !6483
  %9 = bitcast i8* %add.ptr to %struct.intel_th_driver*, !dbg !6483
  store %struct.intel_th_driver* %9, %struct.intel_th_driver** %tmp, align 8, !dbg !6484
  %10 = load %struct.intel_th_driver*, %struct.intel_th_driver** %tmp, align 8, !dbg !6483
  store %struct.intel_th_driver* %10, %struct.intel_th_driver** %thdrv, align 8, !dbg !6486
  %11 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv, align 8, !dbg !6487
  %fops3 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %11, i32 0, i32 12, !dbg !6487
  %12 = load %struct.file_operations*, %struct.file_operations** %fops3, align 8, !dbg !6487
  %tobool4 = icmp ne %struct.file_operations* %12, null, !dbg !6487
  br i1 %tobool4, label %land.lhs.true, label %cond.false, !dbg !6487

land.lhs.true:                                    ; preds = %do.end
  %13 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv, align 8, !dbg !6487
  %fops5 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %13, i32 0, i32 12, !dbg !6487
  %14 = load %struct.file_operations*, %struct.file_operations** %fops5, align 8, !dbg !6487
  %owner = getelementptr inbounds %struct.file_operations, %struct.file_operations* %14, i32 0, i32 0, !dbg !6487
  %15 = load %struct.module*, %struct.module** %owner, align 8, !dbg !6487
  %call6 = call zeroext i1 @try_module_get(%struct.module* %15) #9, !dbg !6487
  br i1 %call6, label %cond.true, label %cond.false, !dbg !6487

cond.true:                                        ; preds = %land.lhs.true
  %16 = load %struct.intel_th_driver*, %struct.intel_th_driver** %thdrv, align 8, !dbg !6487
  %fops7 = getelementptr inbounds %struct.intel_th_driver, %struct.intel_th_driver* %16, i32 0, i32 12, !dbg !6487
  %17 = load %struct.file_operations*, %struct.file_operations** %fops7, align 8, !dbg !6487
  br label %cond.end, !dbg !6487

cond.false:                                       ; preds = %land.lhs.true, %do.end
  br label %cond.end, !dbg !6487

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.file_operations* [ %17, %cond.true ], [ null, %cond.false ], !dbg !6487
  store %struct.file_operations* %cond, %struct.file_operations** %fops, align 8, !dbg !6488
  %18 = load %struct.file_operations*, %struct.file_operations** %fops, align 8, !dbg !6489
  %tobool8 = icmp ne %struct.file_operations* %18, null, !dbg !6489
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !6491

if.then9:                                         ; preds = %cond.end
  store i32 -19, i32* %retval, align 4, !dbg !6492
  br label %return, !dbg !6492

if.end10:                                         ; preds = %cond.end
  br label %do.body11, !dbg !6493

do.body11:                                        ; preds = %if.end10
  call void @llvm.dbg.declare(metadata %struct.file** %__file, metadata !6494, metadata !DIExpression()), !dbg !6496
  %19 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !6496
  store %struct.file* %19, %struct.file** %__file, align 8, !dbg !6496
  br label %do.body12, !dbg !6496

do.body12:                                        ; preds = %do.body11
  %20 = load %struct.file*, %struct.file** %__file, align 8, !dbg !6497
  %f_op = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 3, !dbg !6497
  %21 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8, !dbg !6497
  %tobool13 = icmp ne %struct.file_operations* %21, null, !dbg !6497
  br i1 %tobool13, label %if.then14, label %if.end17, !dbg !6500

if.then14:                                        ; preds = %do.body12
  %22 = load %struct.file*, %struct.file** %__file, align 8, !dbg !6497
  %f_op15 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 3, !dbg !6497
  %23 = load %struct.file_operations*, %struct.file_operations** %f_op15, align 8, !dbg !6497
  %owner16 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %23, i32 0, i32 0, !dbg !6497
  %24 = load %struct.module*, %struct.module** %owner16, align 8, !dbg !6497
  call void @module_put(%struct.module* %24) #9, !dbg !6497
  br label %if.end17, !dbg !6497

if.end17:                                         ; preds = %if.then14, %do.body12
  br label %do.end18, !dbg !6500

do.end18:                                         ; preds = %if.end17
  br label %do.body19, !dbg !6496

do.body19:                                        ; preds = %do.end18
  %25 = load %struct.file_operations*, %struct.file_operations** %fops, align 8, !dbg !6501
  %26 = load %struct.file*, %struct.file** %__file, align 8, !dbg !6501
  %f_op20 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 3, !dbg !6501
  store %struct.file_operations* %25, %struct.file_operations** %f_op20, align 8, !dbg !6501
  %tobool21 = icmp ne %struct.file_operations* %25, null, !dbg !6501
  %lnot = xor i1 %tobool21, true, !dbg !6501
  %lnot22 = xor i1 %lnot, true, !dbg !6501
  %lnot23 = xor i1 %lnot22, true, !dbg !6501
  %lnot.ext = zext i1 %lnot23 to i32, !dbg !6501
  %conv = sext i32 %lnot.ext to i64, !dbg !6501
  %tobool24 = icmp ne i64 %conv, 0, !dbg !6501
  br i1 %tobool24, label %if.then25, label %if.end34, !dbg !6504

if.then25:                                        ; preds = %do.body19
  br label %do.body26, !dbg !6501

do.body26:                                        ; preds = %if.then25
  br label %do.body27, !dbg !6505

do.body27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !6507

do.end28:                                         ; preds = %do.body27
  br label %do.body29, !dbg !6505

do.body29:                                        ; preds = %do.end28
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 804, i32 0, i64 12) #11, !dbg !6509, !srcloc !6511
  br label %do.end30, !dbg !6509

do.end30:                                         ; preds = %do.body29
  br label %do.body31, !dbg !6505

do.body31:                                        ; preds = %do.end30
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 258) #11, !dbg !6512, !srcloc !6515
  unreachable, !dbg !6516

do.end32:                                         ; No predecessors!
  br label %do.end33, !dbg !6505

do.end33:                                         ; preds = %do.end32
  br label %if.end34, !dbg !6505

if.end34:                                         ; preds = %do.end33, %do.body19
  br label %do.end35, !dbg !6504

do.end35:                                         ; preds = %if.end34
  br label %do.end36, !dbg !6496

do.end36:                                         ; preds = %do.end35
  call void @llvm.dbg.declare(metadata i8** %__mptr37, metadata !6517, metadata !DIExpression()), !dbg !6519
  %27 = load %struct.device*, %struct.device** %dev, align 8, !dbg !6519
  %28 = bitcast %struct.device* %27 to i8*, !dbg !6519
  store i8* %28, i8** %__mptr37, align 8, !dbg !6519
  br label %do.body38, !dbg !6519

do.body38:                                        ; preds = %do.end36
  br label %do.end39, !dbg !6520

do.end39:                                         ; preds = %do.body38
  %29 = load i8*, i8** %__mptr37, align 8, !dbg !6519
  %add.ptr41 = getelementptr i8, i8* %29, i64 0, !dbg !6519
  %30 = bitcast i8* %add.ptr41 to %struct.intel_th_device*, !dbg !6519
  store %struct.intel_th_device* %30, %struct.intel_th_device** %tmp40, align 8, !dbg !6520
  %31 = load %struct.intel_th_device*, %struct.intel_th_device** %tmp40, align 8, !dbg !6519
  %32 = bitcast %struct.intel_th_device* %31 to i8*, !dbg !6522
  %33 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !6523
  %private_data = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 15, !dbg !6524
  store i8* %32, i8** %private_data, align 8, !dbg !6525
  %34 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !6526
  %f_op42 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 3, !dbg !6528
  %35 = load %struct.file_operations*, %struct.file_operations** %f_op42, align 8, !dbg !6528
  %open = getelementptr inbounds %struct.file_operations, %struct.file_operations* %35, i32 0, i32 14, !dbg !6529
  %36 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %open, align 8, !dbg !6529
  %tobool43 = icmp ne i32 (%struct.inode*, %struct.file*)* %36, null, !dbg !6526
  br i1 %tobool43, label %if.then44, label %if.end48, !dbg !6530

if.then44:                                        ; preds = %do.end39
  %37 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !6531
  %f_op45 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 3, !dbg !6533
  %38 = load %struct.file_operations*, %struct.file_operations** %f_op45, align 8, !dbg !6533
  %open46 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %38, i32 0, i32 14, !dbg !6534
  %39 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %open46, align 8, !dbg !6534
  %40 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !6535
  %41 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !6536
  %call47 = call i32 %39(%struct.inode* %40, %struct.file* %41) #9, !dbg !6531
  store i32 %call47, i32* %err, align 4, !dbg !6537
  %42 = load i32, i32* %err, align 4, !dbg !6538
  store i32 %42, i32* %retval, align 4, !dbg !6539
  br label %return, !dbg !6539

if.end48:                                         ; preds = %do.end39
  store i32 0, i32* %retval, align 4, !dbg !6540
  br label %return, !dbg !6540

return:                                           ; preds = %if.end48, %if.then44, %if.then9, %if.then
  %43 = load i32, i32* %retval, align 4, !dbg !6541
  ret i32 %43, !dbg !6541
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device* @bus_find_device_by_devt(%struct.bus_type* %bus, i32 %devt) #0 !dbg !6542 {
entry:
  %bus.addr = alloca %struct.bus_type*, align 8
  %devt.addr = alloca i32, align 4
  store %struct.bus_type* %bus, %struct.bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bus_type** %bus.addr, metadata !6545, metadata !DIExpression()), !dbg !6546
  store i32 %devt, i32* %devt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %devt.addr, metadata !6547, metadata !DIExpression()), !dbg !6548
  %0 = load %struct.bus_type*, %struct.bus_type** %bus.addr, align 8, !dbg !6549
  %1 = bitcast i32* %devt.addr to i8*, !dbg !6550
  %call = call %struct.device* @bus_find_device(%struct.bus_type* %0, %struct.device* null, i8* %1, i32 (%struct.device*, i8*)* @device_match_devt) #9, !dbg !6551
  ret %struct.device* %call, !dbg !6552
}

; Function Attrs: noredzone
declare dso_local %struct.device* @bus_find_device(%struct.bus_type*, %struct.device*, i8*, i32 (%struct.device*, i8*)*) #2

; Function Attrs: noredzone
declare dso_local i32 @device_match_devt(%struct.device*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !6553 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !6558, metadata !DIExpression()), !dbg !6559
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !6560
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !6561
  %1 = load i8*, i8** %name, align 8, !dbg !6561
  ret i8* %1, !dbg !6562
}

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_idle(%struct.device*, i32) #2

; Function Attrs: noredzone
declare dso_local void @device_del(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @__pm_runtime_resume(%struct.device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @intel_th_debug_init() #0 !dbg !6563 {
entry:
  ret void, !dbg !6564
}

; Function Attrs: noredzone
declare dso_local i32 @bus_register(%struct.bus_type*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { nounwind }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4005, !4006, !4007, !4008}
!llvm.ident = !{!4009}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_host_mode", scope: !2, file: !3, line: 25, type: !4002, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !130, globals: !3857, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/hwtracing/intel_th/core.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !73, !81, !87, !93, !99, !105, !112, !117, !123}
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
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !67, line: 343, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71, !72}
!69 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!72 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !74, line: 524, baseType: !7, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!75 = !{!76, !77, !78, !79, !80}
!76 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!77 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!79 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!80 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !74, line: 502, baseType: !7, size: 32, elements: !82)
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !88, line: 44, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!91 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!92 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !94, line: 11, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !100, line: 14, baseType: !7, size: 32, elements: !101)
!100 = !DIFile(filename: "drivers/hwtracing/intel_th/intel_th.h", directory: "/home/lizy2001/genbc/linux")
!101 = !{!102, !103, !104}
!102 = !DIEnumerator(name: "INTEL_TH_SOURCE", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "INTEL_TH_OUTPUT", value: 1, isUnsigned: true)
!104 = !DIEnumerator(name: "INTEL_TH_SWITCH", value: 2, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !100, line: 117, baseType: !7, size: 32, elements: !106)
!106 = !{!107, !108, !109, !110, !111}
!107 = !DIEnumerator(name: "GTH_NONE", value: 0, isUnsigned: true)
!108 = !DIEnumerator(name: "GTH_MSU", value: 1, isUnsigned: true)
!109 = !DIEnumerator(name: "GTH_CTP", value: 2, isUnsigned: true)
!110 = !DIEnumerator(name: "GTH_LPP", value: 3, isUnsigned: true)
!111 = !DIEnumerator(name: "GTH_PTI", value: 4, isUnsigned: true)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !113, line: 10, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!114 = !{!115, !116}
!115 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!116 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "th_mmio_idx", file: !100, line: 241, baseType: !7, size: 32, elements: !118)
!118 = !{!119, !120, !121, !122}
!119 = !DIEnumerator(name: "TH_MMIO_CONFIG", value: 0, isUnsigned: true)
!120 = !DIEnumerator(name: "TH_MMIO_SW", value: 1, isUnsigned: true)
!121 = !DIEnumerator(name: "TH_MMIO_RTIT", value: 2, isUnsigned: true)
!122 = !DIEnumerator(name: "TH_MMIO_END", value: 3, isUnsigned: true)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !124, line: 305, baseType: !7, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!125 = !{!126, !127, !128, !129}
!126 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!128 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!129 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!130 = !{!131, !132, !134, !135, !3814, !3856, !254, !239}
!131 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !133, line: 148, baseType: !7)
!133 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_th_device", file: !100, line: 75, size: 5952, elements: !137)
!137 = !{!138, !3778, !3786, !3800, !3801, !3802, !3803, !3804, !3812}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !136, file: !100, line: 76, baseType: !139, size: 5568)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !67, line: 461, size: 5568, elements: !140)
!140 = !{!141, !3331, !3333, !3336, !3337, !3388, !3479, !3480, !3481, !3482, !3483, !3492, !3597, !3610, !3613, !3614, !3618, !3620, !3621, !3622, !3626, !3632, !3633, !3636, !3640, !3730, !3731, !3732, !3733, !3734, !3766, !3767, !3768, !3771, !3774, !3775, !3776, !3777}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !139, file: !67, line: 462, baseType: !142, size: 512)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !143, line: 64, size: 512, elements: !144)
!143 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!144 = !{!145, !149, !155, !157, !217, !3194, !3321, !3326, !3327, !3328, !3329, !3330}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !142, file: !143, line: 65, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!148 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !142, file: !143, line: 66, baseType: !150, size: 128, offset: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !133, line: 178, size: 128, elements: !151)
!151 = !{!152, !154}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !150, file: !133, line: 179, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !150, file: !133, line: 179, baseType: !153, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !142, file: !143, line: 67, baseType: !156, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !142, file: !143, line: 68, baseType: !158, size: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !143, line: 192, size: 704, elements: !160)
!160 = !{!161, !162, !178, !179}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !159, file: !143, line: 193, baseType: !150, size: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !159, file: !143, line: 194, baseType: !163, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !164, line: 83, baseType: !165)
!164 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !164, line: 71, elements: !166)
!166 = !{!167}
!167 = !DIDerivedType(tag: DW_TAG_member, scope: !165, file: !164, line: 72, baseType: !168)
!168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !165, file: !164, line: 72, elements: !169)
!169 = !{!170}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !168, file: !164, line: 73, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !164, line: 20, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !171, file: !164, line: 21, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !175, line: 25, baseType: !176)
!175 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !175, line: 25, elements: !177)
!177 = !{}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !159, file: !143, line: 195, baseType: !142, size: 512, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !159, file: !143, line: 196, baseType: !180, size: 64, offset: 640)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !143, line: 156, size: 192, elements: !183)
!183 = !{!184, !189, !194}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !182, file: !143, line: 157, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!131, !158, !156}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !143, line: 158, baseType: !190, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!146, !158, !156}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !182, file: !143, line: 159, baseType: !195, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!131, !158, !156, !199}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !143, line: 148, size: 20736, elements: !201)
!201 = !{!202, !207, !211, !212, !216}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !200, file: !143, line: 149, baseType: !203, size: 192)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 192, elements: !205)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!205 = !{!206}
!206 = !DISubrange(count: 3)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !200, file: !143, line: 150, baseType: !208, size: 4096, offset: 192)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 4096, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !200, file: !143, line: 151, baseType: !131, size: 32, offset: 4288)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !200, file: !143, line: 152, baseType: !213, size: 16384, offset: 4320)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 16384, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 2048)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !200, file: !143, line: 153, baseType: !131, size: 32, offset: 20704)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !142, file: !143, line: 69, baseType: !218, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !143, line: 138, size: 448, elements: !220)
!220 = !{!221, !225, !255, !257, !3156, !3184, !3188}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !219, file: !143, line: 139, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !156}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !219, file: !143, line: 140, baseType: !226, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !229, line: 230, size: 128, elements: !230)
!229 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!230 = !{!231, !247}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !228, file: !229, line: 231, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!235, !156, !240, !204}
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !133, line: 60, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !237, line: 73, baseType: !238)
!237 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !237, line: 15, baseType: !239)
!239 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !229, line: 30, size: 128, elements: !242)
!242 = !{!243, !244}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !241, file: !229, line: 31, baseType: !146, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !241, file: !229, line: 32, baseType: !245, size: 16, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !133, line: 19, baseType: !246)
!246 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !228, file: !229, line: 232, baseType: !248, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!235, !156, !240, !146, !251}
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !133, line: 55, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !237, line: 72, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !237, line: 16, baseType: !254)
!254 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !219, file: !143, line: 141, baseType: !256, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !219, file: !143, line: 142, baseType: !258, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !229, line: 84, size: 320, elements: !262)
!262 = !{!263, !264, !268, !3153, !3154}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !261, file: !229, line: 85, baseType: !146, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !261, file: !229, line: 86, baseType: !265, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!245, !156, !240, !131}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !261, file: !229, line: 88, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!245, !156, !272, !131}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !229, line: 168, size: 448, elements: !274)
!274 = !{!275, !276, !277, !278, !3148, !3149}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !273, file: !229, line: 169, baseType: !241, size: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !273, file: !229, line: 170, baseType: !251, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !273, file: !229, line: 171, baseType: !134, size: 64, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !273, file: !229, line: 172, baseType: !279, size: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!235, !282, !156, !272, !204, !461, !251}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !284)
!284 = !{!285, !303, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3131, !3132, !3141, !3142, !3143, !3144, !3145, !3146, !3147}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !283, file: !44, line: 920, baseType: !286, size: 128)
!286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !283, file: !44, line: 917, size: 128, elements: !287)
!287 = !{!288, !294}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !286, file: !44, line: 918, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !290, line: 58, size: 64, elements: !291)
!290 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !290, line: 59, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !286, file: !44, line: 919, baseType: !295, size: 128, align: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !133, line: 216, size: 128, align: 64, elements: !296)
!296 = !{!297, !299}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !133, line: 217, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !295, file: !133, line: 218, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !298}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !283, file: !44, line: 921, baseType: !304, size: 128, offset: 128)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !305, line: 8, size: 128, elements: !306)
!305 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!306 = !{!307, !311}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !304, file: !305, line: 9, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !310, line: 18, flags: DIFlagFwdDecl)
!310 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!311 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !304, file: !305, line: 10, baseType: !312, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !310, line: 89, size: 1536, elements: !314)
!314 = !{!315, !316, !326, !334, !335, !358, !3081, !3083, !3095, !3096, !3097, !3098, !3099, !3105, !3106, !3107}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !313, file: !310, line: 91, baseType: !7, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !313, file: !310, line: 92, baseType: !317, size: 32, offset: 32)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !318, line: 277, baseType: !319)
!318 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !318, line: 277, size: 32, elements: !320)
!320 = !{!321}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !319, file: !318, line: 277, baseType: !322, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !318, line: 70, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !318, line: 65, size: 32, elements: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !323, file: !318, line: 66, baseType: !7, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !313, file: !310, line: 93, baseType: !327, size: 128, offset: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !328, line: 38, size: 128, elements: !329)
!328 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!329 = !{!330, !332}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !328, line: 39, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !327, file: !328, line: 39, baseType: !333, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !313, file: !310, line: 94, baseType: !312, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !313, file: !310, line: 95, baseType: !336, size: 128, offset: 256)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !310, line: 47, size: 128, elements: !337)
!337 = !{!338, !354}
!338 = !DIDerivedType(tag: DW_TAG_member, scope: !336, file: !310, line: 48, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !336, file: !310, line: 48, size: 64, elements: !340)
!340 = !{!341, !350}
!341 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !310, line: 49, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !339, file: !310, line: 49, size: 64, elements: !343)
!343 = !{!344, !349}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !342, file: !310, line: 50, baseType: !345, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !346, line: 21, baseType: !347)
!346 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !348, line: 27, baseType: !7)
!348 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!349 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !342, file: !310, line: 50, baseType: !345, size: 32, offset: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !339, file: !310, line: 52, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !346, line: 23, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !348, line: 31, baseType: !353)
!353 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !336, file: !310, line: 54, baseType: !355, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!357 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !313, file: !310, line: 96, baseType: !359, size: 64, offset: 384)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !361)
!361 = !{!362, !363, !364, !372, !379, !380, !528, !2793, !2794, !2795, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !3057, !3065, !3066, !3067, !3077, !3078, !3079, !3080}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !360, file: !44, line: 611, baseType: !245, size: 16)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !360, file: !44, line: 612, baseType: !246, size: 16, offset: 16)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !360, file: !44, line: 613, baseType: !365, size: 32, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !366, line: 23, baseType: !367)
!366 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !366, line: 21, size: 32, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !367, file: !366, line: 22, baseType: !370, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !133, line: 32, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !237, line: 49, baseType: !7)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !360, file: !44, line: 614, baseType: !373, size: 32, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !366, line: 28, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !366, line: 26, size: 32, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !374, file: !366, line: 27, baseType: !377, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !133, line: 33, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !237, line: 50, baseType: !7)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !360, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !360, file: !44, line: 622, baseType: !381, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !384)
!384 = !{!385, !389, !402, !406, !412, !416, !422, !426, !430, !434, !438, !439, !445, !449, !475, !504, !508, !514, !519, !523, !524}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !383, file: !44, line: 1865, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!312, !359, !312, !7}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !383, file: !44, line: 1866, baseType: !390, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!146, !312, !359, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !395, line: 10, size: 128, elements: !396)
!395 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!396 = !{!397, !401}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !394, file: !395, line: 11, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !134}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !394, file: !395, line: 12, baseType: !134, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !383, file: !44, line: 1867, baseType: !403, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!131, !359, !131}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !383, file: !44, line: 1868, baseType: !407, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!410, !359, !131}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !383, file: !44, line: 1870, baseType: !413, size: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!131, !312, !204, !131}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !383, file: !44, line: 1872, baseType: !417, size: 64, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!131, !359, !312, !245, !420}
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !133, line: 30, baseType: !421)
!421 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !383, file: !44, line: 1873, baseType: !423, size: 64, offset: 384)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!131, !312, !359, !312}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !383, file: !44, line: 1874, baseType: !427, size: 64, offset: 448)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!131, !359, !312}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !383, file: !44, line: 1875, baseType: !431, size: 64, offset: 512)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!131, !359, !312, !146}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !383, file: !44, line: 1876, baseType: !435, size: 64, offset: 576)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!131, !359, !312, !245}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !383, file: !44, line: 1877, baseType: !427, size: 64, offset: 640)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !383, file: !44, line: 1878, baseType: !440, size: 64, offset: 704)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!131, !359, !312, !245, !443}
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !133, line: 16, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !133, line: 13, baseType: !345)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !383, file: !44, line: 1879, baseType: !446, size: 64, offset: 768)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!131, !359, !312, !359, !312, !7}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !383, file: !44, line: 1881, baseType: !450, size: 64, offset: 832)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!131, !312, !453}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !455)
!455 = !{!456, !457, !458, !459, !460, !464, !472, !473, !474}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !454, file: !44, line: 220, baseType: !7, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !454, file: !44, line: 221, baseType: !245, size: 16, offset: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !454, file: !44, line: 222, baseType: !365, size: 32, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !454, file: !44, line: 223, baseType: !373, size: 32, offset: 96)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !454, file: !44, line: 224, baseType: !461, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !133, line: 46, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !237, line: 88, baseType: !463)
!463 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !454, file: !44, line: 225, baseType: !465, size: 128, offset: 192)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !466, line: 13, size: 128, elements: !467)
!466 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!467 = !{!468, !471}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !465, file: !466, line: 14, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !466, line: 8, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !348, line: 30, baseType: !463)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !465, file: !466, line: 15, baseType: !239, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !454, file: !44, line: 226, baseType: !465, size: 128, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !454, file: !44, line: 227, baseType: !465, size: 128, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !454, file: !44, line: 234, baseType: !282, size: 64, offset: 576)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !383, file: !44, line: 1882, baseType: !476, size: 64, offset: 896)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!131, !479, !481, !345, !7}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !483, line: 22, size: 1152, elements: !484)
!483 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!484 = !{!485, !486, !487, !488, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !482, file: !483, line: 23, baseType: !345, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !482, file: !483, line: 24, baseType: !245, size: 16, offset: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !482, file: !483, line: 25, baseType: !7, size: 32, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !482, file: !483, line: 26, baseType: !489, size: 32, offset: 96)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !133, line: 104, baseType: !345)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !482, file: !483, line: 27, baseType: !351, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !482, file: !483, line: 28, baseType: !351, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !482, file: !483, line: 37, baseType: !351, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !482, file: !483, line: 38, baseType: !443, size: 32, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !482, file: !483, line: 39, baseType: !443, size: 32, offset: 352)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !482, file: !483, line: 40, baseType: !365, size: 32, offset: 384)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !482, file: !483, line: 41, baseType: !373, size: 32, offset: 416)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !482, file: !483, line: 42, baseType: !461, size: 64, offset: 448)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !482, file: !483, line: 43, baseType: !465, size: 128, offset: 512)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !482, file: !483, line: 44, baseType: !465, size: 128, offset: 640)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !482, file: !483, line: 45, baseType: !465, size: 128, offset: 768)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !482, file: !483, line: 46, baseType: !465, size: 128, offset: 896)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !482, file: !483, line: 47, baseType: !351, size: 64, offset: 1024)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !482, file: !483, line: 48, baseType: !351, size: 64, offset: 1088)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !383, file: !44, line: 1883, baseType: !505, size: 64, offset: 960)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!235, !312, !204, !251}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !383, file: !44, line: 1884, baseType: !509, size: 64, offset: 1024)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!131, !359, !512, !351, !351}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !383, file: !44, line: 1886, baseType: !515, size: 64, offset: 1088)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!131, !359, !518, !131}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !383, file: !44, line: 1887, baseType: !520, size: 64, offset: 1152)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!131, !359, !312, !282, !7, !245}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !383, file: !44, line: 1890, baseType: !435, size: 64, offset: 1216)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !383, file: !44, line: 1891, baseType: !525, size: 64, offset: 1280)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!131, !359, !410, !131}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !360, file: !44, line: 623, baseType: !529, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !531)
!531 = !{!532, !533, !534, !535, !536, !537, !587, !2400, !2482, !2565, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2581, !2585, !2586, !2589, !2590, !2593, !2594, !2595, !2636, !2663, !2664, !2665, !2666, !2667, !2668, !2671, !2673, !2680, !2681, !2683, !2684, !2685, !2744, !2745, !2760, !2761, !2762, !2763, !2764, !2767, !2768, !2769, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !530, file: !44, line: 1417, baseType: !150, size: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !530, file: !44, line: 1418, baseType: !443, size: 32, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !530, file: !44, line: 1419, baseType: !357, size: 8, offset: 160)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !530, file: !44, line: 1420, baseType: !254, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !530, file: !44, line: 1421, baseType: !461, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !530, file: !44, line: 1422, baseType: !538, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !540)
!540 = !{!541, !542, !543, !550, !554, !558, !562, !566, !567, !577, !580, !581, !582, !584, !585, !586}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !539, file: !44, line: 2229, baseType: !146, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !539, file: !44, line: 2230, baseType: !131, size: 32, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !539, file: !44, line: 2238, baseType: !544, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!131, !547}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !549, line: 28, flags: DIFlagFwdDecl)
!549 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!550 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !539, file: !44, line: 2239, baseType: !551, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !539, file: !44, line: 2240, baseType: !555, size: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!312, !538, !131, !146, !134}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !539, file: !44, line: 2242, baseType: !559, size: 64, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !529}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !539, file: !44, line: 2243, baseType: !563, size: 64, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !565, line: 76, flags: DIFlagFwdDecl)
!565 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!566 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !539, file: !44, line: 2244, baseType: !538, size: 64, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !539, file: !44, line: 2245, baseType: !568, size: 64, offset: 512)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !133, line: 182, size: 64, elements: !569)
!569 = !{!570}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !568, file: !133, line: 183, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !133, line: 186, size: 128, elements: !573)
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !572, file: !133, line: 187, baseType: !571, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !572, file: !133, line: 187, baseType: !576, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !539, file: !44, line: 2247, baseType: !578, offset: 576)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !579, line: 187, elements: !177)
!579 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!580 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !539, file: !44, line: 2248, baseType: !578, offset: 576)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !539, file: !44, line: 2249, baseType: !578, offset: 576)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !539, file: !44, line: 2250, baseType: !583, offset: 576)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, elements: !205)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !539, file: !44, line: 2252, baseType: !578, offset: 576)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !539, file: !44, line: 2253, baseType: !578, offset: 576)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !539, file: !44, line: 2254, baseType: !578, offset: 576)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !530, file: !44, line: 1423, baseType: !588, size: 64, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !590)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !591)
!591 = !{!592, !596, !600, !601, !605, !611, !615, !616, !617, !621, !625, !626, !627, !628, !634, !639, !640, !696, !697, !698, !699, !2384, !2399}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !590, file: !44, line: 1936, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!359, !529}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !590, file: !44, line: 1937, baseType: !597, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !359}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !590, file: !44, line: 1938, baseType: !597, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !590, file: !44, line: 1940, baseType: !602, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !359, !131}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !590, file: !44, line: 1941, baseType: !606, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!131, !359, !609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 289, flags: DIFlagFwdDecl)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !590, file: !44, line: 1942, baseType: !612, size: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!131, !359}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !590, file: !44, line: 1943, baseType: !597, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !590, file: !44, line: 1944, baseType: !559, size: 64, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !590, file: !44, line: 1945, baseType: !618, size: 64, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!131, !529, !131}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !590, file: !44, line: 1946, baseType: !622, size: 64, offset: 576)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!131, !529}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !590, file: !44, line: 1947, baseType: !622, size: 64, offset: 640)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !590, file: !44, line: 1948, baseType: !622, size: 64, offset: 704)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !590, file: !44, line: 1949, baseType: !622, size: 64, offset: 768)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !590, file: !44, line: 1950, baseType: !629, size: 64, offset: 832)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!131, !312, !632}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !590, file: !44, line: 1951, baseType: !635, size: 64, offset: 896)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!131, !529, !638, !204}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !590, file: !44, line: 1952, baseType: !559, size: 64, offset: 960)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !590, file: !44, line: 1954, baseType: !641, size: 64, offset: 1024)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!131, !644, !312}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !646, line: 16, size: 896, elements: !647)
!646 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!647 = !{!648, !649, !650, !651, !652, !653, !654, !655, !669, !691, !692, !695}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !645, file: !646, line: 17, baseType: !204, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !645, file: !646, line: 18, baseType: !251, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !645, file: !646, line: 19, baseType: !251, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !645, file: !646, line: 20, baseType: !251, size: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !645, file: !646, line: 21, baseType: !251, size: 64, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !645, file: !646, line: 22, baseType: !461, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !645, file: !646, line: 23, baseType: !461, size: 64, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !645, file: !646, line: 24, baseType: !656, size: 192, offset: 448)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !657, line: 53, size: 192, elements: !658)
!657 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!658 = !{!659, !667, !668}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !656, file: !657, line: 54, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !661, line: 13, baseType: !662)
!661 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !133, line: 175, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !133, line: 173, size: 64, elements: !664)
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !663, file: !133, line: 174, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !346, line: 22, baseType: !470)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !656, file: !657, line: 55, baseType: !163, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !656, file: !657, line: 59, baseType: !150, size: 128, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !645, file: !646, line: 25, baseType: !670, size: 64, offset: 640)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !672)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !646, line: 31, size: 256, elements: !673)
!673 = !{!674, !679, !683, !687}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !672, file: !646, line: 32, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!134, !644, !678}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !672, file: !646, line: 33, baseType: !680, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !644, !134}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !672, file: !646, line: 34, baseType: !684, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!134, !644, !134, !678}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !672, file: !646, line: 35, baseType: !688, size: 64, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!131, !644, !134}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !645, file: !646, line: 26, baseType: !131, size: 32, offset: 704)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !645, file: !646, line: 27, baseType: !693, size: 64, offset: 768)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !645, file: !646, line: 28, baseType: !134, size: 64, offset: 832)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !590, file: !44, line: 1955, baseType: !641, size: 64, offset: 1088)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !590, file: !44, line: 1956, baseType: !641, size: 64, offset: 1152)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !590, file: !44, line: 1957, baseType: !641, size: 64, offset: 1216)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !590, file: !44, line: 1963, baseType: !700, size: 64, offset: 1280)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!131, !529, !703, !132}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !705, line: 68, size: 512, align: 128, elements: !706)
!705 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!706 = !{!707, !708, !2376, !2383}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !704, file: !705, line: 69, baseType: !254, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !705, line: 77, baseType: !709, size: 320, offset: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !704, file: !705, line: 77, size: 320, elements: !710)
!710 = !{!711, !891, !896, !924, !932, !938, !2307, !2375}
!711 = !DIDerivedType(tag: DW_TAG_member, scope: !709, file: !705, line: 78, baseType: !712, size: 320)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !709, file: !705, line: 78, size: 320, elements: !713)
!713 = !{!714, !715, !889, !890}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !712, file: !705, line: 84, baseType: !150, size: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !712, file: !705, line: 86, baseType: !716, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !718)
!718 = !{!719, !720, !727, !728, !733, !748, !757, !758, !759, !760, !882, !883, !886, !887, !888}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !717, file: !44, line: 452, baseType: !359, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !717, file: !44, line: 453, baseType: !721, size: 128, offset: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !722, line: 292, size: 128, elements: !723)
!722 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!723 = !{!724, !725, !726}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !721, file: !722, line: 293, baseType: !163)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !721, file: !722, line: 295, baseType: !132, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !721, file: !722, line: 296, baseType: !134, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !717, file: !44, line: 454, baseType: !132, size: 32, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !717, file: !44, line: 455, baseType: !729, size: 32, offset: 224)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !133, line: 168, baseType: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !133, line: 166, size: 32, elements: !731)
!731 = !{!732}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !730, file: !133, line: 167, baseType: !131, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !717, file: !44, line: 460, baseType: !734, size: 128, offset: 256)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !735, line: 125, size: 128, elements: !736)
!735 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!736 = !{!737, !747}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !734, file: !735, line: 126, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !735, line: 31, size: 64, elements: !739)
!739 = !{!740}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !738, file: !735, line: 32, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !735, line: 24, size: 192, align: 64, elements: !743)
!743 = !{!744, !745, !746}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !742, file: !735, line: 25, baseType: !254, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !742, file: !735, line: 26, baseType: !741, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !742, file: !735, line: 27, baseType: !741, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !734, file: !735, line: 127, baseType: !741, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !717, file: !44, line: 461, baseType: !749, size: 256, offset: 384)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !750, line: 35, size: 256, elements: !751)
!750 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!751 = !{!752, !753, !754, !756}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !749, file: !750, line: 36, baseType: !660, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !749, file: !750, line: 42, baseType: !660, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !749, file: !750, line: 46, baseType: !755, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !164, line: 29, baseType: !171)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !749, file: !750, line: 47, baseType: !150, size: 128, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !717, file: !44, line: 462, baseType: !254, size: 64, offset: 640)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !717, file: !44, line: 463, baseType: !254, size: 64, offset: 704)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !717, file: !44, line: 464, baseType: !254, size: 64, offset: 768)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !717, file: !44, line: 465, baseType: !761, size: 64, offset: 832)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !764)
!764 = !{!765, !769, !773, !777, !781, !785, !791, !797, !801, !806, !810, !814, !818, !846, !850, !856, !857, !858, !862, !867, !871, !878}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !763, file: !44, line: 368, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!131, !703, !609}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !763, file: !44, line: 369, baseType: !770, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!131, !282, !703}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !763, file: !44, line: 372, baseType: !774, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!131, !716, !609}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !763, file: !44, line: 375, baseType: !778, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!131, !703}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !763, file: !44, line: 381, baseType: !782, size: 64, offset: 256)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!131, !282, !716, !153, !7}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !763, file: !44, line: 383, baseType: !786, size: 64, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !789}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !763, file: !44, line: 385, baseType: !792, size: 64, offset: 384)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!131, !282, !716, !461, !7, !7, !795, !796}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !763, file: !44, line: 388, baseType: !798, size: 64, offset: 448)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!131, !282, !716, !461, !7, !7, !703, !134}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !763, file: !44, line: 393, baseType: !802, size: 64, offset: 512)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!805, !716, !805}
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !133, line: 125, baseType: !351)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !763, file: !44, line: 394, baseType: !807, size: 64, offset: 576)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !703, !7, !7}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !763, file: !44, line: 395, baseType: !811, size: 64, offset: 640)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!131, !703, !132}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !763, file: !44, line: 396, baseType: !815, size: 64, offset: 704)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !703}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !763, file: !44, line: 397, baseType: !819, size: 64, offset: 768)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!235, !822, !844}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !824)
!824 = !{!825, !826, !827, !831, !832, !833, !836, !837}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !823, file: !44, line: 321, baseType: !282, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !823, file: !44, line: 326, baseType: !461, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !823, file: !44, line: 327, baseType: !828, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !822, !239, !239}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !823, file: !44, line: 328, baseType: !134, size: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !823, file: !44, line: 329, baseType: !131, size: 32, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !823, file: !44, line: 330, baseType: !834, size: 16, offset: 288)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !346, line: 19, baseType: !835)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !348, line: 24, baseType: !246)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !823, file: !44, line: 331, baseType: !834, size: 16, offset: 304)
!837 = !DIDerivedType(tag: DW_TAG_member, scope: !823, file: !44, line: 332, baseType: !838, size: 64, offset: 320)
!838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !823, file: !44, line: 332, size: 64, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !838, file: !44, line: 333, baseType: !7, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !838, file: !44, line: 334, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !763, file: !44, line: 402, baseType: !847, size: 64, offset: 832)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!131, !716, !703, !703, !5}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !763, file: !44, line: 404, baseType: !851, size: 64, offset: 896)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!420, !703, !854}
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !855, line: 305, baseType: !7)
!855 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!856 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !763, file: !44, line: 405, baseType: !815, size: 64, offset: 960)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !763, file: !44, line: 406, baseType: !778, size: 64, offset: 1024)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !763, file: !44, line: 407, baseType: !859, size: 64, offset: 1088)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!131, !703, !254, !254}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !763, file: !44, line: 409, baseType: !863, size: 64, offset: 1152)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !703, !866, !866}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !763, file: !44, line: 410, baseType: !868, size: 64, offset: 1216)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!131, !716, !703}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !763, file: !44, line: 413, baseType: !872, size: 64, offset: 1280)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!131, !875, !282, !877}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !763, file: !44, line: 415, baseType: !879, size: 64, offset: 1344)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !282}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !717, file: !44, line: 466, baseType: !254, size: 64, offset: 896)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !717, file: !44, line: 467, baseType: !884, size: 32, offset: 960)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !885, line: 8, baseType: !345)
!885 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!886 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !717, file: !44, line: 468, baseType: !163, offset: 992)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !717, file: !44, line: 469, baseType: !150, size: 128, offset: 1024)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !717, file: !44, line: 470, baseType: !134, size: 64, offset: 1152)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !712, file: !705, line: 87, baseType: !254, size: 64, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !712, file: !705, line: 94, baseType: !254, size: 64, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !709, file: !705, line: 96, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !709, file: !705, line: 96, size: 64, elements: !893)
!893 = !{!894}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !892, file: !705, line: 101, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !133, line: 143, baseType: !351)
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !709, file: !705, line: 103, baseType: !897, size: 320)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !709, file: !705, line: 103, size: 320, elements: !898)
!898 = !{!899, !909, !912, !913}
!899 = !DIDerivedType(tag: DW_TAG_member, scope: !897, file: !705, line: 104, baseType: !900, size: 128)
!900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !897, file: !705, line: 104, size: 128, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !900, file: !705, line: 105, baseType: !150, size: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, scope: !900, file: !705, line: 106, baseType: !904, size: 128)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !900, file: !705, line: 106, size: 128, elements: !905)
!905 = !{!906, !907, !908}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !904, file: !705, line: 107, baseType: !703, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !904, file: !705, line: 109, baseType: !131, size: 32, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !904, file: !705, line: 110, baseType: !131, size: 32, offset: 96)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !897, file: !705, line: 117, baseType: !910, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !705, line: 117, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !897, file: !705, line: 119, baseType: !134, size: 64, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !897, file: !705, line: 120, baseType: !914, size: 64, offset: 256)
!914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !897, file: !705, line: 120, size: 64, elements: !915)
!915 = !{!916, !917, !918}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !914, file: !705, line: 121, baseType: !134, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !914, file: !705, line: 122, baseType: !254, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, scope: !914, file: !705, line: 123, baseType: !919, size: 32)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !914, file: !705, line: 123, size: 32, elements: !920)
!920 = !{!921, !922, !923}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !919, file: !705, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !919, file: !705, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !919, file: !705, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!924 = !DIDerivedType(tag: DW_TAG_member, scope: !709, file: !705, line: 130, baseType: !925, size: 192)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !709, file: !705, line: 130, size: 192, elements: !926)
!926 = !{!927, !928, !929, !930, !931}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !925, file: !705, line: 131, baseType: !254, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !925, file: !705, line: 134, baseType: !357, size: 8, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !925, file: !705, line: 135, baseType: !357, size: 8, offset: 72)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !925, file: !705, line: 136, baseType: !729, size: 32, offset: 96)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !925, file: !705, line: 137, baseType: !7, size: 32, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !709, file: !705, line: 139, baseType: !933, size: 256)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !709, file: !705, line: 139, size: 256, elements: !934)
!934 = !{!935, !936, !937}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !933, file: !705, line: 140, baseType: !254, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !933, file: !705, line: 141, baseType: !729, size: 32, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !933, file: !705, line: 143, baseType: !150, size: 128, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !709, file: !705, line: 145, baseType: !939, size: 256)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !709, file: !705, line: 145, size: 256, elements: !940)
!940 = !{!941, !942, !945, !946, !2306}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !939, file: !705, line: 146, baseType: !254, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !939, file: !705, line: 147, baseType: !943, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !944, line: 509, baseType: !703)
!944 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !939, file: !705, line: 148, baseType: !254, size: 64, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !705, line: 149, baseType: !947, size: 64, offset: 192)
!947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !939, file: !705, line: 149, size: 64, elements: !948)
!948 = !{!949, !2305}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !947, file: !705, line: 150, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !705, line: 388, size: 7296, elements: !952)
!952 = !{!953, !2301}
!953 = !DIDerivedType(tag: DW_TAG_member, scope: !951, file: !705, line: 389, baseType: !954, size: 7296)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !951, file: !705, line: 389, size: 7296, elements: !955)
!955 = !{!956, !1074, !1075, !1076, !1080, !1081, !1082, !1083, !1084, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1125, !1133, !1136, !1176, !1177, !2285, !2286, !2289, !2290, !2291, !2294, !2295, !2296, !2299, !2300}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !954, file: !705, line: 390, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !705, line: 305, size: 1472, elements: !959)
!959 = !{!960, !961, !962, !963, !964, !965, !966, !967, !974, !975, !980, !981, !984, !1068, !1069, !1070, !1071, !1072}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !958, file: !705, line: 308, baseType: !254, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !958, file: !705, line: 309, baseType: !254, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !958, file: !705, line: 313, baseType: !957, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !958, file: !705, line: 313, baseType: !957, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !958, file: !705, line: 315, baseType: !742, size: 192, align: 64, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !958, file: !705, line: 323, baseType: !254, size: 64, offset: 448)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !958, file: !705, line: 327, baseType: !950, size: 64, offset: 512)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !958, file: !705, line: 333, baseType: !968, size: 64, offset: 576)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !944, line: 284, baseType: !969)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !944, line: 284, size: 64, elements: !970)
!970 = !{!971}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !969, file: !944, line: 284, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !973, line: 19, baseType: !254)
!973 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!974 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !958, file: !705, line: 334, baseType: !254, size: 64, offset: 640)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !958, file: !705, line: 343, baseType: !976, size: 256, offset: 704)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !958, file: !705, line: 340, size: 256, elements: !977)
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !976, file: !705, line: 341, baseType: !742, size: 192, align: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !976, file: !705, line: 342, baseType: !254, size: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !958, file: !705, line: 351, baseType: !150, size: 128, offset: 960)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !958, file: !705, line: 353, baseType: !982, size: 64, offset: 1088)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !705, line: 353, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !958, file: !705, line: 356, baseType: !985, size: 64, offset: 1152)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !987)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !988)
!988 = !{!989, !993, !994, !998, !1002, !1042, !1046, !1050, !1054, !1055, !1056, !1060, !1064}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !987, file: !14, line: 558, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !957}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !987, file: !14, line: 559, baseType: !990, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !987, file: !14, line: 560, baseType: !995, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!131, !957, !254}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !987, file: !14, line: 561, baseType: !999, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!131, !957}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !987, file: !14, line: 562, baseType: !1003, size: 64, offset: 256)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !705, line: 682, baseType: !7)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1009)
!1009 = !{!1010, !1011, !1012, !1013, !1014, !1015, !1022, !1029, !1035, !1036, !1037, !1039, !1041}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1008, file: !14, line: 509, baseType: !957, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1008, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1008, file: !14, line: 511, baseType: !132, size: 32, offset: 96)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1008, file: !14, line: 512, baseType: !254, size: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1008, file: !14, line: 513, baseType: !254, size: 64, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1008, file: !14, line: 514, baseType: !1016, size: 64, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !944, line: 385, baseType: !1018)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !944, line: 385, size: 64, elements: !1019)
!1019 = !{!1020}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1018, file: !944, line: 385, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !973, line: 15, baseType: !254)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1008, file: !14, line: 516, baseType: !1023, size: 64, offset: 320)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !944, line: 359, baseType: !1025)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !944, line: 359, size: 64, elements: !1026)
!1026 = !{!1027}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1025, file: !944, line: 359, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !973, line: 16, baseType: !254)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1008, file: !14, line: 519, baseType: !1030, size: 64, offset: 384)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !973, line: 21, baseType: !1031)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !973, line: 21, size: 64, elements: !1032)
!1032 = !{!1033}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1031, file: !973, line: 21, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !973, line: 14, baseType: !254)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1008, file: !14, line: 521, baseType: !703, size: 64, offset: 448)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1008, file: !14, line: 522, baseType: !703, size: 64, offset: 512)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1008, file: !14, line: 528, baseType: !1038, size: 64, offset: 576)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1008, file: !14, line: 532, baseType: !1040, size: 64, offset: 640)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1008, file: !14, line: 536, baseType: !943, size: 64, offset: 704)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !987, file: !14, line: 563, baseType: !1043, size: 64, offset: 320)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!1006, !1007, !13}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !987, file: !14, line: 565, baseType: !1047, size: 64, offset: 384)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !1007, !254, !254}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !987, file: !14, line: 567, baseType: !1051, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!254, !957}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !987, file: !14, line: 571, baseType: !1003, size: 64, offset: 512)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !987, file: !14, line: 574, baseType: !1003, size: 64, offset: 576)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !987, file: !14, line: 579, baseType: !1057, size: 64, offset: 640)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!131, !957, !254, !134, !131, !131}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !987, file: !14, line: 585, baseType: !1061, size: 64, offset: 704)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!146, !957}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !987, file: !14, line: 615, baseType: !1065, size: 64, offset: 768)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!703, !957, !254}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !958, file: !705, line: 359, baseType: !254, size: 64, offset: 1216)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !958, file: !705, line: 361, baseType: !282, size: 64, offset: 1280)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !958, file: !705, line: 362, baseType: !134, size: 64, offset: 1344)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !958, file: !705, line: 365, baseType: !660, size: 64, offset: 1408)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !958, file: !705, line: 373, baseType: !1073, offset: 1472)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !705, line: 296, elements: !177)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !954, file: !705, line: 391, baseType: !738, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !954, file: !705, line: 392, baseType: !351, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !954, file: !705, line: 394, baseType: !1077, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!254, !282, !254, !254, !254, !254}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !954, file: !705, line: 398, baseType: !254, size: 64, offset: 256)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !954, file: !705, line: 399, baseType: !254, size: 64, offset: 320)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !954, file: !705, line: 405, baseType: !254, size: 64, offset: 384)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !954, file: !705, line: 406, baseType: !254, size: 64, offset: 448)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !954, file: !705, line: 407, baseType: !1085, size: 64, offset: 512)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !944, line: 286, baseType: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !944, line: 286, size: 64, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1087, file: !944, line: 286, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !973, line: 18, baseType: !254)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !954, file: !705, line: 416, baseType: !729, size: 32, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !954, file: !705, line: 428, baseType: !729, size: 32, offset: 608)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !954, file: !705, line: 437, baseType: !729, size: 32, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !954, file: !705, line: 447, baseType: !729, size: 32, offset: 672)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !954, file: !705, line: 450, baseType: !660, size: 64, offset: 704)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !954, file: !705, line: 452, baseType: !131, size: 32, offset: 768)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !954, file: !705, line: 454, baseType: !163, offset: 800)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !954, file: !705, line: 457, baseType: !749, size: 256, offset: 832)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !954, file: !705, line: 459, baseType: !150, size: 128, offset: 1088)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !954, file: !705, line: 466, baseType: !254, size: 64, offset: 1216)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !954, file: !705, line: 467, baseType: !254, size: 64, offset: 1280)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !954, file: !705, line: 469, baseType: !254, size: 64, offset: 1344)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !954, file: !705, line: 470, baseType: !254, size: 64, offset: 1408)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !954, file: !705, line: 471, baseType: !662, size: 64, offset: 1472)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !954, file: !705, line: 472, baseType: !254, size: 64, offset: 1536)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !954, file: !705, line: 473, baseType: !254, size: 64, offset: 1600)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !954, file: !705, line: 474, baseType: !254, size: 64, offset: 1664)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !954, file: !705, line: 475, baseType: !254, size: 64, offset: 1728)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !954, file: !705, line: 477, baseType: !163, offset: 1792)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !954, file: !705, line: 478, baseType: !254, size: 64, offset: 1792)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !954, file: !705, line: 478, baseType: !254, size: 64, offset: 1856)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !954, file: !705, line: 478, baseType: !254, size: 64, offset: 1920)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !954, file: !705, line: 478, baseType: !254, size: 64, offset: 1984)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !954, file: !705, line: 479, baseType: !254, size: 64, offset: 2048)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !954, file: !705, line: 479, baseType: !254, size: 64, offset: 2112)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !954, file: !705, line: 479, baseType: !254, size: 64, offset: 2176)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !954, file: !705, line: 480, baseType: !254, size: 64, offset: 2240)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !954, file: !705, line: 480, baseType: !254, size: 64, offset: 2304)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !954, file: !705, line: 480, baseType: !254, size: 64, offset: 2368)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !954, file: !705, line: 480, baseType: !254, size: 64, offset: 2432)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !954, file: !705, line: 482, baseType: !1122, size: 2816, offset: 2496)
!1122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 2816, elements: !1123)
!1123 = !{!1124}
!1124 = !DISubrange(count: 44)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !954, file: !705, line: 488, baseType: !1126, size: 256, offset: 5312)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1127, line: 60, size: 256, elements: !1128)
!1127 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1128 = !{!1129}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1126, file: !1127, line: 61, baseType: !1130, size: 256)
!1130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 256, elements: !1131)
!1131 = !{!1132}
!1132 = !DISubrange(count: 4)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !954, file: !705, line: 490, baseType: !1134, size: 64, offset: 5568)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !705, line: 490, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !954, file: !705, line: 493, baseType: !1137, size: 896, offset: 5632)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1138, line: 53, baseType: !1139)
!1138 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1138, line: 13, size: 896, elements: !1140)
!1140 = !{!1141, !1142, !1143, !1144, !1147, !1148, !1149, !1150, !1170, !1171, !1172}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1139, file: !1138, line: 18, baseType: !351, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1139, file: !1138, line: 28, baseType: !662, size: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1139, file: !1138, line: 31, baseType: !749, size: 256, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1139, file: !1138, line: 32, baseType: !1145, size: 64, offset: 384)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1138, line: 32, flags: DIFlagFwdDecl)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1139, file: !1138, line: 37, baseType: !246, size: 16, offset: 448)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1139, file: !1138, line: 40, baseType: !656, size: 192, offset: 512)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1139, file: !1138, line: 41, baseType: !134, size: 64, offset: 704)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1139, file: !1138, line: 42, baseType: !1151, size: 64, offset: 768)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1153)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1154, line: 13, size: 896, elements: !1155)
!1154 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1155 = !{!1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1153, file: !1154, line: 14, baseType: !134, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1153, file: !1154, line: 15, baseType: !254, size: 64, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1153, file: !1154, line: 17, baseType: !254, size: 64, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1153, file: !1154, line: 17, baseType: !254, size: 64, offset: 192)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1153, file: !1154, line: 19, baseType: !239, size: 64, offset: 256)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1153, file: !1154, line: 21, baseType: !239, size: 64, offset: 320)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1153, file: !1154, line: 22, baseType: !239, size: 64, offset: 384)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1153, file: !1154, line: 23, baseType: !239, size: 64, offset: 448)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1153, file: !1154, line: 24, baseType: !239, size: 64, offset: 512)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1153, file: !1154, line: 25, baseType: !239, size: 64, offset: 576)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1153, file: !1154, line: 26, baseType: !239, size: 64, offset: 640)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1153, file: !1154, line: 27, baseType: !239, size: 64, offset: 704)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1153, file: !1154, line: 28, baseType: !239, size: 64, offset: 768)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1153, file: !1154, line: 29, baseType: !239, size: 64, offset: 832)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1139, file: !1138, line: 44, baseType: !729, size: 32, offset: 832)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1139, file: !1138, line: 50, baseType: !834, size: 16, offset: 864)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1139, file: !1138, line: 51, baseType: !1173, size: 16, offset: 880)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !346, line: 18, baseType: !1174)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !348, line: 23, baseType: !1175)
!1175 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !954, file: !705, line: 495, baseType: !254, size: 64, offset: 6528)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !954, file: !705, line: 497, baseType: !1178, size: 64, offset: 6592)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !705, line: 381, size: 384, elements: !1180)
!1180 = !{!1181, !1182, !2284}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1179, file: !705, line: 382, baseType: !729, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1179, file: !705, line: 383, baseType: !1183, size: 128, offset: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !705, line: 376, size: 128, elements: !1184)
!1184 = !{!1185, !2282}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1183, file: !705, line: 377, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1188, line: 640, size: 48640, elements: !1189)
!1188 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1189 = !{!1190, !1196, !1198, !1199, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1216, !1234, !1245, !1330, !1331, !1332, !1343, !1344, !1346, !1347, !1348, !1349, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1428, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1466, !1468, !1469, !1470, !1482, !1483, !1484, !1485, !1486, !1487, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1511, !1516, !1700, !1701, !1702, !1703, !1707, !1710, !1713, !1716, !1719, !1723, !1824, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1870, !1871, !1872, !1873, !1874, !1879, !1880, !1881, !1884, !1885, !1888, !1891, !1894, !1897, !1940, !1943, !1944, !2023, !2024, !2027, !2028, !2031, !2032, !2033, !2037, !2038, !2039, !2052, !2053, !2054, !2064, !2069, !2072, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1187, file: !1188, line: 646, baseType: !1191, size: 128)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1192, line: 56, size: 128, elements: !1193)
!1192 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1191, file: !1192, line: 57, baseType: !254, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1191, file: !1192, line: 58, baseType: !345, size: 32, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1187, file: !1188, line: 649, baseType: !1197, size: 64, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !239)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1187, file: !1188, line: 657, baseType: !134, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1187, file: !1188, line: 658, baseType: !1200, size: 32, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1201, line: 113, baseType: !1202)
!1201 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1201, line: 111, size: 32, elements: !1203)
!1203 = !{!1204}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1202, file: !1201, line: 112, baseType: !729, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1187, file: !1188, line: 660, baseType: !7, size: 32, offset: 288)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1187, file: !1188, line: 661, baseType: !7, size: 32, offset: 320)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1187, file: !1188, line: 684, baseType: !131, size: 32, offset: 352)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1187, file: !1188, line: 686, baseType: !131, size: 32, offset: 384)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1187, file: !1188, line: 687, baseType: !131, size: 32, offset: 416)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1187, file: !1188, line: 688, baseType: !131, size: 32, offset: 448)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1187, file: !1188, line: 689, baseType: !7, size: 32, offset: 480)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1187, file: !1188, line: 691, baseType: !1213, size: 64, offset: 512)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1215)
!1215 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1188, line: 691, flags: DIFlagFwdDecl)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1187, file: !1188, line: 692, baseType: !1217, size: 832, offset: 576)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1188, line: 451, size: 832, elements: !1218)
!1218 = !{!1219, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1217, file: !1188, line: 453, baseType: !1220, size: 128)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1188, line: 325, size: 128, elements: !1221)
!1221 = !{!1222, !1223}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1220, file: !1188, line: 326, baseType: !254, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1220, file: !1188, line: 327, baseType: !345, size: 32, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1217, file: !1188, line: 454, baseType: !742, size: 192, align: 64, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1217, file: !1188, line: 455, baseType: !150, size: 128, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1217, file: !1188, line: 456, baseType: !7, size: 32, offset: 448)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1217, file: !1188, line: 458, baseType: !351, size: 64, offset: 512)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1217, file: !1188, line: 459, baseType: !351, size: 64, offset: 576)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1217, file: !1188, line: 460, baseType: !351, size: 64, offset: 640)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1217, file: !1188, line: 461, baseType: !351, size: 64, offset: 704)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1217, file: !1188, line: 463, baseType: !351, size: 64, offset: 768)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1217, file: !1188, line: 465, baseType: !1233, offset: 832)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1188, line: 415, elements: !177)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1187, file: !1188, line: 693, baseType: !1235, size: 384, offset: 1408)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1188, line: 489, size: 384, elements: !1236)
!1236 = !{!1237, !1238, !1239, !1240, !1241, !1242, !1243}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1235, file: !1188, line: 490, baseType: !150, size: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1235, file: !1188, line: 491, baseType: !254, size: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1235, file: !1188, line: 492, baseType: !254, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1235, file: !1188, line: 493, baseType: !7, size: 32, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1235, file: !1188, line: 494, baseType: !246, size: 16, offset: 288)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1235, file: !1188, line: 495, baseType: !246, size: 16, offset: 304)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1235, file: !1188, line: 497, baseType: !1244, size: 64, offset: 320)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1187, file: !1188, line: 697, baseType: !1246, size: 1792, offset: 1792)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1188, line: 507, size: 1792, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1327, !1328}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1246, file: !1188, line: 508, baseType: !742, size: 192, align: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1246, file: !1188, line: 515, baseType: !351, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1246, file: !1188, line: 516, baseType: !351, size: 64, offset: 256)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1246, file: !1188, line: 517, baseType: !351, size: 64, offset: 320)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1246, file: !1188, line: 518, baseType: !351, size: 64, offset: 384)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1246, file: !1188, line: 519, baseType: !351, size: 64, offset: 448)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1246, file: !1188, line: 526, baseType: !666, size: 64, offset: 512)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1246, file: !1188, line: 527, baseType: !351, size: 64, offset: 576)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1246, file: !1188, line: 528, baseType: !7, size: 32, offset: 640)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1246, file: !1188, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1246, file: !1188, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1246, file: !1188, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1246, file: !1188, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1246, file: !1188, line: 563, baseType: !1262, size: 512, offset: 704)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1263)
!1263 = !{!1264, !1272, !1273, !1278, !1321, !1324, !1325, !1326}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1262, file: !20, line: 119, baseType: !1265, size: 256)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1266, line: 9, size: 256, elements: !1267)
!1266 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1267 = !{!1268, !1269}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1265, file: !1266, line: 10, baseType: !742, size: 192, align: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1265, file: !1266, line: 11, baseType: !1270, size: 64, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1271, line: 29, baseType: !666)
!1271 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1262, file: !20, line: 120, baseType: !1270, size: 64, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1262, file: !20, line: 121, baseType: !1274, size: 64, offset: 320)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!19, !1277}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1262, file: !20, line: 122, baseType: !1279, size: 64, offset: 384)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1281)
!1281 = !{!1282, !1302, !1303, !1306, !1311, !1312, !1316, !1320}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1280, file: !20, line: 160, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1285)
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1284, file: !20, line: 215, baseType: !755)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1284, file: !20, line: 216, baseType: !7, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1284, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1284, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1284, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1284, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1284, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1284, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1284, file: !20, line: 233, baseType: !1270, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1284, file: !20, line: 234, baseType: !1277, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1284, file: !20, line: 235, baseType: !1270, size: 64, offset: 256)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1284, file: !20, line: 236, baseType: !1277, size: 64, offset: 320)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1284, file: !20, line: 237, baseType: !1299, size: 4096, offset: 512)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1280, size: 4096, elements: !1300)
!1300 = !{!1301}
!1301 = !DISubrange(count: 8)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1280, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1280, file: !20, line: 162, baseType: !1304, size: 32, offset: 96)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !133, line: 27, baseType: !1305)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !237, line: 96, baseType: !131)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1280, file: !20, line: 163, baseType: !1307, size: 32, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !318, line: 276, baseType: !1308)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !318, line: 276, size: 32, elements: !1309)
!1309 = !{!1310}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1308, file: !318, line: 276, baseType: !322, size: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1280, file: !20, line: 164, baseType: !1277, size: 64, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1280, file: !20, line: 165, baseType: !1313, size: 128, offset: 256)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1266, line: 14, size: 128, elements: !1314)
!1314 = !{!1315}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1313, file: !1266, line: 15, baseType: !734, size: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1280, file: !20, line: 166, baseType: !1317, size: 64, offset: 384)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!1270}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1280, file: !20, line: 167, baseType: !1270, size: 64, offset: 448)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1262, file: !20, line: 123, baseType: !1322, size: 8, offset: 448)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !346, line: 17, baseType: !1323)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !348, line: 21, baseType: !357)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1262, file: !20, line: 124, baseType: !1322, size: 8, offset: 456)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1262, file: !20, line: 125, baseType: !1322, size: 8, offset: 464)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1262, file: !20, line: 126, baseType: !1322, size: 8, offset: 472)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1246, file: !1188, line: 572, baseType: !1262, size: 512, offset: 1216)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1246, file: !1188, line: 580, baseType: !1329, size: 64, offset: 1728)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1187, file: !1188, line: 721, baseType: !7, size: 32, offset: 3584)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1187, file: !1188, line: 722, baseType: !131, size: 32, offset: 3616)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1187, file: !1188, line: 723, baseType: !1333, size: 64, offset: 3648)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1335)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1336, line: 17, baseType: !1337)
!1336 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1336, line: 17, size: 64, elements: !1338)
!1338 = !{!1339}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1337, file: !1336, line: 17, baseType: !1340, size: 64)
!1340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 64, elements: !1341)
!1341 = !{!1342}
!1342 = !DISubrange(count: 1)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1187, file: !1188, line: 724, baseType: !1335, size: 64, offset: 3712)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1187, file: !1188, line: 749, baseType: !1345, offset: 3776)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1188, line: 290, elements: !177)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1187, file: !1188, line: 751, baseType: !150, size: 128, offset: 3776)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1187, file: !1188, line: 757, baseType: !950, size: 64, offset: 3904)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1187, file: !1188, line: 758, baseType: !950, size: 64, offset: 3968)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1187, file: !1188, line: 761, baseType: !1350, size: 320, offset: 4032)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1127, line: 34, size: 320, elements: !1351)
!1351 = !{!1352, !1353}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1350, file: !1127, line: 35, baseType: !351, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1350, file: !1127, line: 36, baseType: !1354, size: 256, offset: 64)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !957, size: 256, elements: !1131)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1187, file: !1188, line: 766, baseType: !131, size: 32, offset: 4352)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1187, file: !1188, line: 767, baseType: !131, size: 32, offset: 4384)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1187, file: !1188, line: 768, baseType: !131, size: 32, offset: 4416)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1187, file: !1188, line: 770, baseType: !131, size: 32, offset: 4448)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1187, file: !1188, line: 772, baseType: !254, size: 64, offset: 4480)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1187, file: !1188, line: 775, baseType: !7, size: 32, offset: 4544)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1187, file: !1188, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1187, file: !1188, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1187, file: !1188, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1187, file: !1188, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1187, file: !1188, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1187, file: !1188, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1187, file: !1188, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1187, file: !1188, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1187, file: !1188, line: 831, baseType: !254, size: 64, offset: 4672)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1187, file: !1188, line: 833, baseType: !1371, size: 384, offset: 4736)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1372)
!1372 = !{!1373, !1378}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1371, file: !25, line: 26, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!239, !1377}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, scope: !1371, file: !25, line: 27, baseType: !1379, size: 320, offset: 64)
!1379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1371, file: !25, line: 27, size: 320, elements: !1380)
!1380 = !{!1381, !1391, !1418}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1379, file: !25, line: 36, baseType: !1382, size: 320)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1379, file: !25, line: 29, size: 320, elements: !1383)
!1383 = !{!1384, !1386, !1387, !1388, !1389, !1390}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1382, file: !25, line: 30, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1382, file: !25, line: 31, baseType: !345, size: 32, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1382, file: !25, line: 32, baseType: !345, size: 32, offset: 96)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1382, file: !25, line: 33, baseType: !345, size: 32, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1382, file: !25, line: 34, baseType: !351, size: 64, offset: 192)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1382, file: !25, line: 35, baseType: !1385, size: 64, offset: 256)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1379, file: !25, line: 46, baseType: !1392, size: 192)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1379, file: !25, line: 38, size: 192, elements: !1393)
!1393 = !{!1394, !1395, !1396, !1417}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1392, file: !25, line: 39, baseType: !1304, size: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1392, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, scope: !1392, file: !25, line: 41, baseType: !1397, size: 64, offset: 64)
!1397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1392, file: !25, line: 41, size: 64, elements: !1398)
!1398 = !{!1399, !1407}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1397, file: !25, line: 42, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1402, line: 7, size: 128, elements: !1403)
!1402 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1403 = !{!1404, !1406}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1401, file: !1402, line: 8, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !237, line: 93, baseType: !463)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1401, file: !1402, line: 9, baseType: !463, size: 64, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1397, file: !25, line: 43, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1410, line: 7, size: 64, elements: !1411)
!1410 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1411 = !{!1412, !1416}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1409, file: !1410, line: 8, baseType: !1413, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1410, line: 5, baseType: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !346, line: 20, baseType: !1415)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !348, line: 26, baseType: !131)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1409, file: !1410, line: 9, baseType: !1414, size: 32, offset: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1392, file: !25, line: 45, baseType: !351, size: 64, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1379, file: !25, line: 54, baseType: !1419, size: 256)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1379, file: !25, line: 48, size: 256, elements: !1420)
!1420 = !{!1421, !1424, !1425, !1426, !1427}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1419, file: !25, line: 49, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1419, file: !25, line: 50, baseType: !131, size: 32, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1419, file: !25, line: 51, baseType: !131, size: 32, offset: 96)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1419, file: !25, line: 52, baseType: !254, size: 64, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1419, file: !25, line: 53, baseType: !254, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1187, file: !1188, line: 835, baseType: !1429, size: 32, offset: 5120)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !133, line: 22, baseType: !1430)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !237, line: 28, baseType: !131)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1187, file: !1188, line: 836, baseType: !1429, size: 32, offset: 5152)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1187, file: !1188, line: 840, baseType: !254, size: 64, offset: 5184)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1187, file: !1188, line: 849, baseType: !1186, size: 64, offset: 5248)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1187, file: !1188, line: 852, baseType: !1186, size: 64, offset: 5312)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1187, file: !1188, line: 857, baseType: !150, size: 128, offset: 5376)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1187, file: !1188, line: 858, baseType: !150, size: 128, offset: 5504)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1187, file: !1188, line: 859, baseType: !1186, size: 64, offset: 5632)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1187, file: !1188, line: 867, baseType: !150, size: 128, offset: 5696)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1187, file: !1188, line: 868, baseType: !150, size: 128, offset: 5824)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1187, file: !1188, line: 871, baseType: !1441, size: 64, offset: 5952)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1443)
!1443 = !{!1444, !1445, !1446, !1447, !1449, !1450, !1457, !1458}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1442, file: !53, line: 61, baseType: !1200, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1442, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1442, file: !53, line: 63, baseType: !163, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1442, file: !53, line: 65, baseType: !1448, size: 256, offset: 64)
!1448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !568, size: 256, elements: !1131)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1442, file: !53, line: 66, baseType: !568, size: 64, offset: 320)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1442, file: !53, line: 68, baseType: !1451, size: 128, offset: 384)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1452, line: 40, baseType: !1453)
!1452 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1452, line: 36, size: 128, elements: !1454)
!1454 = !{!1455, !1456}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1453, file: !1452, line: 37, baseType: !163)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1453, file: !1452, line: 38, baseType: !150, size: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1442, file: !53, line: 69, baseType: !295, size: 128, align: 64, offset: 512)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1442, file: !53, line: 70, baseType: !1459, size: 128, offset: 640)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1460, size: 128, elements: !1341)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1461)
!1461 = !{!1462, !1463}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1460, file: !53, line: 55, baseType: !131, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1460, file: !53, line: 56, baseType: !1464, size: 64, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1187, file: !1188, line: 872, baseType: !1467, size: 512, offset: 6016)
!1467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 512, elements: !1131)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1187, file: !1188, line: 873, baseType: !150, size: 128, offset: 6528)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1187, file: !1188, line: 874, baseType: !150, size: 128, offset: 6656)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1187, file: !1188, line: 876, baseType: !1471, size: 64, offset: 6784)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1473, line: 26, size: 192, elements: !1474)
!1473 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1474 = !{!1475, !1476}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1472, file: !1473, line: 27, baseType: !7, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1472, file: !1473, line: 28, baseType: !1477, size: 128, offset: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1478, line: 43, size: 128, elements: !1479)
!1478 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1477, file: !1478, line: 44, baseType: !755)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1477, file: !1478, line: 45, baseType: !150, size: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1187, file: !1188, line: 879, baseType: !638, size: 64, offset: 6848)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1187, file: !1188, line: 882, baseType: !638, size: 64, offset: 6912)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1187, file: !1188, line: 884, baseType: !351, size: 64, offset: 6976)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1187, file: !1188, line: 885, baseType: !351, size: 64, offset: 7040)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1187, file: !1188, line: 890, baseType: !351, size: 64, offset: 7104)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1187, file: !1188, line: 891, baseType: !1488, size: 128, offset: 7168)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1188, line: 242, size: 128, elements: !1489)
!1489 = !{!1490, !1491, !1492}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1488, file: !1188, line: 244, baseType: !351, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1488, file: !1188, line: 245, baseType: !351, size: 64, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1488, file: !1188, line: 246, baseType: !755, offset: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1187, file: !1188, line: 900, baseType: !254, size: 64, offset: 7296)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1187, file: !1188, line: 901, baseType: !254, size: 64, offset: 7360)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1187, file: !1188, line: 904, baseType: !351, size: 64, offset: 7424)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1187, file: !1188, line: 907, baseType: !351, size: 64, offset: 7488)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1187, file: !1188, line: 910, baseType: !254, size: 64, offset: 7552)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1187, file: !1188, line: 911, baseType: !254, size: 64, offset: 7616)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1187, file: !1188, line: 914, baseType: !1500, size: 640, offset: 7680)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1501, line: 123, size: 640, elements: !1502)
!1501 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1502 = !{!1503, !1509, !1510}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1500, file: !1501, line: 124, baseType: !1504, size: 576)
!1504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1505, size: 576, elements: !205)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1501, line: 108, size: 192, elements: !1506)
!1506 = !{!1507, !1508}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1505, file: !1501, line: 109, baseType: !351, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1505, file: !1501, line: 110, baseType: !1313, size: 128, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1500, file: !1501, line: 125, baseType: !7, size: 32, offset: 576)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1500, file: !1501, line: 126, baseType: !7, size: 32, offset: 608)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1187, file: !1188, line: 917, baseType: !1512, size: 192, offset: 8320)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1501, line: 134, size: 192, elements: !1513)
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1512, file: !1501, line: 135, baseType: !295, size: 128, align: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1512, file: !1501, line: 136, baseType: !7, size: 32, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1187, file: !1188, line: 923, baseType: !1517, size: 64, offset: 8512)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1519)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1520, line: 111, size: 1280, elements: !1521)
!1520 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1521 = !{!1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1541, !1542, !1543, !1544, !1545, !1546, !1653, !1654, !1655, !1656, !1682, !1685, !1695}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1519, file: !1520, line: 112, baseType: !729, size: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1519, file: !1520, line: 120, baseType: !365, size: 32, offset: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1519, file: !1520, line: 121, baseType: !373, size: 32, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1519, file: !1520, line: 122, baseType: !365, size: 32, offset: 96)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1519, file: !1520, line: 123, baseType: !373, size: 32, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1519, file: !1520, line: 124, baseType: !365, size: 32, offset: 160)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1519, file: !1520, line: 125, baseType: !373, size: 32, offset: 192)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1519, file: !1520, line: 126, baseType: !365, size: 32, offset: 224)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1519, file: !1520, line: 127, baseType: !373, size: 32, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1519, file: !1520, line: 128, baseType: !7, size: 32, offset: 288)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1519, file: !1520, line: 129, baseType: !1533, size: 64, offset: 320)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1534, line: 26, baseType: !1535)
!1534 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1534, line: 24, size: 64, elements: !1536)
!1536 = !{!1537}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1535, file: !1534, line: 25, baseType: !1538, size: 64)
!1538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 64, elements: !1539)
!1539 = !{!1540}
!1540 = !DISubrange(count: 2)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1519, file: !1520, line: 130, baseType: !1533, size: 64, offset: 384)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1519, file: !1520, line: 131, baseType: !1533, size: 64, offset: 448)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1519, file: !1520, line: 132, baseType: !1533, size: 64, offset: 512)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1519, file: !1520, line: 133, baseType: !1533, size: 64, offset: 576)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1519, file: !1520, line: 135, baseType: !357, size: 8, offset: 640)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1519, file: !1520, line: 137, baseType: !1547, size: 64, offset: 704)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1549, line: 189, size: 1664, elements: !1550)
!1549 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1550 = !{!1551, !1552, !1555, !1560, !1561, !1564, !1565, !1570, !1571, !1572, !1573, !1575, !1576, !1577, !1578, !1579, !1617, !1638}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1548, file: !1549, line: 190, baseType: !1200, size: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1548, file: !1549, line: 191, baseType: !1553, size: 32, offset: 32)
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1549, line: 28, baseType: !1554)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !133, line: 98, baseType: !1414)
!1555 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !1549, line: 192, baseType: !1556, size: 192, offset: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1548, file: !1549, line: 192, size: 192, elements: !1557)
!1557 = !{!1558, !1559}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1556, file: !1549, line: 193, baseType: !150, size: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1556, file: !1549, line: 194, baseType: !742, size: 192, align: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1548, file: !1549, line: 199, baseType: !749, size: 256, offset: 256)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1548, file: !1549, line: 200, baseType: !1562, size: 64, offset: 512)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1549, line: 200, flags: DIFlagFwdDecl)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1548, file: !1549, line: 201, baseType: !134, size: 64, offset: 576)
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !1549, line: 202, baseType: !1566, size: 64, offset: 640)
!1566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1548, file: !1549, line: 202, size: 64, elements: !1567)
!1567 = !{!1568, !1569}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1566, file: !1549, line: 203, baseType: !469, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1566, file: !1549, line: 204, baseType: !469, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1548, file: !1549, line: 206, baseType: !469, size: 64, offset: 704)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1548, file: !1549, line: 207, baseType: !365, size: 32, offset: 768)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1548, file: !1549, line: 208, baseType: !373, size: 32, offset: 800)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1548, file: !1549, line: 209, baseType: !1574, size: 32, offset: 832)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1549, line: 31, baseType: !489)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1548, file: !1549, line: 210, baseType: !246, size: 16, offset: 864)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1548, file: !1549, line: 211, baseType: !246, size: 16, offset: 880)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1548, file: !1549, line: 215, baseType: !1175, size: 16, offset: 896)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1548, file: !1549, line: 222, baseType: !254, size: 64, offset: 960)
!1579 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !1549, line: 239, baseType: !1580, size: 320, offset: 1024)
!1580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1548, file: !1549, line: 239, size: 320, elements: !1581)
!1581 = !{!1582, !1609}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1580, file: !1549, line: 240, baseType: !1583, size: 320)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1549, line: 108, size: 320, elements: !1584)
!1584 = !{!1585, !1586, !1598, !1601, !1608}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1583, file: !1549, line: 110, baseType: !254, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, scope: !1583, file: !1549, line: 111, baseType: !1587, size: 64, offset: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1583, file: !1549, line: 111, size: 64, elements: !1588)
!1588 = !{!1589, !1597}
!1589 = !DIDerivedType(tag: DW_TAG_member, scope: !1587, file: !1549, line: 112, baseType: !1590, size: 64)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1587, file: !1549, line: 112, size: 64, elements: !1591)
!1591 = !{!1592, !1593}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1590, file: !1549, line: 114, baseType: !834, size: 16)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1590, file: !1549, line: 115, baseType: !1594, size: 48, offset: 16)
!1594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 48, elements: !1595)
!1595 = !{!1596}
!1596 = !DISubrange(count: 6)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1587, file: !1549, line: 121, baseType: !254, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1583, file: !1549, line: 123, baseType: !1599, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1549, line: 96, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1583, file: !1549, line: 124, baseType: !1602, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1549, line: 102, size: 192, elements: !1604)
!1604 = !{!1605, !1606, !1607}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1603, file: !1549, line: 103, baseType: !295, size: 128, align: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1603, file: !1549, line: 104, baseType: !1200, size: 32, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1603, file: !1549, line: 105, baseType: !420, size: 8, offset: 160)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1583, file: !1549, line: 125, baseType: !146, size: 64, offset: 256)
!1609 = !DIDerivedType(tag: DW_TAG_member, scope: !1580, file: !1549, line: 241, baseType: !1610, size: 320)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1580, file: !1549, line: 241, size: 320, elements: !1611)
!1611 = !{!1612, !1613, !1614, !1615, !1616}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1610, file: !1549, line: 242, baseType: !254, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1610, file: !1549, line: 243, baseType: !254, size: 64, offset: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1610, file: !1549, line: 244, baseType: !1599, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1610, file: !1549, line: 245, baseType: !1602, size: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1610, file: !1549, line: 246, baseType: !204, size: 64, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !1549, line: 254, baseType: !1618, size: 256, offset: 1344)
!1618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1548, file: !1549, line: 254, size: 256, elements: !1619)
!1619 = !{!1620, !1626}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1618, file: !1549, line: 255, baseType: !1621, size: 256)
!1621 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1549, line: 128, size: 256, elements: !1622)
!1622 = !{!1623, !1624}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1621, file: !1549, line: 129, baseType: !134, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1621, file: !1549, line: 130, baseType: !1625, size: 256)
!1625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 256, elements: !1131)
!1626 = !DIDerivedType(tag: DW_TAG_member, scope: !1618, file: !1549, line: 256, baseType: !1627, size: 256)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1618, file: !1549, line: 256, size: 256, elements: !1628)
!1628 = !{!1629, !1630}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1627, file: !1549, line: 258, baseType: !150, size: 128)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1627, file: !1549, line: 259, baseType: !1631, size: 128, offset: 128)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1632, line: 22, size: 128, elements: !1633)
!1632 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1633 = !{!1634, !1637}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1631, file: !1632, line: 23, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1632, line: 23, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1631, file: !1632, line: 24, baseType: !254, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1548, file: !1549, line: 274, baseType: !1639, size: 64, offset: 1600)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1549, line: 170, size: 192, elements: !1641)
!1641 = !{!1642, !1651, !1652}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1640, file: !1549, line: 171, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1549, line: 165, baseType: !1644)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!131, !1547, !1647, !1649, !1547}
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1600)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1621)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1640, file: !1549, line: 172, baseType: !1547, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1640, file: !1549, line: 173, baseType: !1599, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1519, file: !1520, line: 138, baseType: !1547, size: 64, offset: 768)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1519, file: !1520, line: 139, baseType: !1547, size: 64, offset: 832)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1519, file: !1520, line: 140, baseType: !1547, size: 64, offset: 896)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1519, file: !1520, line: 145, baseType: !1657, size: 64, offset: 960)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1659, line: 13, size: 896, elements: !1660)
!1659 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1660 = !{!1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1658, file: !1659, line: 14, baseType: !1200, size: 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1658, file: !1659, line: 15, baseType: !729, size: 32, offset: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1658, file: !1659, line: 16, baseType: !729, size: 32, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1658, file: !1659, line: 21, baseType: !660, size: 64, offset: 128)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1658, file: !1659, line: 27, baseType: !254, size: 64, offset: 192)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1658, file: !1659, line: 28, baseType: !254, size: 64, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1658, file: !1659, line: 29, baseType: !660, size: 64, offset: 320)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1658, file: !1659, line: 32, baseType: !572, size: 128, offset: 384)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1658, file: !1659, line: 33, baseType: !365, size: 32, offset: 512)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1658, file: !1659, line: 37, baseType: !660, size: 64, offset: 576)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1658, file: !1659, line: 44, baseType: !1672, size: 256, offset: 640)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1673, line: 15, size: 256, elements: !1674)
!1673 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1674 = !{!1675, !1676, !1677, !1678, !1679, !1680, !1681}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1672, file: !1673, line: 16, baseType: !755)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1672, file: !1673, line: 18, baseType: !131, size: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1672, file: !1673, line: 19, baseType: !131, size: 32, offset: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1672, file: !1673, line: 20, baseType: !131, size: 32, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1672, file: !1673, line: 21, baseType: !131, size: 32, offset: 96)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1672, file: !1673, line: 22, baseType: !254, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1672, file: !1673, line: 23, baseType: !254, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1519, file: !1520, line: 146, baseType: !1683, size: 64, offset: 1024)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !366, line: 18, flags: DIFlagFwdDecl)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1519, file: !1520, line: 147, baseType: !1686, size: 64, offset: 1088)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1520, line: 25, size: 64, elements: !1688)
!1688 = !{!1689, !1690, !1691}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1687, file: !1520, line: 26, baseType: !729, size: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1687, file: !1520, line: 27, baseType: !131, size: 32, offset: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1687, file: !1520, line: 28, baseType: !1692, offset: 64)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, elements: !1693)
!1693 = !{!1694}
!1694 = !DISubrange(count: 0)
!1695 = !DIDerivedType(tag: DW_TAG_member, scope: !1519, file: !1520, line: 149, baseType: !1696, size: 128, offset: 1152)
!1696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1519, file: !1520, line: 149, size: 128, elements: !1697)
!1697 = !{!1698, !1699}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1696, file: !1520, line: 150, baseType: !131, size: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1696, file: !1520, line: 151, baseType: !295, size: 128, align: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1187, file: !1188, line: 926, baseType: !1517, size: 64, offset: 8576)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1187, file: !1188, line: 929, baseType: !1517, size: 64, offset: 8640)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1187, file: !1188, line: 933, baseType: !1547, size: 64, offset: 8704)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1187, file: !1188, line: 943, baseType: !1704, size: 128, offset: 8768)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 128, elements: !1705)
!1705 = !{!1706}
!1706 = !DISubrange(count: 16)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1187, file: !1188, line: 945, baseType: !1708, size: 64, offset: 8896)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1188, line: 49, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1187, file: !1188, line: 956, baseType: !1711, size: 64, offset: 8960)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1188, line: 45, flags: DIFlagFwdDecl)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1187, file: !1188, line: 959, baseType: !1714, size: 64, offset: 9024)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1188, line: 959, flags: DIFlagFwdDecl)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1187, file: !1188, line: 962, baseType: !1717, size: 64, offset: 9088)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1188, line: 66, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1187, file: !1188, line: 966, baseType: !1720, size: 64, offset: 9152)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1722, line: 35, flags: DIFlagFwdDecl)
!1722 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1187, file: !1188, line: 969, baseType: !1724, size: 64, offset: 9216)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1726, line: 82, size: 7296, elements: !1727)
!1726 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1727 = !{!1728, !1729, !1730, !1731, !1732, !1733, !1734, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1763, !1772, !1773, !1775, !1776, !1777, !1780, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1810, !1811, !1818, !1819, !1820, !1821, !1822, !1823}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1725, file: !1726, line: 83, baseType: !1200, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1725, file: !1726, line: 84, baseType: !729, size: 32, offset: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1725, file: !1726, line: 85, baseType: !131, size: 32, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1725, file: !1726, line: 86, baseType: !150, size: 128, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1725, file: !1726, line: 88, baseType: !1451, size: 128, offset: 256)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1725, file: !1726, line: 91, baseType: !1186, size: 64, offset: 384)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1725, file: !1726, line: 94, baseType: !1735, size: 192, offset: 448)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1736, line: 30, size: 192, elements: !1737)
!1736 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1737 = !{!1738, !1739}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1735, file: !1736, line: 31, baseType: !150, size: 128)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1735, file: !1736, line: 32, baseType: !1740, size: 64, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1741, line: 25, baseType: !1742)
!1741 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1741, line: 23, size: 64, elements: !1743)
!1743 = !{!1744}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1742, file: !1741, line: 24, baseType: !1340, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1725, file: !1726, line: 97, baseType: !568, size: 64, offset: 640)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1725, file: !1726, line: 100, baseType: !131, size: 32, offset: 704)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1725, file: !1726, line: 106, baseType: !131, size: 32, offset: 736)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1725, file: !1726, line: 107, baseType: !1186, size: 64, offset: 768)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1725, file: !1726, line: 110, baseType: !131, size: 32, offset: 832)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1725, file: !1726, line: 111, baseType: !7, size: 32, offset: 864)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1725, file: !1726, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1725, file: !1726, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1725, file: !1726, line: 128, baseType: !131, size: 32, offset: 928)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1725, file: !1726, line: 129, baseType: !150, size: 128, offset: 960)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1725, file: !1726, line: 132, baseType: !1262, size: 512, offset: 1088)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1725, file: !1726, line: 133, baseType: !1270, size: 64, offset: 1600)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1725, file: !1726, line: 140, baseType: !1758, size: 256, offset: 1664)
!1758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1759, size: 256, elements: !1539)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1726, line: 38, size: 128, elements: !1760)
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1759, file: !1726, line: 39, baseType: !351, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1759, file: !1726, line: 40, baseType: !351, size: 64, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1725, file: !1726, line: 146, baseType: !1764, size: 192, offset: 1920)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1726, line: 66, size: 192, elements: !1765)
!1765 = !{!1766}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1764, file: !1726, line: 67, baseType: !1767, size: 192)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1726, line: 47, size: 192, elements: !1768)
!1768 = !{!1769, !1770, !1771}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1767, file: !1726, line: 48, baseType: !662, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1767, file: !1726, line: 49, baseType: !662, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1767, file: !1726, line: 50, baseType: !662, size: 64, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1725, file: !1726, line: 150, baseType: !1500, size: 640, offset: 2112)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1725, file: !1726, line: 153, baseType: !1774, size: 256, offset: 2752)
!1774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1441, size: 256, elements: !1131)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1725, file: !1726, line: 159, baseType: !1441, size: 64, offset: 3008)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1725, file: !1726, line: 162, baseType: !131, size: 32, offset: 3072)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1725, file: !1726, line: 164, baseType: !1778, size: 64, offset: 3136)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1726, line: 164, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1725, file: !1726, line: 175, baseType: !1781, size: 32, offset: 3200)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !318, line: 805, baseType: !1782)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !318, line: 798, size: 32, elements: !1783)
!1783 = !{!1784, !1785}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1782, file: !318, line: 803, baseType: !317, size: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1782, file: !318, line: 804, baseType: !163, offset: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1725, file: !1726, line: 176, baseType: !351, size: 64, offset: 3264)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1725, file: !1726, line: 176, baseType: !351, size: 64, offset: 3328)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1725, file: !1726, line: 176, baseType: !351, size: 64, offset: 3392)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1725, file: !1726, line: 176, baseType: !351, size: 64, offset: 3456)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1725, file: !1726, line: 177, baseType: !351, size: 64, offset: 3520)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1725, file: !1726, line: 178, baseType: !351, size: 64, offset: 3584)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1725, file: !1726, line: 179, baseType: !1488, size: 128, offset: 3648)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1725, file: !1726, line: 180, baseType: !254, size: 64, offset: 3776)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1725, file: !1726, line: 180, baseType: !254, size: 64, offset: 3840)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1725, file: !1726, line: 180, baseType: !254, size: 64, offset: 3904)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1725, file: !1726, line: 180, baseType: !254, size: 64, offset: 3968)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1725, file: !1726, line: 181, baseType: !254, size: 64, offset: 4032)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1725, file: !1726, line: 181, baseType: !254, size: 64, offset: 4096)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1725, file: !1726, line: 181, baseType: !254, size: 64, offset: 4160)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1725, file: !1726, line: 181, baseType: !254, size: 64, offset: 4224)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1725, file: !1726, line: 182, baseType: !254, size: 64, offset: 4288)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1725, file: !1726, line: 182, baseType: !254, size: 64, offset: 4352)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1725, file: !1726, line: 182, baseType: !254, size: 64, offset: 4416)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1725, file: !1726, line: 182, baseType: !254, size: 64, offset: 4480)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1725, file: !1726, line: 183, baseType: !254, size: 64, offset: 4544)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1725, file: !1726, line: 183, baseType: !254, size: 64, offset: 4608)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1725, file: !1726, line: 184, baseType: !1808, offset: 4672)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1809, line: 12, elements: !177)
!1809 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1725, file: !1726, line: 192, baseType: !353, size: 64, offset: 4672)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1725, file: !1726, line: 203, baseType: !1812, size: 2048, offset: 4736)
!1812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1813, size: 2048, elements: !1705)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1814, line: 43, size: 128, elements: !1815)
!1814 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1815 = !{!1816, !1817}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1813, file: !1814, line: 44, baseType: !253, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1813, file: !1814, line: 45, baseType: !253, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1725, file: !1726, line: 220, baseType: !420, size: 8, offset: 6784)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1725, file: !1726, line: 221, baseType: !1175, size: 16, offset: 6800)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1725, file: !1726, line: 222, baseType: !1175, size: 16, offset: 6816)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1725, file: !1726, line: 224, baseType: !950, size: 64, offset: 6848)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1725, file: !1726, line: 227, baseType: !656, size: 192, offset: 6912)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1725, file: !1726, line: 233, baseType: !656, size: 192, offset: 7104)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1187, file: !1188, line: 970, baseType: !1825, size: 64, offset: 9280)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1726, line: 20, size: 16576, elements: !1827)
!1827 = !{!1828, !1829, !1830, !1831}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1826, file: !1726, line: 21, baseType: !163)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1826, file: !1726, line: 22, baseType: !1200, size: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1826, file: !1726, line: 23, baseType: !1451, size: 128, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1826, file: !1726, line: 24, baseType: !1832, size: 16384, offset: 192)
!1832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1833, size: 16384, elements: !209)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1736, line: 49, size: 256, elements: !1834)
!1834 = !{!1835}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1833, file: !1736, line: 50, baseType: !1836, size: 256)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1736, line: 35, size: 256, elements: !1837)
!1837 = !{!1838, !1845, !1846, !1852}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1836, file: !1736, line: 37, baseType: !1839, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1840, line: 19, baseType: !1841)
!1840 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1840, line: 18, baseType: !1843)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{null, !131}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1836, file: !1736, line: 38, baseType: !254, size: 64, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1836, file: !1736, line: 44, baseType: !1847, size: 64, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1840, line: 22, baseType: !1848)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1840, line: 21, baseType: !1850)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{null}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1836, file: !1736, line: 46, baseType: !1740, size: 64, offset: 192)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1187, file: !1188, line: 971, baseType: !1740, size: 64, offset: 9344)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1187, file: !1188, line: 972, baseType: !1740, size: 64, offset: 9408)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1187, file: !1188, line: 974, baseType: !1740, size: 64, offset: 9472)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1187, file: !1188, line: 975, baseType: !1735, size: 192, offset: 9536)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1187, file: !1188, line: 976, baseType: !254, size: 64, offset: 9728)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1187, file: !1188, line: 977, baseType: !251, size: 64, offset: 9792)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1187, file: !1188, line: 978, baseType: !7, size: 32, offset: 9856)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1187, file: !1188, line: 980, baseType: !298, size: 64, offset: 9920)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1187, file: !1188, line: 989, baseType: !1862, size: 128, offset: 9984)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1863, line: 35, size: 128, elements: !1864)
!1863 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1864 = !{!1865, !1866, !1867}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1862, file: !1863, line: 36, baseType: !131, size: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1862, file: !1863, line: 37, baseType: !729, size: 32, offset: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1862, file: !1863, line: 38, baseType: !1868, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1863, line: 23, flags: DIFlagFwdDecl)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1187, file: !1188, line: 992, baseType: !351, size: 64, offset: 10112)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1187, file: !1188, line: 993, baseType: !351, size: 64, offset: 10176)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1187, file: !1188, line: 996, baseType: !163, offset: 10240)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1187, file: !1188, line: 999, baseType: !755, offset: 10240)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1187, file: !1188, line: 1001, baseType: !1875, size: 64, offset: 10240)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1188, line: 636, size: 64, elements: !1876)
!1876 = !{!1877}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1875, file: !1188, line: 637, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1187, file: !1188, line: 1005, baseType: !734, size: 128, offset: 10304)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1187, file: !1188, line: 1007, baseType: !1186, size: 64, offset: 10432)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1187, file: !1188, line: 1009, baseType: !1882, size: 64, offset: 10496)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1188, line: 1009, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1187, file: !1188, line: 1043, baseType: !134, size: 64, offset: 10560)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1187, file: !1188, line: 1046, baseType: !1886, size: 64, offset: 10624)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1188, line: 41, flags: DIFlagFwdDecl)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1187, file: !1188, line: 1050, baseType: !1889, size: 64, offset: 10688)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1188, line: 42, flags: DIFlagFwdDecl)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1187, file: !1188, line: 1054, baseType: !1892, size: 64, offset: 10752)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1188, line: 55, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1187, file: !1188, line: 1056, baseType: !1895, size: 64, offset: 10816)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1188, line: 40, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1187, file: !1188, line: 1058, baseType: !1898, size: 64, offset: 10880)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1900, line: 99, size: 704, elements: !1901)
!1900 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1901 = !{!1902, !1903, !1904, !1905, !1906, !1907, !1908, !1927, !1928}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1899, file: !1900, line: 100, baseType: !660, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1899, file: !1900, line: 101, baseType: !729, size: 32, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1899, file: !1900, line: 102, baseType: !729, size: 32, offset: 96)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1899, file: !1900, line: 105, baseType: !163, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1899, file: !1900, line: 107, baseType: !246, size: 16, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1899, file: !1900, line: 109, baseType: !721, size: 128, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1899, file: !1900, line: 110, baseType: !1909, size: 64, offset: 320)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1900, line: 73, size: 448, elements: !1911)
!1911 = !{!1912, !1915, !1916, !1921, !1926}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1910, file: !1900, line: 74, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1900, line: 74, flags: DIFlagFwdDecl)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1910, file: !1900, line: 75, baseType: !1898, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, scope: !1910, file: !1900, line: 83, baseType: !1917, size: 128, offset: 128)
!1917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1910, file: !1900, line: 83, size: 128, elements: !1918)
!1918 = !{!1919, !1920}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1917, file: !1900, line: 84, baseType: !150, size: 128)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1917, file: !1900, line: 85, baseType: !910, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, scope: !1910, file: !1900, line: 87, baseType: !1922, size: 128, offset: 256)
!1922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1910, file: !1900, line: 87, size: 128, elements: !1923)
!1923 = !{!1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1922, file: !1900, line: 88, baseType: !572, size: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1922, file: !1900, line: 89, baseType: !295, size: 128, align: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1910, file: !1900, line: 92, baseType: !7, size: 32, offset: 384)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1899, file: !1900, line: 111, baseType: !568, size: 64, offset: 384)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1899, file: !1900, line: 113, baseType: !1929, size: 256, offset: 448)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1930, line: 102, size: 256, elements: !1931)
!1930 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1931 = !{!1932, !1933, !1934}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1929, file: !1930, line: 103, baseType: !660, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1929, file: !1930, line: 104, baseType: !150, size: 128, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1929, file: !1930, line: 105, baseType: !1935, size: 64, offset: 192)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1930, line: 21, baseType: !1936)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !1939}
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1187, file: !1188, line: 1061, baseType: !1941, size: 64, offset: 10944)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1188, line: 43, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1187, file: !1188, line: 1064, baseType: !254, size: 64, offset: 11008)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1187, file: !1188, line: 1065, baseType: !1945, size: 64, offset: 11072)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1736, line: 14, baseType: !1947)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1736, line: 12, size: 384, elements: !1948)
!1948 = !{!1949}
!1949 = !DIDerivedType(tag: DW_TAG_member, scope: !1947, file: !1736, line: 13, baseType: !1950, size: 384)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1947, file: !1736, line: 13, size: 384, elements: !1951)
!1951 = !{!1952, !1953, !1954, !1955}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1950, file: !1736, line: 13, baseType: !131, size: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1950, file: !1736, line: 13, baseType: !131, size: 32, offset: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1950, file: !1736, line: 13, baseType: !131, size: 32, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1950, file: !1736, line: 13, baseType: !1956, size: 256, offset: 128)
!1956 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1957, line: 32, size: 256, elements: !1958)
!1957 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1958 = !{!1959, !1964, !1977, !1983, !1992, !2012, !2017}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1956, file: !1957, line: 37, baseType: !1960, size: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !1957, line: 34, size: 64, elements: !1961)
!1961 = !{!1962, !1963}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1960, file: !1957, line: 35, baseType: !1430, size: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1960, file: !1957, line: 36, baseType: !371, size: 32, offset: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1956, file: !1957, line: 45, baseType: !1965, size: 192)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !1957, line: 40, size: 192, elements: !1966)
!1966 = !{!1967, !1969, !1970, !1976}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1965, file: !1957, line: 41, baseType: !1968, size: 32)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !237, line: 95, baseType: !131)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1965, file: !1957, line: 42, baseType: !131, size: 32, offset: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1965, file: !1957, line: 43, baseType: !1971, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1957, line: 11, baseType: !1972)
!1972 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1957, line: 8, size: 64, elements: !1973)
!1973 = !{!1974, !1975}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1972, file: !1957, line: 9, baseType: !131, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1972, file: !1957, line: 10, baseType: !134, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1965, file: !1957, line: 44, baseType: !131, size: 32, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1956, file: !1957, line: 52, baseType: !1978, size: 128)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !1957, line: 48, size: 128, elements: !1979)
!1979 = !{!1980, !1981, !1982}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1978, file: !1957, line: 49, baseType: !1430, size: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1978, file: !1957, line: 50, baseType: !371, size: 32, offset: 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1978, file: !1957, line: 51, baseType: !1971, size: 64, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1956, file: !1957, line: 61, baseType: !1984, size: 256)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !1957, line: 55, size: 256, elements: !1985)
!1985 = !{!1986, !1987, !1988, !1989, !1991}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1984, file: !1957, line: 56, baseType: !1430, size: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1984, file: !1957, line: 57, baseType: !371, size: 32, offset: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1984, file: !1957, line: 58, baseType: !131, size: 32, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1984, file: !1957, line: 59, baseType: !1990, size: 64, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !237, line: 94, baseType: !238)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1984, file: !1957, line: 60, baseType: !1990, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1956, file: !1957, line: 95, baseType: !1993, size: 256)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !1957, line: 64, size: 256, elements: !1994)
!1994 = !{!1995, !1996}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1993, file: !1957, line: 65, baseType: !134, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, scope: !1993, file: !1957, line: 77, baseType: !1997, size: 192, offset: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1993, file: !1957, line: 77, size: 192, elements: !1998)
!1998 = !{!1999, !2000, !2007}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1997, file: !1957, line: 82, baseType: !1175, size: 16)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1997, file: !1957, line: 88, baseType: !2001, size: 192)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1997, file: !1957, line: 84, size: 192, elements: !2002)
!2002 = !{!2003, !2005, !2006}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2001, file: !1957, line: 85, baseType: !2004, size: 64)
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 64, elements: !1300)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2001, file: !1957, line: 86, baseType: !134, size: 64, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2001, file: !1957, line: 87, baseType: !134, size: 64, offset: 128)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1997, file: !1957, line: 93, baseType: !2008, size: 96)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1997, file: !1957, line: 90, size: 96, elements: !2009)
!2009 = !{!2010, !2011}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2008, file: !1957, line: 91, baseType: !2004, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2008, file: !1957, line: 92, baseType: !347, size: 32, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1956, file: !1957, line: 101, baseType: !2013, size: 128)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !1957, line: 98, size: 128, elements: !2014)
!2014 = !{!2015, !2016}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2013, file: !1957, line: 99, baseType: !239, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2013, file: !1957, line: 100, baseType: !131, size: 32, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1956, file: !1957, line: 108, baseType: !2018, size: 128)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1956, file: !1957, line: 104, size: 128, elements: !2019)
!2019 = !{!2020, !2021, !2022}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2018, file: !1957, line: 105, baseType: !134, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2018, file: !1957, line: 106, baseType: !131, size: 32, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2018, file: !1957, line: 107, baseType: !7, size: 32, offset: 96)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1187, file: !1188, line: 1067, baseType: !1808, offset: 11136)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1187, file: !1188, line: 1099, baseType: !2025, size: 64, offset: 11136)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1188, line: 56, flags: DIFlagFwdDecl)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1187, file: !1188, line: 1103, baseType: !150, size: 128, offset: 11200)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1187, file: !1188, line: 1104, baseType: !2029, size: 64, offset: 11328)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1188, line: 46, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1187, file: !1188, line: 1105, baseType: !656, size: 192, offset: 11392)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1187, file: !1188, line: 1106, baseType: !7, size: 32, offset: 11584)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1187, file: !1188, line: 1109, baseType: !2034, size: 128, offset: 11648)
!2034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2035, size: 128, elements: !1539)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1188, line: 51, flags: DIFlagFwdDecl)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1187, file: !1188, line: 1110, baseType: !656, size: 192, offset: 11776)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1187, file: !1188, line: 1111, baseType: !150, size: 128, offset: 11968)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1187, file: !1188, line: 1173, baseType: !2040, size: 64, offset: 12096)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2042, line: 62, size: 256, align: 256, elements: !2043)
!2042 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2043 = !{!2044, !2045, !2046, !2051}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2041, file: !2042, line: 75, baseType: !347, size: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2041, file: !2042, line: 90, baseType: !347, size: 32, offset: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2041, file: !2042, line: 124, baseType: !2047, size: 64, offset: 64)
!2047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2041, file: !2042, line: 109, size: 64, elements: !2048)
!2048 = !{!2049, !2050}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2047, file: !2042, line: 110, baseType: !352, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2047, file: !2042, line: 112, baseType: !352, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2041, file: !2042, line: 144, baseType: !347, size: 32, offset: 128)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1187, file: !1188, line: 1174, baseType: !345, size: 32, offset: 12160)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1187, file: !1188, line: 1179, baseType: !254, size: 64, offset: 12224)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1187, file: !1188, line: 1182, baseType: !2055, size: 128, offset: 12288)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1127, line: 76, size: 128, elements: !2056)
!2056 = !{!2057, !2062, !2063}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2055, file: !1127, line: 85, baseType: !2058, size: 64)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2059, line: 7, size: 64, elements: !2060)
!2059 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2060 = !{!2061}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2058, file: !2059, line: 12, baseType: !1337, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2055, file: !1127, line: 88, baseType: !420, size: 8, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2055, file: !1127, line: 95, baseType: !420, size: 8, offset: 72)
!2064 = !DIDerivedType(tag: DW_TAG_member, scope: !1187, file: !1188, line: 1184, baseType: !2065, size: 128, offset: 12416)
!2065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1187, file: !1188, line: 1184, size: 128, elements: !2066)
!2066 = !{!2067, !2068}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2065, file: !1188, line: 1185, baseType: !1200, size: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2065, file: !1188, line: 1186, baseType: !295, size: 128, align: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1187, file: !1188, line: 1190, baseType: !2070, size: 64, offset: 12544)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1188, line: 53, flags: DIFlagFwdDecl)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1187, file: !1188, line: 1192, baseType: !2073, size: 128, offset: 12608)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1127, line: 64, size: 128, elements: !2074)
!2074 = !{!2075, !2076, !2077}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2073, file: !1127, line: 65, baseType: !703, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2073, file: !1127, line: 67, baseType: !347, size: 32, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2073, file: !1127, line: 68, baseType: !347, size: 32, offset: 96)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1187, file: !1188, line: 1206, baseType: !131, size: 32, offset: 12736)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1187, file: !1188, line: 1207, baseType: !131, size: 32, offset: 12768)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1187, file: !1188, line: 1209, baseType: !254, size: 64, offset: 12800)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1187, file: !1188, line: 1219, baseType: !351, size: 64, offset: 12864)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1187, file: !1188, line: 1220, baseType: !351, size: 64, offset: 12928)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1187, file: !1188, line: 1317, baseType: !131, size: 32, offset: 12992)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1187, file: !1188, line: 1319, baseType: !1186, size: 64, offset: 13056)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1187, file: !1188, line: 1322, baseType: !2086, size: 64, offset: 13120)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2088, line: 56, size: 512, elements: !2089)
!2088 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2089 = !{!2090, !2091, !2092, !2093, !2094, !2095, !2096, !2098}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2087, file: !2088, line: 57, baseType: !2086, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2087, file: !2088, line: 58, baseType: !134, size: 64, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2087, file: !2088, line: 59, baseType: !254, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2087, file: !2088, line: 60, baseType: !254, size: 64, offset: 192)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2087, file: !2088, line: 61, baseType: !795, size: 64, offset: 256)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2087, file: !2088, line: 62, baseType: !7, size: 32, offset: 320)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2087, file: !2088, line: 63, baseType: !2097, size: 64, offset: 384)
!2097 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !133, line: 153, baseType: !351)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2087, file: !2088, line: 64, baseType: !2099, size: 64, offset: 448)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1187, file: !1188, line: 1326, baseType: !1200, size: 32, offset: 13184)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1187, file: !1188, line: 1342, baseType: !134, size: 64, offset: 13248)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1187, file: !1188, line: 1343, baseType: !352, size: 64, offset: 13312)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1187, file: !1188, line: 1344, baseType: !351, size: 64, offset: 13376)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1187, file: !1188, line: 1345, baseType: !352, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1187, file: !1188, line: 1346, baseType: !352, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1187, file: !1188, line: 1347, baseType: !352, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1187, file: !1188, line: 1348, baseType: !295, size: 128, align: 64, offset: 13504)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1187, file: !1188, line: 1358, baseType: !2110, size: 34816, offset: 13824)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2111, line: 485, size: 34816, elements: !2112)
!2111 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2112 = !{!2113, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2142, !2143, !2144, !2145, !2146, !2147, !2150, !2151, !2152}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2110, file: !2111, line: 487, baseType: !2114, size: 192)
!2114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2115, size: 192, elements: !205)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2116, line: 16, size: 64, elements: !2117)
!2116 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2117 = !{!2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2115, file: !2116, line: 17, baseType: !834, size: 16)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2115, file: !2116, line: 18, baseType: !834, size: 16, offset: 16)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2115, file: !2116, line: 19, baseType: !834, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2115, file: !2116, line: 19, baseType: !834, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2115, file: !2116, line: 19, baseType: !834, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2115, file: !2116, line: 19, baseType: !834, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2115, file: !2116, line: 19, baseType: !834, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2115, file: !2116, line: 20, baseType: !834, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2115, file: !2116, line: 20, baseType: !834, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2115, file: !2116, line: 20, baseType: !834, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2115, file: !2116, line: 20, baseType: !834, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2115, file: !2116, line: 20, baseType: !834, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2115, file: !2116, line: 20, baseType: !834, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2110, file: !2111, line: 491, baseType: !254, size: 64, offset: 192)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2110, file: !2111, line: 495, baseType: !246, size: 16, offset: 256)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2110, file: !2111, line: 496, baseType: !246, size: 16, offset: 272)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2110, file: !2111, line: 497, baseType: !246, size: 16, offset: 288)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2110, file: !2111, line: 498, baseType: !246, size: 16, offset: 304)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2110, file: !2111, line: 502, baseType: !254, size: 64, offset: 320)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2110, file: !2111, line: 503, baseType: !254, size: 64, offset: 384)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2110, file: !2111, line: 514, baseType: !2139, size: 256, offset: 448)
!2139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2140, size: 256, elements: !1131)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2111, line: 483, flags: DIFlagFwdDecl)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2110, file: !2111, line: 516, baseType: !254, size: 64, offset: 704)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2110, file: !2111, line: 518, baseType: !254, size: 64, offset: 768)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2110, file: !2111, line: 520, baseType: !254, size: 64, offset: 832)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2110, file: !2111, line: 521, baseType: !254, size: 64, offset: 896)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2110, file: !2111, line: 522, baseType: !254, size: 64, offset: 960)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2110, file: !2111, line: 528, baseType: !2148, size: 64, offset: 1024)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2111, line: 10, flags: DIFlagFwdDecl)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2110, file: !2111, line: 535, baseType: !254, size: 64, offset: 1088)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2110, file: !2111, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2110, file: !2111, line: 540, baseType: !2153, size: 33280, offset: 1536)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2154, line: 317, size: 33280, elements: !2155)
!2154 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2155 = !{!2156, !2157, !2158}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2153, file: !2154, line: 330, baseType: !7, size: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2153, file: !2154, line: 337, baseType: !254, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2153, file: !2154, line: 348, baseType: !2159, size: 32768, offset: 512)
!2159 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2154, line: 304, size: 32768, elements: !2160)
!2160 = !{!2161, !2176, !2215, !2265, !2278}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2159, file: !2154, line: 305, baseType: !2162, size: 896)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2154, line: 12, size: 896, elements: !2163)
!2163 = !{!2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2175}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2162, file: !2154, line: 13, baseType: !345, size: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2162, file: !2154, line: 14, baseType: !345, size: 32, offset: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2162, file: !2154, line: 15, baseType: !345, size: 32, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2162, file: !2154, line: 16, baseType: !345, size: 32, offset: 96)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2162, file: !2154, line: 17, baseType: !345, size: 32, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2162, file: !2154, line: 18, baseType: !345, size: 32, offset: 160)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2162, file: !2154, line: 19, baseType: !345, size: 32, offset: 192)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2162, file: !2154, line: 22, baseType: !2172, size: 640, offset: 224)
!2172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 640, elements: !2173)
!2173 = !{!2174}
!2174 = !DISubrange(count: 20)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2162, file: !2154, line: 25, baseType: !345, size: 32, offset: 864)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2159, file: !2154, line: 306, baseType: !2177, size: 4096, align: 128)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2154, line: 34, size: 4096, align: 128, elements: !2178)
!2178 = !{!2179, !2180, !2181, !2182, !2183, !2198, !2199, !2200, !2204, !2206, !2210}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2177, file: !2154, line: 35, baseType: !834, size: 16)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2177, file: !2154, line: 36, baseType: !834, size: 16, offset: 16)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2177, file: !2154, line: 37, baseType: !834, size: 16, offset: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2177, file: !2154, line: 38, baseType: !834, size: 16, offset: 48)
!2183 = !DIDerivedType(tag: DW_TAG_member, scope: !2177, file: !2154, line: 39, baseType: !2184, size: 128, offset: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2177, file: !2154, line: 39, size: 128, elements: !2185)
!2185 = !{!2186, !2191}
!2186 = !DIDerivedType(tag: DW_TAG_member, scope: !2184, file: !2154, line: 40, baseType: !2187, size: 128)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2184, file: !2154, line: 40, size: 128, elements: !2188)
!2188 = !{!2189, !2190}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2187, file: !2154, line: 41, baseType: !351, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2187, file: !2154, line: 42, baseType: !351, size: 64, offset: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, scope: !2184, file: !2154, line: 44, baseType: !2192, size: 128)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2184, file: !2154, line: 44, size: 128, elements: !2193)
!2193 = !{!2194, !2195, !2196, !2197}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2192, file: !2154, line: 45, baseType: !345, size: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2192, file: !2154, line: 46, baseType: !345, size: 32, offset: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2192, file: !2154, line: 47, baseType: !345, size: 32, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2192, file: !2154, line: 48, baseType: !345, size: 32, offset: 96)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2177, file: !2154, line: 51, baseType: !345, size: 32, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2177, file: !2154, line: 52, baseType: !345, size: 32, offset: 224)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2177, file: !2154, line: 55, baseType: !2201, size: 1024, offset: 256)
!2201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 1024, elements: !2202)
!2202 = !{!2203}
!2203 = !DISubrange(count: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2177, file: !2154, line: 58, baseType: !2205, size: 2048, offset: 1280)
!2205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 2048, elements: !209)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2177, file: !2154, line: 60, baseType: !2207, size: 384, offset: 3328)
!2207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 384, elements: !2208)
!2208 = !{!2209}
!2209 = !DISubrange(count: 12)
!2210 = !DIDerivedType(tag: DW_TAG_member, scope: !2177, file: !2154, line: 62, baseType: !2211, size: 384, offset: 3712)
!2211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2177, file: !2154, line: 62, size: 384, elements: !2212)
!2212 = !{!2213, !2214}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2211, file: !2154, line: 63, baseType: !2207, size: 384)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2211, file: !2154, line: 64, baseType: !2207, size: 384)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2159, file: !2154, line: 307, baseType: !2216, size: 1088)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2154, line: 79, size: 1088, elements: !2217)
!2217 = !{!2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2264}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2216, file: !2154, line: 80, baseType: !345, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2216, file: !2154, line: 81, baseType: !345, size: 32, offset: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2216, file: !2154, line: 82, baseType: !345, size: 32, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2216, file: !2154, line: 83, baseType: !345, size: 32, offset: 96)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2216, file: !2154, line: 84, baseType: !345, size: 32, offset: 128)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2216, file: !2154, line: 85, baseType: !345, size: 32, offset: 160)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2216, file: !2154, line: 86, baseType: !345, size: 32, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2216, file: !2154, line: 88, baseType: !2172, size: 640, offset: 224)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2216, file: !2154, line: 89, baseType: !1322, size: 8, offset: 864)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2216, file: !2154, line: 90, baseType: !1322, size: 8, offset: 872)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2216, file: !2154, line: 91, baseType: !1322, size: 8, offset: 880)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2216, file: !2154, line: 92, baseType: !1322, size: 8, offset: 888)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2216, file: !2154, line: 93, baseType: !1322, size: 8, offset: 896)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2216, file: !2154, line: 94, baseType: !1322, size: 8, offset: 904)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2216, file: !2154, line: 95, baseType: !2233, size: 64, offset: 960)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2235, line: 11, size: 128, elements: !2236)
!2235 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2236 = !{!2237, !2238}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2234, file: !2235, line: 12, baseType: !239, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2234, file: !2235, line: 13, baseType: !2239, size: 64, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2241, line: 56, size: 1344, elements: !2242)
!2241 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2242 = !{!2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2240, file: !2241, line: 61, baseType: !254, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2240, file: !2241, line: 62, baseType: !254, size: 64, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2240, file: !2241, line: 63, baseType: !254, size: 64, offset: 128)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2240, file: !2241, line: 64, baseType: !254, size: 64, offset: 192)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2240, file: !2241, line: 65, baseType: !254, size: 64, offset: 256)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2240, file: !2241, line: 66, baseType: !254, size: 64, offset: 320)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2240, file: !2241, line: 68, baseType: !254, size: 64, offset: 384)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2240, file: !2241, line: 69, baseType: !254, size: 64, offset: 448)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2240, file: !2241, line: 70, baseType: !254, size: 64, offset: 512)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2240, file: !2241, line: 71, baseType: !254, size: 64, offset: 576)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2240, file: !2241, line: 72, baseType: !254, size: 64, offset: 640)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2240, file: !2241, line: 73, baseType: !254, size: 64, offset: 704)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2240, file: !2241, line: 74, baseType: !254, size: 64, offset: 768)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2240, file: !2241, line: 75, baseType: !254, size: 64, offset: 832)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2240, file: !2241, line: 76, baseType: !254, size: 64, offset: 896)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2240, file: !2241, line: 81, baseType: !254, size: 64, offset: 960)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2240, file: !2241, line: 83, baseType: !254, size: 64, offset: 1024)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2240, file: !2241, line: 84, baseType: !254, size: 64, offset: 1088)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2240, file: !2241, line: 85, baseType: !254, size: 64, offset: 1152)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2240, file: !2241, line: 86, baseType: !254, size: 64, offset: 1216)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2240, file: !2241, line: 87, baseType: !254, size: 64, offset: 1280)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2216, file: !2154, line: 96, baseType: !345, size: 32, offset: 1024)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2159, file: !2154, line: 308, baseType: !2266, size: 4608, align: 512)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2154, line: 289, size: 4608, align: 512, elements: !2267)
!2267 = !{!2268, !2269, !2276}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2266, file: !2154, line: 290, baseType: !2177, size: 4096, align: 128)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2266, file: !2154, line: 291, baseType: !2270, size: 512, offset: 4096)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2154, line: 268, size: 512, elements: !2271)
!2271 = !{!2272, !2273, !2274}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2270, file: !2154, line: 269, baseType: !351, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2270, file: !2154, line: 270, baseType: !351, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2270, file: !2154, line: 271, baseType: !2275, size: 384, offset: 128)
!2275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 384, elements: !1595)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2266, file: !2154, line: 292, baseType: !2277, offset: 4608)
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1322, elements: !1693)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2159, file: !2154, line: 309, baseType: !2279, size: 32768)
!2279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1322, size: 32768, elements: !2280)
!2280 = !{!2281}
!2281 = !DISubrange(count: 4096)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1183, file: !705, line: 378, baseType: !2283, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1179, file: !705, line: 384, baseType: !1472, size: 192, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !954, file: !705, line: 500, baseType: !163, offset: 6656)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !954, file: !705, line: 501, baseType: !2287, size: 64, offset: 6656)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !705, line: 387, flags: DIFlagFwdDecl)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !954, file: !705, line: 516, baseType: !1683, size: 64, offset: 6720)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !954, file: !705, line: 519, baseType: !282, size: 64, offset: 6784)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !954, file: !705, line: 521, baseType: !2292, size: 64, offset: 6848)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !705, line: 521, flags: DIFlagFwdDecl)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !954, file: !705, line: 545, baseType: !729, size: 32, offset: 6912)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !954, file: !705, line: 548, baseType: !420, size: 8, offset: 6944)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !954, file: !705, line: 550, baseType: !2297, offset: 6952)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2298, line: 142, elements: !177)
!2298 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !954, file: !705, line: 554, baseType: !1929, size: 256, offset: 6976)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !954, file: !705, line: 557, baseType: !345, size: 32, offset: 7232)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !951, file: !705, line: 565, baseType: !2302, offset: 7296)
!2302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, elements: !2303)
!2303 = !{!2304}
!2304 = !DISubrange(count: -1)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !947, file: !705, line: 151, baseType: !729, size: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !939, file: !705, line: 156, baseType: !163, offset: 256)
!2307 = !DIDerivedType(tag: DW_TAG_member, scope: !709, file: !705, line: 159, baseType: !2308, size: 128)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !709, file: !705, line: 159, size: 128, elements: !2309)
!2309 = !{!2310, !2374}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2308, file: !705, line: 161, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2313)
!2313 = !{!2314, !2324, !2345, !2346, !2347, !2348, !2349, !2361, !2362, !2363}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2312, file: !31, line: 111, baseType: !2315, size: 384)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2316)
!2316 = !{!2317, !2319, !2320, !2321, !2322, !2323}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2315, file: !31, line: 20, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2315, file: !31, line: 21, baseType: !2318, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2315, file: !31, line: 22, baseType: !2318, size: 64, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2315, file: !31, line: 23, baseType: !254, size: 64, offset: 192)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2315, file: !31, line: 24, baseType: !254, size: 64, offset: 256)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2315, file: !31, line: 25, baseType: !254, size: 64, offset: 320)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2312, file: !31, line: 112, baseType: !2325, size: 64, offset: 384)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2327, line: 105, size: 128, elements: !2328)
!2327 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2328 = !{!2329, !2330}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2326, file: !2327, line: 110, baseType: !254, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2326, file: !2327, line: 118, baseType: !2331, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2327, line: 95, size: 448, elements: !2333)
!2333 = !{!2334, !2335, !2340, !2341, !2342, !2343, !2344}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2332, file: !2327, line: 96, baseType: !660, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2332, file: !2327, line: 97, baseType: !2336, size: 64, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2327, line: 60, baseType: !2338)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{null, !2325}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2332, file: !2327, line: 98, baseType: !2336, size: 64, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2332, file: !2327, line: 99, baseType: !420, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2332, file: !2327, line: 100, baseType: !420, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2332, file: !2327, line: 101, baseType: !295, size: 128, align: 64, offset: 256)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2332, file: !2327, line: 102, baseType: !2325, size: 64, offset: 384)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2312, file: !31, line: 113, baseType: !2326, size: 128, offset: 448)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2312, file: !31, line: 114, baseType: !1472, size: 192, offset: 576)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2312, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2312, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2312, file: !31, line: 117, baseType: !2350, size: 64, offset: 832)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2352)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2353)
!2353 = !{!2354, !2355, !2359, !2360}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2352, file: !31, line: 73, baseType: !815, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2352, file: !31, line: 78, baseType: !2356, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{null, !2311}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2352, file: !31, line: 83, baseType: !2356, size: 64, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2352, file: !31, line: 89, baseType: !1003, size: 64, offset: 192)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2312, file: !31, line: 118, baseType: !134, size: 64, offset: 896)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2312, file: !31, line: 119, baseType: !131, size: 32, offset: 960)
!2363 = !DIDerivedType(tag: DW_TAG_member, scope: !2312, file: !31, line: 120, baseType: !2364, size: 128, offset: 1024)
!2364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2312, file: !31, line: 120, size: 128, elements: !2365)
!2365 = !{!2366, !2372}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2364, file: !31, line: 121, baseType: !2367, size: 128)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2368, line: 6, size: 128, elements: !2369)
!2368 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2369 = !{!2370, !2371}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2367, file: !2368, line: 7, baseType: !351, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2367, file: !2368, line: 8, baseType: !351, size: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2364, file: !31, line: 122, baseType: !2373)
!2373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2367, elements: !1693)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2308, file: !705, line: 162, baseType: !134, size: 64, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !709, file: !705, line: 176, baseType: !295, size: 128, align: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !705, line: 179, baseType: !2377, size: 32, offset: 384)
!2377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !704, file: !705, line: 179, size: 32, elements: !2378)
!2378 = !{!2379, !2380, !2381, !2382}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2377, file: !705, line: 184, baseType: !729, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2377, file: !705, line: 192, baseType: !7, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2377, file: !705, line: 194, baseType: !7, size: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2377, file: !705, line: 195, baseType: !131, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !704, file: !705, line: 199, baseType: !729, size: 32, offset: 416)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !590, file: !44, line: 1964, baseType: !2385, size: 64, offset: 1344)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!239, !529, !2388}
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2390, line: 12, size: 256, elements: !2391)
!2390 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2391 = !{!2392, !2393, !2394, !2395, !2396}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2389, file: !2390, line: 13, baseType: !132, size: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2389, file: !2390, line: 16, baseType: !131, size: 32, offset: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2389, file: !2390, line: 23, baseType: !254, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2389, file: !2390, line: 30, baseType: !254, size: 64, offset: 128)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2389, file: !2390, line: 33, baseType: !2397, size: 64, offset: 192)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !705, line: 27, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !590, file: !44, line: 1966, baseType: !2385, size: 64, offset: 1408)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !530, file: !44, line: 1424, baseType: !2401, size: 64, offset: 448)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2403)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2404)
!2404 = !{!2405, !2451, !2455, !2459, !2460, !2461, !2462, !2463, !2468, !2473, !2477}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2403, file: !38, line: 323, baseType: !2406, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!131, !2409}
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2411)
!2411 = !{!2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2436, !2437, !2438}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2410, file: !38, line: 295, baseType: !572, size: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2410, file: !38, line: 296, baseType: !150, size: 128, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2410, file: !38, line: 297, baseType: !150, size: 128, offset: 256)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2410, file: !38, line: 298, baseType: !150, size: 128, offset: 384)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2410, file: !38, line: 299, baseType: !656, size: 192, offset: 512)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2410, file: !38, line: 300, baseType: !163, offset: 704)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2410, file: !38, line: 301, baseType: !729, size: 32, offset: 704)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2410, file: !38, line: 302, baseType: !529, size: 64, offset: 768)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2410, file: !38, line: 303, baseType: !2421, size: 64, offset: 832)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2422)
!2422 = !{!2423, !2435}
!2423 = !DIDerivedType(tag: DW_TAG_member, scope: !2421, file: !38, line: 69, baseType: !2424, size: 32)
!2424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2421, file: !38, line: 69, size: 32, elements: !2425)
!2425 = !{!2426, !2427, !2428}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2424, file: !38, line: 70, baseType: !365, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2424, file: !38, line: 71, baseType: !373, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2424, file: !38, line: 72, baseType: !2429, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2430, line: 24, baseType: !2431)
!2430 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2430, line: 22, size: 32, elements: !2432)
!2432 = !{!2433}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2431, file: !2430, line: 23, baseType: !2434, size: 32)
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2430, line: 20, baseType: !371)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2421, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2410, file: !38, line: 304, baseType: !461, size: 64, offset: 896)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2410, file: !38, line: 305, baseType: !254, size: 64, offset: 960)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2410, file: !38, line: 306, baseType: !2439, size: 576, offset: 1024)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2440)
!2440 = !{!2441, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2439, file: !38, line: 206, baseType: !2442, size: 64)
!2442 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !463)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2439, file: !38, line: 207, baseType: !2442, size: 64, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2439, file: !38, line: 208, baseType: !2442, size: 64, offset: 128)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2439, file: !38, line: 209, baseType: !2442, size: 64, offset: 192)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2439, file: !38, line: 210, baseType: !2442, size: 64, offset: 256)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2439, file: !38, line: 211, baseType: !2442, size: 64, offset: 320)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2439, file: !38, line: 212, baseType: !2442, size: 64, offset: 384)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2439, file: !38, line: 213, baseType: !469, size: 64, offset: 448)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2439, file: !38, line: 214, baseType: !469, size: 64, offset: 512)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2403, file: !38, line: 324, baseType: !2452, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!2409, !529, !131}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2403, file: !38, line: 325, baseType: !2456, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{null, !2409}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2403, file: !38, line: 326, baseType: !2406, size: 64, offset: 192)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2403, file: !38, line: 327, baseType: !2406, size: 64, offset: 256)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2403, file: !38, line: 328, baseType: !2406, size: 64, offset: 320)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2403, file: !38, line: 329, baseType: !618, size: 64, offset: 384)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2403, file: !38, line: 332, baseType: !2464, size: 64, offset: 448)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!2467, !359}
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2403, file: !38, line: 333, baseType: !2469, size: 64, offset: 512)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!131, !359, !2472}
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2403, file: !38, line: 335, baseType: !2474, size: 64, offset: 576)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!131, !359, !2467}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2403, file: !38, line: 337, baseType: !2478, size: 64, offset: 640)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!131, !529, !2481}
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !530, file: !44, line: 1425, baseType: !2483, size: 64, offset: 512)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2485)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2486)
!2486 = !{!2487, !2491, !2492, !2496, !2497, !2498, !2513, !2536, !2540, !2541, !2564}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2485, file: !38, line: 429, baseType: !2488, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!131, !529, !131, !131, !479}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2485, file: !38, line: 430, baseType: !618, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2485, file: !38, line: 431, baseType: !2493, size: 64, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!131, !529, !7}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2485, file: !38, line: 432, baseType: !2493, size: 64, offset: 192)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2485, file: !38, line: 433, baseType: !618, size: 64, offset: 256)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2485, file: !38, line: 434, baseType: !2499, size: 64, offset: 320)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!131, !529, !131, !2502}
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2504)
!2504 = !{!2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2503, file: !38, line: 416, baseType: !131, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2503, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2503, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2503, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2503, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2503, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2503, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2503, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2485, file: !38, line: 435, baseType: !2514, size: 64, offset: 384)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!131, !529, !2421, !2517}
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2519)
!2519 = !{!2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2518, file: !38, line: 344, baseType: !131, size: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2518, file: !38, line: 345, baseType: !351, size: 64, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2518, file: !38, line: 346, baseType: !351, size: 64, offset: 128)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2518, file: !38, line: 347, baseType: !351, size: 64, offset: 192)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2518, file: !38, line: 348, baseType: !351, size: 64, offset: 256)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2518, file: !38, line: 349, baseType: !351, size: 64, offset: 320)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2518, file: !38, line: 350, baseType: !351, size: 64, offset: 384)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2518, file: !38, line: 351, baseType: !666, size: 64, offset: 448)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2518, file: !38, line: 353, baseType: !666, size: 64, offset: 512)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2518, file: !38, line: 354, baseType: !131, size: 32, offset: 576)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2518, file: !38, line: 355, baseType: !131, size: 32, offset: 608)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2518, file: !38, line: 356, baseType: !351, size: 64, offset: 640)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2518, file: !38, line: 357, baseType: !351, size: 64, offset: 704)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2518, file: !38, line: 358, baseType: !351, size: 64, offset: 768)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2518, file: !38, line: 359, baseType: !666, size: 64, offset: 832)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2518, file: !38, line: 360, baseType: !131, size: 32, offset: 896)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2485, file: !38, line: 436, baseType: !2537, size: 64, offset: 448)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!131, !529, !2481, !2517}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2485, file: !38, line: 438, baseType: !2514, size: 64, offset: 512)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2485, file: !38, line: 439, baseType: !2542, size: 64, offset: 576)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!131, !529, !2545}
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2547)
!2547 = !{!2548, !2549}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2546, file: !38, line: 410, baseType: !7, size: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2546, file: !38, line: 411, baseType: !2550, size: 1344, offset: 64)
!2550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2551, size: 1344, elements: !205)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2552)
!2552 = !{!2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2563}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2551, file: !38, line: 396, baseType: !7, size: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2551, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2551, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2551, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2551, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2551, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2551, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2551, file: !38, line: 404, baseType: !353, size: 64, offset: 256)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2551, file: !38, line: 405, baseType: !2562, size: 64, offset: 320)
!2562 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !133, line: 126, baseType: !351)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2551, file: !38, line: 406, baseType: !2562, size: 64, offset: 384)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2485, file: !38, line: 440, baseType: !2493, size: 64, offset: 640)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !530, file: !44, line: 1426, baseType: !2566, size: 64, offset: 576)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2568)
!2568 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !530, file: !44, line: 1427, baseType: !254, size: 64, offset: 640)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !530, file: !44, line: 1428, baseType: !254, size: 64, offset: 704)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !530, file: !44, line: 1429, baseType: !254, size: 64, offset: 768)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !530, file: !44, line: 1430, baseType: !312, size: 64, offset: 832)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !530, file: !44, line: 1431, baseType: !749, size: 256, offset: 896)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !530, file: !44, line: 1432, baseType: !131, size: 32, offset: 1152)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !530, file: !44, line: 1433, baseType: !729, size: 32, offset: 1184)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !530, file: !44, line: 1437, baseType: !2577, size: 64, offset: 1216)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2580)
!2580 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !530, file: !44, line: 1449, baseType: !2582, size: 64, offset: 1280)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !328, line: 34, size: 64, elements: !2583)
!2583 = !{!2584}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2582, file: !328, line: 35, baseType: !331, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !530, file: !44, line: 1450, baseType: !150, size: 128, offset: 1344)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !530, file: !44, line: 1451, baseType: !2587, size: 64, offset: 1472)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !530, file: !44, line: 1452, baseType: !1895, size: 64, offset: 1536)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !530, file: !44, line: 1453, baseType: !2591, size: 64, offset: 1600)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !530, file: !44, line: 1454, baseType: !572, size: 128, offset: 1664)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !530, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !530, file: !44, line: 1456, baseType: !2596, size: 2432, offset: 1856)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2597)
!2597 = !{!2598, !2599, !2600, !2602, !2634}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2596, file: !38, line: 519, baseType: !7, size: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2596, file: !38, line: 520, baseType: !749, size: 256, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2596, file: !38, line: 521, baseType: !2601, size: 192, offset: 320)
!2601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, size: 192, elements: !205)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2596, file: !38, line: 522, baseType: !2603, size: 1728, offset: 512)
!2603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2604, size: 1728, elements: !205)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2605)
!2605 = !{!2606, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2604, file: !38, line: 223, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2609)
!2609 = !{!2610, !2611, !2624, !2625}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2608, file: !38, line: 444, baseType: !131, size: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2608, file: !38, line: 445, baseType: !2612, size: 64, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2614)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2615)
!2615 = !{!2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2614, file: !38, line: 311, baseType: !618, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2614, file: !38, line: 312, baseType: !618, size: 64, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2614, file: !38, line: 313, baseType: !618, size: 64, offset: 128)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2614, file: !38, line: 314, baseType: !618, size: 64, offset: 192)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2614, file: !38, line: 315, baseType: !2406, size: 64, offset: 256)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2614, file: !38, line: 316, baseType: !2406, size: 64, offset: 320)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2614, file: !38, line: 317, baseType: !2406, size: 64, offset: 384)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2614, file: !38, line: 318, baseType: !2478, size: 64, offset: 448)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2608, file: !38, line: 446, baseType: !563, size: 64, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2608, file: !38, line: 447, baseType: !2607, size: 64, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2604, file: !38, line: 224, baseType: !131, size: 32, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2604, file: !38, line: 226, baseType: !150, size: 128, offset: 128)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2604, file: !38, line: 227, baseType: !254, size: 64, offset: 256)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2604, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2604, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2604, file: !38, line: 230, baseType: !2442, size: 64, offset: 384)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2604, file: !38, line: 231, baseType: !2442, size: 64, offset: 448)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2604, file: !38, line: 232, baseType: !134, size: 64, offset: 512)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2596, file: !38, line: 523, baseType: !2635, size: 192, offset: 2240)
!2635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2612, size: 192, elements: !205)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !530, file: !44, line: 1458, baseType: !2637, size: 2112, offset: 4288)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2638)
!2638 = !{!2639, !2640, !2641}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2637, file: !44, line: 1411, baseType: !131, size: 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2637, file: !44, line: 1412, baseType: !1451, size: 128, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2637, file: !44, line: 1413, baseType: !2642, size: 1920, offset: 192)
!2642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2643, size: 1920, elements: !205)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2644, line: 12, size: 640, elements: !2645)
!2644 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2645 = !{!2646, !2654, !2656, !2661, !2662}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2643, file: !2644, line: 13, baseType: !2647, size: 320)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2648, line: 17, size: 320, elements: !2649)
!2648 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2649 = !{!2650, !2651, !2652, !2653}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2647, file: !2648, line: 18, baseType: !131, size: 32)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2647, file: !2648, line: 19, baseType: !131, size: 32, offset: 32)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2647, file: !2648, line: 20, baseType: !1451, size: 128, offset: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2647, file: !2648, line: 22, baseType: !295, size: 128, align: 64, offset: 192)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2643, file: !2644, line: 14, baseType: !2655, size: 64, offset: 320)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2643, file: !2644, line: 15, baseType: !2657, size: 64, offset: 384)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2658, line: 16, size: 64, elements: !2659)
!2658 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2659 = !{!2660}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2657, file: !2658, line: 17, baseType: !1186, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2643, file: !2644, line: 16, baseType: !1451, size: 128, offset: 448)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2643, file: !2644, line: 17, baseType: !729, size: 32, offset: 576)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !530, file: !44, line: 1465, baseType: !134, size: 64, offset: 6400)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !530, file: !44, line: 1468, baseType: !345, size: 32, offset: 6464)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !530, file: !44, line: 1470, baseType: !469, size: 64, offset: 6528)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !530, file: !44, line: 1471, baseType: !469, size: 64, offset: 6592)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !530, file: !44, line: 1473, baseType: !347, size: 32, offset: 6656)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !530, file: !44, line: 1474, baseType: !2669, size: 64, offset: 6720)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !530, file: !44, line: 1477, baseType: !2672, size: 256, offset: 6784)
!2672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 256, elements: !2202)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !530, file: !44, line: 1478, baseType: !2674, size: 128, offset: 7040)
!2674 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2675, line: 18, baseType: !2676)
!2675 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2675, line: 16, size: 128, elements: !2677)
!2677 = !{!2678}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2676, file: !2675, line: 17, baseType: !2679, size: 128)
!2679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1323, size: 128, elements: !1705)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !530, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !530, file: !44, line: 1481, baseType: !2682, size: 32, offset: 7200)
!2682 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !133, line: 150, baseType: !7)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !530, file: !44, line: 1487, baseType: !656, size: 192, offset: 7232)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !530, file: !44, line: 1493, baseType: !146, size: 64, offset: 7424)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !530, file: !44, line: 1495, baseType: !2686, size: 64, offset: 7488)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2688)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !310, line: 135, size: 1024, align: 512, elements: !2689)
!2689 = !{!2690, !2694, !2695, !2702, !2708, !2712, !2716, !2720, !2721, !2725, !2729, !2734, !2738}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2688, file: !310, line: 136, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!131, !312, !7}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2688, file: !310, line: 137, baseType: !2691, size: 64, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2688, file: !310, line: 138, baseType: !2696, size: 64, offset: 128)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!131, !2699, !2701}
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2688, file: !310, line: 139, baseType: !2703, size: 64, offset: 192)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!131, !2699, !7, !146, !2706}
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2688, file: !310, line: 141, baseType: !2709, size: 64, offset: 256)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!131, !2699}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2688, file: !310, line: 142, baseType: !2713, size: 64, offset: 320)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!131, !312}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2688, file: !310, line: 143, baseType: !2717, size: 64, offset: 384)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{null, !312}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2688, file: !310, line: 144, baseType: !2717, size: 64, offset: 448)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2688, file: !310, line: 145, baseType: !2722, size: 64, offset: 512)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{null, !312, !359}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2688, file: !310, line: 146, baseType: !2726, size: 64, offset: 576)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!204, !312, !204, !131}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2688, file: !310, line: 147, baseType: !2730, size: 64, offset: 640)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!308, !2733}
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2688, file: !310, line: 148, baseType: !2735, size: 64, offset: 704)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!131, !479, !420}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2688, file: !310, line: 149, baseType: !2739, size: 64, offset: 768)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!312, !312, !2742}
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !530, file: !44, line: 1500, baseType: !131, size: 32, offset: 7552)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !530, file: !44, line: 1502, baseType: !2746, size: 448, offset: 7616)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2390, line: 60, size: 448, elements: !2747)
!2747 = !{!2748, !2753, !2754, !2755, !2756, !2757, !2758}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2746, file: !2390, line: 61, baseType: !2749, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!254, !2752, !2388}
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2746, file: !2390, line: 63, baseType: !2749, size: 64, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2746, file: !2390, line: 66, baseType: !239, size: 64, offset: 128)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2746, file: !2390, line: 67, baseType: !131, size: 32, offset: 192)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2746, file: !2390, line: 68, baseType: !7, size: 32, offset: 224)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2746, file: !2390, line: 71, baseType: !150, size: 128, offset: 256)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2746, file: !2390, line: 77, baseType: !2759, size: 64, offset: 384)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !530, file: !44, line: 1505, baseType: !660, size: 64, offset: 8064)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !530, file: !44, line: 1508, baseType: !660, size: 64, offset: 8128)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !530, file: !44, line: 1511, baseType: !131, size: 32, offset: 8192)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !530, file: !44, line: 1514, baseType: !884, size: 32, offset: 8224)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !530, file: !44, line: 1517, baseType: !2765, size: 64, offset: 8256)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1930, line: 18, flags: DIFlagFwdDecl)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !530, file: !44, line: 1518, baseType: !568, size: 64, offset: 8320)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !530, file: !44, line: 1525, baseType: !1683, size: 64, offset: 8384)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !530, file: !44, line: 1532, baseType: !2770, size: 64, offset: 8448)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2771, line: 52, size: 64, elements: !2772)
!2771 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2772 = !{!2773}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2770, file: !2771, line: 53, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2771, line: 40, size: 256, elements: !2776)
!2776 = !{!2777, !2778, !2783}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2775, file: !2771, line: 42, baseType: !163)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2775, file: !2771, line: 44, baseType: !2779, size: 192)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2771, line: 28, size: 192, elements: !2780)
!2780 = !{!2781, !2782}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2779, file: !2771, line: 29, baseType: !150, size: 128)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2779, file: !2771, line: 31, baseType: !239, size: 64, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2775, file: !2771, line: 49, baseType: !239, size: 64, offset: 192)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !530, file: !44, line: 1533, baseType: !2770, size: 64, offset: 8512)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !530, file: !44, line: 1534, baseType: !295, size: 128, align: 64, offset: 8576)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !530, file: !44, line: 1535, baseType: !1929, size: 256, offset: 8704)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !530, file: !44, line: 1537, baseType: !656, size: 192, offset: 8960)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !530, file: !44, line: 1542, baseType: !131, size: 32, offset: 9152)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !530, file: !44, line: 1545, baseType: !163, offset: 9184)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !530, file: !44, line: 1546, baseType: !150, size: 128, offset: 9216)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !530, file: !44, line: 1548, baseType: !163, offset: 9344)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !530, file: !44, line: 1549, baseType: !150, size: 128, offset: 9344)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !360, file: !44, line: 624, baseType: !716, size: 64, offset: 256)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !360, file: !44, line: 631, baseType: !254, size: 64, offset: 320)
!2795 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !44, line: 639, baseType: !2796, size: 32, offset: 384)
!2796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !360, file: !44, line: 639, size: 32, elements: !2797)
!2797 = !{!2798, !2800}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2796, file: !44, line: 640, baseType: !2799, size: 32)
!2799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2796, file: !44, line: 641, baseType: !7, size: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !360, file: !44, line: 643, baseType: !443, size: 32, offset: 416)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !360, file: !44, line: 644, baseType: !461, size: 64, offset: 448)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !360, file: !44, line: 645, baseType: !465, size: 128, offset: 512)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !360, file: !44, line: 646, baseType: !465, size: 128, offset: 640)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !360, file: !44, line: 647, baseType: !465, size: 128, offset: 768)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !360, file: !44, line: 648, baseType: !163, offset: 896)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !360, file: !44, line: 649, baseType: !246, size: 16, offset: 896)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !360, file: !44, line: 650, baseType: !1322, size: 8, offset: 912)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !360, file: !44, line: 651, baseType: !1322, size: 8, offset: 920)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !360, file: !44, line: 652, baseType: !2562, size: 64, offset: 960)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !360, file: !44, line: 659, baseType: !254, size: 64, offset: 1024)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !360, file: !44, line: 660, baseType: !749, size: 256, offset: 1088)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !360, file: !44, line: 662, baseType: !254, size: 64, offset: 1344)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !360, file: !44, line: 663, baseType: !254, size: 64, offset: 1408)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !360, file: !44, line: 665, baseType: !572, size: 128, offset: 1472)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !360, file: !44, line: 666, baseType: !150, size: 128, offset: 1600)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !360, file: !44, line: 675, baseType: !150, size: 128, offset: 1728)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !360, file: !44, line: 676, baseType: !150, size: 128, offset: 1856)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !360, file: !44, line: 677, baseType: !150, size: 128, offset: 1984)
!2820 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !44, line: 678, baseType: !2821, size: 128, offset: 2112)
!2821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !360, file: !44, line: 678, size: 128, elements: !2822)
!2822 = !{!2823, !2824}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2821, file: !44, line: 679, baseType: !568, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2821, file: !44, line: 680, baseType: !295, size: 128, align: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !360, file: !44, line: 682, baseType: !662, size: 64, offset: 2240)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !360, file: !44, line: 683, baseType: !662, size: 64, offset: 2304)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !360, file: !44, line: 684, baseType: !729, size: 32, offset: 2368)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !360, file: !44, line: 685, baseType: !729, size: 32, offset: 2400)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !360, file: !44, line: 686, baseType: !729, size: 32, offset: 2432)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !360, file: !44, line: 688, baseType: !729, size: 32, offset: 2464)
!2831 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !44, line: 690, baseType: !2832, size: 64, offset: 2496)
!2832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !360, file: !44, line: 690, size: 64, elements: !2833)
!2833 = !{!2834, !3056}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2832, file: !44, line: 691, baseType: !2835, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2837)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2838)
!2838 = !{!2839, !2840, !2844, !2848, !2852, !2853, !2854, !2858, !2871, !2872, !2880, !2884, !2885, !2889, !2890, !2894, !2899, !2900, !2904, !2908, !3016, !3020, !3021, !3025, !3026, !3030, !3034, !3039, !3043, !3047, !3051, !3055}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2837, file: !44, line: 1823, baseType: !563, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2837, file: !44, line: 1824, baseType: !2841, size: 64, offset: 64)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!461, !282, !461, !131}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2837, file: !44, line: 1825, baseType: !2845, size: 64, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!235, !282, !204, !251, !678}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2837, file: !44, line: 1826, baseType: !2849, size: 64, offset: 192)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!235, !282, !146, !251, !678}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2837, file: !44, line: 1827, baseType: !819, size: 64, offset: 256)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2837, file: !44, line: 1828, baseType: !819, size: 64, offset: 320)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2837, file: !44, line: 1829, baseType: !2855, size: 64, offset: 384)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!131, !822, !420}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2837, file: !44, line: 1830, baseType: !2859, size: 64, offset: 448)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!131, !282, !2862}
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2864)
!2864 = !{!2865, !2870}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2863, file: !44, line: 1777, baseType: !2866, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2867)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!131, !2862, !146, !131, !461, !351, !7}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2863, file: !44, line: 1778, baseType: !461, size: 64, offset: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2837, file: !44, line: 1831, baseType: !2859, size: 64, offset: 512)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2837, file: !44, line: 1832, baseType: !2873, size: 64, offset: 576)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!2876, !282, !2878}
!2876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2877, line: 52, baseType: !7)
!2877 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !549, line: 27, flags: DIFlagFwdDecl)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2837, file: !44, line: 1833, baseType: !2881, size: 64, offset: 640)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!239, !282, !7, !254}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2837, file: !44, line: 1834, baseType: !2881, size: 64, offset: 704)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2837, file: !44, line: 1835, baseType: !2886, size: 64, offset: 768)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!131, !282, !957}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2837, file: !44, line: 1836, baseType: !254, size: 64, offset: 832)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2837, file: !44, line: 1837, baseType: !2891, size: 64, offset: 896)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!131, !359, !282}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2837, file: !44, line: 1838, baseType: !2895, size: 64, offset: 960)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!131, !282, !2898}
!2898 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !134)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2837, file: !44, line: 1839, baseType: !2891, size: 64, offset: 1024)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2837, file: !44, line: 1840, baseType: !2901, size: 64, offset: 1088)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!131, !282, !461, !461, !131}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2837, file: !44, line: 1841, baseType: !2905, size: 64, offset: 1152)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!131, !131, !282, !131}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2837, file: !44, line: 1842, baseType: !2909, size: 64, offset: 1216)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!131, !282, !131, !2912}
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2914)
!2914 = !{!2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2946, !2947, !2948, !2961, !2992}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2913, file: !44, line: 1063, baseType: !2912, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2913, file: !44, line: 1064, baseType: !150, size: 128, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2913, file: !44, line: 1065, baseType: !572, size: 128, offset: 192)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2913, file: !44, line: 1066, baseType: !150, size: 128, offset: 320)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2913, file: !44, line: 1069, baseType: !150, size: 128, offset: 448)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2913, file: !44, line: 1072, baseType: !2898, size: 64, offset: 576)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2913, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2913, file: !44, line: 1074, baseType: !357, size: 8, offset: 672)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2913, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2913, file: !44, line: 1076, baseType: !131, size: 32, offset: 736)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2913, file: !44, line: 1077, baseType: !1451, size: 128, offset: 768)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2913, file: !44, line: 1078, baseType: !282, size: 64, offset: 896)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2913, file: !44, line: 1079, baseType: !461, size: 64, offset: 960)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2913, file: !44, line: 1080, baseType: !461, size: 64, offset: 1024)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2913, file: !44, line: 1082, baseType: !2930, size: 64, offset: 1088)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2932)
!2932 = !{!2933, !2941, !2942, !2943, !2944, !2945}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2931, file: !44, line: 1315, baseType: !2934)
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2935, line: 20, baseType: !2936)
!2935 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2935, line: 11, elements: !2937)
!2937 = !{!2938}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2936, file: !2935, line: 12, baseType: !2939)
!2939 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !175, line: 33, baseType: !2940)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !175, line: 31, elements: !177)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2931, file: !44, line: 1316, baseType: !131, size: 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2931, file: !44, line: 1317, baseType: !131, size: 32, offset: 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2931, file: !44, line: 1318, baseType: !2930, size: 64, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2931, file: !44, line: 1319, baseType: !282, size: 64, offset: 128)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2931, file: !44, line: 1320, baseType: !295, size: 128, align: 64, offset: 192)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2913, file: !44, line: 1084, baseType: !254, size: 64, offset: 1152)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2913, file: !44, line: 1085, baseType: !254, size: 64, offset: 1216)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2913, file: !44, line: 1087, baseType: !2949, size: 64, offset: 1280)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2951)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2952)
!2952 = !{!2953, !2957}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2951, file: !44, line: 1012, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{null, !2912, !2912}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2951, file: !44, line: 1013, baseType: !2958, size: 64, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{null, !2912}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2913, file: !44, line: 1088, baseType: !2962, size: 64, offset: 1344)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2964)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2965)
!2965 = !{!2966, !2970, !2974, !2975, !2979, !2983, !2987, !2991}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2964, file: !44, line: 1017, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!2898, !2898}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2964, file: !44, line: 1018, baseType: !2971, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{null, !2898}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2964, file: !44, line: 1019, baseType: !2958, size: 64, offset: 128)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2964, file: !44, line: 1020, baseType: !2976, size: 64, offset: 192)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!131, !2912, !131}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2964, file: !44, line: 1021, baseType: !2980, size: 64, offset: 256)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!420, !2912}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2964, file: !44, line: 1022, baseType: !2984, size: 64, offset: 320)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!131, !2912, !131, !153}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2964, file: !44, line: 1023, baseType: !2988, size: 64, offset: 384)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{null, !2912, !796}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2964, file: !44, line: 1024, baseType: !2980, size: 64, offset: 448)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2913, file: !44, line: 1097, baseType: !2993, size: 256, offset: 1408)
!2993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2913, file: !44, line: 1089, size: 256, elements: !2994)
!2994 = !{!2995, !3004, !3010}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2993, file: !44, line: 1090, baseType: !2996, size: 256)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2997, line: 10, size: 256, elements: !2998)
!2997 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2998 = !{!2999, !3000, !3003}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2996, file: !2997, line: 11, baseType: !345, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2996, file: !2997, line: 12, baseType: !3001, size: 64, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2997, line: 5, flags: DIFlagFwdDecl)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2996, file: !2997, line: 13, baseType: !150, size: 128, offset: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2993, file: !44, line: 1091, baseType: !3005, size: 64)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2997, line: 17, size: 64, elements: !3006)
!3006 = !{!3007}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3005, file: !2997, line: 18, baseType: !3008, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2997, line: 16, flags: DIFlagFwdDecl)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2993, file: !44, line: 1096, baseType: !3011, size: 192)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2993, file: !44, line: 1092, size: 192, elements: !3012)
!3012 = !{!3013, !3014, !3015}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3011, file: !44, line: 1093, baseType: !150, size: 128)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3011, file: !44, line: 1094, baseType: !131, size: 32, offset: 128)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3011, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2837, file: !44, line: 1843, baseType: !3017, size: 64, offset: 1280)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!235, !282, !703, !131, !251, !678, !131}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2837, file: !44, line: 1844, baseType: !1077, size: 64, offset: 1344)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2837, file: !44, line: 1845, baseType: !3022, size: 64, offset: 1408)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!131, !131}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2837, file: !44, line: 1846, baseType: !2909, size: 64, offset: 1472)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2837, file: !44, line: 1847, baseType: !3027, size: 64, offset: 1536)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!235, !2070, !282, !678, !251, !7}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2837, file: !44, line: 1848, baseType: !3031, size: 64, offset: 1600)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!235, !282, !678, !2070, !251, !7}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2837, file: !44, line: 1849, baseType: !3035, size: 64, offset: 1664)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!131, !282, !239, !3038, !796}
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2837, file: !44, line: 1850, baseType: !3040, size: 64, offset: 1728)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!239, !282, !131, !461, !461}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2837, file: !44, line: 1852, baseType: !3044, size: 64, offset: 1792)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{null, !644, !282}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2837, file: !44, line: 1856, baseType: !3048, size: 64, offset: 1856)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!235, !282, !461, !282, !461, !251, !7}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2837, file: !44, line: 1858, baseType: !3052, size: 64, offset: 1920)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!461, !282, !461, !282, !461, !461, !7}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2837, file: !44, line: 1861, baseType: !2901, size: 64, offset: 1984)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2832, file: !44, line: 692, baseType: !597, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !360, file: !44, line: 694, baseType: !3058, size: 64, offset: 2560)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3060)
!3060 = !{!3061, !3062, !3063, !3064}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3059, file: !44, line: 1101, baseType: !163)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3059, file: !44, line: 1102, baseType: !150, size: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3059, file: !44, line: 1103, baseType: !150, size: 128, offset: 128)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3059, file: !44, line: 1104, baseType: !150, size: 128, offset: 256)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !360, file: !44, line: 695, baseType: !717, size: 1216, align: 64, offset: 2624)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !360, file: !44, line: 696, baseType: !150, size: 128, offset: 3840)
!3067 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !44, line: 697, baseType: !3068, size: 64, offset: 3968)
!3068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !360, file: !44, line: 697, size: 64, elements: !3069)
!3069 = !{!3070, !3071, !3072, !3075, !3076}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3068, file: !44, line: 698, baseType: !2070, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3068, file: !44, line: 699, baseType: !2587, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3068, file: !44, line: 700, baseType: !3073, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3068, file: !44, line: 701, baseType: !204, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3068, file: !44, line: 702, baseType: !7, size: 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !360, file: !44, line: 705, baseType: !347, size: 32, offset: 4032)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !360, file: !44, line: 708, baseType: !347, size: 32, offset: 4064)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !360, file: !44, line: 709, baseType: !2669, size: 64, offset: 4096)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !360, file: !44, line: 720, baseType: !134, size: 64, offset: 4160)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !313, file: !310, line: 98, baseType: !3082, size: 256, offset: 448)
!3082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 256, elements: !2202)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !313, file: !310, line: 101, baseType: !3084, size: 32, offset: 704)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3085, line: 25, size: 32, elements: !3086)
!3085 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3086 = !{!3087}
!3087 = !DIDerivedType(tag: DW_TAG_member, scope: !3084, file: !3085, line: 26, baseType: !3088, size: 32)
!3088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3084, file: !3085, line: 26, size: 32, elements: !3089)
!3089 = !{!3090}
!3090 = !DIDerivedType(tag: DW_TAG_member, scope: !3088, file: !3085, line: 30, baseType: !3091, size: 32)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3085, line: 30, size: 32, elements: !3092)
!3092 = !{!3093, !3094}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3091, file: !3085, line: 31, baseType: !163)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3091, file: !3085, line: 32, baseType: !131, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !313, file: !310, line: 102, baseType: !2686, size: 64, offset: 768)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !313, file: !310, line: 103, baseType: !529, size: 64, offset: 832)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !313, file: !310, line: 104, baseType: !254, size: 64, offset: 896)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !313, file: !310, line: 105, baseType: !134, size: 64, offset: 960)
!3099 = !DIDerivedType(tag: DW_TAG_member, scope: !313, file: !310, line: 107, baseType: !3100, size: 128, offset: 1024)
!3100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !310, line: 107, size: 128, elements: !3101)
!3101 = !{!3102, !3103}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3100, file: !310, line: 108, baseType: !150, size: 128)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3100, file: !310, line: 109, baseType: !3104, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !313, file: !310, line: 111, baseType: !150, size: 128, offset: 1152)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !313, file: !310, line: 112, baseType: !150, size: 128, offset: 1280)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !313, file: !310, line: 120, baseType: !3108, size: 128, offset: 1408)
!3108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !310, line: 116, size: 128, elements: !3109)
!3109 = !{!3110, !3111, !3112}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3108, file: !310, line: 117, baseType: !572, size: 128)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3108, file: !310, line: 118, baseType: !327, size: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3108, file: !310, line: 119, baseType: !295, size: 128, align: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !283, file: !44, line: 922, baseType: !359, size: 64, offset: 256)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !283, file: !44, line: 923, baseType: !2835, size: 64, offset: 320)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !283, file: !44, line: 929, baseType: !163, offset: 384)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !283, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !283, file: !44, line: 931, baseType: !660, size: 64, offset: 448)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !283, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !283, file: !44, line: 933, baseType: !2682, size: 32, offset: 544)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !283, file: !44, line: 934, baseType: !656, size: 192, offset: 576)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !283, file: !44, line: 935, baseType: !461, size: 64, offset: 768)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !283, file: !44, line: 936, baseType: !3123, size: 192, offset: 832)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3124)
!3124 = !{!3125, !3126, !3127, !3128, !3129, !3130}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3123, file: !44, line: 886, baseType: !2934)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3123, file: !44, line: 887, baseType: !1441, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3123, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3123, file: !44, line: 889, baseType: !365, size: 32, offset: 96)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3123, file: !44, line: 889, baseType: !365, size: 32, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3123, file: !44, line: 890, baseType: !131, size: 32, offset: 160)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !283, file: !44, line: 937, baseType: !1517, size: 64, offset: 1024)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !283, file: !44, line: 938, baseType: !3133, size: 256, offset: 1088)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3134)
!3134 = !{!3135, !3136, !3137, !3138, !3139, !3140}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3133, file: !44, line: 897, baseType: !254, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3133, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3133, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3133, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3133, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3133, file: !44, line: 904, baseType: !461, size: 64, offset: 192)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !283, file: !44, line: 940, baseType: !351, size: 64, offset: 1344)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !283, file: !44, line: 945, baseType: !134, size: 64, offset: 1408)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !283, file: !44, line: 949, baseType: !150, size: 128, offset: 1472)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !283, file: !44, line: 950, baseType: !150, size: 128, offset: 1600)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !283, file: !44, line: 952, baseType: !716, size: 64, offset: 1728)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !283, file: !44, line: 953, baseType: !884, size: 32, offset: 1792)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !283, file: !44, line: 954, baseType: !884, size: 32, offset: 1824)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !273, file: !229, line: 174, baseType: !279, size: 64, offset: 320)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !273, file: !229, line: 176, baseType: !3150, size: 64, offset: 384)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!131, !282, !156, !272, !957}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !261, file: !229, line: 90, baseType: !256, size: 64, offset: 192)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !261, file: !229, line: 91, baseType: !3155, size: 64, offset: 256)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !219, file: !143, line: 143, baseType: !3157, size: 64, offset: 256)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!3160, !156}
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3162)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3163)
!3163 = !{!3164, !3165, !3169, !3173, !3179, !3183}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3162, file: !61, line: 40, baseType: !60, size: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3162, file: !61, line: 41, baseType: !3166, size: 64, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!420}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3162, file: !61, line: 42, baseType: !3170, size: 64, offset: 128)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{!134}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3162, file: !61, line: 43, baseType: !3174, size: 64, offset: 192)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!2099, !3177}
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3162, file: !61, line: 44, baseType: !3180, size: 64, offset: 256)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!2099}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3162, file: !61, line: 45, baseType: !398, size: 64, offset: 320)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !219, file: !143, line: 144, baseType: !3185, size: 64, offset: 320)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!2099, !156}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !219, file: !143, line: 145, baseType: !3189, size: 64, offset: 384)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{null, !156, !3192, !3193}
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !142, file: !143, line: 70, baseType: !3195, size: 64, offset: 384)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !549, line: 123, size: 1024, elements: !3197)
!3197 = !{!3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3314, !3315, !3316, !3317, !3318}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3196, file: !549, line: 124, baseType: !729, size: 32)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3196, file: !549, line: 125, baseType: !729, size: 32, offset: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3196, file: !549, line: 135, baseType: !3195, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3196, file: !549, line: 136, baseType: !146, size: 64, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3196, file: !549, line: 138, baseType: !742, size: 192, align: 64, offset: 192)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3196, file: !549, line: 140, baseType: !2099, size: 64, offset: 384)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3196, file: !549, line: 141, baseType: !7, size: 32, offset: 448)
!3205 = !DIDerivedType(tag: DW_TAG_member, scope: !3196, file: !549, line: 142, baseType: !3206, size: 256, offset: 512)
!3206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3196, file: !549, line: 142, size: 256, elements: !3207)
!3207 = !{!3208, !3254, !3258}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3206, file: !549, line: 143, baseType: !3209, size: 192)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !549, line: 91, size: 192, elements: !3210)
!3210 = !{!3211, !3212, !3213}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3209, file: !549, line: 92, baseType: !254, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3209, file: !549, line: 94, baseType: !738, size: 64, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3209, file: !549, line: 100, baseType: !3214, size: 64, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !549, line: 180, size: 704, elements: !3216)
!3216 = !{!3217, !3218, !3219, !3226, !3227, !3228, !3252, !3253}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3215, file: !549, line: 182, baseType: !3195, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3215, file: !549, line: 183, baseType: !7, size: 32, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3215, file: !549, line: 186, baseType: !3220, size: 192, offset: 128)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3221, line: 19, size: 192, elements: !3222)
!3221 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3222 = !{!3223, !3224, !3225}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3220, file: !3221, line: 20, baseType: !721, size: 128)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3220, file: !3221, line: 21, baseType: !7, size: 32, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3220, file: !3221, line: 22, baseType: !7, size: 32, offset: 160)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3215, file: !549, line: 187, baseType: !345, size: 32, offset: 320)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3215, file: !549, line: 188, baseType: !345, size: 32, offset: 352)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3215, file: !549, line: 189, baseType: !3229, size: 64, offset: 384)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !549, line: 168, size: 320, elements: !3231)
!3231 = !{!3232, !3236, !3240, !3244, !3248}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3230, file: !549, line: 169, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!131, !644, !3214}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3230, file: !549, line: 171, baseType: !3237, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!131, !3195, !146, !245}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3230, file: !549, line: 173, baseType: !3241, size: 64, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!131, !3195}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3230, file: !549, line: 174, baseType: !3245, size: 64, offset: 192)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!131, !3195, !3195, !146}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3230, file: !549, line: 176, baseType: !3249, size: 64, offset: 256)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!131, !644, !3195, !3214}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3215, file: !549, line: 192, baseType: !150, size: 128, offset: 448)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3215, file: !549, line: 194, baseType: !1451, size: 128, offset: 576)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3206, file: !549, line: 144, baseType: !3255, size: 64)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !549, line: 103, size: 64, elements: !3256)
!3256 = !{!3257}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3255, file: !549, line: 104, baseType: !3195, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3206, file: !549, line: 145, baseType: !3259, size: 256)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !549, line: 107, size: 256, elements: !3260)
!3260 = !{!3261, !3309, !3312, !3313}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3259, file: !549, line: 108, baseType: !3262, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3264)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !549, line: 217, size: 768, elements: !3265)
!3265 = !{!3266, !3286, !3290, !3291, !3292, !3293, !3294, !3298, !3299, !3300, !3301, !3305}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3264, file: !549, line: 222, baseType: !3267, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!131, !3270}
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !549, line: 197, size: 1088, elements: !3272)
!3272 = !{!3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3271, file: !549, line: 199, baseType: !3195, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3271, file: !549, line: 200, baseType: !282, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3271, file: !549, line: 201, baseType: !644, size: 64, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3271, file: !549, line: 202, baseType: !134, size: 64, offset: 192)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3271, file: !549, line: 205, baseType: !656, size: 192, offset: 256)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3271, file: !549, line: 206, baseType: !656, size: 192, offset: 448)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3271, file: !549, line: 207, baseType: !131, size: 32, offset: 640)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3271, file: !549, line: 208, baseType: !150, size: 128, offset: 704)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3271, file: !549, line: 209, baseType: !204, size: 64, offset: 832)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3271, file: !549, line: 211, baseType: !251, size: 64, offset: 896)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3271, file: !549, line: 212, baseType: !420, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3271, file: !549, line: 213, baseType: !420, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3271, file: !549, line: 214, baseType: !985, size: 64, offset: 1024)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3264, file: !549, line: 223, baseType: !3287, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{null, !3270}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3264, file: !549, line: 236, baseType: !688, size: 64, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3264, file: !549, line: 238, baseType: !675, size: 64, offset: 192)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3264, file: !549, line: 239, baseType: !684, size: 64, offset: 256)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3264, file: !549, line: 240, baseType: !680, size: 64, offset: 320)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3264, file: !549, line: 242, baseType: !3295, size: 64, offset: 384)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!235, !3270, !204, !251, !461}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3264, file: !549, line: 252, baseType: !251, size: 64, offset: 448)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3264, file: !549, line: 259, baseType: !420, size: 8, offset: 512)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3264, file: !549, line: 260, baseType: !3295, size: 64, offset: 576)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3264, file: !549, line: 263, baseType: !3302, size: 64, offset: 640)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!2876, !3270, !2878}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3264, file: !549, line: 266, baseType: !3306, size: 64, offset: 704)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!131, !3270, !957}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3259, file: !549, line: 109, baseType: !3310, size: 64, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !549, line: 31, flags: DIFlagFwdDecl)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3259, file: !549, line: 110, baseType: !461, size: 64, offset: 128)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3259, file: !549, line: 111, baseType: !3195, size: 64, offset: 192)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3196, file: !549, line: 148, baseType: !134, size: 64, offset: 768)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3196, file: !549, line: 154, baseType: !351, size: 64, offset: 832)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3196, file: !549, line: 156, baseType: !246, size: 16, offset: 896)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3196, file: !549, line: 157, baseType: !245, size: 16, offset: 912)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3196, file: !549, line: 158, baseType: !3319, size: 64, offset: 960)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !549, line: 32, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !142, file: !143, line: 71, baseType: !3322, size: 32, offset: 448)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3323, line: 19, size: 32, elements: !3324)
!3323 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3324 = !{!3325}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3322, file: !3323, line: 20, baseType: !1200, size: 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !142, file: !143, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !142, file: !143, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !142, file: !143, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !142, file: !143, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !142, file: !143, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !139, file: !67, line: 463, baseType: !3332, size: 64, offset: 512)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !139, file: !67, line: 465, baseType: !3334, size: 64, offset: 576)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !67, line: 36, flags: DIFlagFwdDecl)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !139, file: !67, line: 467, baseType: !146, size: 64, offset: 640)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !139, file: !67, line: 468, baseType: !3338, size: 64, offset: 704)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3340)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !67, line: 87, size: 384, elements: !3341)
!3341 = !{!3342, !3343, !3344, !3348, !3353, !3357}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3340, file: !67, line: 88, baseType: !146, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3340, file: !67, line: 89, baseType: !258, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3340, file: !67, line: 90, baseType: !3345, size: 64, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!131, !3332, !199}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3340, file: !67, line: 91, baseType: !3349, size: 64, offset: 192)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!204, !3332, !3352, !3192, !3193}
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3340, file: !67, line: 93, baseType: !3354, size: 64, offset: 256)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{null, !3332}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3340, file: !67, line: 95, baseType: !3358, size: 64, offset: 320)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3360)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !74, line: 278, size: 1472, elements: !3361)
!3361 = !{!3362, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3360, file: !74, line: 279, baseType: !3363, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!131, !3332}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3360, file: !74, line: 280, baseType: !3354, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3360, file: !74, line: 281, baseType: !3363, size: 64, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3360, file: !74, line: 282, baseType: !3363, size: 64, offset: 192)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3360, file: !74, line: 283, baseType: !3363, size: 64, offset: 256)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3360, file: !74, line: 284, baseType: !3363, size: 64, offset: 320)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3360, file: !74, line: 285, baseType: !3363, size: 64, offset: 384)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3360, file: !74, line: 286, baseType: !3363, size: 64, offset: 448)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3360, file: !74, line: 287, baseType: !3363, size: 64, offset: 512)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3360, file: !74, line: 288, baseType: !3363, size: 64, offset: 576)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3360, file: !74, line: 289, baseType: !3363, size: 64, offset: 640)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3360, file: !74, line: 290, baseType: !3363, size: 64, offset: 704)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3360, file: !74, line: 291, baseType: !3363, size: 64, offset: 768)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3360, file: !74, line: 292, baseType: !3363, size: 64, offset: 832)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3360, file: !74, line: 293, baseType: !3363, size: 64, offset: 896)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3360, file: !74, line: 294, baseType: !3363, size: 64, offset: 960)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3360, file: !74, line: 295, baseType: !3363, size: 64, offset: 1024)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3360, file: !74, line: 296, baseType: !3363, size: 64, offset: 1088)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3360, file: !74, line: 297, baseType: !3363, size: 64, offset: 1152)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3360, file: !74, line: 298, baseType: !3363, size: 64, offset: 1216)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3360, file: !74, line: 299, baseType: !3363, size: 64, offset: 1280)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3360, file: !74, line: 300, baseType: !3363, size: 64, offset: 1344)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3360, file: !74, line: 301, baseType: !3363, size: 64, offset: 1408)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !139, file: !67, line: 470, baseType: !3389, size: 64, offset: 768)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3391, line: 82, size: 1408, elements: !3392)
!3391 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398, !3399, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3474, !3477, !3478}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3390, file: !3391, line: 83, baseType: !146, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3390, file: !3391, line: 84, baseType: !146, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3390, file: !3391, line: 85, baseType: !3332, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3390, file: !3391, line: 86, baseType: !258, size: 64, offset: 192)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3390, file: !3391, line: 87, baseType: !258, size: 64, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3390, file: !3391, line: 88, baseType: !258, size: 64, offset: 320)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3390, file: !3391, line: 90, baseType: !3400, size: 64, offset: 384)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!131, !3332, !3403}
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 95, size: 1152, elements: !3405)
!3405 = !{!3406, !3407, !3408, !3409, !3410, !3411, !3412, !3425, !3438, !3439, !3440, !3441, !3442, !3450, !3451, !3452, !3453, !3454, !3455}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3404, file: !88, line: 96, baseType: !146, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3404, file: !88, line: 97, baseType: !3389, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3404, file: !88, line: 99, baseType: !563, size: 64, offset: 128)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3404, file: !88, line: 100, baseType: !146, size: 64, offset: 192)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3404, file: !88, line: 102, baseType: !420, size: 8, offset: 256)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3404, file: !88, line: 103, baseType: !87, size: 32, offset: 288)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3404, file: !88, line: 105, baseType: !3413, size: 64, offset: 320)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3415)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3416, line: 262, size: 1600, elements: !3417)
!3416 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3417 = !{!3418, !3419, !3420, !3424}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3415, file: !3416, line: 263, baseType: !2672, size: 256)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3415, file: !3416, line: 264, baseType: !2672, size: 256, offset: 256)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3415, file: !3416, line: 265, baseType: !3421, size: 1024, offset: 512)
!3421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 1024, elements: !3422)
!3422 = !{!3423}
!3423 = !DISubrange(count: 128)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3415, file: !3416, line: 266, baseType: !2099, size: 64, offset: 1536)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3404, file: !88, line: 106, baseType: !3426, size: 64, offset: 384)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3428)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3416, line: 210, size: 256, elements: !3429)
!3429 = !{!3430, !3434, !3436, !3437}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3428, file: !3416, line: 211, baseType: !3431, size: 72)
!3431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1323, size: 72, elements: !3432)
!3432 = !{!3433}
!3433 = !DISubrange(count: 9)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3428, file: !3416, line: 212, baseType: !3435, size: 64, offset: 128)
!3435 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3416, line: 14, baseType: !254)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3428, file: !3416, line: 213, baseType: !347, size: 32, offset: 192)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3428, file: !3416, line: 214, baseType: !347, size: 32, offset: 224)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3404, file: !88, line: 108, baseType: !3363, size: 64, offset: 448)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3404, file: !88, line: 109, baseType: !3354, size: 64, offset: 512)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3404, file: !88, line: 110, baseType: !3363, size: 64, offset: 576)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3404, file: !88, line: 111, baseType: !3354, size: 64, offset: 640)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3404, file: !88, line: 112, baseType: !3443, size: 64, offset: 704)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!131, !3332, !3446}
!3446 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !74, line: 52, baseType: !3447)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !74, line: 50, size: 32, elements: !3448)
!3448 = !{!3449}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3447, file: !74, line: 51, baseType: !131, size: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3404, file: !88, line: 113, baseType: !3363, size: 64, offset: 768)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3404, file: !88, line: 114, baseType: !258, size: 64, offset: 832)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3404, file: !88, line: 115, baseType: !258, size: 64, offset: 896)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3404, file: !88, line: 117, baseType: !3358, size: 64, offset: 960)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3404, file: !88, line: 118, baseType: !3354, size: 64, offset: 1024)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3404, file: !88, line: 120, baseType: !3456, size: 64, offset: 1088)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 120, flags: DIFlagFwdDecl)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3390, file: !3391, line: 91, baseType: !3345, size: 64, offset: 448)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3390, file: !3391, line: 92, baseType: !3363, size: 64, offset: 512)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3390, file: !3391, line: 93, baseType: !3354, size: 64, offset: 576)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3390, file: !3391, line: 94, baseType: !3363, size: 64, offset: 640)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3390, file: !3391, line: 95, baseType: !3354, size: 64, offset: 704)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3390, file: !3391, line: 97, baseType: !3363, size: 64, offset: 768)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3390, file: !3391, line: 98, baseType: !3363, size: 64, offset: 832)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3390, file: !3391, line: 100, baseType: !3443, size: 64, offset: 896)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3390, file: !3391, line: 101, baseType: !3363, size: 64, offset: 960)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3390, file: !3391, line: 103, baseType: !3363, size: 64, offset: 1024)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3390, file: !3391, line: 105, baseType: !3363, size: 64, offset: 1088)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3390, file: !3391, line: 107, baseType: !3358, size: 64, offset: 1152)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3390, file: !3391, line: 109, baseType: !3471, size: 64, offset: 1216)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3473)
!3473 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3391, line: 109, flags: DIFlagFwdDecl)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3390, file: !3391, line: 111, baseType: !3475, size: 64, offset: 1280)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3391, line: 111, flags: DIFlagFwdDecl)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3390, file: !3391, line: 112, baseType: !578, offset: 1344)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3390, file: !3391, line: 114, baseType: !420, size: 8, offset: 1344)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !139, file: !67, line: 471, baseType: !3403, size: 64, offset: 832)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !139, file: !67, line: 473, baseType: !134, size: 64, offset: 896)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !139, file: !67, line: 475, baseType: !134, size: 64, offset: 960)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !139, file: !67, line: 480, baseType: !656, size: 192, offset: 1024)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !139, file: !67, line: 484, baseType: !3484, size: 576, offset: 1216)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !67, line: 361, size: 576, elements: !3485)
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3491}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3484, file: !67, line: 362, baseType: !150, size: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3484, file: !67, line: 363, baseType: !150, size: 128, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3484, file: !67, line: 364, baseType: !150, size: 128, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3484, file: !67, line: 365, baseType: !150, size: 128, offset: 384)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3484, file: !67, line: 366, baseType: !420, size: 8, offset: 512)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3484, file: !67, line: 367, baseType: !66, size: 32, offset: 544)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !139, file: !67, line: 485, baseType: !3493, size: 2304, offset: 1792)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !74, line: 565, size: 2304, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3590, !3594}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3493, file: !74, line: 566, baseType: !3446, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3493, file: !74, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3493, file: !74, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3493, file: !74, line: 569, baseType: !420, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3493, file: !74, line: 570, baseType: !420, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3493, file: !74, line: 571, baseType: !420, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3493, file: !74, line: 572, baseType: !420, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3493, file: !74, line: 573, baseType: !420, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3493, file: !74, line: 574, baseType: !420, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3493, file: !74, line: 575, baseType: !420, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3493, file: !74, line: 576, baseType: !420, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3493, file: !74, line: 577, baseType: !345, size: 32, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3493, file: !74, line: 578, baseType: !163, offset: 96)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3493, file: !74, line: 580, baseType: !150, size: 128, offset: 128)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3493, file: !74, line: 581, baseType: !1472, size: 192, offset: 256)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3493, file: !74, line: 582, baseType: !3511, size: 64, offset: 448)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3513, line: 43, size: 1472, elements: !3514)
!3513 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3514 = !{!3515, !3516, !3517, !3518, !3519, !3522, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3512, file: !3513, line: 44, baseType: !146, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3512, file: !3513, line: 45, baseType: !131, size: 32, offset: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3512, file: !3513, line: 46, baseType: !150, size: 128, offset: 128)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3512, file: !3513, line: 47, baseType: !163, offset: 256)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3512, file: !3513, line: 48, baseType: !3520, size: 64, offset: 256)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !74, line: 533, flags: DIFlagFwdDecl)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3512, file: !3513, line: 49, baseType: !3523, size: 320, offset: 320)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3524, line: 11, size: 320, elements: !3525)
!3524 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3525 = !{!3526, !3527, !3528, !3533}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3523, file: !3524, line: 16, baseType: !572, size: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3523, file: !3524, line: 17, baseType: !254, size: 64, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3523, file: !3524, line: 18, baseType: !3529, size: 64, offset: 192)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{null, !3532}
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3523, file: !3524, line: 19, baseType: !345, size: 32, offset: 256)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3512, file: !3513, line: 50, baseType: !254, size: 64, offset: 640)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3512, file: !3513, line: 51, baseType: !1270, size: 64, offset: 704)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3512, file: !3513, line: 52, baseType: !1270, size: 64, offset: 768)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3512, file: !3513, line: 53, baseType: !1270, size: 64, offset: 832)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3512, file: !3513, line: 54, baseType: !1270, size: 64, offset: 896)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3512, file: !3513, line: 55, baseType: !1270, size: 64, offset: 960)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3512, file: !3513, line: 56, baseType: !254, size: 64, offset: 1024)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3512, file: !3513, line: 57, baseType: !254, size: 64, offset: 1088)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3512, file: !3513, line: 58, baseType: !254, size: 64, offset: 1152)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3512, file: !3513, line: 59, baseType: !254, size: 64, offset: 1216)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3512, file: !3513, line: 60, baseType: !254, size: 64, offset: 1280)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3512, file: !3513, line: 61, baseType: !3332, size: 64, offset: 1344)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3512, file: !3513, line: 62, baseType: !420, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3512, file: !3513, line: 63, baseType: !420, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3493, file: !74, line: 583, baseType: !420, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3493, file: !74, line: 584, baseType: !420, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3493, file: !74, line: 585, baseType: !420, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3493, file: !74, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3493, file: !74, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3493, file: !74, line: 592, baseType: !1262, size: 512, offset: 576)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3493, file: !74, line: 593, baseType: !351, size: 64, offset: 1088)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3493, file: !74, line: 594, baseType: !1929, size: 256, offset: 1152)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3493, file: !74, line: 595, baseType: !1451, size: 128, offset: 1408)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3493, file: !74, line: 596, baseType: !3520, size: 64, offset: 1536)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3493, file: !74, line: 597, baseType: !729, size: 32, offset: 1600)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3493, file: !74, line: 598, baseType: !729, size: 32, offset: 1632)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3493, file: !74, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3493, file: !74, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3493, file: !74, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3493, file: !74, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3493, file: !74, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3493, file: !74, line: 604, baseType: !420, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3493, file: !74, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3493, file: !74, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3493, file: !74, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3493, file: !74, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3493, file: !74, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3493, file: !74, line: 610, baseType: !7, size: 32, offset: 1696)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3493, file: !74, line: 611, baseType: !73, size: 32, offset: 1728)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3493, file: !74, line: 612, baseType: !81, size: 32, offset: 1760)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3493, file: !74, line: 613, baseType: !131, size: 32, offset: 1792)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3493, file: !74, line: 614, baseType: !131, size: 32, offset: 1824)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3493, file: !74, line: 615, baseType: !351, size: 64, offset: 1856)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3493, file: !74, line: 616, baseType: !351, size: 64, offset: 1920)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3493, file: !74, line: 617, baseType: !351, size: 64, offset: 1984)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3493, file: !74, line: 618, baseType: !351, size: 64, offset: 2048)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3493, file: !74, line: 620, baseType: !3581, size: 64, offset: 2112)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !74, line: 536, size: 256, elements: !3583)
!3583 = !{!3584, !3585, !3586, !3587}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3582, file: !74, line: 537, baseType: !163)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3582, file: !74, line: 538, baseType: !7, size: 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3582, file: !74, line: 540, baseType: !150, size: 128, offset: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3582, file: !74, line: 543, baseType: !3588, size: 64, offset: 192)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !74, line: 534, flags: DIFlagFwdDecl)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3493, file: !74, line: 621, baseType: !3591, size: 64, offset: 2176)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{null, !3332, !1414}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3493, file: !74, line: 622, baseType: !3595, size: 64, offset: 2240)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !74, line: 622, flags: DIFlagFwdDecl)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !139, file: !67, line: 486, baseType: !3598, size: 64, offset: 4096)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !74, line: 642, size: 1792, elements: !3600)
!3600 = !{!3601, !3602, !3603, !3607, !3608, !3609}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3599, file: !74, line: 643, baseType: !3360, size: 1472)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3599, file: !74, line: 644, baseType: !3363, size: 64, offset: 1472)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3599, file: !74, line: 645, baseType: !3604, size: 64, offset: 1536)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{null, !3332, !420}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3599, file: !74, line: 646, baseType: !3363, size: 64, offset: 1600)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3599, file: !74, line: 647, baseType: !3354, size: 64, offset: 1664)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3599, file: !74, line: 648, baseType: !3354, size: 64, offset: 1728)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !139, file: !67, line: 493, baseType: !3611, size: 64, offset: 4160)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !67, line: 493, flags: DIFlagFwdDecl)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !139, file: !67, line: 499, baseType: !150, size: 128, offset: 4224)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !139, file: !67, line: 502, baseType: !3615, size: 64, offset: 4352)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3617)
!3617 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !67, line: 502, flags: DIFlagFwdDecl)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !139, file: !67, line: 504, baseType: !3619, size: 64, offset: 4416)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !139, file: !67, line: 505, baseType: !351, size: 64, offset: 4480)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !139, file: !67, line: 510, baseType: !351, size: 64, offset: 4544)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !139, file: !67, line: 511, baseType: !3623, size: 64, offset: 4608)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3625)
!3625 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !67, line: 511, flags: DIFlagFwdDecl)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !139, file: !67, line: 513, baseType: !3627, size: 64, offset: 4672)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !67, line: 288, size: 128, elements: !3629)
!3629 = !{!3630, !3631}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3628, file: !67, line: 293, baseType: !7, size: 32)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3628, file: !67, line: 294, baseType: !254, size: 64, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !139, file: !67, line: 515, baseType: !150, size: 128, offset: 4736)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !139, file: !67, line: 526, baseType: !3634, offset: 4864)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3635, line: 5, elements: !177)
!3635 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !139, file: !67, line: 528, baseType: !3637, size: 64, offset: 4864)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3639, line: 14, flags: DIFlagFwdDecl)
!3639 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !139, file: !67, line: 529, baseType: !3641, size: 64, offset: 4928)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3643, line: 17, size: 192, elements: !3644)
!3643 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3644 = !{!3645, !3646, !3729}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3642, file: !3643, line: 18, baseType: !3641, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3642, file: !3643, line: 19, baseType: !3647, size: 64, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3649)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3643, line: 110, size: 1152, elements: !3650)
!3650 = !{!3651, !3655, !3659, !3665, !3671, !3675, !3679, !3684, !3688, !3689, !3693, !3697, !3701, !3712, !3713, !3714, !3715, !3725}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3649, file: !3643, line: 111, baseType: !3652, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!3641, !3641}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3649, file: !3643, line: 112, baseType: !3656, size: 64, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{null, !3641}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3649, file: !3643, line: 113, baseType: !3660, size: 64, offset: 128)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!420, !3663}
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3642)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3649, file: !3643, line: 114, baseType: !3666, size: 64, offset: 192)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!2099, !3663, !3669}
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3649, file: !3643, line: 116, baseType: !3672, size: 64, offset: 256)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!420, !3663, !146}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3649, file: !3643, line: 118, baseType: !3676, size: 64, offset: 320)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!131, !3663, !146, !7, !134, !251}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3649, file: !3643, line: 123, baseType: !3680, size: 64, offset: 384)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!131, !3663, !146, !3683, !251}
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3649, file: !3643, line: 126, baseType: !3685, size: 64, offset: 448)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!146, !3663}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3649, file: !3643, line: 127, baseType: !3685, size: 64, offset: 512)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3649, file: !3643, line: 128, baseType: !3690, size: 64, offset: 576)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!3641, !3663}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3649, file: !3643, line: 130, baseType: !3694, size: 64, offset: 640)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!3641, !3663, !3641}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3649, file: !3643, line: 133, baseType: !3698, size: 64, offset: 704)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!3641, !3663, !146}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3649, file: !3643, line: 135, baseType: !3702, size: 64, offset: 768)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!131, !3663, !146, !146, !7, !7, !3705}
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3643, line: 43, size: 640, elements: !3707)
!3707 = !{!3708, !3709, !3710}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3706, file: !3643, line: 44, baseType: !3641, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3706, file: !3643, line: 45, baseType: !7, size: 32, offset: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3706, file: !3643, line: 46, baseType: !3711, size: 512, offset: 128)
!3711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 512, elements: !1300)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3649, file: !3643, line: 140, baseType: !3694, size: 64, offset: 832)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3649, file: !3643, line: 143, baseType: !3690, size: 64, offset: 896)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3649, file: !3643, line: 145, baseType: !3652, size: 64, offset: 960)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3649, file: !3643, line: 146, baseType: !3716, size: 64, offset: 1024)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!131, !3663, !3719}
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3643, line: 29, size: 128, elements: !3721)
!3721 = !{!3722, !3723, !3724}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3720, file: !3643, line: 30, baseType: !7, size: 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3720, file: !3643, line: 31, baseType: !7, size: 32, offset: 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3720, file: !3643, line: 32, baseType: !3663, size: 64, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3649, file: !3643, line: 148, baseType: !3726, size: 64, offset: 1088)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!131, !3663, !3332}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3642, file: !3643, line: 20, baseType: !3332, size: 64, offset: 128)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !139, file: !67, line: 534, baseType: !443, size: 32, offset: 4992)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !139, file: !67, line: 535, baseType: !345, size: 32, offset: 5024)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !139, file: !67, line: 537, baseType: !163, offset: 5056)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !139, file: !67, line: 538, baseType: !150, size: 128, offset: 5056)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !139, file: !67, line: 540, baseType: !3735, size: 64, offset: 5184)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3737, line: 54, size: 960, elements: !3738)
!3737 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3738 = !{!3739, !3740, !3741, !3742, !3743, !3744, !3745, !3749, !3753, !3754, !3755, !3756, !3760, !3764, !3765}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3736, file: !3737, line: 55, baseType: !146, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3736, file: !3737, line: 56, baseType: !563, size: 64, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3736, file: !3737, line: 58, baseType: !258, size: 64, offset: 128)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3736, file: !3737, line: 59, baseType: !258, size: 64, offset: 192)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3736, file: !3737, line: 60, baseType: !156, size: 64, offset: 256)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3736, file: !3737, line: 62, baseType: !3345, size: 64, offset: 320)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3736, file: !3737, line: 63, baseType: !3746, size: 64, offset: 384)
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!204, !3332, !3352}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3736, file: !3737, line: 65, baseType: !3750, size: 64, offset: 448)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{null, !3735}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3736, file: !3737, line: 66, baseType: !3354, size: 64, offset: 512)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3736, file: !3737, line: 68, baseType: !3363, size: 64, offset: 576)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3736, file: !3737, line: 70, baseType: !3160, size: 64, offset: 640)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3736, file: !3737, line: 71, baseType: !3757, size: 64, offset: 704)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!2099, !3332}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3736, file: !3737, line: 73, baseType: !3761, size: 64, offset: 768)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{null, !3332, !3192, !3193}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3736, file: !3737, line: 75, baseType: !3358, size: 64, offset: 832)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3736, file: !3737, line: 77, baseType: !3475, size: 64, offset: 896)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !139, file: !67, line: 541, baseType: !258, size: 64, offset: 5248)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !139, file: !67, line: 543, baseType: !3354, size: 64, offset: 5312)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !139, file: !67, line: 544, baseType: !3769, size: 64, offset: 5376)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !67, line: 45, flags: DIFlagFwdDecl)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !139, file: !67, line: 545, baseType: !3772, size: 64, offset: 5440)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !67, line: 47, flags: DIFlagFwdDecl)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !139, file: !67, line: 547, baseType: !420, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !139, file: !67, line: 548, baseType: !420, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !139, file: !67, line: 549, baseType: !420, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !139, file: !67, line: 550, baseType: !420, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "drvdata", scope: !136, file: !100, line: 77, baseType: !3779, size: 64, offset: 5568)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_th_drvdata", file: !100, line: 54, size: 32, elements: !3781)
!3781 = !{!3782, !3783, !3784, !3785}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "tscu_enable", scope: !3780, file: !100, line: 55, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "multi_is_broken", scope: !3780, file: !100, line: 56, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "has_mintctl", scope: !3780, file: !100, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "host_mode_only", scope: !3780, file: !100, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !136, file: !100, line: 78, baseType: !3787, size: 64, offset: 5632)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !3789, line: 20, size: 512, elements: !3790)
!3789 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!3790 = !{!3791, !3793, !3794, !3795, !3796, !3797, !3798, !3799}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3788, file: !3789, line: 21, baseType: !3792, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !133, line: 158, baseType: !2097)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3788, file: !3789, line: 22, baseType: !3792, size: 64, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3788, file: !3789, line: 23, baseType: !146, size: 64, offset: 128)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3788, file: !3789, line: 24, baseType: !254, size: 64, offset: 192)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3788, file: !3789, line: 25, baseType: !254, size: 64, offset: 256)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3788, file: !3789, line: 26, baseType: !3787, size: 64, offset: 320)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3788, file: !3789, line: 26, baseType: !3787, size: 64, offset: 384)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3788, file: !3789, line: 26, baseType: !3787, size: 64, offset: 448)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !136, file: !100, line: 79, baseType: !7, size: 32, offset: 5696)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !136, file: !100, line: 80, baseType: !7, size: 32, offset: 5728)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !136, file: !100, line: 81, baseType: !131, size: 32, offset: 5760)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "host_mode", scope: !136, file: !100, line: 84, baseType: !420, size: 8, offset: 5792)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !136, file: !100, line: 87, baseType: !3805, size: 128, offset: 5824)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_th_output", file: !100, line: 39, size: 128, elements: !3806)
!3806 = !{!3807, !3808, !3809, !3810, !3811}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3805, file: !100, line: 40, baseType: !131, size: 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3805, file: !100, line: 41, baseType: !7, size: 32, offset: 32)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "scratchpad", scope: !3805, file: !100, line: 42, baseType: !7, size: 32, offset: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "multiblock", scope: !3805, file: !100, line: 43, baseType: !420, size: 8, offset: 96)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3805, file: !100, line: 44, baseType: !420, size: 8, offset: 104)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !136, file: !100, line: 89, baseType: !3813, offset: 5952)
!3813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, elements: !2303)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_th_driver", file: !100, line: 158, size: 2048, elements: !3816)
!3816 = !{!3817, !3818, !3822, !3826, !3830, !3834, !3839, !3840, !3841, !3846, !3847, !3848, !3849, !3850, !3852}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3815, file: !100, line: 159, baseType: !3404, size: 1152)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3815, file: !100, line: 160, baseType: !3819, size: 64, offset: 1152)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!131, !135}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3815, file: !100, line: 161, baseType: !3823, size: 64, offset: 1216)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{null, !135}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "assign", scope: !3815, file: !100, line: 163, baseType: !3827, size: 64, offset: 1280)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!131, !135, !135}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "unassign", scope: !3815, file: !100, line: 165, baseType: !3831, size: 64, offset: 1344)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{null, !135, !135}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !3815, file: !100, line: 167, baseType: !3835, size: 64, offset: 1408)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{null, !135, !3838}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "trig_switch", scope: !3815, file: !100, line: 169, baseType: !3835, size: 64, offset: 1472)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !3815, file: !100, line: 171, baseType: !3835, size: 64, offset: 1536)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3815, file: !100, line: 174, baseType: !3842, size: 64, offset: 1600)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!3845, !135}
!3845 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !94, line: 17, baseType: !93)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "wait_empty", scope: !3815, file: !100, line: 175, baseType: !3823, size: 64, offset: 1664)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3815, file: !100, line: 176, baseType: !3819, size: 64, offset: 1728)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3815, file: !100, line: 177, baseType: !3823, size: 64, offset: 1792)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !3815, file: !100, line: 179, baseType: !2835, size: 64, offset: 1856)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "attr_group", scope: !3815, file: !100, line: 181, baseType: !3851, size: 64, offset: 1920)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "set_output", scope: !3815, file: !100, line: 184, baseType: !3853, size: 64, offset: 1984)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!131, !135, !7}
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!3857 = !{!3858, !3910, !3915, !3917, !3922, !3927, !3932, !3937, !3942, !0, !3944, !3946, !3961, !3965, !3967, !3969, !3972, !3974, !3977, !3991, !3993, !3995, !4000}
!3858 = !DIGlobalVariableExpression(var: !3859, expr: !DIExpression())
!3859 = distinct !DIGlobalVariable(name: "__param_host_mode", scope: !2, file: !3, line: 25, type: !3860, isLocal: true, isDefinition: true, align: 64)
!3860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3861)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3862, line: 69, size: 320, elements: !3863)
!3862 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!3863 = !{!3864, !3865, !3866, !3882, !3884, !3888, !3889}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3861, file: !3862, line: 70, baseType: !146, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3861, file: !3862, line: 71, baseType: !563, size: 64, offset: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3861, file: !3862, line: 72, baseType: !3867, size: 64, offset: 128)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3869)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3862, line: 47, size: 256, elements: !3870)
!3870 = !{!3871, !3872, !3877, !3881}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3869, file: !3862, line: 49, baseType: !7, size: 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3869, file: !3862, line: 51, baseType: !3873, size: 64, offset: 64)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!131, !146, !3876}
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3869, file: !3862, line: 53, baseType: !3878, size: 64, offset: 128)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!131, !204, !3876}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3869, file: !3862, line: 55, baseType: !398, size: 64, offset: 192)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3861, file: !3862, line: 73, baseType: !3883, size: 16, offset: 192)
!3883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3861, file: !3862, line: 74, baseType: !3885, size: 8, offset: 208)
!3885 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !346, line: 16, baseType: !3886)
!3886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !348, line: 20, baseType: !3887)
!3887 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3861, file: !3862, line: 75, baseType: !1322, size: 8, offset: 216)
!3889 = !DIDerivedType(tag: DW_TAG_member, scope: !3861, file: !3862, line: 76, baseType: !3890, size: 64, offset: 256)
!3890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3861, file: !3862, line: 76, size: 64, elements: !3891)
!3891 = !{!3892, !3893, !3900}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3890, file: !3862, line: 77, baseType: !134, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3890, file: !3862, line: 78, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3896)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3862, line: 86, size: 128, elements: !3897)
!3897 = !{!3898, !3899}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3896, file: !3862, line: 87, baseType: !7, size: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3896, file: !3862, line: 88, baseType: !204, size: 64, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3890, file: !3862, line: 79, baseType: !3901, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3903)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3862, line: 92, size: 256, elements: !3904)
!3904 = !{!3905, !3906, !3907, !3908, !3909}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3903, file: !3862, line: 94, baseType: !7, size: 32)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3903, file: !3862, line: 95, baseType: !7, size: 32, offset: 32)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3903, file: !3862, line: 96, baseType: !2655, size: 64, offset: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3903, file: !3862, line: 97, baseType: !3867, size: 64, offset: 128)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3903, file: !3862, line: 98, baseType: !134, size: 64, offset: 192)
!3910 = !DIGlobalVariableExpression(var: !3911, expr: !DIExpression())
!3911 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_host_modetype239", scope: !2, file: !3, line: 25, type: !3912, isLocal: true, isDefinition: true, align: 8)
!3912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 264, elements: !3913)
!3913 = !{!3914}
!3914 = !DISubrange(count: 33)
!3915 = !DIGlobalVariableExpression(var: !3916, expr: !DIExpression())
!3916 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_intel_th_init275", scope: !2, file: !3, line: 1057, type: !134, isLocal: true, isDefinition: true)
!3917 = !DIGlobalVariableExpression(var: !3918, expr: !DIExpression())
!3918 = distinct !DIGlobalVariable(name: "__exitcall_intel_th_exit", scope: !2, file: !3, line: 1065, type: !3919, isLocal: true, isDefinition: true)
!3919 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3920, line: 117, baseType: !3921)
!3920 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!3922 = !DIGlobalVariableExpression(var: !3923, expr: !DIExpression())
!3923 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file276", scope: !2, file: !3, line: 1067, type: !3924, isLocal: true, isDefinition: true, align: 8)
!3924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 400, elements: !3925)
!3925 = !{!3926}
!3926 = !DISubrange(count: 50)
!3927 = !DIGlobalVariableExpression(var: !3928, expr: !DIExpression())
!3928 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license277", scope: !2, file: !3, line: 1067, type: !3929, isLocal: true, isDefinition: true, align: 8)
!3929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 192, elements: !3930)
!3930 = !{!3931}
!3931 = !DISubrange(count: 24)
!3932 = !DIGlobalVariableExpression(var: !3933, expr: !DIExpression())
!3933 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description278", scope: !2, file: !3, line: 1068, type: !3934, isLocal: true, isDefinition: true, align: 8)
!3934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 464, elements: !3935)
!3935 = !{!3936}
!3936 = !DISubrange(count: 58)
!3937 = !DIGlobalVariableExpression(var: !3938, expr: !DIExpression())
!3938 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author279", scope: !2, file: !3, line: 1069, type: !3939, isLocal: true, isDefinition: true, align: 8)
!3939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 576, elements: !3940)
!3940 = !{!3941}
!3941 = !DISubrange(count: 72)
!3942 = !DIGlobalVariableExpression(var: !3943, expr: !DIExpression())
!3943 = distinct !DIGlobalVariable(name: "host_mode", scope: !2, file: !3, line: 24, type: !420, isLocal: true, isDefinition: true)
!3944 = !DIGlobalVariableExpression(var: !3945, expr: !DIExpression())
!3945 = distinct !DIGlobalVariable(name: "intel_th_bus", scope: !2, file: !3, line: 169, type: !3390, isLocal: true, isDefinition: true)
!3946 = !DIGlobalVariableExpression(var: !3947, expr: !DIExpression())
!3947 = distinct !DIGlobalVariable(name: "intel_th_subdevices", scope: !2, file: !3, line: 428, type: !3948, isLocal: true, isDefinition: true)
!3948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3949, size: 14336, elements: !1300)
!3949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3950)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_th_subdevice", file: !3, line: 419, size: 1792, elements: !3951)
!3951 = !{!3952, !3953, !3955, !3956, !3957, !3958, !3959, !3960}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3950, file: !3, line: 420, baseType: !146, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !3950, file: !3, line: 421, baseType: !3954, size: 1536, offset: 64)
!3954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3788, size: 1536, elements: !205)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !3950, file: !3, line: 422, baseType: !7, size: 32, offset: 1600)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3950, file: !3, line: 423, baseType: !7, size: 32, offset: 1632)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "otype", scope: !3950, file: !3, line: 424, baseType: !7, size: 32, offset: 1664)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "mknode", scope: !3950, file: !3, line: 425, baseType: !420, size: 8, offset: 1696)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "scrpd", scope: !3950, file: !3, line: 426, baseType: !7, size: 32, offset: 1728)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3950, file: !3, line: 427, baseType: !131, size: 32, offset: 1760)
!3961 = !DIGlobalVariableExpression(var: !3962, expr: !DIExpression())
!3962 = distinct !DIGlobalVariable(name: "intel_th_device_type", scope: !2, file: !3, line: 331, type: !3963, isLocal: true, isDefinition: true)
!3963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3964, size: 192, elements: !205)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3965 = !DIGlobalVariableExpression(var: !3966, expr: !DIExpression())
!3966 = distinct !DIGlobalVariable(name: "intel_th_source_device_type", scope: !2, file: !3, line: 183, type: !3340, isLocal: true, isDefinition: true)
!3967 = !DIGlobalVariableExpression(var: !3968, expr: !DIExpression())
!3968 = distinct !DIGlobalVariable(name: "intel_th_output_device_type", scope: !2, file: !3, line: 319, type: !3340, isLocal: true, isDefinition: true)
!3969 = !DIGlobalVariableExpression(var: !3970, expr: !DIExpression())
!3970 = distinct !DIGlobalVariable(name: "intel_th_output_groups", scope: !2, file: !3, line: 317, type: !3971, isLocal: true, isDefinition: true)
!3971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 128, elements: !1539)
!3972 = !DIGlobalVariableExpression(var: !3973, expr: !DIExpression())
!3973 = distinct !DIGlobalVariable(name: "intel_th_output_group", scope: !2, file: !3, line: 317, type: !260, isLocal: true, isDefinition: true)
!3974 = !DIGlobalVariableExpression(var: !3975, expr: !DIExpression())
!3975 = distinct !DIGlobalVariable(name: "intel_th_output_attrs", scope: !2, file: !3, line: 311, type: !3976, isLocal: true, isDefinition: true)
!3976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 192, elements: !205)
!3977 = !DIGlobalVariableExpression(var: !3978, expr: !DIExpression())
!3978 = distinct !DIGlobalVariable(name: "dev_attr_port", scope: !2, file: !3, line: 216, type: !3979, isLocal: true, isDefinition: true)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !67, line: 99, size: 256, elements: !3980)
!3980 = !{!3981, !3982, !3987}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3979, file: !67, line: 100, baseType: !241, size: 128)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3979, file: !67, line: 101, baseType: !3983, size: 64, offset: 128)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!235, !3332, !3986, !204}
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3979, file: !67, line: 103, baseType: !3988, size: 64, offset: 192)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!235, !3332, !3986, !146, !251}
!3991 = !DIGlobalVariableExpression(var: !3992, expr: !DIExpression())
!3992 = distinct !DIGlobalVariable(name: "dev_attr_active", scope: !2, file: !3, line: 309, type: !3979, isLocal: true, isDefinition: true)
!3993 = !DIGlobalVariableExpression(var: !3994, expr: !DIExpression())
!3994 = distinct !DIGlobalVariable(name: "intel_th_switch_device_type", scope: !2, file: !3, line: 326, type: !3340, isLocal: true, isDefinition: true)
!3995 = !DIGlobalVariableExpression(var: !3996, expr: !DIExpression())
!3996 = distinct !DIGlobalVariable(name: "intel_th_ida", scope: !2, file: !3, line: 27, type: !3997, isLocal: true, isDefinition: true)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !3221, line: 244, size: 128, elements: !3998)
!3998 = !{!3999}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3997, file: !3221, line: 245, baseType: !721, size: 128)
!4000 = !DIGlobalVariableExpression(var: !4001, expr: !DIExpression())
!4001 = distinct !DIGlobalVariable(name: "intel_th_output_fops", scope: !2, file: !3, line: 816, type: !2836, isLocal: true, isDefinition: true)
!4002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 152, elements: !4003)
!4003 = !{!4004}
!4004 = !DISubrange(count: 19)
!4005 = !{i32 7, !"Dwarf Version", i32 4}
!4006 = !{i32 2, !"Debug Info Version", i32 3}
!4007 = !{i32 1, !"wchar_size", i32 2}
!4008 = !{i32 1, !"Code Model", i32 2}
!4009 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4010 = distinct !DISubprogram(name: "intel_th_driver_register", scope: !3, file: !3, line: 337, type: !4011, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!131, !3814}
!4013 = !DILocalVariable(name: "thdrv", arg: 1, scope: !4010, file: !3, line: 337, type: !3814)
!4014 = !DILocation(line: 337, column: 54, scope: !4010)
!4015 = !DILocation(line: 339, column: 7, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4010, file: !3, line: 339, column: 6)
!4017 = !DILocation(line: 339, column: 14, scope: !4016)
!4018 = !DILocation(line: 339, column: 20, scope: !4016)
!4019 = !DILocation(line: 339, column: 24, scope: !4016)
!4020 = !DILocation(line: 339, column: 31, scope: !4016)
!4021 = !DILocation(line: 339, column: 6, scope: !4010)
!4022 = !DILocation(line: 340, column: 3, scope: !4016)
!4023 = !DILocation(line: 342, column: 2, scope: !4010)
!4024 = !DILocation(line: 342, column: 9, scope: !4010)
!4025 = !DILocation(line: 342, column: 16, scope: !4010)
!4026 = !DILocation(line: 342, column: 20, scope: !4010)
!4027 = !DILocation(line: 344, column: 26, scope: !4010)
!4028 = !DILocation(line: 344, column: 33, scope: !4010)
!4029 = !DILocation(line: 344, column: 9, scope: !4010)
!4030 = !DILocation(line: 344, column: 2, scope: !4010)
!4031 = !DILocation(line: 345, column: 1, scope: !4010)
!4032 = distinct !DISubprogram(name: "intel_th_driver_unregister", scope: !3, file: !3, line: 348, type: !4033, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{null, !3814}
!4035 = !DILocalVariable(name: "thdrv", arg: 1, scope: !4032, file: !3, line: 348, type: !3814)
!4036 = !DILocation(line: 348, column: 57, scope: !4032)
!4037 = !DILocation(line: 350, column: 21, scope: !4032)
!4038 = !DILocation(line: 350, column: 28, scope: !4032)
!4039 = !DILocation(line: 350, column: 2, scope: !4032)
!4040 = !DILocation(line: 351, column: 1, scope: !4032)
!4041 = distinct !DISubprogram(name: "intel_th_output_enable", scope: !3, file: !3, line: 698, type: !4042, scopeLine: 699, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!131, !4044, !7}
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intel_th", file: !100, line: 270, size: 2688, elements: !4046)
!4046 = !{!4047, !4048, !4052, !4053, !4054, !4055, !4059, !4063, !4064, !4065, !4066, !4067, !4068}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4045, file: !100, line: 271, baseType: !3332, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "thdev", scope: !4045, file: !100, line: 273, baseType: !4049, size: 640, offset: 64)
!4049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 640, elements: !4050)
!4050 = !{!4051}
!4051 = !DISubrange(count: 10)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "hub", scope: !4045, file: !100, line: 274, baseType: !135, size: 64, offset: 704)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "drvdata", scope: !4045, file: !100, line: 275, baseType: !3779, size: 64, offset: 768)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4045, file: !100, line: 277, baseType: !3954, size: 1536, offset: 832)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4045, file: !100, line: 278, baseType: !4056, size: 64, offset: 2368)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!131, !4044}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !4045, file: !100, line: 279, baseType: !4060, size: 64, offset: 2432)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{null, !4044}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "num_thdevs", scope: !4045, file: !100, line: 280, baseType: !7, size: 32, offset: 2496)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !4045, file: !100, line: 281, baseType: !7, size: 32, offset: 2528)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4045, file: !100, line: 282, baseType: !131, size: 32, offset: 2560)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "num_irqs", scope: !4045, file: !100, line: 283, baseType: !131, size: 32, offset: 2592)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4045, file: !100, line: 285, baseType: !131, size: 32, offset: 2624)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4045, file: !100, line: 286, baseType: !131, size: 32, offset: 2656)
!4069 = !DILocalVariable(name: "th", arg: 1, scope: !4041, file: !3, line: 698, type: !4044)
!4070 = !DILocation(line: 698, column: 45, scope: !4041)
!4071 = !DILocalVariable(name: "otype", arg: 2, scope: !4041, file: !3, line: 698, type: !7)
!4072 = !DILocation(line: 698, column: 62, scope: !4041)
!4073 = !DILocalVariable(name: "thdev", scope: !4041, file: !3, line: 700, type: !135)
!4074 = !DILocation(line: 700, column: 26, scope: !4041)
!4075 = !DILocalVariable(name: "src", scope: !4041, file: !3, line: 701, type: !131)
!4076 = !DILocation(line: 701, column: 6, scope: !4041)
!4077 = !DILocalVariable(name: "dst", scope: !4041, file: !3, line: 701, type: !131)
!4078 = !DILocation(line: 701, column: 15, scope: !4041)
!4079 = !DILocation(line: 703, column: 11, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 703, column: 2)
!4081 = !DILocation(line: 703, column: 20, scope: !4080)
!4082 = !DILocation(line: 703, column: 7, scope: !4080)
!4083 = !DILocation(line: 703, column: 25, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4080, file: !3, line: 703, column: 2)
!4085 = !DILocation(line: 703, column: 32, scope: !4084)
!4086 = !DILocation(line: 703, column: 36, scope: !4084)
!4087 = !DILocation(line: 703, column: 29, scope: !4084)
!4088 = !DILocation(line: 703, column: 2, scope: !4080)
!4089 = !DILocation(line: 704, column: 3, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4084, file: !3, line: 703, column: 62)
!4091 = !DILocation(line: 704, column: 10, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4093, file: !3, line: 704, column: 3)
!4093 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 704, column: 3)
!4094 = !DILocation(line: 704, column: 14, scope: !4092)
!4095 = !DILocation(line: 704, column: 3, scope: !4093)
!4096 = !DILocation(line: 705, column: 28, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4098, file: !3, line: 705, column: 8)
!4098 = distinct !DILexicalBlock(scope: !4092, file: !3, line: 704, column: 56)
!4099 = !DILocation(line: 705, column: 8, scope: !4097)
!4100 = !DILocation(line: 705, column: 33, scope: !4097)
!4101 = !DILocation(line: 705, column: 38, scope: !4097)
!4102 = !DILocation(line: 705, column: 8, scope: !4098)
!4103 = !DILocation(line: 706, column: 5, scope: !4097)
!4104 = !DILocation(line: 708, column: 28, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4098, file: !3, line: 708, column: 8)
!4106 = !DILocation(line: 708, column: 8, scope: !4105)
!4107 = !DILocation(line: 708, column: 33, scope: !4105)
!4108 = !DILocation(line: 708, column: 42, scope: !4105)
!4109 = !DILocation(line: 708, column: 39, scope: !4105)
!4110 = !DILocation(line: 708, column: 8, scope: !4098)
!4111 = !DILocation(line: 709, column: 5, scope: !4105)
!4112 = !DILocation(line: 711, column: 4, scope: !4098)
!4113 = !DILocation(line: 704, column: 52, scope: !4092)
!4114 = !DILocation(line: 704, column: 3, scope: !4092)
!4115 = distinct !{!4115, !4095, !4116}
!4116 = !DILocation(line: 712, column: 3, scope: !4093)
!4117 = !DILocation(line: 715, column: 7, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 715, column: 7)
!4119 = !DILocation(line: 715, column: 11, scope: !4118)
!4120 = !DILocation(line: 715, column: 7, scope: !4090)
!4121 = !DILocation(line: 716, column: 4, scope: !4118)
!4122 = !DILocation(line: 718, column: 3, scope: !4090)
!4123 = !DILocation(line: 718, column: 10, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 718, column: 3)
!4125 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 718, column: 3)
!4126 = !DILocation(line: 718, column: 16, scope: !4124)
!4127 = !DILocation(line: 718, column: 20, scope: !4124)
!4128 = !DILocation(line: 718, column: 14, scope: !4124)
!4129 = !DILocation(line: 718, column: 3, scope: !4125)
!4130 = !DILocation(line: 719, column: 8, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 719, column: 8)
!4132 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 718, column: 39)
!4133 = !DILocation(line: 719, column: 12, scope: !4131)
!4134 = !DILocation(line: 719, column: 18, scope: !4131)
!4135 = !DILocation(line: 719, column: 24, scope: !4131)
!4136 = !DILocation(line: 719, column: 29, scope: !4131)
!4137 = !DILocation(line: 719, column: 8, scope: !4132)
!4138 = !DILocation(line: 720, column: 5, scope: !4131)
!4139 = !DILocation(line: 722, column: 8, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 722, column: 8)
!4141 = !DILocation(line: 722, column: 12, scope: !4140)
!4142 = !DILocation(line: 722, column: 18, scope: !4140)
!4143 = !DILocation(line: 722, column: 24, scope: !4140)
!4144 = !DILocation(line: 722, column: 31, scope: !4140)
!4145 = !DILocation(line: 722, column: 39, scope: !4140)
!4146 = !DILocation(line: 722, column: 36, scope: !4140)
!4147 = !DILocation(line: 722, column: 8, scope: !4132)
!4148 = !DILocation(line: 723, column: 5, scope: !4140)
!4149 = !DILocation(line: 725, column: 4, scope: !4132)
!4150 = !DILocation(line: 718, column: 35, scope: !4124)
!4151 = !DILocation(line: 718, column: 3, scope: !4124)
!4152 = distinct !{!4152, !4129, !4153}
!4153 = !DILocation(line: 726, column: 3, scope: !4125)
!4154 = !DILocation(line: 732, column: 7, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 732, column: 7)
!4156 = !DILocation(line: 732, column: 14, scope: !4155)
!4157 = !DILocation(line: 732, column: 18, scope: !4155)
!4158 = !DILocation(line: 732, column: 11, scope: !4155)
!4159 = !DILocation(line: 732, column: 7, scope: !4090)
!4160 = !DILocation(line: 733, column: 4, scope: !4155)
!4161 = !DILocation(line: 734, column: 2, scope: !4090)
!4162 = !DILocation(line: 703, column: 51, scope: !4084)
!4163 = !DILocation(line: 703, column: 58, scope: !4084)
!4164 = !DILocation(line: 703, column: 2, scope: !4084)
!4165 = distinct !{!4165, !4088, !4166}
!4166 = !DILocation(line: 734, column: 2, scope: !4080)
!4167 = !DILocation(line: 736, column: 2, scope: !4041)
!4168 = !DILabel(scope: !4041, name: "found", file: !3, line: 738)
!4169 = !DILocation(line: 738, column: 1, scope: !4041)
!4170 = !DILocation(line: 739, column: 35, scope: !4041)
!4171 = !DILocation(line: 739, column: 60, scope: !4041)
!4172 = !DILocation(line: 739, column: 40, scope: !4041)
!4173 = !DILocation(line: 739, column: 10, scope: !4041)
!4174 = !DILocation(line: 739, column: 8, scope: !4041)
!4175 = !DILocation(line: 740, column: 13, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 740, column: 6)
!4177 = !DILocation(line: 740, column: 6, scope: !4176)
!4178 = !DILocation(line: 740, column: 6, scope: !4041)
!4179 = !DILocation(line: 741, column: 18, scope: !4176)
!4180 = !DILocation(line: 741, column: 10, scope: !4176)
!4181 = !DILocation(line: 741, column: 3, scope: !4176)
!4182 = !DILocation(line: 743, column: 32, scope: !4041)
!4183 = !DILocation(line: 743, column: 2, scope: !4041)
!4184 = !DILocation(line: 743, column: 6, scope: !4041)
!4185 = !DILocation(line: 743, column: 12, scope: !4041)
!4186 = !DILocation(line: 743, column: 16, scope: !4041)
!4187 = !DILocation(line: 743, column: 26, scope: !4041)
!4188 = !DILocation(line: 743, column: 30, scope: !4041)
!4189 = !DILocation(line: 745, column: 2, scope: !4041)
!4190 = !DILocation(line: 746, column: 1, scope: !4041)
!4191 = distinct !DISubprogram(name: "intel_th_subdevice_alloc", scope: !3, file: !3, line: 599, type: !4192, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!135, !4044, !4194}
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!4195 = !DILocalVariable(name: "th", arg: 1, scope: !4191, file: !3, line: 599, type: !4044)
!4196 = !DILocation(line: 599, column: 43, scope: !4191)
!4197 = !DILocalVariable(name: "subdev", arg: 2, scope: !4191, file: !3, line: 600, type: !4194)
!4198 = !DILocation(line: 600, column: 38, scope: !4191)
!4199 = !DILocalVariable(name: "thdev", scope: !4191, file: !3, line: 602, type: !135)
!4200 = !DILocation(line: 602, column: 26, scope: !4191)
!4201 = !DILocalVariable(name: "res", scope: !4191, file: !3, line: 603, type: !3954)
!4202 = !DILocation(line: 603, column: 18, scope: !4191)
!4203 = !DILocalVariable(name: "req", scope: !4191, file: !3, line: 604, type: !7)
!4204 = !DILocation(line: 604, column: 15, scope: !4191)
!4205 = !DILocalVariable(name: "r", scope: !4191, file: !3, line: 605, type: !131)
!4206 = !DILocation(line: 605, column: 6, scope: !4191)
!4207 = !DILocalVariable(name: "err", scope: !4191, file: !3, line: 605, type: !131)
!4208 = !DILocation(line: 605, column: 9, scope: !4191)
!4209 = !DILocation(line: 607, column: 32, scope: !4191)
!4210 = !DILocation(line: 607, column: 36, scope: !4191)
!4211 = !DILocation(line: 607, column: 44, scope: !4191)
!4212 = !DILocation(line: 607, column: 50, scope: !4191)
!4213 = !DILocation(line: 607, column: 58, scope: !4191)
!4214 = !DILocation(line: 608, column: 11, scope: !4191)
!4215 = !DILocation(line: 608, column: 19, scope: !4191)
!4216 = !DILocation(line: 607, column: 10, scope: !4191)
!4217 = !DILocation(line: 607, column: 8, scope: !4191)
!4218 = !DILocation(line: 609, column: 7, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 609, column: 6)
!4220 = !DILocation(line: 609, column: 6, scope: !4191)
!4221 = !DILocation(line: 610, column: 10, scope: !4219)
!4222 = !DILocation(line: 610, column: 3, scope: !4219)
!4223 = !DILocation(line: 612, column: 19, scope: !4191)
!4224 = !DILocation(line: 612, column: 23, scope: !4191)
!4225 = !DILocation(line: 612, column: 2, scope: !4191)
!4226 = !DILocation(line: 612, column: 9, scope: !4191)
!4227 = !DILocation(line: 612, column: 17, scope: !4191)
!4228 = !DILocation(line: 614, column: 2, scope: !4191)
!4229 = !DILocation(line: 614, column: 14, scope: !4191)
!4230 = !DILocation(line: 614, column: 22, scope: !4191)
!4231 = !DILocation(line: 615, column: 35, scope: !4191)
!4232 = !DILocation(line: 615, column: 43, scope: !4191)
!4233 = !DILocation(line: 615, column: 33, scope: !4191)
!4234 = !DILocation(line: 617, column: 9, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 617, column: 2)
!4236 = !DILocation(line: 617, column: 7, scope: !4235)
!4237 = !DILocation(line: 617, column: 14, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4235, file: !3, line: 617, column: 2)
!4239 = !DILocation(line: 617, column: 18, scope: !4238)
!4240 = !DILocation(line: 617, column: 26, scope: !4238)
!4241 = !DILocation(line: 617, column: 16, scope: !4238)
!4242 = !DILocation(line: 617, column: 2, scope: !4235)
!4243 = !DILocalVariable(name: "devres", scope: !4244, file: !3, line: 618, type: !3787)
!4244 = distinct !DILexicalBlock(scope: !4238, file: !3, line: 617, column: 37)
!4245 = !DILocation(line: 618, column: 20, scope: !4244)
!4246 = !DILocation(line: 618, column: 29, scope: !4244)
!4247 = !DILocation(line: 618, column: 33, scope: !4244)
!4248 = !DILocalVariable(name: "bar", scope: !4244, file: !3, line: 619, type: !131)
!4249 = !DILocation(line: 619, column: 7, scope: !4244)
!4250 = !DILocation(line: 626, column: 12, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 626, column: 7)
!4252 = !DILocation(line: 626, column: 8, scope: !4251)
!4253 = !DILocation(line: 626, column: 15, scope: !4251)
!4254 = !DILocation(line: 626, column: 19, scope: !4251)
!4255 = !DILocation(line: 626, column: 26, scope: !4251)
!4256 = !DILocation(line: 626, column: 22, scope: !4251)
!4257 = !DILocation(line: 626, column: 29, scope: !4251)
!4258 = !DILocation(line: 626, column: 35, scope: !4251)
!4259 = !DILocation(line: 626, column: 7, scope: !4244)
!4260 = !DILocation(line: 627, column: 14, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4251, file: !3, line: 626, column: 54)
!4262 = !DILocation(line: 627, column: 10, scope: !4261)
!4263 = !DILocation(line: 627, column: 17, scope: !4261)
!4264 = !DILocation(line: 627, column: 8, scope: !4261)
!4265 = !DILocation(line: 628, column: 8, scope: !4261)
!4266 = !DILocation(line: 629, column: 8, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 629, column: 8)
!4268 = !DILocation(line: 629, column: 15, scope: !4267)
!4269 = !DILocation(line: 629, column: 19, scope: !4267)
!4270 = !DILocation(line: 629, column: 12, scope: !4267)
!4271 = !DILocation(line: 629, column: 8, scope: !4261)
!4272 = !DILocation(line: 630, column: 5, scope: !4267)
!4273 = !DILocation(line: 631, column: 8, scope: !4261)
!4274 = !DILocation(line: 631, column: 4, scope: !4261)
!4275 = !DILocation(line: 631, column: 11, scope: !4261)
!4276 = !DILocation(line: 631, column: 17, scope: !4261)
!4277 = !DILocation(line: 632, column: 32, scope: !4261)
!4278 = !DILocation(line: 632, column: 39, scope: !4261)
!4279 = !DILocation(line: 632, column: 17, scope: !4261)
!4280 = !DILocation(line: 632, column: 45, scope: !4261)
!4281 = !DILocation(line: 632, column: 8, scope: !4261)
!4282 = !DILocation(line: 632, column: 4, scope: !4261)
!4283 = !DILocation(line: 632, column: 11, scope: !4261)
!4284 = !DILocation(line: 632, column: 15, scope: !4261)
!4285 = !DILocation(line: 633, column: 3, scope: !4261)
!4286 = !DILocation(line: 635, column: 11, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 635, column: 7)
!4288 = !DILocation(line: 635, column: 7, scope: !4287)
!4289 = !DILocation(line: 635, column: 14, scope: !4287)
!4290 = !DILocation(line: 635, column: 20, scope: !4287)
!4291 = !DILocation(line: 635, column: 7, scope: !4244)
!4292 = !DILocation(line: 636, column: 20, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4287, file: !3, line: 635, column: 38)
!4294 = !DILocation(line: 636, column: 27, scope: !4293)
!4295 = !DILocation(line: 636, column: 32, scope: !4293)
!4296 = !DILocation(line: 636, column: 8, scope: !4293)
!4297 = !DILocation(line: 636, column: 4, scope: !4293)
!4298 = !DILocation(line: 636, column: 11, scope: !4293)
!4299 = !DILocation(line: 636, column: 17, scope: !4293)
!4300 = !DILocation(line: 637, column: 18, scope: !4293)
!4301 = !DILocation(line: 637, column: 25, scope: !4293)
!4302 = !DILocation(line: 637, column: 30, scope: !4293)
!4303 = !DILocation(line: 637, column: 8, scope: !4293)
!4304 = !DILocation(line: 637, column: 4, scope: !4293)
!4305 = !DILocation(line: 637, column: 11, scope: !4293)
!4306 = !DILocation(line: 637, column: 15, scope: !4293)
!4307 = !DILocation(line: 641, column: 3, scope: !4293)
!4308 = !DILocation(line: 641, column: 18, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4287, file: !3, line: 641, column: 14)
!4310 = !DILocation(line: 641, column: 14, scope: !4309)
!4311 = !DILocation(line: 641, column: 21, scope: !4309)
!4312 = !DILocation(line: 641, column: 27, scope: !4309)
!4313 = !DILocation(line: 641, column: 14, scope: !4287)
!4314 = !DILocation(line: 646, column: 8, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4316, file: !3, line: 646, column: 8)
!4316 = distinct !DILexicalBlock(scope: !4309, file: !3, line: 641, column: 45)
!4317 = !DILocation(line: 646, column: 38, scope: !4315)
!4318 = !DILocation(line: 646, column: 41, scope: !4315)
!4319 = !DILocation(line: 646, column: 45, scope: !4315)
!4320 = !DILocation(line: 646, column: 49, scope: !4315)
!4321 = !DILocation(line: 646, column: 8, scope: !4316)
!4322 = !DILocation(line: 647, column: 20, scope: !4315)
!4323 = !DILocation(line: 647, column: 24, scope: !4315)
!4324 = !DILocation(line: 647, column: 9, scope: !4315)
!4325 = !DILocation(line: 647, column: 5, scope: !4315)
!4326 = !DILocation(line: 647, column: 12, scope: !4315)
!4327 = !DILocation(line: 647, column: 18, scope: !4315)
!4328 = !DILocation(line: 648, column: 3, scope: !4316)
!4329 = !DILocation(line: 649, column: 2, scope: !4244)
!4330 = !DILocation(line: 617, column: 33, scope: !4238)
!4331 = !DILocation(line: 617, column: 2, scope: !4238)
!4332 = distinct !{!4332, !4242, !4333}
!4333 = !DILocation(line: 649, column: 2, scope: !4235)
!4334 = !DILocation(line: 651, column: 38, scope: !4191)
!4335 = !DILocation(line: 651, column: 45, scope: !4191)
!4336 = !DILocation(line: 651, column: 50, scope: !4191)
!4337 = !DILocation(line: 651, column: 58, scope: !4191)
!4338 = !DILocation(line: 651, column: 8, scope: !4191)
!4339 = !DILocation(line: 651, column: 6, scope: !4191)
!4340 = !DILocation(line: 652, column: 6, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 652, column: 6)
!4342 = !DILocation(line: 652, column: 6, scope: !4191)
!4343 = !DILocation(line: 653, column: 3, scope: !4341)
!4344 = !DILocation(line: 655, column: 6, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 655, column: 6)
!4346 = !DILocation(line: 655, column: 14, scope: !4345)
!4347 = !DILocation(line: 655, column: 19, scope: !4345)
!4348 = !DILocation(line: 655, column: 6, scope: !4191)
!4349 = !DILocation(line: 656, column: 7, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 656, column: 7)
!4351 = distinct !DILexicalBlock(scope: !4345, file: !3, line: 655, column: 39)
!4352 = !DILocation(line: 656, column: 15, scope: !4350)
!4353 = !DILocation(line: 656, column: 7, scope: !4351)
!4354 = !DILocation(line: 657, column: 22, scope: !4350)
!4355 = !DILocation(line: 657, column: 4, scope: !4350)
!4356 = !DILocation(line: 657, column: 11, scope: !4350)
!4357 = !DILocation(line: 657, column: 15, scope: !4350)
!4358 = !DILocation(line: 657, column: 20, scope: !4350)
!4359 = !DILocation(line: 658, column: 24, scope: !4351)
!4360 = !DILocation(line: 658, column: 32, scope: !4351)
!4361 = !DILocation(line: 658, column: 3, scope: !4351)
!4362 = !DILocation(line: 658, column: 10, scope: !4351)
!4363 = !DILocation(line: 658, column: 17, scope: !4351)
!4364 = !DILocation(line: 658, column: 22, scope: !4351)
!4365 = !DILocation(line: 659, column: 3, scope: !4351)
!4366 = !DILocation(line: 659, column: 10, scope: !4351)
!4367 = !DILocation(line: 659, column: 17, scope: !4351)
!4368 = !DILocation(line: 659, column: 22, scope: !4351)
!4369 = !DILocation(line: 660, column: 30, scope: !4351)
!4370 = !DILocation(line: 660, column: 38, scope: !4351)
!4371 = !DILocation(line: 660, column: 3, scope: !4351)
!4372 = !DILocation(line: 660, column: 10, scope: !4351)
!4373 = !DILocation(line: 660, column: 17, scope: !4351)
!4374 = !DILocation(line: 660, column: 28, scope: !4351)
!4375 = !DILocation(line: 661, column: 2, scope: !4351)
!4376 = !DILocation(line: 661, column: 13, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4345, file: !3, line: 661, column: 13)
!4378 = !DILocation(line: 661, column: 21, scope: !4377)
!4379 = !DILocation(line: 661, column: 26, scope: !4377)
!4380 = !DILocation(line: 661, column: 13, scope: !4345)
!4381 = !DILocation(line: 663, column: 4, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4377, file: !3, line: 661, column: 46)
!4383 = !DILocation(line: 663, column: 46, scope: !4382)
!4384 = !DILocation(line: 662, column: 3, scope: !4382)
!4385 = !DILocation(line: 662, column: 10, scope: !4382)
!4386 = !DILocation(line: 662, column: 20, scope: !4382)
!4387 = !DILocation(line: 664, column: 13, scope: !4382)
!4388 = !DILocation(line: 664, column: 3, scope: !4382)
!4389 = !DILocation(line: 664, column: 7, scope: !4382)
!4390 = !DILocation(line: 664, column: 11, scope: !4382)
!4391 = !DILocation(line: 665, column: 2, scope: !4382)
!4392 = !DILocation(line: 667, column: 20, scope: !4191)
!4393 = !DILocation(line: 667, column: 27, scope: !4191)
!4394 = !DILocation(line: 667, column: 8, scope: !4191)
!4395 = !DILocation(line: 667, column: 6, scope: !4191)
!4396 = !DILocation(line: 668, column: 6, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 668, column: 6)
!4398 = !DILocation(line: 668, column: 6, scope: !4191)
!4399 = !DILocation(line: 669, column: 3, scope: !4397)
!4400 = !DILocation(line: 672, column: 6, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 672, column: 6)
!4402 = !DILocation(line: 672, column: 14, scope: !4401)
!4403 = !DILocation(line: 672, column: 19, scope: !4401)
!4404 = !DILocation(line: 672, column: 38, scope: !4401)
!4405 = !DILocation(line: 672, column: 42, scope: !4401)
!4406 = !DILocation(line: 672, column: 6, scope: !4191)
!4407 = !DILocation(line: 673, column: 37, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 672, column: 47)
!4409 = !DILocation(line: 673, column: 9, scope: !4408)
!4410 = !DILocation(line: 673, column: 7, scope: !4408)
!4411 = !DILocation(line: 674, column: 8, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 674, column: 7)
!4413 = !DILocation(line: 674, column: 7, scope: !4408)
!4414 = !DILocation(line: 675, column: 7, scope: !4412)
!4415 = !DILocation(line: 675, column: 4, scope: !4412)
!4416 = !DILocation(line: 676, column: 2, scope: !4408)
!4417 = !DILocation(line: 678, column: 9, scope: !4191)
!4418 = !DILocation(line: 678, column: 2, scope: !4191)
!4419 = !DILabel(scope: !4191, name: "fail_free_res", file: !3, line: 680)
!4420 = !DILocation(line: 680, column: 1, scope: !4191)
!4421 = !DILocation(line: 681, column: 8, scope: !4191)
!4422 = !DILocation(line: 681, column: 15, scope: !4191)
!4423 = !DILocation(line: 681, column: 2, scope: !4191)
!4424 = !DILabel(scope: !4191, name: "fail_put_device", file: !3, line: 683)
!4425 = !DILocation(line: 683, column: 1, scope: !4191)
!4426 = !DILocation(line: 684, column: 14, scope: !4191)
!4427 = !DILocation(line: 684, column: 21, scope: !4191)
!4428 = !DILocation(line: 684, column: 2, scope: !4191)
!4429 = !DILocation(line: 686, column: 17, scope: !4191)
!4430 = !DILocation(line: 686, column: 9, scope: !4191)
!4431 = !DILocation(line: 686, column: 2, scope: !4191)
!4432 = !DILocation(line: 687, column: 1, scope: !4191)
!4433 = distinct !DISubprogram(name: "IS_ERR", scope: !4434, file: !4434, line: 34, type: !4435, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4434 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!420, !2099}
!4437 = !DILocalVariable(name: "ptr", arg: 1, scope: !4433, file: !4434, line: 34, type: !2099)
!4438 = !DILocation(line: 34, column: 60, scope: !4433)
!4439 = !DILocation(line: 36, column: 9, scope: !4433)
!4440 = !DILocation(line: 36, column: 2, scope: !4433)
!4441 = distinct !DISubprogram(name: "PTR_ERR", scope: !4434, file: !4434, line: 29, type: !4442, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!239, !2099}
!4444 = !DILocalVariable(name: "ptr", arg: 1, scope: !4441, file: !4434, line: 29, type: !2099)
!4445 = !DILocation(line: 29, column: 61, scope: !4441)
!4446 = !DILocation(line: 31, column: 16, scope: !4441)
!4447 = !DILocation(line: 31, column: 9, scope: !4441)
!4448 = !DILocation(line: 31, column: 2, scope: !4441)
!4449 = distinct !DISubprogram(name: "intel_th_alloc", scope: !3, file: !3, line: 847, type: !4450, scopeLine: 849, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!4044, !3332, !3779, !3787, !7}
!4452 = !DILocalVariable(name: "dev", arg: 1, scope: !4449, file: !3, line: 847, type: !3332)
!4453 = !DILocation(line: 847, column: 31, scope: !4449)
!4454 = !DILocalVariable(name: "drvdata", arg: 2, scope: !4449, file: !3, line: 847, type: !3779)
!4455 = !DILocation(line: 847, column: 61, scope: !4449)
!4456 = !DILocalVariable(name: "devres", arg: 3, scope: !4449, file: !3, line: 848, type: !3787)
!4457 = !DILocation(line: 848, column: 26, scope: !4449)
!4458 = !DILocalVariable(name: "ndevres", arg: 4, scope: !4449, file: !3, line: 848, type: !7)
!4459 = !DILocation(line: 848, column: 47, scope: !4449)
!4460 = !DILocalVariable(name: "err", scope: !4449, file: !3, line: 850, type: !131)
!4461 = !DILocation(line: 850, column: 6, scope: !4449)
!4462 = !DILocalVariable(name: "r", scope: !4449, file: !3, line: 850, type: !131)
!4463 = !DILocation(line: 850, column: 11, scope: !4449)
!4464 = !DILocalVariable(name: "nr_mmios", scope: !4449, file: !3, line: 850, type: !131)
!4465 = !DILocation(line: 850, column: 14, scope: !4449)
!4466 = !DILocalVariable(name: "th", scope: !4449, file: !3, line: 851, type: !4044)
!4467 = !DILocation(line: 851, column: 19, scope: !4449)
!4468 = !DILocation(line: 853, column: 7, scope: !4449)
!4469 = !DILocation(line: 853, column: 5, scope: !4449)
!4470 = !DILocation(line: 854, column: 7, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4449, file: !3, line: 854, column: 6)
!4472 = !DILocation(line: 854, column: 6, scope: !4449)
!4473 = !DILocation(line: 855, column: 10, scope: !4471)
!4474 = !DILocation(line: 855, column: 3, scope: !4471)
!4475 = !DILocation(line: 857, column: 11, scope: !4449)
!4476 = !DILocation(line: 857, column: 2, scope: !4449)
!4477 = !DILocation(line: 857, column: 6, scope: !4449)
!4478 = !DILocation(line: 857, column: 9, scope: !4449)
!4479 = !DILocation(line: 858, column: 6, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4449, file: !3, line: 858, column: 6)
!4481 = !DILocation(line: 858, column: 10, scope: !4480)
!4482 = !DILocation(line: 858, column: 13, scope: !4480)
!4483 = !DILocation(line: 858, column: 6, scope: !4449)
!4484 = !DILocation(line: 859, column: 9, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 858, column: 18)
!4486 = !DILocation(line: 859, column: 13, scope: !4485)
!4487 = !DILocation(line: 859, column: 7, scope: !4485)
!4488 = !DILocation(line: 860, column: 3, scope: !4485)
!4489 = !DILocation(line: 863, column: 14, scope: !4449)
!4490 = !DILocation(line: 863, column: 2, scope: !4449)
!4491 = !DILocation(line: 863, column: 6, scope: !4449)
!4492 = !DILocation(line: 863, column: 12, scope: !4449)
!4493 = !DILocation(line: 865, column: 6, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4449, file: !3, line: 865, column: 6)
!4495 = !DILocation(line: 865, column: 10, scope: !4494)
!4496 = !DILocation(line: 865, column: 16, scope: !4494)
!4497 = !DILocation(line: 865, column: 6, scope: !4449)
!4498 = !DILocation(line: 866, column: 9, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 865, column: 21)
!4500 = !DILocation(line: 866, column: 13, scope: !4499)
!4501 = !DILocation(line: 866, column: 7, scope: !4499)
!4502 = !DILocation(line: 867, column: 3, scope: !4499)
!4503 = !DILocation(line: 869, column: 2, scope: !4449)
!4504 = !DILocation(line: 869, column: 6, scope: !4449)
!4505 = !DILocation(line: 869, column: 10, scope: !4449)
!4506 = !DILocation(line: 870, column: 12, scope: !4449)
!4507 = !DILocation(line: 870, column: 2, scope: !4449)
!4508 = !DILocation(line: 870, column: 6, scope: !4449)
!4509 = !DILocation(line: 870, column: 10, scope: !4449)
!4510 = !DILocation(line: 871, column: 16, scope: !4449)
!4511 = !DILocation(line: 871, column: 2, scope: !4449)
!4512 = !DILocation(line: 871, column: 6, scope: !4449)
!4513 = !DILocation(line: 871, column: 14, scope: !4449)
!4514 = !DILocation(line: 873, column: 9, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4449, file: !3, line: 873, column: 2)
!4516 = !DILocation(line: 873, column: 7, scope: !4515)
!4517 = !DILocation(line: 873, column: 14, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4515, file: !3, line: 873, column: 2)
!4519 = !DILocation(line: 873, column: 18, scope: !4518)
!4520 = !DILocation(line: 873, column: 16, scope: !4518)
!4521 = !DILocation(line: 873, column: 2, scope: !4515)
!4522 = !DILocation(line: 874, column: 11, scope: !4518)
!4523 = !DILocation(line: 874, column: 18, scope: !4518)
!4524 = !DILocation(line: 874, column: 21, scope: !4518)
!4525 = !DILocation(line: 874, column: 27, scope: !4518)
!4526 = !DILocation(line: 874, column: 3, scope: !4518)
!4527 = !DILocation(line: 876, column: 4, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4518, file: !3, line: 874, column: 51)
!4529 = !DILocation(line: 876, column: 8, scope: !4528)
!4530 = !DILocation(line: 876, column: 25, scope: !4528)
!4531 = !DILocation(line: 876, column: 31, scope: !4528)
!4532 = !DILocation(line: 876, column: 38, scope: !4528)
!4533 = !DILocation(line: 877, column: 4, scope: !4528)
!4534 = !DILocation(line: 879, column: 27, scope: !4528)
!4535 = !DILocation(line: 879, column: 32, scope: !4528)
!4536 = !DILocation(line: 879, column: 39, scope: !4528)
!4537 = !DILocation(line: 879, column: 42, scope: !4528)
!4538 = !DILocation(line: 881, column: 22, scope: !4528)
!4539 = !DILocation(line: 881, column: 13, scope: !4528)
!4540 = !DILocation(line: 881, column: 28, scope: !4528)
!4541 = !DILocation(line: 879, column: 10, scope: !4528)
!4542 = !DILocation(line: 879, column: 8, scope: !4528)
!4543 = !DILocation(line: 882, column: 8, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 882, column: 8)
!4545 = !DILocation(line: 882, column: 8, scope: !4528)
!4546 = !DILocation(line: 883, column: 5, scope: !4544)
!4547 = !DILocation(line: 885, column: 8, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 885, column: 8)
!4549 = !DILocation(line: 885, column: 12, scope: !4548)
!4550 = !DILocation(line: 885, column: 16, scope: !4548)
!4551 = !DILocation(line: 885, column: 8, scope: !4528)
!4552 = !DILocation(line: 886, column: 15, scope: !4548)
!4553 = !DILocation(line: 886, column: 22, scope: !4548)
!4554 = !DILocation(line: 886, column: 25, scope: !4548)
!4555 = !DILocation(line: 886, column: 5, scope: !4548)
!4556 = !DILocation(line: 886, column: 9, scope: !4548)
!4557 = !DILocation(line: 886, column: 13, scope: !4548)
!4558 = !DILocation(line: 887, column: 4, scope: !4528)
!4559 = !DILocation(line: 887, column: 8, scope: !4528)
!4560 = !DILocation(line: 887, column: 16, scope: !4528)
!4561 = !DILocation(line: 888, column: 4, scope: !4528)
!4562 = !DILocation(line: 890, column: 4, scope: !4528)
!4563 = !DILocation(line: 892, column: 4, scope: !4528)
!4564 = !DILocation(line: 893, column: 3, scope: !4528)
!4565 = !DILocation(line: 873, column: 28, scope: !4518)
!4566 = !DILocation(line: 873, column: 2, scope: !4518)
!4567 = distinct !{!4567, !4521, !4568}
!4568 = !DILocation(line: 893, column: 3, scope: !4515)
!4569 = !DILocation(line: 895, column: 22, scope: !4449)
!4570 = !DILocation(line: 895, column: 2, scope: !4449)
!4571 = !DILocation(line: 895, column: 6, scope: !4449)
!4572 = !DILocation(line: 895, column: 20, scope: !4449)
!4573 = !DILocation(line: 897, column: 18, scope: !4449)
!4574 = !DILocation(line: 897, column: 23, scope: !4449)
!4575 = !DILocation(line: 897, column: 2, scope: !4449)
!4576 = !DILocation(line: 899, column: 26, scope: !4449)
!4577 = !DILocation(line: 899, column: 2, scope: !4449)
!4578 = !DILocation(line: 900, column: 17, scope: !4449)
!4579 = !DILocation(line: 900, column: 2, scope: !4449)
!4580 = !DILocation(line: 901, column: 19, scope: !4449)
!4581 = !DILocation(line: 901, column: 2, scope: !4449)
!4582 = !DILocation(line: 903, column: 26, scope: !4449)
!4583 = !DILocation(line: 903, column: 8, scope: !4449)
!4584 = !DILocation(line: 903, column: 6, scope: !4449)
!4585 = !DILocation(line: 904, column: 6, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4449, file: !3, line: 904, column: 6)
!4587 = !DILocation(line: 904, column: 6, scope: !4449)
!4588 = !DILocation(line: 906, column: 17, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 904, column: 11)
!4590 = !DILocation(line: 906, column: 3, scope: !4589)
!4591 = !DILocation(line: 907, column: 18, scope: !4589)
!4592 = !DILocation(line: 907, column: 10, scope: !4589)
!4593 = !DILocation(line: 907, column: 3, scope: !4589)
!4594 = !DILocation(line: 910, column: 9, scope: !4449)
!4595 = !DILocation(line: 910, column: 2, scope: !4449)
!4596 = !DILabel(scope: !4449, name: "err_chrdev", file: !3, line: 912)
!4597 = !DILocation(line: 912, column: 1, scope: !4449)
!4598 = !DILocation(line: 913, column: 22, scope: !4449)
!4599 = !DILocation(line: 913, column: 26, scope: !4449)
!4600 = !DILocation(line: 913, column: 2, scope: !4449)
!4601 = !DILabel(scope: !4449, name: "err_ida", file: !3, line: 916)
!4602 = !DILocation(line: 916, column: 1, scope: !4449)
!4603 = !DILocation(line: 917, column: 2, scope: !4449)
!4604 = !DILabel(scope: !4449, name: "err_alloc", file: !3, line: 919)
!4605 = !DILocation(line: 919, column: 1, scope: !4449)
!4606 = !DILocation(line: 920, column: 8, scope: !4449)
!4607 = !DILocation(line: 920, column: 2, scope: !4449)
!4608 = !DILocation(line: 922, column: 17, scope: !4449)
!4609 = !DILocation(line: 922, column: 9, scope: !4449)
!4610 = !DILocation(line: 922, column: 2, scope: !4449)
!4611 = !DILocation(line: 923, column: 1, scope: !4449)
!4612 = distinct !DISubprogram(name: "kzalloc", scope: !124, file: !124, line: 662, type: !4613, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!134, !251, !132}
!4615 = !DILocalVariable(name: "s", arg: 1, scope: !4616, file: !124, line: 445, type: !910)
!4616 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !124, file: !124, line: 445, type: !4617, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!134, !910, !132, !251}
!4619 = !DILocation(line: 445, column: 72, scope: !4616, inlinedAt: !4620)
!4620 = distinct !DILocation(line: 552, column: 10, scope: !4621, inlinedAt: !4624)
!4621 = distinct !DILexicalBlock(scope: !4622, file: !124, line: 540, column: 34)
!4622 = distinct !DILexicalBlock(scope: !4623, file: !124, line: 540, column: 6)
!4623 = distinct !DISubprogram(name: "kmalloc", scope: !124, file: !124, line: 538, type: !4613, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4624 = distinct !DILocation(line: 664, column: 9, scope: !4612)
!4625 = !DILocalVariable(name: "flags", arg: 2, scope: !4616, file: !124, line: 446, type: !132)
!4626 = !DILocation(line: 446, column: 9, scope: !4616, inlinedAt: !4620)
!4627 = !DILocalVariable(name: "size", arg: 3, scope: !4616, file: !124, line: 446, type: !251)
!4628 = !DILocation(line: 446, column: 23, scope: !4616, inlinedAt: !4620)
!4629 = !DILocalVariable(name: "ret", scope: !4616, file: !124, line: 448, type: !134)
!4630 = !DILocation(line: 448, column: 8, scope: !4616, inlinedAt: !4620)
!4631 = !DILocalVariable(name: "flags", arg: 1, scope: !4632, file: !124, line: 318, type: !132)
!4632 = distinct !DISubprogram(name: "kmalloc_type", scope: !124, file: !124, line: 318, type: !4633, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!123, !132}
!4635 = !DILocation(line: 318, column: 67, scope: !4632, inlinedAt: !4636)
!4636 = distinct !DILocation(line: 553, column: 20, scope: !4621, inlinedAt: !4624)
!4637 = !DILocalVariable(name: "size", arg: 1, scope: !4638, file: !124, line: 346, type: !251)
!4638 = distinct !DISubprogram(name: "kmalloc_index", scope: !124, file: !124, line: 346, type: !4639, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!7, !251}
!4641 = !DILocation(line: 346, column: 58, scope: !4638, inlinedAt: !4642)
!4642 = distinct !DILocation(line: 547, column: 11, scope: !4621, inlinedAt: !4624)
!4643 = !DILocalVariable(name: "size", arg: 1, scope: !4644, file: !124, line: 472, type: !251)
!4644 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !124, file: !124, line: 472, type: !4645, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!134, !251, !132, !7}
!4647 = !DILocation(line: 472, column: 28, scope: !4644, inlinedAt: !4648)
!4648 = distinct !DILocation(line: 481, column: 9, scope: !4649, inlinedAt: !4650)
!4649 = distinct !DISubprogram(name: "kmalloc_large", scope: !124, file: !124, line: 478, type: !4613, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4650 = distinct !DILocation(line: 545, column: 11, scope: !4651, inlinedAt: !4624)
!4651 = distinct !DILexicalBlock(scope: !4621, file: !124, line: 544, column: 7)
!4652 = !DILocalVariable(name: "flags", arg: 2, scope: !4644, file: !124, line: 472, type: !132)
!4653 = !DILocation(line: 472, column: 40, scope: !4644, inlinedAt: !4648)
!4654 = !DILocalVariable(name: "order", arg: 3, scope: !4644, file: !124, line: 472, type: !7)
!4655 = !DILocation(line: 472, column: 60, scope: !4644, inlinedAt: !4648)
!4656 = !DILocalVariable(name: "size", arg: 1, scope: !4649, file: !124, line: 478, type: !251)
!4657 = !DILocation(line: 478, column: 51, scope: !4649, inlinedAt: !4650)
!4658 = !DILocalVariable(name: "flags", arg: 2, scope: !4649, file: !124, line: 478, type: !132)
!4659 = !DILocation(line: 478, column: 63, scope: !4649, inlinedAt: !4650)
!4660 = !DILocalVariable(name: "order", scope: !4649, file: !124, line: 480, type: !7)
!4661 = !DILocation(line: 480, column: 15, scope: !4649, inlinedAt: !4650)
!4662 = !DILocalVariable(name: "size", arg: 1, scope: !4623, file: !124, line: 538, type: !251)
!4663 = !DILocation(line: 538, column: 45, scope: !4623, inlinedAt: !4624)
!4664 = !DILocalVariable(name: "flags", arg: 2, scope: !4623, file: !124, line: 538, type: !132)
!4665 = !DILocation(line: 538, column: 57, scope: !4623, inlinedAt: !4624)
!4666 = !DILocalVariable(name: "index", scope: !4621, file: !124, line: 542, type: !7)
!4667 = !DILocation(line: 542, column: 16, scope: !4621, inlinedAt: !4624)
!4668 = !DILocalVariable(name: "size", arg: 1, scope: !4612, file: !124, line: 662, type: !251)
!4669 = !DILocation(line: 662, column: 36, scope: !4612)
!4670 = !DILocalVariable(name: "flags", arg: 2, scope: !4612, file: !124, line: 662, type: !132)
!4671 = !DILocation(line: 662, column: 48, scope: !4612)
!4672 = !DILocation(line: 664, column: 17, scope: !4612)
!4673 = !DILocation(line: 664, column: 23, scope: !4612)
!4674 = !DILocation(line: 664, column: 29, scope: !4612)
!4675 = !DILocation(line: 540, column: 27, scope: !4622, inlinedAt: !4624)
!4676 = !DILocation(line: 540, column: 6, scope: !4622, inlinedAt: !4624)
!4677 = !DILocation(line: 540, column: 6, scope: !4623, inlinedAt: !4624)
!4678 = !DILocation(line: 544, column: 7, scope: !4651, inlinedAt: !4624)
!4679 = !DILocation(line: 544, column: 12, scope: !4651, inlinedAt: !4624)
!4680 = !DILocation(line: 544, column: 7, scope: !4621, inlinedAt: !4624)
!4681 = !DILocation(line: 545, column: 25, scope: !4651, inlinedAt: !4624)
!4682 = !DILocation(line: 545, column: 31, scope: !4651, inlinedAt: !4624)
!4683 = !DILocation(line: 480, column: 33, scope: !4649, inlinedAt: !4650)
!4684 = !DILocation(line: 480, column: 23, scope: !4649, inlinedAt: !4650)
!4685 = !DILocation(line: 481, column: 29, scope: !4649, inlinedAt: !4650)
!4686 = !DILocation(line: 481, column: 35, scope: !4649, inlinedAt: !4650)
!4687 = !DILocation(line: 481, column: 42, scope: !4649, inlinedAt: !4650)
!4688 = !DILocation(line: 474, column: 23, scope: !4644, inlinedAt: !4648)
!4689 = !DILocation(line: 474, column: 29, scope: !4644, inlinedAt: !4648)
!4690 = !DILocation(line: 474, column: 36, scope: !4644, inlinedAt: !4648)
!4691 = !DILocation(line: 474, column: 9, scope: !4644, inlinedAt: !4648)
!4692 = !DILocation(line: 545, column: 4, scope: !4651, inlinedAt: !4624)
!4693 = !DILocation(line: 547, column: 25, scope: !4621, inlinedAt: !4624)
!4694 = !DILocation(line: 348, column: 7, scope: !4695, inlinedAt: !4642)
!4695 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 348, column: 6)
!4696 = !DILocation(line: 348, column: 6, scope: !4638, inlinedAt: !4642)
!4697 = !DILocation(line: 349, column: 3, scope: !4695, inlinedAt: !4642)
!4698 = !DILocation(line: 351, column: 6, scope: !4699, inlinedAt: !4642)
!4699 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 351, column: 6)
!4700 = !DILocation(line: 351, column: 11, scope: !4699, inlinedAt: !4642)
!4701 = !DILocation(line: 351, column: 6, scope: !4638, inlinedAt: !4642)
!4702 = !DILocation(line: 352, column: 3, scope: !4699, inlinedAt: !4642)
!4703 = !DILocation(line: 354, column: 32, scope: !4704, inlinedAt: !4642)
!4704 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 354, column: 6)
!4705 = !DILocation(line: 354, column: 37, scope: !4704, inlinedAt: !4642)
!4706 = !DILocation(line: 354, column: 42, scope: !4704, inlinedAt: !4642)
!4707 = !DILocation(line: 354, column: 45, scope: !4704, inlinedAt: !4642)
!4708 = !DILocation(line: 354, column: 50, scope: !4704, inlinedAt: !4642)
!4709 = !DILocation(line: 354, column: 6, scope: !4638, inlinedAt: !4642)
!4710 = !DILocation(line: 355, column: 3, scope: !4704, inlinedAt: !4642)
!4711 = !DILocation(line: 356, column: 32, scope: !4712, inlinedAt: !4642)
!4712 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 356, column: 6)
!4713 = !DILocation(line: 356, column: 37, scope: !4712, inlinedAt: !4642)
!4714 = !DILocation(line: 356, column: 43, scope: !4712, inlinedAt: !4642)
!4715 = !DILocation(line: 356, column: 46, scope: !4712, inlinedAt: !4642)
!4716 = !DILocation(line: 356, column: 51, scope: !4712, inlinedAt: !4642)
!4717 = !DILocation(line: 356, column: 6, scope: !4638, inlinedAt: !4642)
!4718 = !DILocation(line: 357, column: 3, scope: !4712, inlinedAt: !4642)
!4719 = !DILocation(line: 358, column: 6, scope: !4720, inlinedAt: !4642)
!4720 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 358, column: 6)
!4721 = !DILocation(line: 358, column: 11, scope: !4720, inlinedAt: !4642)
!4722 = !DILocation(line: 358, column: 6, scope: !4638, inlinedAt: !4642)
!4723 = !DILocation(line: 358, column: 26, scope: !4720, inlinedAt: !4642)
!4724 = !DILocation(line: 359, column: 6, scope: !4725, inlinedAt: !4642)
!4725 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 359, column: 6)
!4726 = !DILocation(line: 359, column: 11, scope: !4725, inlinedAt: !4642)
!4727 = !DILocation(line: 359, column: 6, scope: !4638, inlinedAt: !4642)
!4728 = !DILocation(line: 359, column: 26, scope: !4725, inlinedAt: !4642)
!4729 = !DILocation(line: 360, column: 6, scope: !4730, inlinedAt: !4642)
!4730 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 360, column: 6)
!4731 = !DILocation(line: 360, column: 11, scope: !4730, inlinedAt: !4642)
!4732 = !DILocation(line: 360, column: 6, scope: !4638, inlinedAt: !4642)
!4733 = !DILocation(line: 360, column: 26, scope: !4730, inlinedAt: !4642)
!4734 = !DILocation(line: 361, column: 6, scope: !4735, inlinedAt: !4642)
!4735 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 361, column: 6)
!4736 = !DILocation(line: 361, column: 11, scope: !4735, inlinedAt: !4642)
!4737 = !DILocation(line: 361, column: 6, scope: !4638, inlinedAt: !4642)
!4738 = !DILocation(line: 361, column: 26, scope: !4735, inlinedAt: !4642)
!4739 = !DILocation(line: 362, column: 6, scope: !4740, inlinedAt: !4642)
!4740 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 362, column: 6)
!4741 = !DILocation(line: 362, column: 11, scope: !4740, inlinedAt: !4642)
!4742 = !DILocation(line: 362, column: 6, scope: !4638, inlinedAt: !4642)
!4743 = !DILocation(line: 362, column: 26, scope: !4740, inlinedAt: !4642)
!4744 = !DILocation(line: 363, column: 6, scope: !4745, inlinedAt: !4642)
!4745 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 363, column: 6)
!4746 = !DILocation(line: 363, column: 11, scope: !4745, inlinedAt: !4642)
!4747 = !DILocation(line: 363, column: 6, scope: !4638, inlinedAt: !4642)
!4748 = !DILocation(line: 363, column: 26, scope: !4745, inlinedAt: !4642)
!4749 = !DILocation(line: 364, column: 6, scope: !4750, inlinedAt: !4642)
!4750 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 364, column: 6)
!4751 = !DILocation(line: 364, column: 11, scope: !4750, inlinedAt: !4642)
!4752 = !DILocation(line: 364, column: 6, scope: !4638, inlinedAt: !4642)
!4753 = !DILocation(line: 364, column: 26, scope: !4750, inlinedAt: !4642)
!4754 = !DILocation(line: 365, column: 6, scope: !4755, inlinedAt: !4642)
!4755 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 365, column: 6)
!4756 = !DILocation(line: 365, column: 11, scope: !4755, inlinedAt: !4642)
!4757 = !DILocation(line: 365, column: 6, scope: !4638, inlinedAt: !4642)
!4758 = !DILocation(line: 365, column: 26, scope: !4755, inlinedAt: !4642)
!4759 = !DILocation(line: 366, column: 6, scope: !4760, inlinedAt: !4642)
!4760 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 366, column: 6)
!4761 = !DILocation(line: 366, column: 11, scope: !4760, inlinedAt: !4642)
!4762 = !DILocation(line: 366, column: 6, scope: !4638, inlinedAt: !4642)
!4763 = !DILocation(line: 366, column: 26, scope: !4760, inlinedAt: !4642)
!4764 = !DILocation(line: 367, column: 6, scope: !4765, inlinedAt: !4642)
!4765 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 367, column: 6)
!4766 = !DILocation(line: 367, column: 11, scope: !4765, inlinedAt: !4642)
!4767 = !DILocation(line: 367, column: 6, scope: !4638, inlinedAt: !4642)
!4768 = !DILocation(line: 367, column: 26, scope: !4765, inlinedAt: !4642)
!4769 = !DILocation(line: 368, column: 6, scope: !4770, inlinedAt: !4642)
!4770 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 368, column: 6)
!4771 = !DILocation(line: 368, column: 11, scope: !4770, inlinedAt: !4642)
!4772 = !DILocation(line: 368, column: 6, scope: !4638, inlinedAt: !4642)
!4773 = !DILocation(line: 368, column: 26, scope: !4770, inlinedAt: !4642)
!4774 = !DILocation(line: 369, column: 6, scope: !4775, inlinedAt: !4642)
!4775 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 369, column: 6)
!4776 = !DILocation(line: 369, column: 11, scope: !4775, inlinedAt: !4642)
!4777 = !DILocation(line: 369, column: 6, scope: !4638, inlinedAt: !4642)
!4778 = !DILocation(line: 369, column: 26, scope: !4775, inlinedAt: !4642)
!4779 = !DILocation(line: 370, column: 6, scope: !4780, inlinedAt: !4642)
!4780 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 370, column: 6)
!4781 = !DILocation(line: 370, column: 11, scope: !4780, inlinedAt: !4642)
!4782 = !DILocation(line: 370, column: 6, scope: !4638, inlinedAt: !4642)
!4783 = !DILocation(line: 370, column: 26, scope: !4780, inlinedAt: !4642)
!4784 = !DILocation(line: 371, column: 6, scope: !4785, inlinedAt: !4642)
!4785 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 371, column: 6)
!4786 = !DILocation(line: 371, column: 11, scope: !4785, inlinedAt: !4642)
!4787 = !DILocation(line: 371, column: 6, scope: !4638, inlinedAt: !4642)
!4788 = !DILocation(line: 371, column: 26, scope: !4785, inlinedAt: !4642)
!4789 = !DILocation(line: 372, column: 6, scope: !4790, inlinedAt: !4642)
!4790 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 372, column: 6)
!4791 = !DILocation(line: 372, column: 11, scope: !4790, inlinedAt: !4642)
!4792 = !DILocation(line: 372, column: 6, scope: !4638, inlinedAt: !4642)
!4793 = !DILocation(line: 372, column: 26, scope: !4790, inlinedAt: !4642)
!4794 = !DILocation(line: 373, column: 6, scope: !4795, inlinedAt: !4642)
!4795 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 373, column: 6)
!4796 = !DILocation(line: 373, column: 11, scope: !4795, inlinedAt: !4642)
!4797 = !DILocation(line: 373, column: 6, scope: !4638, inlinedAt: !4642)
!4798 = !DILocation(line: 373, column: 26, scope: !4795, inlinedAt: !4642)
!4799 = !DILocation(line: 374, column: 6, scope: !4800, inlinedAt: !4642)
!4800 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 374, column: 6)
!4801 = !DILocation(line: 374, column: 11, scope: !4800, inlinedAt: !4642)
!4802 = !DILocation(line: 374, column: 6, scope: !4638, inlinedAt: !4642)
!4803 = !DILocation(line: 374, column: 26, scope: !4800, inlinedAt: !4642)
!4804 = !DILocation(line: 375, column: 6, scope: !4805, inlinedAt: !4642)
!4805 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 375, column: 6)
!4806 = !DILocation(line: 375, column: 11, scope: !4805, inlinedAt: !4642)
!4807 = !DILocation(line: 375, column: 6, scope: !4638, inlinedAt: !4642)
!4808 = !DILocation(line: 375, column: 27, scope: !4805, inlinedAt: !4642)
!4809 = !DILocation(line: 376, column: 6, scope: !4810, inlinedAt: !4642)
!4810 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 376, column: 6)
!4811 = !DILocation(line: 376, column: 11, scope: !4810, inlinedAt: !4642)
!4812 = !DILocation(line: 376, column: 6, scope: !4638, inlinedAt: !4642)
!4813 = !DILocation(line: 376, column: 32, scope: !4810, inlinedAt: !4642)
!4814 = !DILocation(line: 377, column: 6, scope: !4815, inlinedAt: !4642)
!4815 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 377, column: 6)
!4816 = !DILocation(line: 377, column: 11, scope: !4815, inlinedAt: !4642)
!4817 = !DILocation(line: 377, column: 6, scope: !4638, inlinedAt: !4642)
!4818 = !DILocation(line: 377, column: 32, scope: !4815, inlinedAt: !4642)
!4819 = !DILocation(line: 378, column: 6, scope: !4820, inlinedAt: !4642)
!4820 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 378, column: 6)
!4821 = !DILocation(line: 378, column: 11, scope: !4820, inlinedAt: !4642)
!4822 = !DILocation(line: 378, column: 6, scope: !4638, inlinedAt: !4642)
!4823 = !DILocation(line: 378, column: 32, scope: !4820, inlinedAt: !4642)
!4824 = !DILocation(line: 379, column: 6, scope: !4825, inlinedAt: !4642)
!4825 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 379, column: 6)
!4826 = !DILocation(line: 379, column: 11, scope: !4825, inlinedAt: !4642)
!4827 = !DILocation(line: 379, column: 6, scope: !4638, inlinedAt: !4642)
!4828 = !DILocation(line: 379, column: 33, scope: !4825, inlinedAt: !4642)
!4829 = !DILocation(line: 380, column: 6, scope: !4830, inlinedAt: !4642)
!4830 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 380, column: 6)
!4831 = !DILocation(line: 380, column: 11, scope: !4830, inlinedAt: !4642)
!4832 = !DILocation(line: 380, column: 6, scope: !4638, inlinedAt: !4642)
!4833 = !DILocation(line: 380, column: 33, scope: !4830, inlinedAt: !4642)
!4834 = !DILocation(line: 381, column: 6, scope: !4835, inlinedAt: !4642)
!4835 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 381, column: 6)
!4836 = !DILocation(line: 381, column: 11, scope: !4835, inlinedAt: !4642)
!4837 = !DILocation(line: 381, column: 6, scope: !4638, inlinedAt: !4642)
!4838 = !DILocation(line: 381, column: 33, scope: !4835, inlinedAt: !4642)
!4839 = !DILocation(line: 382, column: 2, scope: !4840, inlinedAt: !4642)
!4840 = distinct !DILexicalBlock(scope: !4841, file: !124, line: 382, column: 2)
!4841 = distinct !DILexicalBlock(scope: !4638, file: !124, line: 382, column: 2)
!4842 = !{i32 -2142585323, i32 -2142585294, i32 -2142585248, i32 -2142585190, i32 -2142585136, i32 -2142585082, i32 -2142585027, i32 -2142584996}
!4843 = !DILocation(line: 382, column: 2, scope: !4844, inlinedAt: !4642)
!4844 = distinct !DILexicalBlock(scope: !4845, file: !124, line: 382, column: 2)
!4845 = distinct !DILexicalBlock(scope: !4841, file: !124, line: 382, column: 2)
!4846 = !{i32 -2142584553, i32 -2142584546, i32 -2142584492, i32 -2142584461, i32 -2142584431}
!4847 = !DILocation(line: 382, column: 2, scope: !4845, inlinedAt: !4642)
!4848 = !DILocation(line: 386, column: 1, scope: !4638, inlinedAt: !4642)
!4849 = !DILocation(line: 547, column: 9, scope: !4621, inlinedAt: !4624)
!4850 = !DILocation(line: 549, column: 8, scope: !4851, inlinedAt: !4624)
!4851 = distinct !DILexicalBlock(scope: !4621, file: !124, line: 549, column: 7)
!4852 = !DILocation(line: 549, column: 7, scope: !4621, inlinedAt: !4624)
!4853 = !DILocation(line: 550, column: 4, scope: !4851, inlinedAt: !4624)
!4854 = !DILocation(line: 553, column: 33, scope: !4621, inlinedAt: !4624)
!4855 = !DILocation(line: 325, column: 6, scope: !4856, inlinedAt: !4636)
!4856 = distinct !DILexicalBlock(scope: !4632, file: !124, line: 325, column: 6)
!4857 = !DILocation(line: 325, column: 6, scope: !4632, inlinedAt: !4636)
!4858 = !DILocation(line: 326, column: 3, scope: !4856, inlinedAt: !4636)
!4859 = !DILocation(line: 332, column: 9, scope: !4632, inlinedAt: !4636)
!4860 = !DILocation(line: 332, column: 15, scope: !4632, inlinedAt: !4636)
!4861 = !DILocation(line: 332, column: 2, scope: !4632, inlinedAt: !4636)
!4862 = !DILocation(line: 336, column: 1, scope: !4632, inlinedAt: !4636)
!4863 = !DILocation(line: 553, column: 5, scope: !4621, inlinedAt: !4624)
!4864 = !DILocation(line: 553, column: 41, scope: !4621, inlinedAt: !4624)
!4865 = !DILocation(line: 554, column: 5, scope: !4621, inlinedAt: !4624)
!4866 = !DILocation(line: 554, column: 12, scope: !4621, inlinedAt: !4624)
!4867 = !DILocation(line: 448, column: 31, scope: !4616, inlinedAt: !4620)
!4868 = !DILocation(line: 448, column: 34, scope: !4616, inlinedAt: !4620)
!4869 = !DILocation(line: 448, column: 14, scope: !4616, inlinedAt: !4620)
!4870 = !DILocation(line: 450, column: 22, scope: !4616, inlinedAt: !4620)
!4871 = !DILocation(line: 450, column: 25, scope: !4616, inlinedAt: !4620)
!4872 = !DILocation(line: 450, column: 30, scope: !4616, inlinedAt: !4620)
!4873 = !DILocation(line: 450, column: 36, scope: !4616, inlinedAt: !4620)
!4874 = !DILocation(line: 450, column: 8, scope: !4616, inlinedAt: !4620)
!4875 = !DILocation(line: 450, column: 6, scope: !4616, inlinedAt: !4620)
!4876 = !DILocation(line: 451, column: 9, scope: !4616, inlinedAt: !4620)
!4877 = !DILocation(line: 552, column: 3, scope: !4621, inlinedAt: !4624)
!4878 = !DILocation(line: 557, column: 19, scope: !4623, inlinedAt: !4624)
!4879 = !DILocation(line: 557, column: 25, scope: !4623, inlinedAt: !4624)
!4880 = !DILocation(line: 557, column: 9, scope: !4623, inlinedAt: !4624)
!4881 = !DILocation(line: 557, column: 2, scope: !4623, inlinedAt: !4624)
!4882 = !DILocation(line: 558, column: 1, scope: !4623, inlinedAt: !4624)
!4883 = !DILocation(line: 664, column: 2, scope: !4612)
!4884 = distinct !DISubprogram(name: "ERR_PTR", scope: !4434, file: !4434, line: 24, type: !4885, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{!134, !239}
!4887 = !DILocalVariable(name: "error", arg: 1, scope: !4884, file: !4434, line: 24, type: !239)
!4888 = !DILocation(line: 24, column: 48, scope: !4884)
!4889 = !DILocation(line: 26, column: 18, scope: !4884)
!4890 = !DILocation(line: 26, column: 9, scope: !4884)
!4891 = !DILocation(line: 26, column: 2, scope: !4884)
!4892 = distinct !DISubprogram(name: "devm_request_irq", scope: !4893, file: !4893, line: 203, type: !4894, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4893 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4894 = !DISubroutineType(types: !4895)
!4895 = !{!131, !3332, !7, !4896, !254, !146, !134}
!4896 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !4893, line: 92, baseType: !4897)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!3845, !131, !134}
!4900 = !DILocalVariable(name: "dev", arg: 1, scope: !4892, file: !4893, line: 203, type: !3332)
!4901 = !DILocation(line: 203, column: 33, scope: !4892)
!4902 = !DILocalVariable(name: "irq", arg: 2, scope: !4892, file: !4893, line: 203, type: !7)
!4903 = !DILocation(line: 203, column: 51, scope: !4892)
!4904 = !DILocalVariable(name: "handler", arg: 3, scope: !4892, file: !4893, line: 203, type: !4896)
!4905 = !DILocation(line: 203, column: 70, scope: !4892)
!4906 = !DILocalVariable(name: "irqflags", arg: 4, scope: !4892, file: !4893, line: 204, type: !254)
!4907 = !DILocation(line: 204, column: 18, scope: !4892)
!4908 = !DILocalVariable(name: "devname", arg: 5, scope: !4892, file: !4893, line: 204, type: !146)
!4909 = !DILocation(line: 204, column: 40, scope: !4892)
!4910 = !DILocalVariable(name: "dev_id", arg: 6, scope: !4892, file: !4893, line: 204, type: !134)
!4911 = !DILocation(line: 204, column: 55, scope: !4892)
!4912 = !DILocation(line: 206, column: 35, scope: !4892)
!4913 = !DILocation(line: 206, column: 40, scope: !4892)
!4914 = !DILocation(line: 206, column: 45, scope: !4892)
!4915 = !DILocation(line: 206, column: 60, scope: !4892)
!4916 = !DILocation(line: 207, column: 7, scope: !4892)
!4917 = !DILocation(line: 207, column: 16, scope: !4892)
!4918 = !DILocation(line: 206, column: 9, scope: !4892)
!4919 = !DILocation(line: 206, column: 2, scope: !4892)
!4920 = distinct !DISubprogram(name: "intel_th_irq", scope: !3, file: !3, line: 821, type: !4898, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4921 = !DILocalVariable(name: "irq", arg: 1, scope: !4920, file: !3, line: 821, type: !131)
!4922 = !DILocation(line: 821, column: 37, scope: !4920)
!4923 = !DILocalVariable(name: "data", arg: 2, scope: !4920, file: !3, line: 821, type: !134)
!4924 = !DILocation(line: 821, column: 48, scope: !4920)
!4925 = !DILocalVariable(name: "th", scope: !4920, file: !3, line: 823, type: !4044)
!4926 = !DILocation(line: 823, column: 19, scope: !4920)
!4927 = !DILocation(line: 823, column: 24, scope: !4920)
!4928 = !DILocalVariable(name: "ret", scope: !4920, file: !3, line: 824, type: !3845)
!4929 = !DILocation(line: 824, column: 14, scope: !4920)
!4930 = !DILocalVariable(name: "d", scope: !4920, file: !3, line: 825, type: !3814)
!4931 = !DILocation(line: 825, column: 26, scope: !4920)
!4932 = !DILocalVariable(name: "i", scope: !4920, file: !3, line: 826, type: !131)
!4933 = !DILocation(line: 826, column: 6, scope: !4920)
!4934 = !DILocation(line: 828, column: 9, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 828, column: 2)
!4936 = !DILocation(line: 828, column: 7, scope: !4935)
!4937 = !DILocation(line: 828, column: 14, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4935, file: !3, line: 828, column: 2)
!4939 = !DILocation(line: 828, column: 18, scope: !4938)
!4940 = !DILocation(line: 828, column: 22, scope: !4938)
!4941 = !DILocation(line: 828, column: 16, scope: !4938)
!4942 = !DILocation(line: 828, column: 2, scope: !4935)
!4943 = !DILocation(line: 829, column: 7, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4945, file: !3, line: 829, column: 7)
!4945 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 828, column: 39)
!4946 = !DILocation(line: 829, column: 11, scope: !4944)
!4947 = !DILocation(line: 829, column: 17, scope: !4944)
!4948 = !DILocation(line: 829, column: 21, scope: !4944)
!4949 = !DILocation(line: 829, column: 26, scope: !4944)
!4950 = !DILocation(line: 829, column: 7, scope: !4945)
!4951 = !DILocation(line: 830, column: 4, scope: !4944)
!4952 = !DILocalVariable(name: "__mptr", scope: !4953, file: !3, line: 832, type: !134)
!4953 = distinct !DILexicalBlock(scope: !4945, file: !3, line: 832, column: 7)
!4954 = !DILocation(line: 832, column: 7, scope: !4953)
!4955 = !DILocation(line: 832, column: 7, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4953, file: !3, line: 832, column: 7)
!4957 = !DILocation(line: 832, column: 5, scope: !4945)
!4958 = !DILocation(line: 833, column: 7, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4945, file: !3, line: 833, column: 7)
!4960 = !DILocation(line: 833, column: 9, scope: !4959)
!4961 = !DILocation(line: 833, column: 12, scope: !4959)
!4962 = !DILocation(line: 833, column: 15, scope: !4959)
!4963 = !DILocation(line: 833, column: 7, scope: !4945)
!4964 = !DILocation(line: 834, column: 11, scope: !4959)
!4965 = !DILocation(line: 834, column: 14, scope: !4959)
!4966 = !DILocation(line: 834, column: 18, scope: !4959)
!4967 = !DILocation(line: 834, column: 22, scope: !4959)
!4968 = !DILocation(line: 834, column: 28, scope: !4959)
!4969 = !DILocation(line: 834, column: 8, scope: !4959)
!4970 = !DILocation(line: 834, column: 4, scope: !4959)
!4971 = !DILocation(line: 835, column: 2, scope: !4945)
!4972 = !DILocation(line: 828, column: 35, scope: !4938)
!4973 = !DILocation(line: 828, column: 2, scope: !4938)
!4974 = distinct !{!4974, !4942, !4975}
!4975 = !DILocation(line: 835, column: 2, scope: !4935)
!4976 = !DILocation(line: 837, column: 9, scope: !4920)
!4977 = !DILocation(line: 837, column: 2, scope: !4920)
!4978 = distinct !DISubprogram(name: "dev_name", scope: !67, file: !67, line: 609, type: !4979, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!146, !3669}
!4981 = !DILocalVariable(name: "dev", arg: 1, scope: !4978, file: !67, line: 609, type: !3669)
!4982 = !DILocation(line: 609, column: 57, scope: !4978)
!4983 = !DILocation(line: 612, column: 6, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4978, file: !67, line: 612, column: 6)
!4985 = !DILocation(line: 612, column: 11, scope: !4984)
!4986 = !DILocation(line: 612, column: 6, scope: !4978)
!4987 = !DILocation(line: 613, column: 10, scope: !4984)
!4988 = !DILocation(line: 613, column: 15, scope: !4984)
!4989 = !DILocation(line: 613, column: 3, scope: !4984)
!4990 = !DILocation(line: 615, column: 23, scope: !4978)
!4991 = !DILocation(line: 615, column: 28, scope: !4978)
!4992 = !DILocation(line: 615, column: 9, scope: !4978)
!4993 = !DILocation(line: 615, column: 2, scope: !4978)
!4994 = !DILocation(line: 616, column: 1, scope: !4978)
!4995 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !67, file: !67, line: 660, type: !4996, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{null, !3332, !134}
!4998 = !DILocalVariable(name: "dev", arg: 1, scope: !4995, file: !67, line: 660, type: !3332)
!4999 = !DILocation(line: 660, column: 51, scope: !4995)
!5000 = !DILocalVariable(name: "data", arg: 2, scope: !4995, file: !67, line: 660, type: !134)
!5001 = !DILocation(line: 660, column: 62, scope: !4995)
!5002 = !DILocation(line: 662, column: 21, scope: !4995)
!5003 = !DILocation(line: 662, column: 2, scope: !4995)
!5004 = !DILocation(line: 662, column: 7, scope: !4995)
!5005 = !DILocation(line: 662, column: 19, scope: !4995)
!5006 = !DILocation(line: 663, column: 1, scope: !4995)
!5007 = distinct !DISubprogram(name: "pm_runtime_put", scope: !5008, file: !5008, line: 417, type: !3364, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5008 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/lizy2001/genbc/linux")
!5009 = !DILocalVariable(name: "dev", arg: 1, scope: !5007, file: !5008, line: 417, type: !3332)
!5010 = !DILocation(line: 417, column: 49, scope: !5007)
!5011 = !DILocation(line: 419, column: 27, scope: !5007)
!5012 = !DILocation(line: 419, column: 9, scope: !5007)
!5013 = !DILocation(line: 419, column: 2, scope: !5007)
!5014 = distinct !DISubprogram(name: "intel_th_populate", scope: !3, file: !3, line: 749, type: !4057, scopeLine: 750, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5015 = !DILocalVariable(name: "th", arg: 1, scope: !5014, file: !3, line: 749, type: !4044)
!5016 = !DILocation(line: 749, column: 47, scope: !5014)
!5017 = !DILocalVariable(name: "src", scope: !5014, file: !3, line: 751, type: !131)
!5018 = !DILocation(line: 751, column: 6, scope: !5014)
!5019 = !DILocation(line: 754, column: 11, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 754, column: 2)
!5021 = !DILocation(line: 754, column: 7, scope: !5020)
!5022 = !DILocation(line: 754, column: 16, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5020, file: !3, line: 754, column: 2)
!5024 = !DILocation(line: 754, column: 20, scope: !5023)
!5025 = !DILocation(line: 754, column: 2, scope: !5020)
!5026 = !DILocalVariable(name: "subdev", scope: !5027, file: !3, line: 755, type: !4194)
!5027 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 754, column: 62)
!5028 = !DILocation(line: 755, column: 36, scope: !5027)
!5029 = !DILocation(line: 756, column: 25, scope: !5027)
!5030 = !DILocation(line: 756, column: 5, scope: !5027)
!5031 = !DILocalVariable(name: "thdev", scope: !5027, file: !3, line: 757, type: !135)
!5032 = !DILocation(line: 757, column: 27, scope: !5027)
!5033 = !DILocation(line: 760, column: 8, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5027, file: !3, line: 760, column: 7)
!5035 = !DILocation(line: 760, column: 41, scope: !5034)
!5036 = !DILocation(line: 760, column: 44, scope: !5034)
!5037 = !DILocation(line: 760, column: 55, scope: !5034)
!5038 = !DILocation(line: 761, column: 7, scope: !5034)
!5039 = !DILocation(line: 761, column: 15, scope: !5034)
!5040 = !DILocation(line: 761, column: 20, scope: !5034)
!5041 = !DILocation(line: 760, column: 7, scope: !5027)
!5042 = !DILocation(line: 762, column: 4, scope: !5034)
!5043 = !DILocation(line: 768, column: 7, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !5027, file: !3, line: 768, column: 7)
!5045 = !DILocation(line: 768, column: 15, scope: !5044)
!5046 = !DILocation(line: 768, column: 20, scope: !5044)
!5047 = !DILocation(line: 768, column: 39, scope: !5044)
!5048 = !DILocation(line: 769, column: 7, scope: !5044)
!5049 = !DILocation(line: 769, column: 15, scope: !5044)
!5050 = !DILocation(line: 769, column: 21, scope: !5044)
!5051 = !DILocation(line: 768, column: 7, scope: !5027)
!5052 = !DILocation(line: 770, column: 4, scope: !5044)
!5053 = !DILocation(line: 772, column: 36, scope: !5027)
!5054 = !DILocation(line: 772, column: 40, scope: !5027)
!5055 = !DILocation(line: 772, column: 11, scope: !5027)
!5056 = !DILocation(line: 772, column: 9, scope: !5027)
!5057 = !DILocation(line: 774, column: 14, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5027, file: !3, line: 774, column: 7)
!5059 = !DILocation(line: 774, column: 7, scope: !5058)
!5060 = !DILocation(line: 774, column: 7, scope: !5027)
!5061 = !DILocation(line: 776, column: 16, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 776, column: 8)
!5063 = distinct !DILexicalBlock(scope: !5058, file: !3, line: 774, column: 22)
!5064 = !DILocation(line: 776, column: 8, scope: !5062)
!5065 = !DILocation(line: 776, column: 23, scope: !5062)
!5066 = !DILocation(line: 776, column: 8, scope: !5063)
!5067 = !DILocation(line: 777, column: 5, scope: !5062)
!5068 = !DILocation(line: 779, column: 19, scope: !5063)
!5069 = !DILocation(line: 779, column: 11, scope: !5063)
!5070 = !DILocation(line: 779, column: 4, scope: !5063)
!5071 = !DILocation(line: 782, column: 33, scope: !5027)
!5072 = !DILocation(line: 782, column: 3, scope: !5027)
!5073 = !DILocation(line: 782, column: 7, scope: !5027)
!5074 = !DILocation(line: 782, column: 13, scope: !5027)
!5075 = !DILocation(line: 782, column: 17, scope: !5027)
!5076 = !DILocation(line: 782, column: 27, scope: !5027)
!5077 = !DILocation(line: 782, column: 31, scope: !5027)
!5078 = !DILocation(line: 783, column: 2, scope: !5027)
!5079 = !DILocation(line: 754, column: 58, scope: !5023)
!5080 = !DILocation(line: 754, column: 2, scope: !5023)
!5081 = distinct !{!5081, !5025, !5082}
!5082 = !DILocation(line: 783, column: 2, scope: !5020)
!5083 = !DILocation(line: 785, column: 2, scope: !5014)
!5084 = !DILocation(line: 786, column: 1, scope: !5014)
!5085 = distinct !DISubprogram(name: "intel_th_free", scope: !3, file: !3, line: 926, type: !4061, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5086 = !DILocalVariable(name: "th", arg: 1, scope: !5085, file: !3, line: 926, type: !4044)
!5087 = !DILocation(line: 926, column: 37, scope: !5085)
!5088 = !DILocalVariable(name: "i", scope: !5085, file: !3, line: 928, type: !131)
!5089 = !DILocation(line: 928, column: 6, scope: !5085)
!5090 = !DILocation(line: 930, column: 36, scope: !5085)
!5091 = !DILocation(line: 930, column: 2, scope: !5085)
!5092 = !DILocation(line: 932, column: 25, scope: !5085)
!5093 = !DILocation(line: 932, column: 29, scope: !5085)
!5094 = !DILocation(line: 932, column: 2, scope: !5085)
!5095 = !DILocation(line: 933, column: 9, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 933, column: 2)
!5097 = !DILocation(line: 933, column: 7, scope: !5096)
!5098 = !DILocation(line: 933, column: 14, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5096, file: !3, line: 933, column: 2)
!5100 = !DILocation(line: 933, column: 18, scope: !5099)
!5101 = !DILocation(line: 933, column: 22, scope: !5099)
!5102 = !DILocation(line: 933, column: 16, scope: !5099)
!5103 = !DILocation(line: 933, column: 2, scope: !5096)
!5104 = !DILocation(line: 934, column: 7, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 934, column: 7)
!5106 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 933, column: 39)
!5107 = !DILocation(line: 934, column: 11, scope: !5105)
!5108 = !DILocation(line: 934, column: 17, scope: !5105)
!5109 = !DILocation(line: 934, column: 23, scope: !5105)
!5110 = !DILocation(line: 934, column: 27, scope: !5105)
!5111 = !DILocation(line: 934, column: 20, scope: !5105)
!5112 = !DILocation(line: 934, column: 7, scope: !5106)
!5113 = !DILocation(line: 935, column: 27, scope: !5105)
!5114 = !DILocation(line: 935, column: 31, scope: !5105)
!5115 = !DILocation(line: 935, column: 37, scope: !5105)
!5116 = !DILocation(line: 935, column: 4, scope: !5105)
!5117 = !DILocation(line: 936, column: 3, scope: !5106)
!5118 = !DILocation(line: 936, column: 7, scope: !5106)
!5119 = !DILocation(line: 936, column: 13, scope: !5106)
!5120 = !DILocation(line: 936, column: 16, scope: !5106)
!5121 = !DILocation(line: 937, column: 2, scope: !5106)
!5122 = !DILocation(line: 933, column: 35, scope: !5099)
!5123 = !DILocation(line: 933, column: 2, scope: !5099)
!5124 = distinct !{!5124, !5103, !5125}
!5125 = !DILocation(line: 937, column: 2, scope: !5096)
!5126 = !DILocation(line: 939, column: 2, scope: !5085)
!5127 = !DILocation(line: 939, column: 6, scope: !5085)
!5128 = !DILocation(line: 939, column: 17, scope: !5085)
!5129 = !DILocation(line: 941, column: 9, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 941, column: 2)
!5131 = !DILocation(line: 941, column: 7, scope: !5130)
!5132 = !DILocation(line: 941, column: 14, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 941, column: 2)
!5134 = !DILocation(line: 941, column: 18, scope: !5133)
!5135 = !DILocation(line: 941, column: 22, scope: !5133)
!5136 = !DILocation(line: 941, column: 16, scope: !5133)
!5137 = !DILocation(line: 941, column: 2, scope: !5130)
!5138 = !DILocation(line: 942, column: 17, scope: !5133)
!5139 = !DILocation(line: 942, column: 21, scope: !5133)
!5140 = !DILocation(line: 942, column: 26, scope: !5133)
!5141 = !DILocation(line: 942, column: 30, scope: !5133)
!5142 = !DILocation(line: 942, column: 36, scope: !5133)
!5143 = !DILocation(line: 942, column: 34, scope: !5133)
!5144 = !DILocation(line: 942, column: 39, scope: !5133)
!5145 = !DILocation(line: 942, column: 3, scope: !5133)
!5146 = !DILocation(line: 941, column: 33, scope: !5133)
!5147 = !DILocation(line: 941, column: 2, scope: !5133)
!5148 = distinct !{!5148, !5137, !5149}
!5149 = !DILocation(line: 942, column: 41, scope: !5130)
!5150 = !DILocation(line: 944, column: 22, scope: !5085)
!5151 = !DILocation(line: 944, column: 26, scope: !5085)
!5152 = !DILocation(line: 944, column: 2, scope: !5085)
!5153 = !DILocation(line: 945, column: 20, scope: !5085)
!5154 = !DILocation(line: 945, column: 24, scope: !5085)
!5155 = !DILocation(line: 945, column: 2, scope: !5085)
!5156 = !DILocation(line: 947, column: 22, scope: !5085)
!5157 = !DILocation(line: 947, column: 26, scope: !5085)
!5158 = !DILocation(line: 947, column: 2, scope: !5085)
!5159 = !DILocation(line: 950, column: 2, scope: !5085)
!5160 = !DILocation(line: 952, column: 8, scope: !5085)
!5161 = !DILocation(line: 952, column: 2, scope: !5085)
!5162 = !DILocation(line: 953, column: 1, scope: !5085)
!5163 = distinct !DISubprogram(name: "intel_th_request_hub_module_flush", scope: !3, file: !3, line: 593, type: !4061, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5164 = !DILocalVariable(name: "th", arg: 1, scope: !5163, file: !3, line: 593, type: !4044)
!5165 = !DILocation(line: 593, column: 71, scope: !5163)
!5166 = !DILocation(line: 595, column: 1, scope: !5163)
!5167 = distinct !DISubprogram(name: "intel_th_device_remove", scope: !3, file: !3, line: 404, type: !3824, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5168 = !DILocalVariable(name: "thdev", arg: 1, scope: !5167, file: !3, line: 404, type: !135)
!5169 = !DILocation(line: 404, column: 60, scope: !5167)
!5170 = !DILocation(line: 406, column: 14, scope: !5167)
!5171 = !DILocation(line: 406, column: 21, scope: !5167)
!5172 = !DILocation(line: 406, column: 2, scope: !5167)
!5173 = !DILocation(line: 407, column: 14, scope: !5167)
!5174 = !DILocation(line: 407, column: 21, scope: !5167)
!5175 = !DILocation(line: 407, column: 2, scope: !5167)
!5176 = !DILocation(line: 408, column: 1, scope: !5167)
!5177 = distinct !DISubprogram(name: "pm_runtime_get_sync", scope: !5008, file: !5008, line: 384, type: !3364, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5178 = !DILocalVariable(name: "dev", arg: 1, scope: !5177, file: !5008, line: 384, type: !3332)
!5179 = !DILocation(line: 384, column: 54, scope: !5177)
!5180 = !DILocation(line: 386, column: 29, scope: !5177)
!5181 = !DILocation(line: 386, column: 9, scope: !5177)
!5182 = !DILocation(line: 386, column: 2, scope: !5177)
!5183 = distinct !DISubprogram(name: "intel_th_trace_enable", scope: !3, file: !3, line: 960, type: !3820, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5184 = !DILocalVariable(name: "thdev", arg: 1, scope: !5183, file: !3, line: 960, type: !135)
!5185 = !DILocation(line: 960, column: 51, scope: !5183)
!5186 = !DILocalVariable(name: "hub", scope: !5183, file: !3, line: 962, type: !135)
!5187 = !DILocation(line: 962, column: 26, scope: !5183)
!5188 = !DILocalVariable(name: "__mptr", scope: !5189, file: !3, line: 962, type: !134)
!5189 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 962, column: 32)
!5190 = !DILocation(line: 962, column: 32, scope: !5189)
!5191 = !DILocation(line: 962, column: 32, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5189, file: !3, line: 962, column: 32)
!5193 = !DILocalVariable(name: "hubdrv", scope: !5183, file: !3, line: 963, type: !3814)
!5194 = !DILocation(line: 963, column: 26, scope: !5183)
!5195 = !DILocalVariable(name: "__mptr", scope: !5196, file: !3, line: 963, type: !134)
!5196 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 963, column: 35)
!5197 = !DILocation(line: 963, column: 35, scope: !5196)
!5198 = !DILocation(line: 963, column: 35, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 963, column: 35)
!5200 = !DILocalVariable(name: "__ret_warn_on", scope: !5201, file: !3, line: 965, type: !131)
!5201 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 965, column: 6)
!5202 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 965, column: 6)
!5203 = !DILocation(line: 965, column: 6, scope: !5201)
!5204 = !DILocation(line: 965, column: 6, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5201, file: !3, line: 965, column: 6)
!5206 = !DILocation(line: 965, column: 6, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 965, column: 6)
!5208 = !DILocation(line: 965, column: 6, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 965, column: 6)
!5210 = !DILocation(line: 965, column: 6, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 965, column: 6)
!5212 = !{i32 -2141608089, i32 -2141608060, i32 -2141608014, i32 -2141607956, i32 -2141607902, i32 -2141607848, i32 -2141607793, i32 -2141607762}
!5213 = !DILocation(line: 965, column: 6, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 965, column: 6)
!5215 = !{i32 -2141607336, i32 -2141607329, i32 -2141607277, i32 -2141607246, i32 -2141607216}
!5216 = !DILocation(line: 965, column: 6, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 965, column: 6)
!5218 = !DILocation(line: 965, column: 6, scope: !5202)
!5219 = !DILocation(line: 965, column: 6, scope: !5183)
!5220 = !DILocation(line: 966, column: 3, scope: !5202)
!5221 = !DILocalVariable(name: "__ret_warn_on", scope: !5222, file: !3, line: 968, type: !131)
!5222 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 968, column: 6)
!5223 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 968, column: 6)
!5224 = !DILocation(line: 968, column: 6, scope: !5222)
!5225 = !DILocation(line: 968, column: 6, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 968, column: 6)
!5227 = !DILocation(line: 968, column: 6, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 968, column: 6)
!5229 = !DILocation(line: 968, column: 6, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 968, column: 6)
!5231 = !DILocation(line: 968, column: 6, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 968, column: 6)
!5233 = !{i32 -2141606583, i32 -2141606554, i32 -2141606508, i32 -2141606450, i32 -2141606396, i32 -2141606342, i32 -2141606287, i32 -2141606256}
!5234 = !DILocation(line: 968, column: 6, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 968, column: 6)
!5236 = !{i32 -2141605830, i32 -2141605823, i32 -2141605771, i32 -2141605740, i32 -2141605710}
!5237 = !DILocation(line: 968, column: 6, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 968, column: 6)
!5239 = !DILocation(line: 968, column: 6, scope: !5223)
!5240 = !DILocation(line: 968, column: 6, scope: !5183)
!5241 = !DILocation(line: 969, column: 3, scope: !5223)
!5242 = !DILocation(line: 971, column: 23, scope: !5183)
!5243 = !DILocation(line: 971, column: 30, scope: !5183)
!5244 = !DILocation(line: 971, column: 2, scope: !5183)
!5245 = !DILocation(line: 972, column: 2, scope: !5183)
!5246 = !DILocation(line: 972, column: 10, scope: !5183)
!5247 = !DILocation(line: 972, column: 17, scope: !5183)
!5248 = !DILocation(line: 972, column: 23, scope: !5183)
!5249 = !DILocation(line: 972, column: 30, scope: !5183)
!5250 = !DILocation(line: 974, column: 2, scope: !5183)
!5251 = !DILocation(line: 975, column: 1, scope: !5183)
!5252 = distinct !DISubprogram(name: "intel_th_trace_switch", scope: !3, file: !3, line: 982, type: !3820, scopeLine: 983, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5253 = !DILocalVariable(name: "thdev", arg: 1, scope: !5252, file: !3, line: 982, type: !135)
!5254 = !DILocation(line: 982, column: 51, scope: !5252)
!5255 = !DILocalVariable(name: "hub", scope: !5252, file: !3, line: 984, type: !135)
!5256 = !DILocation(line: 984, column: 26, scope: !5252)
!5257 = !DILocalVariable(name: "__mptr", scope: !5258, file: !3, line: 984, type: !134)
!5258 = distinct !DILexicalBlock(scope: !5252, file: !3, line: 984, column: 32)
!5259 = !DILocation(line: 984, column: 32, scope: !5258)
!5260 = !DILocation(line: 984, column: 32, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5258, file: !3, line: 984, column: 32)
!5262 = !DILocalVariable(name: "hubdrv", scope: !5252, file: !3, line: 985, type: !3814)
!5263 = !DILocation(line: 985, column: 26, scope: !5252)
!5264 = !DILocalVariable(name: "__mptr", scope: !5265, file: !3, line: 985, type: !134)
!5265 = distinct !DILexicalBlock(scope: !5252, file: !3, line: 985, column: 35)
!5266 = !DILocation(line: 985, column: 35, scope: !5265)
!5267 = !DILocation(line: 985, column: 35, scope: !5268)
!5268 = distinct !DILexicalBlock(scope: !5265, file: !3, line: 985, column: 35)
!5269 = !DILocalVariable(name: "__ret_warn_on", scope: !5270, file: !3, line: 987, type: !131)
!5270 = distinct !DILexicalBlock(scope: !5271, file: !3, line: 987, column: 6)
!5271 = distinct !DILexicalBlock(scope: !5252, file: !3, line: 987, column: 6)
!5272 = !DILocation(line: 987, column: 6, scope: !5270)
!5273 = !DILocation(line: 987, column: 6, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 987, column: 6)
!5275 = !DILocation(line: 987, column: 6, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !5274, file: !3, line: 987, column: 6)
!5277 = !DILocation(line: 987, column: 6, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5276, file: !3, line: 987, column: 6)
!5279 = !DILocation(line: 987, column: 6, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5276, file: !3, line: 987, column: 6)
!5281 = !{i32 -2141601489, i32 -2141601460, i32 -2141601414, i32 -2141601356, i32 -2141601302, i32 -2141601248, i32 -2141601193, i32 -2141601162}
!5282 = !DILocation(line: 987, column: 6, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5276, file: !3, line: 987, column: 6)
!5284 = !{i32 -2141600736, i32 -2141600729, i32 -2141600677, i32 -2141600646, i32 -2141600616}
!5285 = !DILocation(line: 987, column: 6, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5276, file: !3, line: 987, column: 6)
!5287 = !DILocation(line: 987, column: 6, scope: !5271)
!5288 = !DILocation(line: 987, column: 6, scope: !5252)
!5289 = !DILocation(line: 988, column: 3, scope: !5271)
!5290 = !DILocalVariable(name: "__ret_warn_on", scope: !5291, file: !3, line: 990, type: !131)
!5291 = distinct !DILexicalBlock(scope: !5292, file: !3, line: 990, column: 6)
!5292 = distinct !DILexicalBlock(scope: !5252, file: !3, line: 990, column: 6)
!5293 = !DILocation(line: 990, column: 6, scope: !5291)
!5294 = !DILocation(line: 990, column: 6, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5291, file: !3, line: 990, column: 6)
!5296 = !DILocation(line: 990, column: 6, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 990, column: 6)
!5298 = !DILocation(line: 990, column: 6, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 990, column: 6)
!5300 = !DILocation(line: 990, column: 6, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 990, column: 6)
!5302 = !{i32 -2141599983, i32 -2141599954, i32 -2141599908, i32 -2141599850, i32 -2141599796, i32 -2141599742, i32 -2141599687, i32 -2141599656}
!5303 = !DILocation(line: 990, column: 6, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 990, column: 6)
!5305 = !{i32 -2141599230, i32 -2141599223, i32 -2141599171, i32 -2141599140, i32 -2141599110}
!5306 = !DILocation(line: 990, column: 6, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 990, column: 6)
!5308 = !DILocation(line: 990, column: 6, scope: !5292)
!5309 = !DILocation(line: 990, column: 6, scope: !5252)
!5310 = !DILocation(line: 991, column: 3, scope: !5292)
!5311 = !DILocation(line: 993, column: 2, scope: !5252)
!5312 = !DILocation(line: 993, column: 10, scope: !5252)
!5313 = !DILocation(line: 993, column: 22, scope: !5252)
!5314 = !DILocation(line: 993, column: 28, scope: !5252)
!5315 = !DILocation(line: 993, column: 35, scope: !5252)
!5316 = !DILocation(line: 995, column: 2, scope: !5252)
!5317 = !DILocation(line: 996, column: 1, scope: !5252)
!5318 = distinct !DISubprogram(name: "intel_th_trace_disable", scope: !3, file: !3, line: 1003, type: !3820, scopeLine: 1004, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5319 = !DILocalVariable(name: "thdev", arg: 1, scope: !5318, file: !3, line: 1003, type: !135)
!5320 = !DILocation(line: 1003, column: 52, scope: !5318)
!5321 = !DILocalVariable(name: "hub", scope: !5318, file: !3, line: 1005, type: !135)
!5322 = !DILocation(line: 1005, column: 26, scope: !5318)
!5323 = !DILocalVariable(name: "__mptr", scope: !5324, file: !3, line: 1005, type: !134)
!5324 = distinct !DILexicalBlock(scope: !5318, file: !3, line: 1005, column: 32)
!5325 = !DILocation(line: 1005, column: 32, scope: !5324)
!5326 = !DILocation(line: 1005, column: 32, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 1005, column: 32)
!5328 = !DILocalVariable(name: "hubdrv", scope: !5318, file: !3, line: 1006, type: !3814)
!5329 = !DILocation(line: 1006, column: 26, scope: !5318)
!5330 = !DILocalVariable(name: "__mptr", scope: !5331, file: !3, line: 1006, type: !134)
!5331 = distinct !DILexicalBlock(scope: !5318, file: !3, line: 1006, column: 35)
!5332 = !DILocation(line: 1006, column: 35, scope: !5331)
!5333 = !DILocation(line: 1006, column: 35, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5331, file: !3, line: 1006, column: 35)
!5335 = !DILocalVariable(name: "__ret_warn_on", scope: !5336, file: !3, line: 1008, type: !131)
!5336 = distinct !DILexicalBlock(scope: !5318, file: !3, line: 1008, column: 2)
!5337 = !DILocation(line: 1008, column: 2, scope: !5336)
!5338 = !DILocation(line: 1008, column: 2, scope: !5339)
!5339 = distinct !DILexicalBlock(scope: !5336, file: !3, line: 1008, column: 2)
!5340 = !DILocation(line: 1008, column: 2, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 1008, column: 2)
!5342 = !DILocation(line: 1008, column: 2, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 1008, column: 2)
!5344 = !DILocation(line: 1008, column: 2, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 1008, column: 2)
!5346 = !{i32 -2141594889, i32 -2141594860, i32 -2141594814, i32 -2141594756, i32 -2141594702, i32 -2141594648, i32 -2141594593, i32 -2141594562}
!5347 = !DILocation(line: 1008, column: 2, scope: !5348)
!5348 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 1008, column: 2)
!5349 = !{i32 -2141594135, i32 -2141594128, i32 -2141594076, i32 -2141594045, i32 -2141594015}
!5350 = !DILocation(line: 1008, column: 2, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 1008, column: 2)
!5352 = !DILocalVariable(name: "__ret_warn_on", scope: !5353, file: !3, line: 1009, type: !131)
!5353 = distinct !DILexicalBlock(scope: !5354, file: !3, line: 1009, column: 6)
!5354 = distinct !DILexicalBlock(scope: !5318, file: !3, line: 1009, column: 6)
!5355 = !DILocation(line: 1009, column: 6, scope: !5353)
!5356 = !DILocation(line: 1009, column: 6, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5353, file: !3, line: 1009, column: 6)
!5358 = !DILocation(line: 1009, column: 6, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 1009, column: 6)
!5360 = !DILocation(line: 1009, column: 6, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 1009, column: 6)
!5362 = !DILocation(line: 1009, column: 6, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 1009, column: 6)
!5364 = !{i32 -2141593385, i32 -2141593356, i32 -2141593310, i32 -2141593252, i32 -2141593198, i32 -2141593144, i32 -2141593089, i32 -2141593058}
!5365 = !DILocation(line: 1009, column: 6, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 1009, column: 6)
!5367 = !{i32 -2141592631, i32 -2141592624, i32 -2141592572, i32 -2141592541, i32 -2141592511}
!5368 = !DILocation(line: 1009, column: 6, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 1009, column: 6)
!5370 = !DILocation(line: 1009, column: 6, scope: !5354)
!5371 = !DILocation(line: 1009, column: 6, scope: !5318)
!5372 = !DILocation(line: 1010, column: 3, scope: !5354)
!5373 = !DILocation(line: 1012, column: 2, scope: !5318)
!5374 = !DILocation(line: 1012, column: 10, scope: !5318)
!5375 = !DILocation(line: 1012, column: 18, scope: !5318)
!5376 = !DILocation(line: 1012, column: 24, scope: !5318)
!5377 = !DILocation(line: 1012, column: 31, scope: !5318)
!5378 = !DILocation(line: 1013, column: 18, scope: !5318)
!5379 = !DILocation(line: 1013, column: 25, scope: !5318)
!5380 = !DILocation(line: 1013, column: 2, scope: !5318)
!5381 = !DILocation(line: 1015, column: 2, scope: !5318)
!5382 = !DILocation(line: 1016, column: 1, scope: !5318)
!5383 = distinct !DISubprogram(name: "intel_th_set_output", scope: !3, file: !3, line: 1019, type: !3854, scopeLine: 1021, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5384 = !DILocalVariable(name: "thdev", arg: 1, scope: !5383, file: !3, line: 1019, type: !135)
!5385 = !DILocation(line: 1019, column: 49, scope: !5383)
!5386 = !DILocalVariable(name: "master", arg: 2, scope: !5383, file: !3, line: 1020, type: !7)
!5387 = !DILocation(line: 1020, column: 17, scope: !5383)
!5388 = !DILocalVariable(name: "hub", scope: !5383, file: !3, line: 1022, type: !135)
!5389 = !DILocation(line: 1022, column: 26, scope: !5383)
!5390 = !DILocation(line: 1022, column: 48, scope: !5383)
!5391 = !DILocation(line: 1022, column: 32, scope: !5383)
!5392 = !DILocalVariable(name: "hubdrv", scope: !5383, file: !3, line: 1023, type: !3814)
!5393 = !DILocation(line: 1023, column: 26, scope: !5383)
!5394 = !DILocalVariable(name: "__mptr", scope: !5395, file: !3, line: 1023, type: !134)
!5395 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 1023, column: 35)
!5396 = !DILocation(line: 1023, column: 35, scope: !5395)
!5397 = !DILocation(line: 1023, column: 35, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 1023, column: 35)
!5399 = !DILocalVariable(name: "ret", scope: !5383, file: !3, line: 1024, type: !131)
!5400 = !DILocation(line: 1024, column: 6, scope: !5383)
!5401 = !DILocation(line: 1027, column: 6, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 1027, column: 6)
!5403 = !DILocation(line: 1027, column: 11, scope: !5402)
!5404 = !DILocation(line: 1027, column: 6, scope: !5383)
!5405 = !DILocation(line: 1028, column: 3, scope: !5402)
!5406 = !DILocalVariable(name: "__mptr", scope: !5407, file: !3, line: 1034, type: !134)
!5407 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 1034, column: 11)
!5408 = !DILocation(line: 1034, column: 11, scope: !5407)
!5409 = !DILocation(line: 1034, column: 11, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5407, file: !3, line: 1034, column: 11)
!5411 = !DILocation(line: 1034, column: 9, scope: !5383)
!5412 = !DILocation(line: 1035, column: 7, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 1035, column: 6)
!5414 = !DILocation(line: 1035, column: 14, scope: !5413)
!5415 = !DILocation(line: 1035, column: 33, scope: !5413)
!5416 = !DILocation(line: 1035, column: 41, scope: !5413)
!5417 = !DILocation(line: 1035, column: 48, scope: !5413)
!5418 = !DILocation(line: 1035, column: 18, scope: !5413)
!5419 = !DILocation(line: 1035, column: 6, scope: !5383)
!5420 = !DILocation(line: 1036, column: 3, scope: !5413)
!5421 = !DILocation(line: 1038, column: 7, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 1038, column: 6)
!5423 = !DILocation(line: 1038, column: 15, scope: !5422)
!5424 = !DILocation(line: 1038, column: 6, scope: !5383)
!5425 = !DILocation(line: 1039, column: 7, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 1038, column: 27)
!5427 = !DILocation(line: 1040, column: 3, scope: !5426)
!5428 = !DILocation(line: 1043, column: 8, scope: !5383)
!5429 = !DILocation(line: 1043, column: 16, scope: !5383)
!5430 = !DILocation(line: 1043, column: 27, scope: !5383)
!5431 = !DILocation(line: 1043, column: 32, scope: !5383)
!5432 = !DILocation(line: 1043, column: 6, scope: !5383)
!5433 = !DILocation(line: 1043, column: 2, scope: !5383)
!5434 = !DILabel(scope: !5383, name: "out", file: !3, line: 1045)
!5435 = !DILocation(line: 1045, column: 1, scope: !5383)
!5436 = !DILocation(line: 1046, column: 13, scope: !5383)
!5437 = !DILocation(line: 1046, column: 21, scope: !5383)
!5438 = !DILocation(line: 1046, column: 28, scope: !5383)
!5439 = !DILocation(line: 1046, column: 2, scope: !5383)
!5440 = !DILocation(line: 1047, column: 9, scope: !5383)
!5441 = !DILocation(line: 1047, column: 2, scope: !5383)
!5442 = !DILocation(line: 1048, column: 1, scope: !5383)
!5443 = distinct !DISubprogram(name: "to_intel_th_hub", scope: !100, file: !100, line: 296, type: !5444, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5444 = !DISubroutineType(types: !5445)
!5445 = !{!135, !135}
!5446 = !DILocalVariable(name: "thdev", arg: 1, scope: !5443, file: !100, line: 296, type: !135)
!5447 = !DILocation(line: 296, column: 41, scope: !5443)
!5448 = !DILocation(line: 298, column: 6, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5443, file: !100, line: 298, column: 6)
!5450 = !DILocation(line: 298, column: 13, scope: !5449)
!5451 = !DILocation(line: 298, column: 18, scope: !5449)
!5452 = !DILocation(line: 298, column: 6, scope: !5443)
!5453 = !DILocation(line: 299, column: 10, scope: !5449)
!5454 = !DILocation(line: 299, column: 3, scope: !5449)
!5455 = !DILocation(line: 300, column: 11, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5449, file: !100, line: 300, column: 11)
!5457 = !DILocation(line: 300, column: 18, scope: !5456)
!5458 = !DILocation(line: 300, column: 23, scope: !5456)
!5459 = !DILocation(line: 300, column: 11, scope: !5449)
!5460 = !DILocation(line: 301, column: 29, scope: !5456)
!5461 = !DILocation(line: 301, column: 10, scope: !5456)
!5462 = !DILocation(line: 301, column: 3, scope: !5456)
!5463 = !DILocation(line: 303, column: 21, scope: !5443)
!5464 = !DILocation(line: 303, column: 9, scope: !5443)
!5465 = !DILocation(line: 303, column: 29, scope: !5443)
!5466 = !DILocation(line: 303, column: 2, scope: !5443)
!5467 = !DILocation(line: 304, column: 1, scope: !5443)
!5468 = distinct !DISubprogram(name: "try_module_get", scope: !5469, file: !5469, line: 751, type: !5470, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5469 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!5470 = !DISubroutineType(types: !5471)
!5471 = !{!420, !563}
!5472 = !DILocalVariable(name: "module", arg: 1, scope: !5468, file: !5469, line: 751, type: !563)
!5473 = !DILocation(line: 751, column: 50, scope: !5468)
!5474 = !DILocation(line: 753, column: 2, scope: !5468)
!5475 = distinct !DISubprogram(name: "module_put", scope: !5469, file: !5469, line: 756, type: !5476, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5476 = !DISubroutineType(types: !5477)
!5477 = !{null, !563}
!5478 = !DILocalVariable(name: "module", arg: 1, scope: !5475, file: !5469, line: 756, type: !563)
!5479 = !DILocation(line: 756, column: 46, scope: !5475)
!5480 = !DILocation(line: 758, column: 1, scope: !5475)
!5481 = distinct !DISubprogram(name: "intel_th_init", scope: !3, file: !3, line: 1051, type: !5482, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5482 = !DISubroutineType(types: !5483)
!5483 = !{!131}
!5484 = !DILocation(line: 1053, column: 2, scope: !5481)
!5485 = !DILocation(line: 1055, column: 9, scope: !5481)
!5486 = !DILocation(line: 1055, column: 2, scope: !5481)
!5487 = distinct !DISubprogram(name: "intel_th_exit", scope: !3, file: !3, line: 1059, type: !1850, scopeLine: 1060, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5488 = !DILocation(line: 1061, column: 2, scope: !5487)
!5489 = !DILocation(line: 1063, column: 2, scope: !5487)
!5490 = !DILocation(line: 1064, column: 1, scope: !5487)
!5491 = distinct !DISubprogram(name: "intel_th_debug_done", scope: !5492, file: !5492, line: 21, type: !1850, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5492 = !DIFile(filename: "drivers/hwtracing/intel_th/debug.h", directory: "/home/lizy2001/genbc/linux")
!5493 = !DILocation(line: 23, column: 1, scope: !5491)
!5494 = distinct !DISubprogram(name: "intel_th_match", scope: !3, file: !3, line: 29, type: !3401, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5495 = !DILocalVariable(name: "dev", arg: 1, scope: !5494, file: !3, line: 29, type: !3332)
!5496 = !DILocation(line: 29, column: 42, scope: !5494)
!5497 = !DILocalVariable(name: "driver", arg: 2, scope: !5494, file: !3, line: 29, type: !3403)
!5498 = !DILocation(line: 29, column: 69, scope: !5494)
!5499 = !DILocalVariable(name: "thdrv", scope: !5494, file: !3, line: 31, type: !3814)
!5500 = !DILocation(line: 31, column: 26, scope: !5494)
!5501 = !DILocalVariable(name: "__mptr", scope: !5502, file: !3, line: 31, type: !134)
!5502 = distinct !DILexicalBlock(scope: !5494, file: !3, line: 31, column: 34)
!5503 = !DILocation(line: 31, column: 34, scope: !5502)
!5504 = !DILocation(line: 31, column: 34, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5502, file: !3, line: 31, column: 34)
!5506 = !DILocalVariable(name: "thdev", scope: !5494, file: !3, line: 32, type: !135)
!5507 = !DILocation(line: 32, column: 26, scope: !5494)
!5508 = !DILocalVariable(name: "__mptr", scope: !5509, file: !3, line: 32, type: !134)
!5509 = distinct !DILexicalBlock(scope: !5494, file: !3, line: 32, column: 34)
!5510 = !DILocation(line: 32, column: 34, scope: !5509)
!5511 = !DILocation(line: 32, column: 34, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 32, column: 34)
!5513 = !DILocation(line: 34, column: 6, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5494, file: !3, line: 34, column: 6)
!5515 = !DILocation(line: 34, column: 13, scope: !5514)
!5516 = !DILocation(line: 34, column: 18, scope: !5514)
!5517 = !DILocation(line: 34, column: 37, scope: !5514)
!5518 = !DILocation(line: 35, column: 8, scope: !5514)
!5519 = !DILocation(line: 35, column: 15, scope: !5514)
!5520 = !DILocation(line: 35, column: 22, scope: !5514)
!5521 = !DILocation(line: 35, column: 26, scope: !5514)
!5522 = !DILocation(line: 35, column: 33, scope: !5514)
!5523 = !DILocation(line: 34, column: 6, scope: !5494)
!5524 = !DILocation(line: 36, column: 3, scope: !5514)
!5525 = !DILocation(line: 38, column: 17, scope: !5494)
!5526 = !DILocation(line: 38, column: 24, scope: !5494)
!5527 = !DILocation(line: 38, column: 30, scope: !5494)
!5528 = !DILocation(line: 38, column: 38, scope: !5494)
!5529 = !DILocation(line: 38, column: 10, scope: !5494)
!5530 = !DILocation(line: 38, column: 9, scope: !5494)
!5531 = !DILocation(line: 38, column: 2, scope: !5494)
!5532 = !DILocation(line: 39, column: 1, scope: !5494)
!5533 = distinct !DISubprogram(name: "intel_th_probe", scope: !3, file: !3, line: 48, type: !3364, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5534 = !DILocalVariable(name: "dev", arg: 1, scope: !5533, file: !3, line: 48, type: !3332)
!5535 = !DILocation(line: 48, column: 42, scope: !5533)
!5536 = !DILocalVariable(name: "thdrv", scope: !5533, file: !3, line: 50, type: !3814)
!5537 = !DILocation(line: 50, column: 26, scope: !5533)
!5538 = !DILocalVariable(name: "__mptr", scope: !5539, file: !3, line: 50, type: !134)
!5539 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 50, column: 34)
!5540 = !DILocation(line: 50, column: 34, scope: !5539)
!5541 = !DILocation(line: 50, column: 34, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5539, file: !3, line: 50, column: 34)
!5543 = !DILocalVariable(name: "thdev", scope: !5533, file: !3, line: 51, type: !135)
!5544 = !DILocation(line: 51, column: 26, scope: !5533)
!5545 = !DILocalVariable(name: "__mptr", scope: !5546, file: !3, line: 51, type: !134)
!5546 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 51, column: 34)
!5547 = !DILocation(line: 51, column: 34, scope: !5546)
!5548 = !DILocation(line: 51, column: 34, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 51, column: 34)
!5550 = !DILocalVariable(name: "hubdrv", scope: !5533, file: !3, line: 52, type: !3814)
!5551 = !DILocation(line: 52, column: 26, scope: !5533)
!5552 = !DILocalVariable(name: "hub", scope: !5533, file: !3, line: 53, type: !135)
!5553 = !DILocation(line: 53, column: 26, scope: !5533)
!5554 = !DILocalVariable(name: "ret", scope: !5533, file: !3, line: 54, type: !131)
!5555 = !DILocation(line: 54, column: 6, scope: !5533)
!5556 = !DILocation(line: 56, column: 6, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 56, column: 6)
!5558 = !DILocation(line: 56, column: 13, scope: !5557)
!5559 = !DILocation(line: 56, column: 18, scope: !5557)
!5560 = !DILocation(line: 56, column: 6, scope: !5533)
!5561 = !DILocation(line: 57, column: 9, scope: !5557)
!5562 = !DILocation(line: 57, column: 7, scope: !5557)
!5563 = !DILocation(line: 57, column: 3, scope: !5557)
!5564 = !DILocation(line: 58, column: 11, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 58, column: 11)
!5566 = !DILocation(line: 58, column: 16, scope: !5565)
!5567 = !DILocation(line: 58, column: 11, scope: !5557)
!5568 = !DILocalVariable(name: "__mptr", scope: !5569, file: !3, line: 59, type: !134)
!5569 = distinct !DILexicalBlock(scope: !5565, file: !3, line: 59, column: 9)
!5570 = !DILocation(line: 59, column: 9, scope: !5569)
!5571 = !DILocation(line: 59, column: 9, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5569, file: !3, line: 59, column: 9)
!5573 = !DILocation(line: 59, column: 7, scope: !5565)
!5574 = !DILocation(line: 59, column: 3, scope: !5565)
!5575 = !DILocation(line: 61, column: 7, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 61, column: 6)
!5577 = !DILocation(line: 61, column: 11, scope: !5576)
!5578 = !DILocation(line: 61, column: 15, scope: !5576)
!5579 = !DILocation(line: 61, column: 20, scope: !5576)
!5580 = !DILocation(line: 61, column: 24, scope: !5576)
!5581 = !DILocation(line: 61, column: 6, scope: !5533)
!5582 = !DILocation(line: 62, column: 3, scope: !5576)
!5583 = !DILocalVariable(name: "__mptr", scope: !5584, file: !3, line: 64, type: !134)
!5584 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 64, column: 11)
!5585 = !DILocation(line: 64, column: 11, scope: !5584)
!5586 = !DILocation(line: 64, column: 11, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5584, file: !3, line: 64, column: 11)
!5588 = !DILocation(line: 64, column: 9, scope: !5533)
!5589 = !DILocation(line: 66, column: 24, scope: !5533)
!5590 = !DILocation(line: 66, column: 2, scope: !5533)
!5591 = !DILocation(line: 67, column: 26, scope: !5533)
!5592 = !DILocation(line: 67, column: 2, scope: !5533)
!5593 = !DILocation(line: 68, column: 20, scope: !5533)
!5594 = !DILocation(line: 68, column: 2, scope: !5533)
!5595 = !DILocation(line: 70, column: 8, scope: !5533)
!5596 = !DILocation(line: 70, column: 15, scope: !5533)
!5597 = !DILocalVariable(name: "__mptr", scope: !5598, file: !3, line: 70, type: !134)
!5598 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 70, column: 21)
!5599 = !DILocation(line: 70, column: 21, scope: !5598)
!5600 = !DILocation(line: 70, column: 21, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 70, column: 21)
!5602 = !DILocation(line: 70, column: 6, scope: !5533)
!5603 = !DILocation(line: 71, column: 6, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 71, column: 6)
!5605 = !DILocation(line: 71, column: 6, scope: !5533)
!5606 = !DILocation(line: 72, column: 3, scope: !5604)
!5607 = !DILocation(line: 74, column: 6, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 74, column: 6)
!5609 = !DILocation(line: 74, column: 13, scope: !5608)
!5610 = !DILocation(line: 74, column: 6, scope: !5533)
!5611 = !DILocation(line: 75, column: 29, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5608, file: !3, line: 74, column: 25)
!5613 = !DILocation(line: 75, column: 36, scope: !5612)
!5614 = !DILocation(line: 75, column: 40, scope: !5612)
!5615 = !DILocation(line: 75, column: 46, scope: !5612)
!5616 = !DILocation(line: 75, column: 53, scope: !5612)
!5617 = !DILocation(line: 75, column: 9, scope: !5612)
!5618 = !DILocation(line: 75, column: 7, scope: !5612)
!5619 = !DILocation(line: 76, column: 7, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 76, column: 7)
!5621 = !DILocation(line: 76, column: 7, scope: !5612)
!5622 = !DILocation(line: 77, column: 4, scope: !5620)
!5623 = !DILocation(line: 78, column: 2, scope: !5612)
!5624 = !DILocation(line: 80, column: 6, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 80, column: 6)
!5626 = !DILocation(line: 80, column: 13, scope: !5625)
!5627 = !DILocation(line: 80, column: 18, scope: !5625)
!5628 = !DILocation(line: 80, column: 37, scope: !5625)
!5629 = !DILocation(line: 81, column: 32, scope: !5625)
!5630 = !DILocation(line: 81, column: 7, scope: !5625)
!5631 = !DILocation(line: 80, column: 6, scope: !5533)
!5632 = !DILocation(line: 83, column: 9, scope: !5625)
!5633 = !DILocation(line: 83, column: 17, scope: !5625)
!5634 = !DILocation(line: 83, column: 24, scope: !5625)
!5635 = !DILocation(line: 83, column: 29, scope: !5625)
!5636 = !DILocation(line: 83, column: 7, scope: !5625)
!5637 = !DILocation(line: 83, column: 3, scope: !5625)
!5638 = !DILocation(line: 81, column: 37, scope: !5625)
!5639 = !DILabel(scope: !5533, name: "out", file: !3, line: 85)
!5640 = !DILocation(line: 85, column: 1, scope: !5533)
!5641 = !DILocation(line: 86, column: 6, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 86, column: 6)
!5643 = !DILocation(line: 86, column: 6, scope: !5533)
!5644 = !DILocation(line: 87, column: 3, scope: !5642)
!5645 = !DILocation(line: 87, column: 10, scope: !5642)
!5646 = !DILocation(line: 87, column: 17, scope: !5642)
!5647 = !DILabel(scope: !5533, name: "out_pm", file: !3, line: 89)
!5648 = !DILocation(line: 89, column: 1, scope: !5533)
!5649 = !DILocation(line: 90, column: 6, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 90, column: 6)
!5651 = !DILocation(line: 90, column: 6, scope: !5533)
!5652 = !DILocation(line: 91, column: 22, scope: !5650)
!5653 = !DILocation(line: 91, column: 3, scope: !5650)
!5654 = !DILocation(line: 93, column: 9, scope: !5533)
!5655 = !DILocation(line: 93, column: 2, scope: !5533)
!5656 = !DILocation(line: 94, column: 1, scope: !5533)
!5657 = distinct !DISubprogram(name: "intel_th_remove", scope: !3, file: !3, line: 98, type: !3364, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5658 = !DILocalVariable(name: "dev", arg: 1, scope: !5657, file: !3, line: 98, type: !3332)
!5659 = !DILocation(line: 98, column: 43, scope: !5657)
!5660 = !DILocalVariable(name: "thdrv", scope: !5657, file: !3, line: 100, type: !3814)
!5661 = !DILocation(line: 100, column: 26, scope: !5657)
!5662 = !DILocalVariable(name: "__mptr", scope: !5663, file: !3, line: 100, type: !134)
!5663 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 100, column: 34)
!5664 = !DILocation(line: 100, column: 34, scope: !5663)
!5665 = !DILocation(line: 100, column: 34, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5663, file: !3, line: 100, column: 34)
!5667 = !DILocalVariable(name: "thdev", scope: !5657, file: !3, line: 101, type: !135)
!5668 = !DILocation(line: 101, column: 26, scope: !5657)
!5669 = !DILocalVariable(name: "__mptr", scope: !5670, file: !3, line: 101, type: !134)
!5670 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 101, column: 34)
!5671 = !DILocation(line: 101, column: 34, scope: !5670)
!5672 = !DILocation(line: 101, column: 34, scope: !5673)
!5673 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 101, column: 34)
!5674 = !DILocalVariable(name: "hub", scope: !5657, file: !3, line: 102, type: !135)
!5675 = !DILocation(line: 102, column: 26, scope: !5657)
!5676 = !DILocation(line: 102, column: 48, scope: !5657)
!5677 = !DILocation(line: 102, column: 32, scope: !5657)
!5678 = !DILocalVariable(name: "err", scope: !5657, file: !3, line: 103, type: !131)
!5679 = !DILocation(line: 103, column: 6, scope: !5657)
!5680 = !DILocation(line: 105, column: 6, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 105, column: 6)
!5682 = !DILocation(line: 105, column: 13, scope: !5681)
!5683 = !DILocation(line: 105, column: 18, scope: !5681)
!5684 = !DILocation(line: 105, column: 6, scope: !5657)
!5685 = !DILocalVariable(name: "th", scope: !5686, file: !3, line: 106, type: !4044)
!5686 = distinct !DILexicalBlock(scope: !5681, file: !3, line: 105, column: 38)
!5687 = !DILocation(line: 106, column: 20, scope: !5686)
!5688 = !DILocation(line: 106, column: 37, scope: !5686)
!5689 = !DILocation(line: 106, column: 25, scope: !5686)
!5690 = !DILocalVariable(name: "i", scope: !5686, file: !3, line: 107, type: !131)
!5691 = !DILocation(line: 107, column: 7, scope: !5686)
!5692 = !DILocalVariable(name: "lowest", scope: !5686, file: !3, line: 107, type: !131)
!5693 = !DILocation(line: 107, column: 10, scope: !5686)
!5694 = !DILocation(line: 110, column: 31, scope: !5686)
!5695 = !DILocation(line: 110, column: 36, scope: !5686)
!5696 = !DILocation(line: 110, column: 9, scope: !5686)
!5697 = !DILocation(line: 110, column: 7, scope: !5686)
!5698 = !DILocation(line: 111, column: 7, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 111, column: 7)
!5700 = !DILocation(line: 111, column: 7, scope: !5686)
!5701 = !DILocation(line: 112, column: 11, scope: !5699)
!5702 = !DILocation(line: 112, column: 4, scope: !5699)
!5703 = !DILocation(line: 119, column: 10, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 119, column: 3)
!5705 = !DILocation(line: 119, column: 22, scope: !5704)
!5706 = !DILocation(line: 119, column: 8, scope: !5704)
!5707 = !DILocation(line: 119, column: 28, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5704, file: !3, line: 119, column: 3)
!5709 = !DILocation(line: 119, column: 32, scope: !5708)
!5710 = !DILocation(line: 119, column: 36, scope: !5708)
!5711 = !DILocation(line: 119, column: 30, scope: !5708)
!5712 = !DILocation(line: 119, column: 3, scope: !5704)
!5713 = !DILocation(line: 125, column: 8, scope: !5714)
!5714 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 125, column: 8)
!5715 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 119, column: 53)
!5716 = !DILocation(line: 125, column: 12, scope: !5714)
!5717 = !DILocation(line: 125, column: 18, scope: !5714)
!5718 = !DILocation(line: 125, column: 22, scope: !5714)
!5719 = !DILocation(line: 125, column: 27, scope: !5714)
!5720 = !DILocation(line: 125, column: 8, scope: !5715)
!5721 = !DILocation(line: 126, column: 9, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5723, file: !3, line: 126, column: 9)
!5723 = distinct !DILexicalBlock(scope: !5714, file: !3, line: 125, column: 47)
!5724 = !DILocation(line: 126, column: 16, scope: !5722)
!5725 = !DILocation(line: 126, column: 9, scope: !5723)
!5726 = !DILocation(line: 127, column: 26, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5722, file: !3, line: 126, column: 22)
!5728 = !DILocation(line: 127, column: 30, scope: !5727)
!5729 = !DILocation(line: 127, column: 36, scope: !5727)
!5730 = !DILocation(line: 127, column: 6, scope: !5727)
!5731 = !DILocation(line: 127, column: 10, scope: !5727)
!5732 = !DILocation(line: 127, column: 16, scope: !5727)
!5733 = !DILocation(line: 127, column: 24, scope: !5727)
!5734 = !DILocation(line: 128, column: 6, scope: !5727)
!5735 = !DILocation(line: 128, column: 10, scope: !5727)
!5736 = !DILocation(line: 128, column: 16, scope: !5727)
!5737 = !DILocation(line: 128, column: 19, scope: !5727)
!5738 = !DILocation(line: 129, column: 6, scope: !5727)
!5739 = !DILocation(line: 130, column: 5, scope: !5727)
!5740 = !DILocation(line: 132, column: 5, scope: !5723)
!5741 = !DILocation(line: 135, column: 8, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 135, column: 8)
!5743 = !DILocation(line: 135, column: 15, scope: !5742)
!5744 = !DILocation(line: 135, column: 8, scope: !5715)
!5745 = !DILocation(line: 136, column: 14, scope: !5742)
!5746 = !DILocation(line: 136, column: 12, scope: !5742)
!5747 = !DILocation(line: 136, column: 5, scope: !5742)
!5748 = !DILocation(line: 138, column: 27, scope: !5715)
!5749 = !DILocation(line: 138, column: 31, scope: !5715)
!5750 = !DILocation(line: 138, column: 37, scope: !5715)
!5751 = !DILocation(line: 138, column: 4, scope: !5715)
!5752 = !DILocation(line: 139, column: 4, scope: !5715)
!5753 = !DILocation(line: 139, column: 8, scope: !5715)
!5754 = !DILocation(line: 139, column: 14, scope: !5715)
!5755 = !DILocation(line: 139, column: 17, scope: !5715)
!5756 = !DILocation(line: 140, column: 3, scope: !5715)
!5757 = !DILocation(line: 119, column: 49, scope: !5708)
!5758 = !DILocation(line: 119, column: 3, scope: !5708)
!5759 = distinct !{!5759, !5712, !5760}
!5760 = !DILocation(line: 140, column: 3, scope: !5704)
!5761 = !DILocation(line: 142, column: 7, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 142, column: 7)
!5763 = !DILocation(line: 142, column: 14, scope: !5762)
!5764 = !DILocation(line: 142, column: 7, scope: !5686)
!5765 = !DILocation(line: 143, column: 21, scope: !5762)
!5766 = !DILocation(line: 143, column: 4, scope: !5762)
!5767 = !DILocation(line: 143, column: 8, scope: !5762)
!5768 = !DILocation(line: 143, column: 19, scope: !5762)
!5769 = !DILocation(line: 144, column: 2, scope: !5686)
!5770 = !DILocation(line: 146, column: 6, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 146, column: 6)
!5772 = !DILocation(line: 146, column: 13, scope: !5771)
!5773 = !DILocation(line: 146, column: 6, scope: !5657)
!5774 = !DILocation(line: 147, column: 23, scope: !5771)
!5775 = !DILocation(line: 147, column: 30, scope: !5771)
!5776 = !DILocation(line: 147, column: 34, scope: !5771)
!5777 = !DILocation(line: 147, column: 40, scope: !5771)
!5778 = !DILocation(line: 147, column: 47, scope: !5771)
!5779 = !DILocation(line: 147, column: 3, scope: !5771)
!5780 = !DILocation(line: 149, column: 22, scope: !5657)
!5781 = !DILocation(line: 149, column: 2, scope: !5657)
!5782 = !DILocation(line: 151, column: 2, scope: !5657)
!5783 = !DILocation(line: 151, column: 9, scope: !5657)
!5784 = !DILocation(line: 151, column: 16, scope: !5657)
!5785 = !DILocation(line: 153, column: 31, scope: !5786)
!5786 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 153, column: 6)
!5787 = !DILocation(line: 153, column: 6, scope: !5786)
!5788 = !DILocation(line: 153, column: 6, scope: !5657)
!5789 = !DILocalVariable(name: "hubdrv", scope: !5790, file: !3, line: 154, type: !3814)
!5790 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 153, column: 39)
!5791 = !DILocation(line: 154, column: 27, scope: !5790)
!5792 = !DILocalVariable(name: "__mptr", scope: !5793, file: !3, line: 155, type: !134)
!5793 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 155, column: 4)
!5794 = !DILocation(line: 155, column: 4, scope: !5793)
!5795 = !DILocation(line: 155, column: 4, scope: !5796)
!5796 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 155, column: 4)
!5797 = !DILocation(line: 157, column: 7, scope: !5798)
!5798 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 157, column: 7)
!5799 = !DILocation(line: 157, column: 12, scope: !5798)
!5800 = !DILocation(line: 157, column: 16, scope: !5798)
!5801 = !DILocation(line: 157, column: 7, scope: !5790)
!5802 = !DILocation(line: 159, column: 4, scope: !5798)
!5803 = !DILocation(line: 159, column: 12, scope: !5798)
!5804 = !DILocation(line: 159, column: 21, scope: !5798)
!5805 = !DILocation(line: 159, column: 26, scope: !5798)
!5806 = !DILocation(line: 160, column: 2, scope: !5790)
!5807 = !DILocation(line: 162, column: 21, scope: !5657)
!5808 = !DILocation(line: 162, column: 2, scope: !5657)
!5809 = !DILocation(line: 163, column: 24, scope: !5657)
!5810 = !DILocation(line: 163, column: 2, scope: !5657)
!5811 = !DILocation(line: 164, column: 20, scope: !5657)
!5812 = !DILocation(line: 164, column: 2, scope: !5657)
!5813 = !DILocation(line: 166, column: 2, scope: !5657)
!5814 = !DILocation(line: 167, column: 1, scope: !5657)
!5815 = distinct !DISubprogram(name: "pm_runtime_set_active", scope: !5008, file: !5008, line: 495, type: !3364, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5816 = !DILocalVariable(name: "dev", arg: 1, scope: !5815, file: !5008, line: 495, type: !3332)
!5817 = !DILocation(line: 495, column: 56, scope: !5815)
!5818 = !DILocation(line: 497, column: 33, scope: !5815)
!5819 = !DILocation(line: 497, column: 9, scope: !5815)
!5820 = !DILocation(line: 497, column: 2, scope: !5815)
!5821 = distinct !DISubprogram(name: "intel_th_output_assigned", scope: !100, file: !100, line: 132, type: !5822, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5822 = !DISubroutineType(types: !5823)
!5823 = !{!420, !135}
!5824 = !DILocalVariable(name: "thdev", arg: 1, scope: !5821, file: !100, line: 132, type: !135)
!5825 = !DILocation(line: 132, column: 50, scope: !5821)
!5826 = !DILocation(line: 134, column: 9, scope: !5821)
!5827 = !DILocation(line: 134, column: 16, scope: !5821)
!5828 = !DILocation(line: 134, column: 21, scope: !5821)
!5829 = !DILocation(line: 134, column: 40, scope: !5821)
!5830 = !DILocation(line: 135, column: 4, scope: !5821)
!5831 = !DILocation(line: 135, column: 11, scope: !5821)
!5832 = !DILocation(line: 135, column: 18, scope: !5821)
!5833 = !DILocation(line: 135, column: 23, scope: !5821)
!5834 = !DILocation(line: 135, column: 28, scope: !5821)
!5835 = !DILocation(line: 136, column: 4, scope: !5821)
!5836 = !DILocation(line: 136, column: 11, scope: !5821)
!5837 = !DILocation(line: 136, column: 18, scope: !5821)
!5838 = !DILocation(line: 136, column: 23, scope: !5821)
!5839 = !DILocation(line: 0, scope: !5821)
!5840 = !DILocation(line: 134, column: 2, scope: !5821)
!5841 = distinct !DISubprogram(name: "pm_runtime_disable", scope: !5008, file: !5008, line: 524, type: !3355, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5842 = !DILocalVariable(name: "dev", arg: 1, scope: !5841, file: !5008, line: 524, type: !3332)
!5843 = !DILocation(line: 524, column: 54, scope: !5841)
!5844 = !DILocation(line: 526, column: 23, scope: !5841)
!5845 = !DILocation(line: 526, column: 2, scope: !5841)
!5846 = !DILocation(line: 527, column: 1, scope: !5841)
!5847 = distinct !DISubprogram(name: "to_intel_th", scope: !100, file: !100, line: 215, type: !5848, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5848 = !DISubroutineType(types: !5849)
!5849 = !{!4044, !135}
!5850 = !DILocalVariable(name: "thdev", arg: 1, scope: !5847, file: !100, line: 215, type: !135)
!5851 = !DILocation(line: 215, column: 68, scope: !5847)
!5852 = !DILocation(line: 217, column: 6, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5847, file: !100, line: 217, column: 6)
!5854 = !DILocation(line: 217, column: 13, scope: !5853)
!5855 = !DILocation(line: 217, column: 18, scope: !5853)
!5856 = !DILocation(line: 217, column: 6, scope: !5847)
!5857 = !DILocation(line: 218, column: 30, scope: !5853)
!5858 = !DILocation(line: 218, column: 11, scope: !5853)
!5859 = !DILocation(line: 218, column: 9, scope: !5853)
!5860 = !DILocation(line: 218, column: 3, scope: !5853)
!5861 = !DILocalVariable(name: "__ret_warn_on", scope: !5862, file: !100, line: 220, type: !131)
!5862 = distinct !DILexicalBlock(scope: !5863, file: !100, line: 220, column: 6)
!5863 = distinct !DILexicalBlock(scope: !5847, file: !100, line: 220, column: 6)
!5864 = !DILocation(line: 220, column: 6, scope: !5862)
!5865 = !DILocation(line: 220, column: 6, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5862, file: !100, line: 220, column: 6)
!5867 = !DILocation(line: 220, column: 6, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5866, file: !100, line: 220, column: 6)
!5869 = !DILocation(line: 220, column: 6, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !5868, file: !100, line: 220, column: 6)
!5871 = !DILocation(line: 220, column: 6, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5868, file: !100, line: 220, column: 6)
!5873 = !{i32 -2141665933, i32 -2141665904, i32 -2141665858, i32 -2141665800, i32 -2141665746, i32 -2141665692, i32 -2141665637, i32 -2141665606}
!5874 = !DILocation(line: 220, column: 6, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5868, file: !100, line: 220, column: 6)
!5876 = !{i32 -2141665176, i32 -2141665169, i32 -2141665117, i32 -2141665086, i32 -2141665056}
!5877 = !DILocation(line: 220, column: 6, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5868, file: !100, line: 220, column: 6)
!5879 = !DILocation(line: 220, column: 6, scope: !5863)
!5880 = !DILocation(line: 220, column: 6, scope: !5847)
!5881 = !DILocation(line: 221, column: 3, scope: !5863)
!5882 = !DILocation(line: 223, column: 25, scope: !5847)
!5883 = !DILocation(line: 223, column: 32, scope: !5847)
!5884 = !DILocation(line: 223, column: 36, scope: !5847)
!5885 = !DILocation(line: 223, column: 9, scope: !5847)
!5886 = !DILocation(line: 223, column: 2, scope: !5847)
!5887 = !DILocation(line: 224, column: 1, scope: !5847)
!5888 = distinct !DISubprogram(name: "intel_th_child_remove", scope: !3, file: !3, line: 41, type: !5889, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5889 = !DISubroutineType(types: !5890)
!5890 = !{!131, !3332, !134}
!5891 = !DILocalVariable(name: "dev", arg: 1, scope: !5888, file: !3, line: 41, type: !3332)
!5892 = !DILocation(line: 41, column: 49, scope: !5888)
!5893 = !DILocalVariable(name: "data", arg: 2, scope: !5888, file: !3, line: 41, type: !134)
!5894 = !DILocation(line: 41, column: 60, scope: !5888)
!5895 = !DILocation(line: 43, column: 24, scope: !5888)
!5896 = !DILocation(line: 43, column: 2, scope: !5888)
!5897 = !DILocation(line: 45, column: 2, scope: !5888)
!5898 = distinct !DISubprogram(name: "to_intel_th_parent", scope: !100, file: !100, line: 205, type: !5444, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5899 = !DILocalVariable(name: "thdev", arg: 1, scope: !5898, file: !100, line: 205, type: !135)
!5900 = !DILocation(line: 205, column: 44, scope: !5898)
!5901 = !DILocalVariable(name: "parent", scope: !5898, file: !100, line: 207, type: !3332)
!5902 = !DILocation(line: 207, column: 17, scope: !5898)
!5903 = !DILocation(line: 207, column: 26, scope: !5898)
!5904 = !DILocation(line: 207, column: 33, scope: !5898)
!5905 = !DILocation(line: 207, column: 37, scope: !5898)
!5906 = !DILocation(line: 209, column: 7, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5898, file: !100, line: 209, column: 6)
!5908 = !DILocation(line: 209, column: 6, scope: !5898)
!5909 = !DILocation(line: 210, column: 3, scope: !5907)
!5910 = !DILocalVariable(name: "__mptr", scope: !5911, file: !100, line: 212, type: !134)
!5911 = distinct !DILexicalBlock(scope: !5898, file: !100, line: 212, column: 9)
!5912 = !DILocation(line: 212, column: 9, scope: !5911)
!5913 = !DILocation(line: 212, column: 9, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !5911, file: !100, line: 212, column: 9)
!5915 = !DILocation(line: 212, column: 2, scope: !5898)
!5916 = !DILocation(line: 213, column: 1, scope: !5898)
!5917 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !67, file: !67, line: 655, type: !5918, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5918 = !DISubroutineType(types: !5919)
!5919 = !{!134, !3669}
!5920 = !DILocalVariable(name: "dev", arg: 1, scope: !5917, file: !67, line: 655, type: !3669)
!5921 = !DILocation(line: 655, column: 58, scope: !5917)
!5922 = !DILocation(line: 657, column: 9, scope: !5917)
!5923 = !DILocation(line: 657, column: 14, scope: !5917)
!5924 = !DILocation(line: 657, column: 2, scope: !5917)
!5925 = distinct !DISubprogram(name: "intel_th_device_alloc", scope: !3, file: !3, line: 355, type: !5926, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!5926 = !DISubroutineType(types: !5927)
!5927 = !{!135, !4044, !7, !146, !131}
!5928 = !DILocalVariable(name: "th", arg: 1, scope: !5925, file: !3, line: 355, type: !4044)
!5929 = !DILocation(line: 355, column: 40, scope: !5925)
!5930 = !DILocalVariable(name: "type", arg: 2, scope: !5925, file: !3, line: 355, type: !7)
!5931 = !DILocation(line: 355, column: 57, scope: !5925)
!5932 = !DILocalVariable(name: "name", arg: 3, scope: !5925, file: !3, line: 355, type: !146)
!5933 = !DILocation(line: 355, column: 75, scope: !5925)
!5934 = !DILocalVariable(name: "id", arg: 4, scope: !5925, file: !3, line: 356, type: !131)
!5935 = !DILocation(line: 356, column: 13, scope: !5925)
!5936 = !DILocalVariable(name: "parent", scope: !5925, file: !3, line: 358, type: !3332)
!5937 = !DILocation(line: 358, column: 17, scope: !5925)
!5938 = !DILocalVariable(name: "thdev", scope: !5925, file: !3, line: 359, type: !135)
!5939 = !DILocation(line: 359, column: 26, scope: !5925)
!5940 = !DILocation(line: 361, column: 6, scope: !5941)
!5941 = distinct !DILexicalBlock(scope: !5925, file: !3, line: 361, column: 6)
!5942 = !DILocation(line: 361, column: 11, scope: !5941)
!5943 = !DILocation(line: 361, column: 6, scope: !5925)
!5944 = !DILocation(line: 362, column: 13, scope: !5941)
!5945 = !DILocation(line: 362, column: 17, scope: !5941)
!5946 = !DILocation(line: 362, column: 22, scope: !5941)
!5947 = !DILocation(line: 362, column: 10, scope: !5941)
!5948 = !DILocation(line: 362, column: 3, scope: !5941)
!5949 = !DILocation(line: 364, column: 12, scope: !5941)
!5950 = !DILocation(line: 364, column: 16, scope: !5941)
!5951 = !DILocation(line: 364, column: 10, scope: !5941)
!5952 = !DILocation(line: 366, column: 42, scope: !5925)
!5953 = !DILocation(line: 366, column: 35, scope: !5925)
!5954 = !DILocation(line: 366, column: 33, scope: !5925)
!5955 = !DILocation(line: 366, column: 48, scope: !5925)
!5956 = !DILocation(line: 366, column: 10, scope: !5925)
!5957 = !DILocation(line: 366, column: 8, scope: !5925)
!5958 = !DILocation(line: 367, column: 7, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5925, file: !3, line: 367, column: 6)
!5960 = !DILocation(line: 367, column: 6, scope: !5925)
!5961 = !DILocation(line: 368, column: 3, scope: !5959)
!5962 = !DILocation(line: 370, column: 14, scope: !5925)
!5963 = !DILocation(line: 370, column: 2, scope: !5925)
!5964 = !DILocation(line: 370, column: 9, scope: !5925)
!5965 = !DILocation(line: 370, column: 12, scope: !5925)
!5966 = !DILocation(line: 371, column: 16, scope: !5925)
!5967 = !DILocation(line: 371, column: 2, scope: !5925)
!5968 = !DILocation(line: 371, column: 9, scope: !5925)
!5969 = !DILocation(line: 371, column: 14, scope: !5925)
!5970 = !DILocation(line: 373, column: 9, scope: !5925)
!5971 = !DILocation(line: 373, column: 16, scope: !5925)
!5972 = !DILocation(line: 373, column: 22, scope: !5925)
!5973 = !DILocation(line: 373, column: 2, scope: !5925)
!5974 = !DILocation(line: 374, column: 21, scope: !5925)
!5975 = !DILocation(line: 374, column: 28, scope: !5925)
!5976 = !DILocation(line: 374, column: 2, scope: !5925)
!5977 = !DILocation(line: 375, column: 2, scope: !5925)
!5978 = !DILocation(line: 375, column: 9, scope: !5925)
!5979 = !DILocation(line: 375, column: 13, scope: !5925)
!5980 = !DILocation(line: 375, column: 17, scope: !5925)
!5981 = !DILocation(line: 376, column: 41, scope: !5925)
!5982 = !DILocation(line: 376, column: 20, scope: !5925)
!5983 = !DILocation(line: 376, column: 2, scope: !5925)
!5984 = !DILocation(line: 376, column: 9, scope: !5925)
!5985 = !DILocation(line: 376, column: 13, scope: !5925)
!5986 = !DILocation(line: 376, column: 18, scope: !5925)
!5987 = !DILocation(line: 377, column: 22, scope: !5925)
!5988 = !DILocation(line: 377, column: 2, scope: !5925)
!5989 = !DILocation(line: 377, column: 9, scope: !5925)
!5990 = !DILocation(line: 377, column: 13, scope: !5925)
!5991 = !DILocation(line: 377, column: 20, scope: !5925)
!5992 = !DILocation(line: 378, column: 24, scope: !5925)
!5993 = !DILocation(line: 378, column: 32, scope: !5925)
!5994 = !DILocation(line: 378, column: 2, scope: !5925)
!5995 = !DILocation(line: 378, column: 9, scope: !5925)
!5996 = !DILocation(line: 378, column: 13, scope: !5925)
!5997 = !DILocation(line: 378, column: 22, scope: !5925)
!5998 = !DILocation(line: 379, column: 25, scope: !5925)
!5999 = !DILocation(line: 379, column: 33, scope: !5925)
!6000 = !DILocation(line: 379, column: 2, scope: !5925)
!6001 = !DILocation(line: 379, column: 9, scope: !5925)
!6002 = !DILocation(line: 379, column: 13, scope: !5925)
!6003 = !DILocation(line: 379, column: 23, scope: !5925)
!6004 = !DILocation(line: 380, column: 25, scope: !5925)
!6005 = !DILocation(line: 380, column: 32, scope: !5925)
!6006 = !DILocation(line: 380, column: 37, scope: !5925)
!6007 = !DILocation(line: 380, column: 45, scope: !5925)
!6008 = !DILocation(line: 380, column: 2, scope: !5925)
!6009 = !DILocation(line: 381, column: 6, scope: !6010)
!6010 = distinct !DILexicalBlock(scope: !5925, file: !3, line: 381, column: 6)
!6011 = !DILocation(line: 381, column: 9, scope: !6010)
!6012 = !DILocation(line: 381, column: 6, scope: !5925)
!6013 = !DILocation(line: 382, column: 17, scope: !6010)
!6014 = !DILocation(line: 382, column: 24, scope: !6010)
!6015 = !DILocation(line: 382, column: 40, scope: !6010)
!6016 = !DILocation(line: 382, column: 44, scope: !6010)
!6017 = !DILocation(line: 382, column: 48, scope: !6010)
!6018 = !DILocation(line: 382, column: 54, scope: !6010)
!6019 = !DILocation(line: 382, column: 3, scope: !6010)
!6020 = !DILocation(line: 384, column: 17, scope: !6010)
!6021 = !DILocation(line: 384, column: 24, scope: !6010)
!6022 = !DILocation(line: 384, column: 38, scope: !6010)
!6023 = !DILocation(line: 384, column: 42, scope: !6010)
!6024 = !DILocation(line: 384, column: 46, scope: !6010)
!6025 = !DILocation(line: 384, column: 3, scope: !6010)
!6026 = !DILocation(line: 386, column: 9, scope: !5925)
!6027 = !DILocation(line: 386, column: 2, scope: !5925)
!6028 = !DILocation(line: 387, column: 1, scope: !5925)
!6029 = distinct !DISubprogram(name: "resource_size", scope: !3789, file: !3789, line: 210, type: !6030, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!6030 = !DISubroutineType(types: !6031)
!6031 = !{!3792, !6032}
!6032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6033, size: 64)
!6033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3788)
!6034 = !DILocalVariable(name: "res", arg: 1, scope: !6029, file: !3789, line: 210, type: !6032)
!6035 = !DILocation(line: 210, column: 68, scope: !6029)
!6036 = !DILocation(line: 212, column: 9, scope: !6029)
!6037 = !DILocation(line: 212, column: 14, scope: !6029)
!6038 = !DILocation(line: 212, column: 20, scope: !6029)
!6039 = !DILocation(line: 212, column: 25, scope: !6029)
!6040 = !DILocation(line: 212, column: 18, scope: !6029)
!6041 = !DILocation(line: 212, column: 31, scope: !6029)
!6042 = !DILocation(line: 212, column: 2, scope: !6029)
!6043 = distinct !DISubprogram(name: "intel_th_device_add_resources", scope: !3, file: !3, line: 389, type: !6044, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!6044 = !DISubroutineType(types: !6045)
!6045 = !{!131, !135, !3787, !131}
!6046 = !DILocalVariable(name: "thdev", arg: 1, scope: !6043, file: !3, line: 389, type: !135)
!6047 = !DILocation(line: 389, column: 66, scope: !6043)
!6048 = !DILocalVariable(name: "res", arg: 2, scope: !6043, file: !3, line: 390, type: !3787)
!6049 = !DILocation(line: 390, column: 24, scope: !6043)
!6050 = !DILocalVariable(name: "nres", arg: 3, scope: !6043, file: !3, line: 390, type: !131)
!6051 = !DILocation(line: 390, column: 33, scope: !6043)
!6052 = !DILocalVariable(name: "r", scope: !6043, file: !3, line: 392, type: !3787)
!6053 = !DILocation(line: 392, column: 19, scope: !6043)
!6054 = !DILocation(line: 394, column: 14, scope: !6043)
!6055 = !DILocation(line: 394, column: 34, scope: !6043)
!6056 = !DILocation(line: 394, column: 32, scope: !6043)
!6057 = !DILocation(line: 394, column: 6, scope: !6043)
!6058 = !DILocation(line: 394, column: 4, scope: !6043)
!6059 = !DILocation(line: 395, column: 7, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !6043, file: !3, line: 395, column: 6)
!6061 = !DILocation(line: 395, column: 6, scope: !6043)
!6062 = !DILocation(line: 396, column: 3, scope: !6060)
!6063 = !DILocation(line: 398, column: 20, scope: !6043)
!6064 = !DILocation(line: 398, column: 2, scope: !6043)
!6065 = !DILocation(line: 398, column: 9, scope: !6043)
!6066 = !DILocation(line: 398, column: 18, scope: !6043)
!6067 = !DILocation(line: 399, column: 25, scope: !6043)
!6068 = !DILocation(line: 399, column: 2, scope: !6043)
!6069 = !DILocation(line: 399, column: 9, scope: !6043)
!6070 = !DILocation(line: 399, column: 23, scope: !6043)
!6071 = !DILocation(line: 401, column: 2, scope: !6043)
!6072 = !DILocation(line: 402, column: 1, scope: !6043)
!6073 = distinct !DISubprogram(name: "intel_th_request_hub_module", scope: !3, file: !3, line: 588, type: !4057, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!6074 = !DILocalVariable(name: "th", arg: 1, scope: !6073, file: !3, line: 588, type: !4044)
!6075 = !DILocation(line: 588, column: 64, scope: !6073)
!6076 = !DILocation(line: 590, column: 2, scope: !6073)
!6077 = distinct !DISubprogram(name: "intel_th_device_release", scope: !3, file: !3, line: 178, type: !3355, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!6078 = !DILocalVariable(name: "dev", arg: 1, scope: !6077, file: !3, line: 178, type: !3332)
!6079 = !DILocation(line: 178, column: 52, scope: !6077)
!6080 = !DILocalVariable(name: "__mptr", scope: !6081, file: !3, line: 180, type: !134)
!6081 = distinct !DILexicalBlock(scope: !6077, file: !3, line: 180, column: 23)
!6082 = !DILocation(line: 180, column: 23, scope: !6081)
!6083 = !DILocation(line: 180, column: 23, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !6081, file: !3, line: 180, column: 23)
!6085 = !DILocation(line: 180, column: 2, scope: !6077)
!6086 = !DILocation(line: 181, column: 1, scope: !6077)
!6087 = distinct !DISubprogram(name: "intel_th_device_free", scope: !3, file: !3, line: 410, type: !3824, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!6088 = !DILocalVariable(name: "thdev", arg: 1, scope: !6087, file: !3, line: 410, type: !135)
!6089 = !DILocation(line: 410, column: 58, scope: !6087)
!6090 = !DILocation(line: 412, column: 8, scope: !6087)
!6091 = !DILocation(line: 412, column: 15, scope: !6087)
!6092 = !DILocation(line: 412, column: 2, scope: !6087)
!6093 = !DILocation(line: 413, column: 8, scope: !6087)
!6094 = !DILocation(line: 413, column: 2, scope: !6087)
!6095 = !DILocation(line: 414, column: 1, scope: !6087)
!6096 = distinct !DISubprogram(name: "intel_th_output_devnode", scope: !3, file: !3, line: 188, type: !3350, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!6097 = !DILocalVariable(name: "dev", arg: 1, scope: !6096, file: !3, line: 188, type: !3332)
!6098 = !DILocation(line: 188, column: 53, scope: !6096)
!6099 = !DILocalVariable(name: "mode", arg: 2, scope: !6096, file: !3, line: 188, type: !3352)
!6100 = !DILocation(line: 188, column: 67, scope: !6096)
!6101 = !DILocalVariable(name: "uid", arg: 3, scope: !6096, file: !3, line: 189, type: !3192)
!6102 = !DILocation(line: 189, column: 18, scope: !6096)
!6103 = !DILocalVariable(name: "gid", arg: 4, scope: !6096, file: !3, line: 189, type: !3193)
!6104 = !DILocation(line: 189, column: 31, scope: !6096)
!6105 = !DILocalVariable(name: "thdev", scope: !6096, file: !3, line: 191, type: !135)
!6106 = !DILocation(line: 191, column: 26, scope: !6096)
!6107 = !DILocalVariable(name: "__mptr", scope: !6108, file: !3, line: 191, type: !134)
!6108 = distinct !DILexicalBlock(scope: !6096, file: !3, line: 191, column: 34)
!6109 = !DILocation(line: 191, column: 34, scope: !6108)
!6110 = !DILocation(line: 191, column: 34, scope: !6111)
!6111 = distinct !DILexicalBlock(scope: !6108, file: !3, line: 191, column: 34)
!6112 = !DILocalVariable(name: "th", scope: !6096, file: !3, line: 192, type: !4044)
!6113 = !DILocation(line: 192, column: 19, scope: !6096)
!6114 = !DILocation(line: 192, column: 36, scope: !6096)
!6115 = !DILocation(line: 192, column: 24, scope: !6096)
!6116 = !DILocalVariable(name: "node", scope: !6096, file: !3, line: 193, type: !204)
!6117 = !DILocation(line: 193, column: 8, scope: !6096)
!6118 = !DILocation(line: 195, column: 6, scope: !6119)
!6119 = distinct !DILexicalBlock(scope: !6096, file: !3, line: 195, column: 6)
!6120 = !DILocation(line: 195, column: 13, scope: !6119)
!6121 = !DILocation(line: 195, column: 16, scope: !6119)
!6122 = !DILocation(line: 195, column: 6, scope: !6096)
!6123 = !DILocation(line: 196, column: 51, scope: !6119)
!6124 = !DILocation(line: 196, column: 55, scope: !6119)
!6125 = !DILocation(line: 197, column: 6, scope: !6119)
!6126 = !DILocation(line: 197, column: 13, scope: !6119)
!6127 = !DILocation(line: 197, column: 19, scope: !6119)
!6128 = !DILocation(line: 197, column: 26, scope: !6119)
!6129 = !DILocation(line: 196, column: 10, scope: !6119)
!6130 = !DILocation(line: 196, column: 8, scope: !6119)
!6131 = !DILocation(line: 196, column: 3, scope: !6119)
!6132 = !DILocation(line: 199, column: 49, scope: !6119)
!6133 = !DILocation(line: 199, column: 53, scope: !6119)
!6134 = !DILocation(line: 200, column: 6, scope: !6119)
!6135 = !DILocation(line: 200, column: 13, scope: !6119)
!6136 = !DILocation(line: 199, column: 10, scope: !6119)
!6137 = !DILocation(line: 199, column: 8, scope: !6119)
!6138 = !DILocation(line: 202, column: 9, scope: !6096)
!6139 = !DILocation(line: 202, column: 2, scope: !6096)
!6140 = distinct !DISubprogram(name: "port_show", scope: !3, file: !3, line: 205, type: !3984, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!6141 = !DILocalVariable(name: "dev", arg: 1, scope: !6140, file: !3, line: 205, type: !3332)
!6142 = !DILocation(line: 205, column: 41, scope: !6140)
!6143 = !DILocalVariable(name: "attr", arg: 2, scope: !6140, file: !3, line: 205, type: !3986)
!6144 = !DILocation(line: 205, column: 71, scope: !6140)
!6145 = !DILocalVariable(name: "buf", arg: 3, scope: !6140, file: !3, line: 206, type: !204)
!6146 = !DILocation(line: 206, column: 11, scope: !6140)
!6147 = !DILocalVariable(name: "thdev", scope: !6140, file: !3, line: 208, type: !135)
!6148 = !DILocation(line: 208, column: 26, scope: !6140)
!6149 = !DILocalVariable(name: "__mptr", scope: !6150, file: !3, line: 208, type: !134)
!6150 = distinct !DILexicalBlock(scope: !6140, file: !3, line: 208, column: 34)
!6151 = !DILocation(line: 208, column: 34, scope: !6150)
!6152 = !DILocation(line: 208, column: 34, scope: !6153)
!6153 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 208, column: 34)
!6154 = !DILocation(line: 210, column: 6, scope: !6155)
!6155 = distinct !DILexicalBlock(scope: !6140, file: !3, line: 210, column: 6)
!6156 = !DILocation(line: 210, column: 13, scope: !6155)
!6157 = !DILocation(line: 210, column: 20, scope: !6155)
!6158 = !DILocation(line: 210, column: 25, scope: !6155)
!6159 = !DILocation(line: 210, column: 6, scope: !6140)
!6160 = !DILocation(line: 211, column: 20, scope: !6155)
!6161 = !DILocation(line: 211, column: 44, scope: !6155)
!6162 = !DILocation(line: 211, column: 51, scope: !6155)
!6163 = !DILocation(line: 211, column: 58, scope: !6155)
!6164 = !DILocation(line: 211, column: 10, scope: !6155)
!6165 = !DILocation(line: 211, column: 3, scope: !6155)
!6166 = !DILocation(line: 213, column: 19, scope: !6140)
!6167 = !DILocation(line: 213, column: 9, scope: !6140)
!6168 = !DILocation(line: 213, column: 2, scope: !6140)
!6169 = !DILocation(line: 214, column: 1, scope: !6140)
!6170 = distinct !DISubprogram(name: "active_show", scope: !3, file: !3, line: 280, type: !3984, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!6171 = !DILocalVariable(name: "dev", arg: 1, scope: !6170, file: !3, line: 280, type: !3332)
!6172 = !DILocation(line: 280, column: 43, scope: !6170)
!6173 = !DILocalVariable(name: "attr", arg: 2, scope: !6170, file: !3, line: 280, type: !3986)
!6174 = !DILocation(line: 280, column: 73, scope: !6170)
!6175 = !DILocalVariable(name: "buf", arg: 3, scope: !6170, file: !3, line: 281, type: !204)
!6176 = !DILocation(line: 281, column: 13, scope: !6170)
!6177 = !DILocalVariable(name: "thdev", scope: !6170, file: !3, line: 283, type: !135)
!6178 = !DILocation(line: 283, column: 26, scope: !6170)
!6179 = !DILocalVariable(name: "__mptr", scope: !6180, file: !3, line: 283, type: !134)
!6180 = distinct !DILexicalBlock(scope: !6170, file: !3, line: 283, column: 34)
!6181 = !DILocation(line: 283, column: 34, scope: !6180)
!6182 = !DILocation(line: 283, column: 34, scope: !6183)
!6183 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 283, column: 34)
!6184 = !DILocation(line: 285, column: 19, scope: !6170)
!6185 = !DILocation(line: 285, column: 43, scope: !6170)
!6186 = !DILocation(line: 285, column: 50, scope: !6170)
!6187 = !DILocation(line: 285, column: 57, scope: !6170)
!6188 = !DILocation(line: 285, column: 9, scope: !6170)
!6189 = !DILocation(line: 285, column: 2, scope: !6170)
!6190 = distinct !DISubprogram(name: "active_store", scope: !3, file: !3, line: 288, type: !3989, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!6191 = !DILocalVariable(name: "dev", arg: 1, scope: !6190, file: !3, line: 288, type: !3332)
!6192 = !DILocation(line: 288, column: 44, scope: !6190)
!6193 = !DILocalVariable(name: "attr", arg: 2, scope: !6190, file: !3, line: 288, type: !3986)
!6194 = !DILocation(line: 288, column: 74, scope: !6190)
!6195 = !DILocalVariable(name: "buf", arg: 3, scope: !6190, file: !3, line: 289, type: !146)
!6196 = !DILocation(line: 289, column: 20, scope: !6190)
!6197 = !DILocalVariable(name: "size", arg: 4, scope: !6190, file: !3, line: 289, type: !251)
!6198 = !DILocation(line: 289, column: 32, scope: !6190)
!6199 = !DILocalVariable(name: "thdev", scope: !6190, file: !3, line: 291, type: !135)
!6200 = !DILocation(line: 291, column: 26, scope: !6190)
!6201 = !DILocalVariable(name: "__mptr", scope: !6202, file: !3, line: 291, type: !134)
!6202 = distinct !DILexicalBlock(scope: !6190, file: !3, line: 291, column: 34)
!6203 = !DILocation(line: 291, column: 34, scope: !6202)
!6204 = !DILocation(line: 291, column: 34, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6202, file: !3, line: 291, column: 34)
!6206 = !DILocalVariable(name: "val", scope: !6190, file: !3, line: 292, type: !254)
!6207 = !DILocation(line: 292, column: 16, scope: !6190)
!6208 = !DILocalVariable(name: "ret", scope: !6190, file: !3, line: 293, type: !131)
!6209 = !DILocation(line: 293, column: 6, scope: !6190)
!6210 = !DILocation(line: 295, column: 17, scope: !6190)
!6211 = !DILocation(line: 295, column: 8, scope: !6190)
!6212 = !DILocation(line: 295, column: 6, scope: !6190)
!6213 = !DILocation(line: 296, column: 6, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6190, file: !3, line: 296, column: 6)
!6215 = !DILocation(line: 296, column: 6, scope: !6190)
!6216 = !DILocation(line: 297, column: 10, scope: !6214)
!6217 = !DILocation(line: 297, column: 3, scope: !6214)
!6218 = !DILocation(line: 299, column: 8, scope: !6219)
!6219 = distinct !DILexicalBlock(scope: !6190, file: !3, line: 299, column: 6)
!6220 = !DILocation(line: 299, column: 7, scope: !6219)
!6221 = !DILocation(line: 299, column: 6, scope: !6219)
!6222 = !DILocation(line: 299, column: 15, scope: !6219)
!6223 = !DILocation(line: 299, column: 22, scope: !6219)
!6224 = !DILocation(line: 299, column: 29, scope: !6219)
!6225 = !DILocation(line: 299, column: 12, scope: !6219)
!6226 = !DILocation(line: 299, column: 6, scope: !6190)
!6227 = !DILocation(line: 300, column: 7, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6229, file: !3, line: 300, column: 7)
!6229 = distinct !DILexicalBlock(scope: !6219, file: !3, line: 299, column: 37)
!6230 = !DILocation(line: 300, column: 7, scope: !6229)
!6231 = !DILocation(line: 301, column: 35, scope: !6228)
!6232 = !DILocation(line: 301, column: 10, scope: !6228)
!6233 = !DILocation(line: 301, column: 8, scope: !6228)
!6234 = !DILocation(line: 301, column: 4, scope: !6228)
!6235 = !DILocation(line: 303, column: 31, scope: !6228)
!6236 = !DILocation(line: 303, column: 4, scope: !6228)
!6237 = !DILocation(line: 304, column: 2, scope: !6229)
!6238 = !DILocation(line: 306, column: 9, scope: !6190)
!6239 = !DILocation(line: 306, column: 15, scope: !6190)
!6240 = !DILocation(line: 306, column: 21, scope: !6190)
!6241 = !DILocation(line: 306, column: 2, scope: !6190)
!6242 = !DILocation(line: 307, column: 1, scope: !6190)
!6243 = distinct !DISubprogram(name: "kstrtoul", scope: !6244, file: !6244, line: 351, type: !6245, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!6244 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!6245 = !DISubroutineType(types: !6246)
!6246 = !{!131, !146, !7, !6247}
!6247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!6248 = !DILocalVariable(name: "s", arg: 1, scope: !6243, file: !6244, line: 351, type: !146)
!6249 = !DILocation(line: 351, column: 53, scope: !6243)
!6250 = !DILocalVariable(name: "base", arg: 2, scope: !6243, file: !6244, line: 351, type: !7)
!6251 = !DILocation(line: 351, column: 69, scope: !6243)
!6252 = !DILocalVariable(name: "res", arg: 3, scope: !6243, file: !6244, line: 351, type: !6247)
!6253 = !DILocation(line: 351, column: 90, scope: !6243)
!6254 = !DILocation(line: 359, column: 20, scope: !6255)
!6255 = distinct !DILexicalBlock(scope: !6243, file: !6244, line: 357, column: 6)
!6256 = !DILocation(line: 359, column: 23, scope: !6255)
!6257 = !DILocation(line: 359, column: 51, scope: !6255)
!6258 = !DILocation(line: 359, column: 10, scope: !6255)
!6259 = !DILocation(line: 359, column: 3, scope: !6255)
!6260 = distinct !DISubprogram(name: "intel_th_output_activate", scope: !3, file: !3, line: 218, type: !3820, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!6261 = !DILocalVariable(name: "thdev", arg: 1, scope: !6260, file: !3, line: 218, type: !135)
!6262 = !DILocation(line: 218, column: 61, scope: !6260)
!6263 = !DILocalVariable(name: "thdrv", scope: !6260, file: !3, line: 220, type: !3814)
!6264 = !DILocation(line: 220, column: 26, scope: !6260)
!6265 = !DILocation(line: 221, column: 3, scope: !6260)
!6266 = !DILocalVariable(name: "__mptr", scope: !6267, file: !3, line: 221, type: !134)
!6267 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 221, column: 3)
!6268 = !DILocation(line: 221, column: 3, scope: !6267)
!6269 = !DILocation(line: 221, column: 3, scope: !6270)
!6270 = distinct !DILexicalBlock(scope: !6267, file: !3, line: 221, column: 3)
!6271 = !DILocalVariable(name: "th", scope: !6260, file: !3, line: 222, type: !4044)
!6272 = !DILocation(line: 222, column: 19, scope: !6260)
!6273 = !DILocation(line: 222, column: 36, scope: !6260)
!6274 = !DILocation(line: 222, column: 24, scope: !6260)
!6275 = !DILocalVariable(name: "ret", scope: !6260, file: !3, line: 223, type: !131)
!6276 = !DILocation(line: 223, column: 6, scope: !6260)
!6277 = !DILocation(line: 225, column: 7, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 225, column: 6)
!6279 = !DILocation(line: 225, column: 6, scope: !6260)
!6280 = !DILocation(line: 226, column: 3, scope: !6278)
!6281 = !DILocation(line: 228, column: 22, scope: !6282)
!6282 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 228, column: 6)
!6283 = !DILocation(line: 228, column: 29, scope: !6282)
!6284 = !DILocation(line: 228, column: 36, scope: !6282)
!6285 = !DILocation(line: 228, column: 7, scope: !6282)
!6286 = !DILocation(line: 228, column: 6, scope: !6260)
!6287 = !DILocation(line: 229, column: 3, scope: !6282)
!6288 = !DILocation(line: 231, column: 23, scope: !6260)
!6289 = !DILocation(line: 231, column: 30, scope: !6260)
!6290 = !DILocation(line: 231, column: 2, scope: !6260)
!6291 = !DILocation(line: 233, column: 6, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 233, column: 6)
!6293 = !DILocation(line: 233, column: 10, scope: !6292)
!6294 = !DILocation(line: 233, column: 6, scope: !6260)
!6295 = !DILocation(line: 234, column: 9, scope: !6292)
!6296 = !DILocation(line: 234, column: 13, scope: !6292)
!6297 = !DILocation(line: 234, column: 22, scope: !6292)
!6298 = !DILocation(line: 234, column: 7, scope: !6292)
!6299 = !DILocation(line: 234, column: 3, scope: !6292)
!6300 = !DILocation(line: 235, column: 6, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 235, column: 6)
!6302 = !DILocation(line: 235, column: 6, scope: !6260)
!6303 = !DILocation(line: 236, column: 3, scope: !6301)
!6304 = !DILocation(line: 238, column: 6, scope: !6305)
!6305 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 238, column: 6)
!6306 = !DILocation(line: 238, column: 13, scope: !6305)
!6307 = !DILocation(line: 238, column: 6, scope: !6260)
!6308 = !DILocation(line: 239, column: 9, scope: !6305)
!6309 = !DILocation(line: 239, column: 16, scope: !6305)
!6310 = !DILocation(line: 239, column: 25, scope: !6305)
!6311 = !DILocation(line: 239, column: 7, scope: !6305)
!6312 = !DILocation(line: 239, column: 3, scope: !6305)
!6313 = !DILocation(line: 241, column: 25, scope: !6305)
!6314 = !DILocation(line: 241, column: 3, scope: !6305)
!6315 = !DILocation(line: 243, column: 6, scope: !6316)
!6316 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 243, column: 6)
!6317 = !DILocation(line: 243, column: 6, scope: !6260)
!6318 = !DILocation(line: 244, column: 3, scope: !6316)
!6319 = !DILocation(line: 246, column: 2, scope: !6260)
!6320 = !DILabel(scope: !6260, name: "fail_deactivate", file: !3, line: 248)
!6321 = !DILocation(line: 248, column: 1, scope: !6260)
!6322 = !DILocation(line: 249, column: 6, scope: !6323)
!6323 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 249, column: 6)
!6324 = !DILocation(line: 249, column: 10, scope: !6323)
!6325 = !DILocation(line: 249, column: 6, scope: !6260)
!6326 = !DILocation(line: 250, column: 3, scope: !6323)
!6327 = !DILocation(line: 250, column: 7, scope: !6323)
!6328 = !DILocation(line: 250, column: 18, scope: !6323)
!6329 = !DILabel(scope: !6260, name: "fail_put", file: !3, line: 252)
!6330 = !DILocation(line: 252, column: 1, scope: !6260)
!6331 = !DILocation(line: 253, column: 18, scope: !6260)
!6332 = !DILocation(line: 253, column: 25, scope: !6260)
!6333 = !DILocation(line: 253, column: 2, scope: !6260)
!6334 = !DILocation(line: 254, column: 13, scope: !6260)
!6335 = !DILocation(line: 254, column: 20, scope: !6260)
!6336 = !DILocation(line: 254, column: 27, scope: !6260)
!6337 = !DILocation(line: 254, column: 2, scope: !6260)
!6338 = !DILocation(line: 256, column: 9, scope: !6260)
!6339 = !DILocation(line: 256, column: 2, scope: !6260)
!6340 = !DILocation(line: 257, column: 1, scope: !6260)
!6341 = distinct !DISubprogram(name: "intel_th_output_deactivate", scope: !3, file: !3, line: 259, type: !3824, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!6342 = !DILocalVariable(name: "thdev", arg: 1, scope: !6341, file: !3, line: 259, type: !135)
!6343 = !DILocation(line: 259, column: 64, scope: !6341)
!6344 = !DILocalVariable(name: "thdrv", scope: !6341, file: !3, line: 261, type: !3814)
!6345 = !DILocation(line: 261, column: 26, scope: !6341)
!6346 = !DILocation(line: 262, column: 3, scope: !6341)
!6347 = !DILocalVariable(name: "__mptr", scope: !6348, file: !3, line: 262, type: !134)
!6348 = distinct !DILexicalBlock(scope: !6341, file: !3, line: 262, column: 3)
!6349 = !DILocation(line: 262, column: 3, scope: !6348)
!6350 = !DILocation(line: 262, column: 3, scope: !6351)
!6351 = distinct !DILexicalBlock(scope: !6348, file: !3, line: 262, column: 3)
!6352 = !DILocalVariable(name: "th", scope: !6341, file: !3, line: 263, type: !4044)
!6353 = !DILocation(line: 263, column: 19, scope: !6341)
!6354 = !DILocation(line: 263, column: 36, scope: !6341)
!6355 = !DILocation(line: 263, column: 24, scope: !6341)
!6356 = !DILocation(line: 265, column: 7, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6341, file: !3, line: 265, column: 6)
!6358 = !DILocation(line: 265, column: 6, scope: !6341)
!6359 = !DILocation(line: 266, column: 3, scope: !6357)
!6360 = !DILocation(line: 268, column: 6, scope: !6361)
!6361 = distinct !DILexicalBlock(scope: !6341, file: !3, line: 268, column: 6)
!6362 = !DILocation(line: 268, column: 13, scope: !6361)
!6363 = !DILocation(line: 268, column: 6, scope: !6341)
!6364 = !DILocation(line: 269, column: 3, scope: !6361)
!6365 = !DILocation(line: 269, column: 10, scope: !6361)
!6366 = !DILocation(line: 269, column: 21, scope: !6361)
!6367 = !DILocation(line: 271, column: 26, scope: !6361)
!6368 = !DILocation(line: 271, column: 3, scope: !6361)
!6369 = !DILocation(line: 273, column: 6, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6341, file: !3, line: 273, column: 6)
!6371 = !DILocation(line: 273, column: 10, scope: !6370)
!6372 = !DILocation(line: 273, column: 6, scope: !6341)
!6373 = !DILocation(line: 274, column: 3, scope: !6370)
!6374 = !DILocation(line: 274, column: 7, scope: !6370)
!6375 = !DILocation(line: 274, column: 18, scope: !6370)
!6376 = !DILocation(line: 276, column: 18, scope: !6341)
!6377 = !DILocation(line: 276, column: 25, scope: !6341)
!6378 = !DILocation(line: 276, column: 2, scope: !6341)
!6379 = !DILocation(line: 277, column: 13, scope: !6341)
!6380 = !DILocation(line: 277, column: 20, scope: !6341)
!6381 = !DILocation(line: 277, column: 27, scope: !6341)
!6382 = !DILocation(line: 277, column: 2, scope: !6341)
!6383 = !DILocation(line: 278, column: 1, scope: !6341)
!6384 = distinct !DISubprogram(name: "get_order", scope: !6385, file: !6385, line: 29, type: !6386, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!6385 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6386 = !DISubroutineType(types: !6387)
!6387 = !{!131, !254}
!6388 = !DILocalVariable(name: "x", arg: 1, scope: !6389, file: !6390, line: 366, type: !352)
!6389 = distinct !DISubprogram(name: "fls64", scope: !6390, file: !6390, line: 366, type: !6391, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!6390 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6391 = !DISubroutineType(types: !6392)
!6392 = !{!131, !352}
!6393 = !DILocation(line: 366, column: 40, scope: !6389, inlinedAt: !6394)
!6394 = distinct !DILocation(line: 46, column: 9, scope: !6384)
!6395 = !DILocalVariable(name: "bitpos", scope: !6389, file: !6390, line: 368, type: !131)
!6396 = !DILocation(line: 368, column: 6, scope: !6389, inlinedAt: !6394)
!6397 = !DILocalVariable(name: "size", arg: 1, scope: !6384, file: !6385, line: 29, type: !254)
!6398 = !DILocation(line: 29, column: 63, scope: !6384)
!6399 = !DILocation(line: 31, column: 27, scope: !6400)
!6400 = distinct !DILexicalBlock(scope: !6384, file: !6385, line: 31, column: 6)
!6401 = !DILocation(line: 31, column: 6, scope: !6400)
!6402 = !DILocation(line: 31, column: 6, scope: !6384)
!6403 = !DILocation(line: 32, column: 8, scope: !6404)
!6404 = distinct !DILexicalBlock(scope: !6405, file: !6385, line: 32, column: 7)
!6405 = distinct !DILexicalBlock(scope: !6400, file: !6385, line: 31, column: 34)
!6406 = !DILocation(line: 32, column: 7, scope: !6405)
!6407 = !DILocation(line: 33, column: 4, scope: !6404)
!6408 = !DILocation(line: 35, column: 7, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6405, file: !6385, line: 35, column: 7)
!6410 = !DILocation(line: 35, column: 12, scope: !6409)
!6411 = !DILocation(line: 35, column: 7, scope: !6405)
!6412 = !DILocation(line: 36, column: 4, scope: !6409)
!6413 = !DILocation(line: 38, column: 10, scope: !6405)
!6414 = !DILocation(line: 38, column: 28, scope: !6405)
!6415 = !DILocation(line: 38, column: 41, scope: !6405)
!6416 = !DILocation(line: 38, column: 3, scope: !6405)
!6417 = !DILocation(line: 41, column: 6, scope: !6384)
!6418 = !DILocation(line: 42, column: 7, scope: !6384)
!6419 = !DILocation(line: 46, column: 15, scope: !6384)
!6420 = !DILocation(line: 374, column: 2, scope: !6389, inlinedAt: !6394)
!6421 = !DILocation(line: 376, column: 14, scope: !6389, inlinedAt: !6394)
!6422 = !{i32 320201}
!6423 = !DILocation(line: 377, column: 9, scope: !6389, inlinedAt: !6394)
!6424 = !DILocation(line: 377, column: 16, scope: !6389, inlinedAt: !6394)
!6425 = !DILocation(line: 46, column: 2, scope: !6384)
!6426 = !DILocation(line: 48, column: 1, scope: !6384)
!6427 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6428, file: !6428, line: 30, type: !6429, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!6428 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6429 = !DISubroutineType(types: !6430)
!6430 = !{!131, !351}
!6431 = !DILocation(line: 366, column: 40, scope: !6389, inlinedAt: !6432)
!6432 = distinct !DILocation(line: 32, column: 9, scope: !6427)
!6433 = !DILocation(line: 368, column: 6, scope: !6389, inlinedAt: !6432)
!6434 = !DILocalVariable(name: "n", arg: 1, scope: !6427, file: !6428, line: 30, type: !351)
!6435 = !DILocation(line: 30, column: 21, scope: !6427)
!6436 = !DILocation(line: 32, column: 15, scope: !6427)
!6437 = !DILocation(line: 374, column: 2, scope: !6389, inlinedAt: !6432)
!6438 = !DILocation(line: 376, column: 14, scope: !6389, inlinedAt: !6432)
!6439 = !DILocation(line: 377, column: 9, scope: !6389, inlinedAt: !6432)
!6440 = !DILocation(line: 377, column: 16, scope: !6389, inlinedAt: !6432)
!6441 = !DILocation(line: 32, column: 18, scope: !6427)
!6442 = !DILocation(line: 32, column: 2, scope: !6427)
!6443 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6444, file: !6444, line: 137, type: !6445, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!6444 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6445 = !DISubroutineType(types: !6446)
!6446 = !{!134, !910, !2099, !251, !132}
!6447 = !DILocalVariable(name: "s", arg: 1, scope: !6443, file: !6444, line: 137, type: !910)
!6448 = !DILocation(line: 137, column: 54, scope: !6443)
!6449 = !DILocalVariable(name: "object", arg: 2, scope: !6443, file: !6444, line: 137, type: !2099)
!6450 = !DILocation(line: 137, column: 69, scope: !6443)
!6451 = !DILocalVariable(name: "size", arg: 3, scope: !6443, file: !6444, line: 138, type: !251)
!6452 = !DILocation(line: 138, column: 12, scope: !6443)
!6453 = !DILocalVariable(name: "flags", arg: 4, scope: !6443, file: !6444, line: 138, type: !132)
!6454 = !DILocation(line: 138, column: 24, scope: !6443)
!6455 = !DILocation(line: 140, column: 17, scope: !6443)
!6456 = !DILocation(line: 140, column: 2, scope: !6443)
!6457 = distinct !DISubprogram(name: "intel_th_output_open", scope: !3, file: !3, line: 788, type: !2892, scopeLine: 789, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!6458 = !DILocalVariable(name: "inode", arg: 1, scope: !6457, file: !3, line: 788, type: !359)
!6459 = !DILocation(line: 788, column: 47, scope: !6457)
!6460 = !DILocalVariable(name: "file", arg: 2, scope: !6457, file: !3, line: 788, type: !282)
!6461 = !DILocation(line: 788, column: 67, scope: !6457)
!6462 = !DILocalVariable(name: "fops", scope: !6457, file: !3, line: 790, type: !2835)
!6463 = !DILocation(line: 790, column: 32, scope: !6457)
!6464 = !DILocalVariable(name: "thdrv", scope: !6457, file: !3, line: 791, type: !3814)
!6465 = !DILocation(line: 791, column: 26, scope: !6457)
!6466 = !DILocalVariable(name: "dev", scope: !6457, file: !3, line: 792, type: !3332)
!6467 = !DILocation(line: 792, column: 17, scope: !6457)
!6468 = !DILocalVariable(name: "err", scope: !6457, file: !3, line: 793, type: !131)
!6469 = !DILocation(line: 793, column: 6, scope: !6457)
!6470 = !DILocation(line: 795, column: 47, scope: !6457)
!6471 = !DILocation(line: 795, column: 54, scope: !6457)
!6472 = !DILocation(line: 795, column: 8, scope: !6457)
!6473 = !DILocation(line: 795, column: 6, scope: !6457)
!6474 = !DILocation(line: 796, column: 7, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6457, file: !3, line: 796, column: 6)
!6476 = !DILocation(line: 796, column: 11, scope: !6475)
!6477 = !DILocation(line: 796, column: 15, scope: !6475)
!6478 = !DILocation(line: 796, column: 20, scope: !6475)
!6479 = !DILocation(line: 796, column: 6, scope: !6457)
!6480 = !DILocation(line: 797, column: 3, scope: !6475)
!6481 = !DILocalVariable(name: "__mptr", scope: !6482, file: !3, line: 799, type: !134)
!6482 = distinct !DILexicalBlock(scope: !6457, file: !3, line: 799, column: 10)
!6483 = !DILocation(line: 799, column: 10, scope: !6482)
!6484 = !DILocation(line: 799, column: 10, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6482, file: !3, line: 799, column: 10)
!6486 = !DILocation(line: 799, column: 8, scope: !6457)
!6487 = !DILocation(line: 800, column: 9, scope: !6457)
!6488 = !DILocation(line: 800, column: 7, scope: !6457)
!6489 = !DILocation(line: 801, column: 7, scope: !6490)
!6490 = distinct !DILexicalBlock(scope: !6457, file: !3, line: 801, column: 6)
!6491 = !DILocation(line: 801, column: 6, scope: !6457)
!6492 = !DILocation(line: 802, column: 3, scope: !6490)
!6493 = !DILocation(line: 804, column: 2, scope: !6457)
!6494 = !DILocalVariable(name: "__file", scope: !6495, file: !3, line: 804, type: !282)
!6495 = distinct !DILexicalBlock(scope: !6457, file: !3, line: 804, column: 2)
!6496 = !DILocation(line: 804, column: 2, scope: !6495)
!6497 = !DILocation(line: 804, column: 2, scope: !6498)
!6498 = distinct !DILexicalBlock(scope: !6499, file: !3, line: 804, column: 2)
!6499 = distinct !DILexicalBlock(scope: !6495, file: !3, line: 804, column: 2)
!6500 = !DILocation(line: 804, column: 2, scope: !6499)
!6501 = !DILocation(line: 804, column: 2, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6503, file: !3, line: 804, column: 2)
!6503 = distinct !DILexicalBlock(scope: !6495, file: !3, line: 804, column: 2)
!6504 = !DILocation(line: 804, column: 2, scope: !6503)
!6505 = !DILocation(line: 804, column: 2, scope: !6506)
!6506 = distinct !DILexicalBlock(scope: !6502, file: !3, line: 804, column: 2)
!6507 = !DILocation(line: 804, column: 2, scope: !6508)
!6508 = distinct !DILexicalBlock(scope: !6506, file: !3, line: 804, column: 2)
!6509 = !DILocation(line: 804, column: 2, scope: !6510)
!6510 = distinct !DILexicalBlock(scope: !6506, file: !3, line: 804, column: 2)
!6511 = !{i32 -2141621506, i32 -2141621477, i32 -2141621431, i32 -2141621373, i32 -2141621319, i32 -2141621265, i32 -2141621210, i32 -2141621179}
!6512 = !DILocation(line: 804, column: 2, scope: !6513)
!6513 = distinct !DILexicalBlock(scope: !6514, file: !3, line: 804, column: 2)
!6514 = distinct !DILexicalBlock(scope: !6506, file: !3, line: 804, column: 2)
!6515 = !{i32 -2141616662, i32 -2141616655, i32 -2141616601, i32 -2141616570, i32 -2141616540}
!6516 = !DILocation(line: 804, column: 2, scope: !6514)
!6517 = !DILocalVariable(name: "__mptr", scope: !6518, file: !3, line: 806, type: !134)
!6518 = distinct !DILexicalBlock(scope: !6457, file: !3, line: 806, column: 23)
!6519 = !DILocation(line: 806, column: 23, scope: !6518)
!6520 = !DILocation(line: 806, column: 23, scope: !6521)
!6521 = distinct !DILexicalBlock(scope: !6518, file: !3, line: 806, column: 23)
!6522 = !DILocation(line: 806, column: 23, scope: !6457)
!6523 = !DILocation(line: 806, column: 2, scope: !6457)
!6524 = !DILocation(line: 806, column: 8, scope: !6457)
!6525 = !DILocation(line: 806, column: 21, scope: !6457)
!6526 = !DILocation(line: 808, column: 6, scope: !6527)
!6527 = distinct !DILexicalBlock(scope: !6457, file: !3, line: 808, column: 6)
!6528 = !DILocation(line: 808, column: 12, scope: !6527)
!6529 = !DILocation(line: 808, column: 18, scope: !6527)
!6530 = !DILocation(line: 808, column: 6, scope: !6457)
!6531 = !DILocation(line: 809, column: 9, scope: !6532)
!6532 = distinct !DILexicalBlock(scope: !6527, file: !3, line: 808, column: 24)
!6533 = !DILocation(line: 809, column: 15, scope: !6532)
!6534 = !DILocation(line: 809, column: 21, scope: !6532)
!6535 = !DILocation(line: 809, column: 26, scope: !6532)
!6536 = !DILocation(line: 809, column: 33, scope: !6532)
!6537 = !DILocation(line: 809, column: 7, scope: !6532)
!6538 = !DILocation(line: 810, column: 10, scope: !6532)
!6539 = !DILocation(line: 810, column: 3, scope: !6532)
!6540 = !DILocation(line: 813, column: 2, scope: !6457)
!6541 = !DILocation(line: 814, column: 1, scope: !6457)
!6542 = distinct !DISubprogram(name: "bus_find_device_by_devt", scope: !3391, file: !3391, line: 209, type: !6543, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!6543 = !DISubroutineType(types: !6544)
!6544 = !{!3332, !3389, !443}
!6545 = !DILocalVariable(name: "bus", arg: 1, scope: !6542, file: !3391, line: 209, type: !3389)
!6546 = !DILocation(line: 209, column: 71, scope: !6542)
!6547 = !DILocalVariable(name: "devt", arg: 2, scope: !6542, file: !3391, line: 210, type: !443)
!6548 = !DILocation(line: 210, column: 18, scope: !6542)
!6549 = !DILocation(line: 212, column: 25, scope: !6542)
!6550 = !DILocation(line: 212, column: 36, scope: !6542)
!6551 = !DILocation(line: 212, column: 9, scope: !6542)
!6552 = !DILocation(line: 212, column: 2, scope: !6542)
!6553 = distinct !DISubprogram(name: "kobject_name", scope: !143, file: !143, line: 88, type: !6554, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!6554 = !DISubroutineType(types: !6555)
!6555 = !{!146, !6556}
!6556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6557, size: 64)
!6557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!6558 = !DILocalVariable(name: "kobj", arg: 1, scope: !6553, file: !143, line: 88, type: !6556)
!6559 = !DILocation(line: 88, column: 62, scope: !6553)
!6560 = !DILocation(line: 90, column: 9, scope: !6553)
!6561 = !DILocation(line: 90, column: 15, scope: !6553)
!6562 = !DILocation(line: 90, column: 2, scope: !6553)
!6563 = distinct !DISubprogram(name: "intel_th_debug_init", scope: !5492, file: !5492, line: 17, type: !1850, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !177)
!6564 = !DILocation(line: 19, column: 1, scope: !6563)
