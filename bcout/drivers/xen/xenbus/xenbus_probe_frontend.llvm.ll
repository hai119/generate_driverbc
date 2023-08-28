; ModuleID = '../bcout/drivers/xen/xenbus/xenbus_probe_frontend.llvm.bc'
source_filename = "drivers/xen/xenbus/xenbus_probe_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall4.init\22, \22a\22\09"
module asm "__initcall_xenbus_probe_frontend_init4:\09\09\09"
module asm ".long\09xenbus_probe_frontend_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall7.init\22, \22a\22\09"
module asm "__initcall_boot_wait_for_devices7:\09\09\09"
module asm ".long\09boot_wait_for_devices - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.xen_bus_type = type { i8*, i32, i32 (i8*, i8*)*, i32 (%struct.xen_bus_type*, i8*, i8*)*, void (%struct.xenbus_watch*, i8*, i8*)*, %struct.bus_type }
%struct.xenbus_watch = type { %struct.list_head, i8*, void (%struct.xenbus_watch*, i8*, i8*)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.67, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.67 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.63 }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.page = type { i64, %union.anon.1, %union.anon.55, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.55 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.56, i32 }
%union.anon.56 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.48, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.18, [0 x i64] }
%struct.anon.18 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.19, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.19 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.25, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.26, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.27, %union.anon.31, %struct.key_restriction* }
%union.anon.25 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.26 = type { i64 }
%union.anon.27 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.28, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.28 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.31 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.34, %union.anon.35, i32 }
%struct.request_queue = type opaque
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.36 }
%struct.anon.36 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.47, i32, [12 x i8] }
%union.anon.47 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.48 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.49, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.52 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i64, i64 }
%union.anon.52 = type { [12 x i32] }
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
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.57, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.58, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.59, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.57 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.58 = type { %struct.callback_head }
%union.anon.59 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type { i32, i64, i64, %union.anon.5, %union.anon.6 }
%union.anon.5 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.6 = type { i64 }
%struct.swap_info_struct = type opaque
%union.anon.62 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.60 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.60 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
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
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask] }
%struct.msi_desc = type { %struct.list_head, i32, i32, %struct.device*, %struct.msi_msg, %struct.irq_affinity_desc*, void (%struct.msi_desc*, i8*)*, i8*, %union.anon.68 }
%struct.msi_msg = type { i32, i32, i32 }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, %struct.anon.70, %union.anon.71 }
%struct.anon.70 = type { i16, i16, i32 }
%union.anon.71 = type { i8* }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.xenbus_driver = type { i8*, %struct.xenbus_device_id*, i8, i32 (%struct.xenbus_device*, %struct.xenbus_device_id*)*, void (%struct.xenbus_device*, i32)*, i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*, %struct.kobj_uevent_env*)*, %struct.device_driver, i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)*, void (%struct.xenbus_device*)* }
%struct.xenbus_device_id = type { [32 x i8] }
%struct.xenbus_device = type { i8*, i8*, i8*, i32, %struct.xenbus_watch, %struct.device, i32, %struct.completion, %struct.work_struct, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.xenbus_transaction = type { i32 }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@xenbus_frontend = internal global %struct.xen_bus_type { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 2, i32 (i8*, i8*)* @frontend_bus_id, i32 (%struct.xen_bus_type*, i8*, i8*)* @xenbus_probe_frontend, void (%struct.xenbus_watch*, i8*, i8*)* @backend_changed, %struct.bus_type { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* null, %struct.device* null, %struct.attribute_group** null, %struct.attribute_group** getelementptr inbounds ([0 x %struct.attribute_group*], [0 x %struct.attribute_group*]* @xenbus_dev_groups, i32 0, i32 0), %struct.attribute_group** null, i32 (%struct.device*, %struct.device_driver*)* @xenbus_match, i32 (%struct.device*, %struct.kobj_uevent_env*)* @xenbus_uevent_frontend, i32 (%struct.device*)* @xenbus_frontend_dev_probe, void (%struct.device*)* null, i32 (%struct.device*)* @xenbus_dev_remove, void (%struct.device*)* @xenbus_frontend_dev_shutdown, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, %struct.dev_pm_ops* @xenbus_pm_ops, %struct.iommu_ops* null, %struct.subsys_private* null, %struct.lock_class_key zeroinitializer, i8 0 } }, align 8, !dbg !0
@__UNIQUE_ID___addressable_xenbus_probe_frontend_init238 = internal global i8* bitcast (i32 ()* @xenbus_probe_frontend_init to i8*), section ".discard.addressable", align 8, !dbg !4295
@__UNIQUE_ID___addressable_boot_wait_for_devices239 = internal global i8* bitcast (i32 ()* @boot_wait_for_devices to i8*), section ".discard.addressable", align 8, !dbg !4297
@__UNIQUE_ID_file240 = internal constant [68 x i8] c"xenbus_probe_frontend.file=drivers/xen/xenbus/xenbus_probe_frontend\00", section ".modinfo", align 1, !dbg !4299
@__UNIQUE_ID_license241 = internal constant [34 x i8] c"xenbus_probe_frontend.license=GPL\00", section ".modinfo", align 1, !dbg !4304
@.str = private unnamed_addr constant [11 x i8] c"backend-id\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"backend\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"xen\00", align 1
@xenbus_dev_groups = external dso_local global [0 x %struct.attribute_group*], align 8
@xenbus_pm_ops = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @xenbus_dev_suspend, i32 (%struct.device*)* @xenbus_frontend_dev_resume, i32 (%struct.device*)* @xenbus_dev_suspend, i32 (%struct.device*)* @xenbus_dev_cancel, i32 (%struct.device*)* null, i32 (%struct.device*)* @xenbus_dev_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null }, align 8, !dbg !4309
@.str.4 = private unnamed_addr constant [42 x i8] c"\014xenbus_probe_frontend: bad frontend %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"\014xenbus_probe_frontend: bus_id %s no slash\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%s/%s/%s\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"MODALIAS=xen:%s\00", align 1
@xen_store_domain_type = external dso_local global i32, align 4
@.str.10 = private unnamed_addr constant [60 x i8] c"\016xenbus_probe_frontend: %s: %s: %s != Connected, skipping\0A\00", align 1
@__func__.xenbus_frontend_dev_shutdown = private unnamed_addr constant [29 x i8] c"xenbus_frontend_dev_shutdown\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"\016xenbus_probe_frontend: %s: %s timeout closing device\0A\00", align 1
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@jiffies = external dso_local global i64, align 8
@ready_to_wait_for_devices = internal global i32 0, align 4, !dbg !4311
@xen_domain_type = external dso_local global i32, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"device/vkbd\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"device/vfb\00", align 1
@.str.15 = private unnamed_addr constant [61 x i8] c"\014xenbus_probe_frontend: Waiting for devices to initialise: \00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"\01c%us...\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"\016xenbus_probe_frontend: Device with no driver: %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [93 x i8] c"\014xenbus_probe_frontend: Timeout connecting to device: %s (local state %d, remote state %d)\0A\00", align 1
@xenbus_probe_frontend_init.xenstore_notifier = internal global %struct.notifier_block { i32 (%struct.notifier_block*, i64, i8*)* @frontend_probe_and_watch, %struct.notifier_block* null, i32 0 }, align 8, !dbg !4313
@fe_watch = internal global %struct.xenbus_watch { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), void (%struct.xenbus_watch*, i8*, i8*)* @frontend_changed }, align 8, !dbg !4333
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"device/%s/%s\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"\017XENBUS: frontend %s %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"\017XENBUS: backend %s %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"%s/state\00", align 1
@backend_state = internal global i32 0, align 4, !dbg !4331
@.str.27 = private unnamed_addr constant [53 x i8] c"\016xenbus_probe_frontend: triggering reconnect on %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.29 = private unnamed_addr constant [47 x i8] c"\016xenbus_probe_frontend: reconnect done on %s\0A\00", align 1
@backend_state_wq = internal global %struct.wait_queue_head { %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (%struct.wait_queue_head* @backend_state_wq to %struct.list_head*), %struct.list_head* bitcast (%struct.wait_queue_head* @backend_state_wq to %struct.list_head*) } }, align 8, !dbg !4329
@.str.30 = private unnamed_addr constant [47 x i8] c"\016xenbus_probe_frontend: backend %s timed out\0A\00", align 1
@llvm.used = appending global [4 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_xenbus_probe_frontend_init238 to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_boot_wait_for_devices239 to i8*), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__UNIQUE_ID_file240, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__UNIQUE_ID_license241, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__xenbus_register_frontend(%struct.xenbus_driver* %drv, %struct.module* %owner, i8* %mod_name) #0 !dbg !4355 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca %struct.xenbus_driver*, align 8
  %owner.addr = alloca %struct.module*, align 8
  %mod_name.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store %struct.xenbus_driver* %drv, %struct.xenbus_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_driver** %drv.addr, metadata !4358, metadata !DIExpression()), !dbg !4359
  store %struct.module* %owner, %struct.module** %owner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %owner.addr, metadata !4360, metadata !DIExpression()), !dbg !4361
  store i8* %mod_name, i8** %mod_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mod_name.addr, metadata !4362, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4364, metadata !DIExpression()), !dbg !4365
  %0 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv.addr, align 8, !dbg !4366
  %read_otherend_details = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %0, i32 0, i32 10, !dbg !4367
  store i32 (%struct.xenbus_device*)* @read_backend_details, i32 (%struct.xenbus_device*)** %read_otherend_details, align 8, !dbg !4368
  %1 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv.addr, align 8, !dbg !4369
  %2 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !4370
  %3 = load i8*, i8** %mod_name.addr, align 8, !dbg !4371
  %call = call i32 @xenbus_register_driver_common(%struct.xenbus_driver* %1, %struct.xen_bus_type* @xenbus_frontend, %struct.module* %2, i8* %3) #6, !dbg !4372
  store i32 %call, i32* %ret, align 4, !dbg !4373
  %4 = load i32, i32* %ret, align 4, !dbg !4374
  %tobool = icmp ne i32 %4, 0, !dbg !4374
  br i1 %tobool, label %if.then, label %if.end, !dbg !4376

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !4377
  store i32 %5, i32* %retval, align 4, !dbg !4378
  br label %return, !dbg !4378

if.end:                                           ; preds = %entry
  %6 = load %struct.xenbus_driver*, %struct.xenbus_driver** %drv.addr, align 8, !dbg !4379
  call void @wait_for_devices(%struct.xenbus_driver* %6) #6, !dbg !4380
  store i32 0, i32* %retval, align 4, !dbg !4381
  br label %return, !dbg !4381

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !4382
  ret i32 %7, !dbg !4382
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @read_backend_details(%struct.xenbus_device* %xendev) #0 !dbg !4383 {
entry:
  %xendev.addr = alloca %struct.xenbus_device*, align 8
  store %struct.xenbus_device* %xendev, %struct.xenbus_device** %xendev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %xendev.addr, metadata !4384, metadata !DIExpression()), !dbg !4385
  %0 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev.addr, align 8, !dbg !4386
  %call = call i32 @xenbus_read_otherend_details(%struct.xenbus_device* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4387
  ret i32 %call, !dbg !4388
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_register_driver_common(%struct.xenbus_driver*, %struct.xen_bus_type*, %struct.module*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @wait_for_devices(%struct.xenbus_driver* %xendrv) #0 !dbg !4389 {
entry:
  %xendrv.addr = alloca %struct.xenbus_driver*, align 8
  %start = alloca i64, align 8
  %drv = alloca %struct.device_driver*, align 8
  %seconds_waited = alloca i32, align 4
  store %struct.xenbus_driver* %xendrv, %struct.xenbus_driver** %xendrv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_driver** %xendrv.addr, metadata !4392, metadata !DIExpression()), !dbg !4393
  call void @llvm.dbg.declare(metadata i64* %start, metadata !4394, metadata !DIExpression()), !dbg !4395
  %0 = load volatile i64, i64* @jiffies, align 8, !dbg !4396
  store i64 %0, i64* %start, align 8, !dbg !4395
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv, metadata !4397, metadata !DIExpression()), !dbg !4398
  %1 = load %struct.xenbus_driver*, %struct.xenbus_driver** %xendrv.addr, align 8, !dbg !4399
  %tobool = icmp ne %struct.xenbus_driver* %1, null, !dbg !4399
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4399

cond.true:                                        ; preds = %entry
  %2 = load %struct.xenbus_driver*, %struct.xenbus_driver** %xendrv.addr, align 8, !dbg !4400
  %driver = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %2, i32 0, i32 9, !dbg !4401
  br label %cond.end, !dbg !4399

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4399

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.device_driver* [ %driver, %cond.true ], [ null, %cond.false ], !dbg !4399
  store %struct.device_driver* %cond, %struct.device_driver** %drv, align 8, !dbg !4398
  call void @llvm.dbg.declare(metadata i32* %seconds_waited, metadata !4402, metadata !DIExpression()), !dbg !4403
  store i32 0, i32* %seconds_waited, align 4, !dbg !4403
  %3 = load i32, i32* @ready_to_wait_for_devices, align 4, !dbg !4404
  %tobool1 = icmp ne i32 %3, 0, !dbg !4404
  br i1 %tobool1, label %lor.lhs.false, label %if.then, !dbg !4406

lor.lhs.false:                                    ; preds = %cond.end
  %4 = load i32, i32* @xen_domain_type, align 4, !dbg !4407
  %cmp = icmp ne i32 %4, 0, !dbg !4407
  br i1 %cmp, label %if.end, label %if.then, !dbg !4408

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  br label %return, !dbg !4409

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond, !dbg !4410

while.cond:                                       ; preds = %if.end5, %if.end
  %5 = load %struct.device_driver*, %struct.device_driver** %drv, align 8, !dbg !4411
  %call = call i32 @exists_non_essential_connecting_device(%struct.device_driver* %5) #6, !dbg !4412
  %tobool2 = icmp ne i32 %call, 0, !dbg !4410
  br i1 %tobool2, label %while.body, label %while.end, !dbg !4410

while.body:                                       ; preds = %while.cond
  %6 = load i64, i64* %start, align 8, !dbg !4413
  %call3 = call zeroext i1 @wait_loop(i64 %6, i32 30, i32* %seconds_waited) #6, !dbg !4415
  br i1 %call3, label %if.then4, label %if.end5, !dbg !4416

if.then4:                                         ; preds = %while.body
  br label %while.end, !dbg !4417

if.end5:                                          ; preds = %while.body
  br label %while.cond, !dbg !4410, !llvm.loop !4418

while.end:                                        ; preds = %if.then4, %while.cond
  br label %while.cond6, !dbg !4420

while.cond6:                                      ; preds = %if.end12, %while.end
  %7 = load %struct.device_driver*, %struct.device_driver** %drv, align 8, !dbg !4421
  %call7 = call i32 @exists_essential_connecting_device(%struct.device_driver* %7) #6, !dbg !4422
  %tobool8 = icmp ne i32 %call7, 0, !dbg !4420
  br i1 %tobool8, label %while.body9, label %while.end13, !dbg !4420

while.body9:                                      ; preds = %while.cond6
  %8 = load i64, i64* %start, align 8, !dbg !4423
  %call10 = call zeroext i1 @wait_loop(i64 %8, i32 270, i32* %seconds_waited) #6, !dbg !4425
  br i1 %call10, label %if.then11, label %if.end12, !dbg !4426

if.then11:                                        ; preds = %while.body9
  br label %while.end13, !dbg !4427

if.end12:                                         ; preds = %while.body9
  br label %while.cond6, !dbg !4420, !llvm.loop !4428

while.end13:                                      ; preds = %if.then11, %while.cond6
  %9 = load i32, i32* %seconds_waited, align 4, !dbg !4430
  %tobool14 = icmp ne i32 %9, 0, !dbg !4430
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !4432

if.then15:                                        ; preds = %while.end13
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !4433
  br label %if.end17, !dbg !4433

if.end17:                                         ; preds = %if.then15, %while.end13
  %10 = load %struct.device_driver*, %struct.device_driver** %drv, align 8, !dbg !4434
  %11 = bitcast %struct.device_driver* %10 to i8*, !dbg !4434
  %call18 = call i32 @bus_for_each_dev(%struct.bus_type* getelementptr inbounds (%struct.xen_bus_type, %struct.xen_bus_type* @xenbus_frontend, i32 0, i32 5), %struct.device* null, i8* %11, i32 (%struct.device*, i8*)* @print_device_status) #6, !dbg !4435
  br label %return, !dbg !4436

return:                                           ; preds = %if.end17, %if.then
  ret void, !dbg !4436
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_probe_frontend_init() #3 section ".init.text" !dbg !4315 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4437, metadata !DIExpression()), !dbg !4438
  store i32 0, i32* %tmp, align 4, !dbg !4439
  %0 = load i32, i32* %tmp, align 4, !dbg !4442
  %call = call i32 @bus_register(%struct.bus_type* getelementptr inbounds (%struct.xen_bus_type, %struct.xen_bus_type* @xenbus_frontend, i32 0, i32 5)) #6, !dbg !4443
  store i32 %call, i32* %err, align 4, !dbg !4444
  %1 = load i32, i32* %err, align 4, !dbg !4445
  %tobool = icmp ne i32 %1, 0, !dbg !4445
  br i1 %tobool, label %if.then, label %if.end, !dbg !4447

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %err, align 4, !dbg !4448
  store i32 %2, i32* %retval, align 4, !dbg !4449
  br label %return, !dbg !4449

if.end:                                           ; preds = %entry
  %call1 = call i32 @register_xenstore_notifier(%struct.notifier_block* @xenbus_probe_frontend_init.xenstore_notifier) #6, !dbg !4450
  store i32 0, i32* %retval, align 4, !dbg !4451
  br label %return, !dbg !4451

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !4452
  ret i32 %3, !dbg !4452
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @boot_wait_for_devices() #3 section ".init.text" !dbg !4453 {
entry:
  %retval = alloca i32, align 4
  %call = call zeroext i1 @xen_has_pv_devices() #6, !dbg !4454
  br i1 %call, label %if.end, label %if.then, !dbg !4456

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4457
  br label %return, !dbg !4457

if.end:                                           ; preds = %entry
  store i32 1, i32* @ready_to_wait_for_devices, align 4, !dbg !4458
  call void @wait_for_devices(%struct.xenbus_driver* null) #6, !dbg !4459
  store i32 0, i32* %retval, align 4, !dbg !4460
  br label %return, !dbg !4460

return:                                           ; preds = %if.end, %if.then
  %0 = load i32, i32* %retval, align 4, !dbg !4461
  ret i32 %0, !dbg !4461
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_read_otherend_details(%struct.xenbus_device*, i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @frontend_bus_id(i8* %bus_id, i8* %nodename) #0 !dbg !4462 {
entry:
  %retval = alloca i32, align 4
  %bus_id.addr = alloca i8*, align 8
  %nodename.addr = alloca i8*, align 8
  store i8* %bus_id, i8** %bus_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bus_id.addr, metadata !4463, metadata !DIExpression()), !dbg !4464
  store i8* %nodename, i8** %nodename.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %nodename.addr, metadata !4465, metadata !DIExpression()), !dbg !4466
  %0 = load i8*, i8** %nodename.addr, align 8, !dbg !4467
  %call = call i8* @strchr(i8* %0, i32 47) #6, !dbg !4468
  store i8* %call, i8** %nodename.addr, align 8, !dbg !4469
  %1 = load i8*, i8** %nodename.addr, align 8, !dbg !4470
  %tobool = icmp ne i8* %1, null, !dbg !4470
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4472

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8*, i8** %nodename.addr, align 8, !dbg !4473
  %add.ptr = getelementptr i8, i8* %2, i64 1, !dbg !4474
  %call1 = call i64 @strlen(i8* %add.ptr) #6, !dbg !4475
  %cmp = icmp uge i64 %call1, 20, !dbg !4476
  br i1 %cmp, label %if.then, label %if.end, !dbg !4477

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i8*, i8** %nodename.addr, align 8, !dbg !4478
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %3) #7, !dbg !4478
  store i32 -22, i32* %retval, align 4, !dbg !4480
  br label %return, !dbg !4480

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8*, i8** %bus_id.addr, align 8, !dbg !4481
  %5 = load i8*, i8** %nodename.addr, align 8, !dbg !4482
  %add.ptr3 = getelementptr i8, i8* %5, i64 1, !dbg !4483
  %call4 = call i64 @strlcpy(i8* %4, i8* %add.ptr3, i64 20) #6, !dbg !4484
  %6 = load i8*, i8** %bus_id.addr, align 8, !dbg !4485
  %call5 = call i8* @strchr(i8* %6, i32 47) #6, !dbg !4487
  %tobool6 = icmp ne i8* %call5, null, !dbg !4487
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !4488

if.then7:                                         ; preds = %if.end
  %7 = load i8*, i8** %bus_id.addr, align 8, !dbg !4489
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %7) #7, !dbg !4489
  store i32 -22, i32* %retval, align 4, !dbg !4491
  br label %return, !dbg !4491

if.end9:                                          ; preds = %if.end
  %8 = load i8*, i8** %bus_id.addr, align 8, !dbg !4492
  %call10 = call i8* @strchr(i8* %8, i32 47) #6, !dbg !4493
  store i8 45, i8* %call10, align 1, !dbg !4494
  store i32 0, i32* %retval, align 4, !dbg !4495
  br label %return, !dbg !4495

return:                                           ; preds = %if.end9, %if.then7, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !4496
  ret i32 %9, !dbg !4496
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_probe_frontend(%struct.xen_bus_type* %bus, i8* %type, i8* %name) #0 !dbg !4497 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca %struct.xen_bus_type*, align 8
  %type.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %nodename = alloca i8*, align 8
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  store %struct.xen_bus_type* %bus, %struct.xen_bus_type** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xen_bus_type** %bus.addr, metadata !4498, metadata !DIExpression()), !dbg !4499
  store i8* %type, i8** %type.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %type.addr, metadata !4500, metadata !DIExpression()), !dbg !4501
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !4502, metadata !DIExpression()), !dbg !4503
  call void @llvm.dbg.declare(metadata i8** %nodename, metadata !4504, metadata !DIExpression()), !dbg !4505
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4506, metadata !DIExpression()), !dbg !4507
  %0 = load i8*, i8** %type.addr, align 8, !dbg !4508
  %call = call i32 @strncmp(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64 7) #6, !dbg !4510
  %tobool = icmp ne i32 %call, 0, !dbg !4510
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4511

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %name.addr, align 8, !dbg !4512
  %call1 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i64 1) #6, !dbg !4513
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4513
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4514

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %tmp, align 4, !dbg !4515
  %2 = load i32, i32* %tmp, align 4, !dbg !4519
  store i32 0, i32* %retval, align 4, !dbg !4520
  br label %return, !dbg !4520

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct.xen_bus_type*, %struct.xen_bus_type** %bus.addr, align 8, !dbg !4521
  %root = getelementptr inbounds %struct.xen_bus_type, %struct.xen_bus_type* %3, i32 0, i32 0, !dbg !4522
  %4 = load i8*, i8** %root, align 8, !dbg !4522
  %5 = load i8*, i8** %type.addr, align 8, !dbg !4523
  %6 = load i8*, i8** %name.addr, align 8, !dbg !4524
  %call3 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %4, i8* %5, i8* %6) #6, !dbg !4525
  store i8* %call3, i8** %nodename, align 8, !dbg !4526
  %7 = load i8*, i8** %nodename, align 8, !dbg !4527
  %tobool4 = icmp ne i8* %7, null, !dbg !4527
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4529

if.then5:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4530
  br label %return, !dbg !4530

if.end6:                                          ; preds = %if.end
  store i32 0, i32* %tmp7, align 4, !dbg !4531
  %8 = load i32, i32* %tmp7, align 4, !dbg !4534
  %9 = load %struct.xen_bus_type*, %struct.xen_bus_type** %bus.addr, align 8, !dbg !4535
  %10 = load i8*, i8** %type.addr, align 8, !dbg !4536
  %11 = load i8*, i8** %nodename, align 8, !dbg !4537
  %call8 = call i32 @xenbus_probe_node(%struct.xen_bus_type* %9, i8* %10, i8* %11) #6, !dbg !4538
  store i32 %call8, i32* %err, align 4, !dbg !4539
  %12 = load i8*, i8** %nodename, align 8, !dbg !4540
  call void @kfree(i8* %12) #6, !dbg !4541
  %13 = load i32, i32* %err, align 4, !dbg !4542
  store i32 %13, i32* %retval, align 4, !dbg !4543
  br label %return, !dbg !4543

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !4544
  ret i32 %14, !dbg !4544
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @backend_changed(%struct.xenbus_watch* %watch, i8* %path, i8* %token) #0 !dbg !4545 {
entry:
  %watch.addr = alloca %struct.xenbus_watch*, align 8
  %path.addr = alloca i8*, align 8
  %token.addr = alloca i8*, align 8
  store %struct.xenbus_watch* %watch, %struct.xenbus_watch** %watch.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_watch** %watch.addr, metadata !4546, metadata !DIExpression()), !dbg !4547
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !4548, metadata !DIExpression()), !dbg !4549
  store i8* %token, i8** %token.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %token.addr, metadata !4550, metadata !DIExpression()), !dbg !4551
  %0 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch.addr, align 8, !dbg !4552
  %1 = load i8*, i8** %path.addr, align 8, !dbg !4553
  %2 = load i8*, i8** %token.addr, align 8, !dbg !4554
  call void @xenbus_otherend_changed(%struct.xenbus_watch* %0, i8* %1, i8* %2, i32 1) #6, !dbg !4555
  ret void, !dbg !4556
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_match(%struct.device*, %struct.device_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_uevent_frontend(%struct.device* %_dev, %struct.kobj_uevent_env* %env) #0 !dbg !4557 {
entry:
  %retval = alloca i32, align 4
  %_dev.addr = alloca %struct.device*, align 8
  %env.addr = alloca %struct.kobj_uevent_env*, align 8
  %dev = alloca %struct.xenbus_device*, align 8
  store %struct.device* %_dev, %struct.device** %_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %_dev.addr, metadata !4558, metadata !DIExpression()), !dbg !4559
  store %struct.kobj_uevent_env* %env, %struct.kobj_uevent_env** %env.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_uevent_env** %env.addr, metadata !4560, metadata !DIExpression()), !dbg !4561
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev, metadata !4562, metadata !DIExpression()), !dbg !4563
  %0 = load %struct.device*, %struct.device** %_dev.addr, align 8, !dbg !4564
  %call = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %0) #6, !dbg !4565
  store %struct.xenbus_device* %call, %struct.xenbus_device** %dev, align 8, !dbg !4563
  %1 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !4566
  %2 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4568
  %devicetype = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %2, i32 0, i32 0, !dbg !4569
  %3 = load i8*, i8** %devicetype, align 8, !dbg !4569
  %call1 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %3) #6, !dbg !4570
  %tobool = icmp ne i32 %call1, 0, !dbg !4570
  br i1 %tobool, label %if.then, label %if.end, !dbg !4571

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4572
  br label %return, !dbg !4572

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4573
  br label %return, !dbg !4573

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !4574
  ret i32 %4, !dbg !4574
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_frontend_dev_probe(%struct.device* %dev) #0 !dbg !4575 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %xdev = alloca %struct.xenbus_device*, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4576, metadata !DIExpression()), !dbg !4577
  %0 = load i32, i32* @xen_store_domain_type, align 4, !dbg !4578
  %cmp = icmp eq i32 %0, 3, !dbg !4580
  br i1 %cmp, label %if.then, label %if.end, !dbg !4581

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %xdev, metadata !4582, metadata !DIExpression()), !dbg !4584
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4585
  %call = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %1) #6, !dbg !4586
  store %struct.xenbus_device* %call, %struct.xenbus_device** %xdev, align 8, !dbg !4584
  br label %do.body, !dbg !4587

do.body:                                          ; preds = %if.then
  %2 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev, align 8, !dbg !4588
  %work = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %2, i32 0, i32 8, !dbg !4588
  call void @__init_work(%struct.work_struct* %work, i32 0) #6, !dbg !4588
  %3 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev, align 8, !dbg !4588
  %work1 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %3, i32 0, i32 8, !dbg !4588
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work1, i32 0, i32 0, !dbg !4588
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral, i32 0, i32 0, !dbg !4588
  store i64 68719476704, i64* %counter, align 8, !dbg !4588
  %4 = bitcast %struct.atomic64_t* %data to i8*, !dbg !4588
  %5 = bitcast %struct.atomic64_t* %.compoundliteral to i8*, !dbg !4588
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 8, i1 false), !dbg !4588
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev, align 8, !dbg !4588
  %work2 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %6, i32 0, i32 8, !dbg !4588
  %entry3 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work2, i32 0, i32 1, !dbg !4588
  call void @INIT_LIST_HEAD(%struct.list_head* %entry3) #6, !dbg !4588
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev, align 8, !dbg !4588
  %work4 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %7, i32 0, i32 8, !dbg !4588
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %work4, i32 0, i32 2, !dbg !4588
  store void (%struct.work_struct*)* @xenbus_frontend_delayed_resume, void (%struct.work_struct*)** %func, align 8, !dbg !4588
  br label %do.end, !dbg !4588

do.end:                                           ; preds = %do.body
  br label %if.end, !dbg !4590

if.end:                                           ; preds = %do.end, %entry
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4591
  %call5 = call i32 @xenbus_dev_probe(%struct.device* %8) #6, !dbg !4592
  ret i32 %call5, !dbg !4593
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_dev_remove(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenbus_frontend_dev_shutdown(%struct.device* %_dev) #0 !dbg !4594 {
entry:
  %_dev.addr = alloca %struct.device*, align 8
  %dev = alloca %struct.xenbus_device*, align 8
  %timeout = alloca i64, align 8
  %tmp = alloca i32, align 4
  store %struct.device* %_dev, %struct.device** %_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %_dev.addr, metadata !4595, metadata !DIExpression()), !dbg !4596
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev, metadata !4597, metadata !DIExpression()), !dbg !4598
  %0 = load %struct.device*, %struct.device** %_dev.addr, align 8, !dbg !4599
  %call = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %0) #6, !dbg !4600
  store %struct.xenbus_device* %call, %struct.xenbus_device** %dev, align 8, !dbg !4598
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !4601, metadata !DIExpression()), !dbg !4602
  store i64 1250, i64* %timeout, align 8, !dbg !4602
  store i32 0, i32* %tmp, align 4, !dbg !4603
  %1 = load i32, i32* %tmp, align 4, !dbg !4606
  %2 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4607
  %dev1 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %2, i32 0, i32 5, !dbg !4608
  %call2 = call %struct.device* @get_device(%struct.device* %dev1) #6, !dbg !4609
  %3 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4610
  %state = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %3, i32 0, i32 6, !dbg !4612
  %4 = load i32, i32* %state, align 8, !dbg !4612
  %cmp = icmp ne i32 %4, 4, !dbg !4613
  br i1 %cmp, label %if.then, label %if.end, !dbg !4614

if.then:                                          ; preds = %entry
  %5 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4615
  %nodename = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %5, i32 0, i32 1, !dbg !4615
  %6 = load i8*, i8** %nodename, align 8, !dbg !4615
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4615
  %state3 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %7, i32 0, i32 6, !dbg !4615
  %8 = load i32, i32* %state3, align 8, !dbg !4615
  %call4 = call i8* @xenbus_strstate(i32 %8) #6, !dbg !4615
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.xenbus_frontend_dev_shutdown, i64 0, i64 0), i8* %6, i8* %call4) #7, !dbg !4615
  br label %out, !dbg !4617

if.end:                                           ; preds = %entry
  %9 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4618
  %call6 = call i32 @xenbus_switch_state(%struct.xenbus_device* %9, i32 5) #6, !dbg !4619
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4620
  %down = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %10, i32 0, i32 7, !dbg !4621
  %11 = load i64, i64* %timeout, align 8, !dbg !4622
  %call7 = call i64 @wait_for_completion_timeout(%struct.completion* %down, i64 %11) #6, !dbg !4623
  store i64 %call7, i64* %timeout, align 8, !dbg !4624
  %12 = load i64, i64* %timeout, align 8, !dbg !4625
  %tobool = icmp ne i64 %12, 0, !dbg !4625
  br i1 %tobool, label %if.end11, label %if.then8, !dbg !4627

if.then8:                                         ; preds = %if.end
  %13 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4628
  %nodename9 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %13, i32 0, i32 1, !dbg !4628
  %14 = load i8*, i8** %nodename9, align 8, !dbg !4628
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.xenbus_frontend_dev_shutdown, i64 0, i64 0), i8* %14) #7, !dbg !4628
  br label %if.end11, !dbg !4628

if.end11:                                         ; preds = %if.then8, %if.end
  br label %out, !dbg !4625

out:                                              ; preds = %if.end11, %if.then
  call void @llvm.dbg.label(metadata !4629), !dbg !4630
  %15 = load %struct.xenbus_device*, %struct.xenbus_device** %dev, align 8, !dbg !4631
  %dev12 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %15, i32 0, i32 5, !dbg !4632
  call void @put_device(%struct.device* %dev12) #6, !dbg !4633
  ret void, !dbg !4634
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i64 @strlcpy(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kasprintf(i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_probe_node(%struct.xen_bus_type*, i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local void @xenbus_otherend_changed(%struct.xenbus_watch*, i8*, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.xenbus_device* @to_xenbus_device(%struct.device* %dev) #0 !dbg !4635 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.xenbus_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4638, metadata !DIExpression()), !dbg !4639
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4640, metadata !DIExpression()), !dbg !4642
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4642
  %1 = bitcast %struct.device* %0 to i8*, !dbg !4642
  store i8* %1, i8** %__mptr, align 8, !dbg !4642
  br label %do.body, !dbg !4642

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4643

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4642
  %add.ptr = getelementptr i8, i8* %2, i64 -64, !dbg !4642
  %3 = bitcast i8* %add.ptr to %struct.xenbus_device*, !dbg !4642
  store %struct.xenbus_device* %3, %struct.xenbus_device** %tmp, align 8, !dbg !4643
  %4 = load %struct.xenbus_device*, %struct.xenbus_device** %tmp, align 8, !dbg !4642
  ret %struct.xenbus_device* %4, !dbg !4645
}

; Function Attrs: noredzone
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #0 !dbg !4646 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4649, metadata !DIExpression()), !dbg !4650
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !4651, metadata !DIExpression()), !dbg !4652
  ret void, !dbg !4653
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !4654 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4658, metadata !DIExpression()), !dbg !4659
  br label %do.body, !dbg !4660

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4661

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4663

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4661

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4665
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4665
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4665
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !4665
  br label %do.end3, !dbg !4665

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4661

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4667
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4668
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4669
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !4670
  ret void, !dbg !4671
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenbus_frontend_delayed_resume(%struct.work_struct* %w) #0 !dbg !4672 {
entry:
  %w.addr = alloca %struct.work_struct*, align 8
  %xdev = alloca %struct.xenbus_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.xenbus_device*, align 8
  store %struct.work_struct* %w, %struct.work_struct** %w.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %w.addr, metadata !4673, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %xdev, metadata !4675, metadata !DIExpression()), !dbg !4676
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4677, metadata !DIExpression()), !dbg !4679
  %0 = load %struct.work_struct*, %struct.work_struct** %w.addr, align 8, !dbg !4679
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !4679
  store i8* %1, i8** %__mptr, align 8, !dbg !4679
  br label %do.body, !dbg !4679

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4680

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4679
  %add.ptr = getelementptr i8, i8* %2, i64 -792, !dbg !4679
  %3 = bitcast i8* %add.ptr to %struct.xenbus_device*, !dbg !4679
  store %struct.xenbus_device* %3, %struct.xenbus_device** %tmp, align 8, !dbg !4680
  %4 = load %struct.xenbus_device*, %struct.xenbus_device** %tmp, align 8, !dbg !4679
  store %struct.xenbus_device* %4, %struct.xenbus_device** %xdev, align 8, !dbg !4676
  %5 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev, align 8, !dbg !4682
  %dev = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %5, i32 0, i32 5, !dbg !4683
  %call = call i32 @xenbus_dev_resume(%struct.device* %dev) #6, !dbg !4684
  ret void, !dbg !4685
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_dev_probe(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_dev_resume(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i8* @xenbus_strstate(i32) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @wait_for_completion_timeout(%struct.completion*, i64) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_dev_suspend(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_frontend_dev_resume(%struct.device* %dev) #0 !dbg !4686 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %xdev = alloca %struct.xenbus_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4687, metadata !DIExpression()), !dbg !4688
  %0 = load i32, i32* @xen_store_domain_type, align 4, !dbg !4689
  %cmp = icmp eq i32 %0, 3, !dbg !4691
  br i1 %cmp, label %if.then, label %if.end, !dbg !4692

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %xdev, metadata !4693, metadata !DIExpression()), !dbg !4695
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4696
  %call = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %1) #6, !dbg !4697
  store %struct.xenbus_device* %call, %struct.xenbus_device** %xdev, align 8, !dbg !4695
  %2 = load %struct.xenbus_device*, %struct.xenbus_device** %xdev, align 8, !dbg !4698
  %work = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %2, i32 0, i32 8, !dbg !4699
  %call1 = call zeroext i1 @schedule_work(%struct.work_struct* %work) #6, !dbg !4700
  store i32 0, i32* %retval, align 4, !dbg !4701
  br label %return, !dbg !4701

if.end:                                           ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4702
  %call2 = call i32 @xenbus_dev_resume(%struct.device* %3) #6, !dbg !4703
  store i32 %call2, i32* %retval, align 4, !dbg !4704
  br label %return, !dbg !4704

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !4705
  ret i32 %4, !dbg !4705
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_dev_cancel(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @schedule_work(%struct.work_struct* %work) #0 !dbg !4706 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4709, metadata !DIExpression()), !dbg !4710
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !4711
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !4712
  %call = call zeroext i1 @queue_work(%struct.workqueue_struct* %0, %struct.work_struct* %1) #6, !dbg !4713
  ret i1 %call, !dbg !4714
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_work(%struct.workqueue_struct* %wq, %struct.work_struct* %work) #0 !dbg !4715 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !4718, metadata !DIExpression()), !dbg !4719
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4720, metadata !DIExpression()), !dbg !4721
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !4722
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !4723
  %call = call zeroext i1 @queue_work_on(i32 1, %struct.workqueue_struct* %0, %struct.work_struct* %1) #6, !dbg !4724
  ret i1 %call, !dbg !4725
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_work_on(i32, %struct.workqueue_struct*, %struct.work_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @exists_non_essential_connecting_device(%struct.device_driver* %drv) #0 !dbg !4726 {
entry:
  %drv.addr = alloca %struct.device_driver*, align 8
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !4729, metadata !DIExpression()), !dbg !4730
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !4731
  %1 = bitcast %struct.device_driver* %0 to i8*, !dbg !4731
  %call = call i32 @bus_for_each_dev(%struct.bus_type* getelementptr inbounds (%struct.xen_bus_type, %struct.xen_bus_type* @xenbus_frontend, i32 0, i32 5), %struct.device* null, i8* %1, i32 (%struct.device*, i8*)* @non_essential_device_connecting) #6, !dbg !4732
  ret i32 %call, !dbg !4733
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @wait_loop(i64 %start, i32 %max_delay, i32* %seconds_waited) #0 !dbg !4734 {
entry:
  %retval = alloca i1, align 1
  %start.addr = alloca i64, align 8
  %max_delay.addr = alloca i32, align 4
  %seconds_waited.addr = alloca i32*, align 8
  store i64 %start, i64* %start.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !4737, metadata !DIExpression()), !dbg !4738
  store i32 %max_delay, i32* %max_delay.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max_delay.addr, metadata !4739, metadata !DIExpression()), !dbg !4740
  store i32* %seconds_waited, i32** %seconds_waited.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %seconds_waited.addr, metadata !4741, metadata !DIExpression()), !dbg !4742
  %0 = load i64, i64* %start.addr, align 8, !dbg !4743
  %1 = load i32*, i32** %seconds_waited.addr, align 8, !dbg !4743
  %2 = load i32, i32* %1, align 4, !dbg !4743
  %add = add i32 %2, 5, !dbg !4743
  %mul = mul i32 %add, 250, !dbg !4743
  %conv = zext i32 %mul to i64, !dbg !4743
  %add1 = add i64 %0, %conv, !dbg !4743
  %3 = load volatile i64, i64* @jiffies, align 8, !dbg !4743
  %sub = sub i64 %add1, %3, !dbg !4743
  %cmp = icmp slt i64 %sub, 0, !dbg !4743
  br i1 %cmp, label %if.then, label %if.end12, !dbg !4745

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %seconds_waited.addr, align 8, !dbg !4746
  %5 = load i32, i32* %4, align 4, !dbg !4749
  %tobool = icmp ne i32 %5, 0, !dbg !4749
  br i1 %tobool, label %if.end, label %if.then3, !dbg !4750

if.then3:                                         ; preds = %if.then
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !4751
  br label %if.end, !dbg !4751

if.end:                                           ; preds = %if.then3, %if.then
  %6 = load i32*, i32** %seconds_waited.addr, align 8, !dbg !4752
  %7 = load i32, i32* %6, align 4, !dbg !4753
  %add4 = add i32 %7, 5, !dbg !4753
  store i32 %add4, i32* %6, align 4, !dbg !4753
  %8 = load i32, i32* %max_delay.addr, align 4, !dbg !4754
  %9 = load i32*, i32** %seconds_waited.addr, align 8, !dbg !4754
  %10 = load i32, i32* %9, align 4, !dbg !4754
  %sub5 = sub i32 %8, %10, !dbg !4754
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %sub5) #7, !dbg !4754
  %11 = load i32*, i32** %seconds_waited.addr, align 8, !dbg !4755
  %12 = load i32, i32* %11, align 4, !dbg !4757
  %13 = load i32, i32* %max_delay.addr, align 4, !dbg !4758
  %cmp7 = icmp eq i32 %12, %13, !dbg !4759
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !4760

if.then9:                                         ; preds = %if.end
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)) #7, !dbg !4761
  store i1 true, i1* %retval, align 1, !dbg !4763
  br label %return, !dbg !4763

if.end11:                                         ; preds = %if.end
  br label %if.end12, !dbg !4764

if.end12:                                         ; preds = %if.end11, %entry
  %call13 = call i64 @schedule_timeout_interruptible(i64 25) #6, !dbg !4765
  store i1 false, i1* %retval, align 1, !dbg !4766
  br label %return, !dbg !4766

return:                                           ; preds = %if.end12, %if.then9
  %14 = load i1, i1* %retval, align 1, !dbg !4767
  ret i1 %14, !dbg !4767
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @exists_essential_connecting_device(%struct.device_driver* %drv) #0 !dbg !4768 {
entry:
  %drv.addr = alloca %struct.device_driver*, align 8
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !4769, metadata !DIExpression()), !dbg !4770
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !4771
  %1 = bitcast %struct.device_driver* %0 to i8*, !dbg !4771
  %call = call i32 @bus_for_each_dev(%struct.bus_type* getelementptr inbounds (%struct.xen_bus_type, %struct.xen_bus_type* @xenbus_frontend, i32 0, i32 5), %struct.device* null, i8* %1, i32 (%struct.device*, i8*)* @essential_device_connecting) #6, !dbg !4772
  ret i32 %call, !dbg !4773
}

; Function Attrs: noredzone
declare dso_local i32 @bus_for_each_dev(%struct.bus_type*, %struct.device*, i8*, i32 (%struct.device*, i8*)*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @print_device_status(%struct.device* %dev, i8* %data) #0 !dbg !4774 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %xendev = alloca %struct.xenbus_device*, align 8
  %drv = alloca %struct.device_driver*, align 8
  %rstate = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4777, metadata !DIExpression()), !dbg !4778
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4779, metadata !DIExpression()), !dbg !4780
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %xendev, metadata !4781, metadata !DIExpression()), !dbg !4782
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4783
  %call = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %0) #6, !dbg !4784
  store %struct.xenbus_device* %call, %struct.xenbus_device** %xendev, align 8, !dbg !4782
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv, metadata !4785, metadata !DIExpression()), !dbg !4786
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4787
  %2 = bitcast i8* %1 to %struct.device_driver*, !dbg !4787
  store %struct.device_driver* %2, %struct.device_driver** %drv, align 8, !dbg !4786
  %3 = load %struct.device_driver*, %struct.device_driver** %drv, align 8, !dbg !4788
  %tobool = icmp ne %struct.device_driver* %3, null, !dbg !4788
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4790

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4791
  %driver = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 6, !dbg !4792
  %5 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !4792
  %6 = load %struct.device_driver*, %struct.device_driver** %drv, align 8, !dbg !4793
  %cmp = icmp ne %struct.device_driver* %5, %6, !dbg !4794
  br i1 %cmp, label %if.then, label %if.end, !dbg !4795

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !4796
  br label %return, !dbg !4796

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4797
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 6, !dbg !4799
  %8 = load %struct.device_driver*, %struct.device_driver** %driver1, align 8, !dbg !4799
  %tobool2 = icmp ne %struct.device_driver* %8, null, !dbg !4797
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !4800

if.then3:                                         ; preds = %if.end
  %9 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !4801
  %nodename = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %9, i32 0, i32 1, !dbg !4801
  %10 = load i8*, i8** %nodename, align 8, !dbg !4801
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.18, i64 0, i64 0), i8* %10) #7, !dbg !4801
  br label %if.end16, !dbg !4803

if.else:                                          ; preds = %if.end
  %11 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !4804
  %state = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %11, i32 0, i32 6, !dbg !4806
  %12 = load i32, i32* %state, align 8, !dbg !4806
  %cmp5 = icmp ult i32 %12, 4, !dbg !4807
  br i1 %cmp5, label %if.then6, label %if.end15, !dbg !4808

if.then6:                                         ; preds = %if.else
  call void @llvm.dbg.declare(metadata i32* %rstate, metadata !4809, metadata !DIExpression()), !dbg !4811
  store i32 0, i32* %rstate, align 4, !dbg !4811
  %13 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !4812
  %otherend = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %13, i32 0, i32 2, !dbg !4814
  %14 = load i8*, i8** %otherend, align 8, !dbg !4814
  %tobool7 = icmp ne i8* %14, null, !dbg !4812
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !4815

if.then8:                                         ; preds = %if.then6
  %15 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !4816
  %otherend9 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %15, i32 0, i32 2, !dbg !4817
  %16 = load i8*, i8** %otherend9, align 8, !dbg !4817
  %call10 = call i32 @xenbus_read_driver_state(i8* %16) #6, !dbg !4818
  store i32 %call10, i32* %rstate, align 4, !dbg !4819
  br label %if.end11, !dbg !4820

if.end11:                                         ; preds = %if.then8, %if.then6
  %17 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !4821
  %nodename12 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %17, i32 0, i32 1, !dbg !4821
  %18 = load i8*, i8** %nodename12, align 8, !dbg !4821
  %19 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !4821
  %state13 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %19, i32 0, i32 6, !dbg !4821
  %20 = load i32, i32* %state13, align 8, !dbg !4821
  %21 = load i32, i32* %rstate, align 4, !dbg !4821
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.19, i64 0, i64 0), i8* %18, i32 %20, i32 %21) #7, !dbg !4821
  br label %if.end15, !dbg !4822

if.end15:                                         ; preds = %if.end11, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then3
  store i32 0, i32* %retval, align 4, !dbg !4823
  br label %return, !dbg !4823

return:                                           ; preds = %if.end16, %if.then
  %22 = load i32, i32* %retval, align 4, !dbg !4824
  ret i32 %22, !dbg !4824
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @non_essential_device_connecting(%struct.device* %dev, i8* %data) #0 !dbg !4825 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4826, metadata !DIExpression()), !dbg !4827
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4828, metadata !DIExpression()), !dbg !4829
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4830
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4831
  %call = call i32 @is_device_connecting(%struct.device* %0, i8* %1, i1 zeroext false) #6, !dbg !4832
  ret i32 %call, !dbg !4833
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @is_device_connecting(%struct.device* %dev, i8* %data, i1 zeroext %ignore_nonessential) #0 !dbg !4834 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  %ignore_nonessential.addr = alloca i8, align 1
  %xendev = alloca %struct.xenbus_device*, align 8
  %drv = alloca %struct.device_driver*, align 8
  %xendrv = alloca %struct.xenbus_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4837, metadata !DIExpression()), !dbg !4838
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4839, metadata !DIExpression()), !dbg !4840
  %frombool = zext i1 %ignore_nonessential to i8
  store i8 %frombool, i8* %ignore_nonessential.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ignore_nonessential.addr, metadata !4841, metadata !DIExpression()), !dbg !4842
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %xendev, metadata !4843, metadata !DIExpression()), !dbg !4844
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4845
  %call = call %struct.xenbus_device* @to_xenbus_device(%struct.device* %0) #6, !dbg !4846
  store %struct.xenbus_device* %call, %struct.xenbus_device** %xendev, align 8, !dbg !4844
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv, metadata !4847, metadata !DIExpression()), !dbg !4848
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4849
  %2 = bitcast i8* %1 to %struct.device_driver*, !dbg !4849
  store %struct.device_driver* %2, %struct.device_driver** %drv, align 8, !dbg !4848
  call void @llvm.dbg.declare(metadata %struct.xenbus_driver** %xendrv, metadata !4850, metadata !DIExpression()), !dbg !4851
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4852
  %driver = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 6, !dbg !4854
  %4 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !4854
  %tobool = icmp ne %struct.device_driver* %4, null, !dbg !4852
  br i1 %tobool, label %if.end, label %if.then, !dbg !4855

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4856
  br label %return, !dbg !4856

if.end:                                           ; preds = %entry
  %5 = load %struct.device_driver*, %struct.device_driver** %drv, align 8, !dbg !4857
  %tobool1 = icmp ne %struct.device_driver* %5, null, !dbg !4857
  br i1 %tobool1, label %land.lhs.true, label %if.end4, !dbg !4859

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4860
  %driver2 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 6, !dbg !4861
  %7 = load %struct.device_driver*, %struct.device_driver** %driver2, align 8, !dbg !4861
  %8 = load %struct.device_driver*, %struct.device_driver** %drv, align 8, !dbg !4862
  %cmp = icmp ne %struct.device_driver* %7, %8, !dbg !4863
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !4864

if.then3:                                         ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !4865
  br label %return, !dbg !4865

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %9 = load i8, i8* %ignore_nonessential.addr, align 1, !dbg !4866
  %tobool5 = trunc i8 %9 to i1, !dbg !4866
  br i1 %tobool5, label %if.then6, label %if.end16, !dbg !4868

if.then6:                                         ; preds = %if.end4
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !4869
  %nodename = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %10, i32 0, i32 1, !dbg !4872
  %11 = load i8*, i8** %nodename, align 8, !dbg !4872
  %call7 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i64 11) #6, !dbg !4873
  %cmp8 = icmp eq i32 %call7, 0, !dbg !4874
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !4875

if.then9:                                         ; preds = %if.then6
  store i32 0, i32* %retval, align 4, !dbg !4876
  br label %return, !dbg !4876

if.end10:                                         ; preds = %if.then6
  %12 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !4877
  %nodename11 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %12, i32 0, i32 1, !dbg !4879
  %13 = load i8*, i8** %nodename11, align 8, !dbg !4879
  %call12 = call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i64 10) #6, !dbg !4880
  %cmp13 = icmp eq i32 %call12, 0, !dbg !4881
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !4882

if.then14:                                        ; preds = %if.end10
  store i32 0, i32* %retval, align 4, !dbg !4883
  br label %return, !dbg !4883

if.end15:                                         ; preds = %if.end10
  br label %if.end16, !dbg !4884

if.end16:                                         ; preds = %if.end15, %if.end4
  %14 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4885
  %driver17 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 6, !dbg !4886
  %15 = load %struct.device_driver*, %struct.device_driver** %driver17, align 8, !dbg !4886
  %call18 = call %struct.xenbus_driver* @to_xenbus_driver(%struct.device_driver* %15) #6, !dbg !4887
  store %struct.xenbus_driver* %call18, %struct.xenbus_driver** %xendrv, align 8, !dbg !4888
  %16 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !4889
  %state = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %16, i32 0, i32 6, !dbg !4890
  %17 = load i32, i32* %state, align 8, !dbg !4890
  %cmp19 = icmp ult i32 %17, 4, !dbg !4891
  br i1 %cmp19, label %lor.end, label %lor.rhs, !dbg !4892

lor.rhs:                                          ; preds = %if.end16
  %18 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !4893
  %state20 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %18, i32 0, i32 6, !dbg !4894
  %19 = load i32, i32* %state20, align 8, !dbg !4894
  %cmp21 = icmp eq i32 %19, 4, !dbg !4895
  br i1 %cmp21, label %land.lhs.true22, label %land.end, !dbg !4896

land.lhs.true22:                                  ; preds = %lor.rhs
  %20 = load %struct.xenbus_driver*, %struct.xenbus_driver** %xendrv, align 8, !dbg !4897
  %is_ready = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %20, i32 0, i32 11, !dbg !4898
  %21 = load i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)** %is_ready, align 8, !dbg !4898
  %tobool23 = icmp ne i32 (%struct.xenbus_device*)* %21, null, !dbg !4897
  br i1 %tobool23, label %land.rhs, label %land.end, !dbg !4899

land.rhs:                                         ; preds = %land.lhs.true22
  %22 = load %struct.xenbus_driver*, %struct.xenbus_driver** %xendrv, align 8, !dbg !4900
  %is_ready24 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %22, i32 0, i32 11, !dbg !4901
  %23 = load i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)** %is_ready24, align 8, !dbg !4901
  %24 = load %struct.xenbus_device*, %struct.xenbus_device** %xendev, align 8, !dbg !4902
  %call25 = call i32 %23(%struct.xenbus_device* %24) #6, !dbg !4900
  %tobool26 = icmp ne i32 %call25, 0, !dbg !4903
  %lnot = xor i1 %tobool26, true, !dbg !4903
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true22, %lor.rhs
  %25 = phi i1 [ false, %land.lhs.true22 ], [ false, %lor.rhs ], [ %lnot, %land.rhs ], !dbg !4904
  br label %lor.end, !dbg !4892

lor.end:                                          ; preds = %land.end, %if.end16
  %26 = phi i1 [ true, %if.end16 ], [ %25, %land.end ]
  %lor.ext = zext i1 %26 to i32, !dbg !4892
  store i32 %lor.ext, i32* %retval, align 4, !dbg !4905
  br label %return, !dbg !4905

return:                                           ; preds = %lor.end, %if.then14, %if.then9, %if.then3, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !4906
  ret i32 %27, !dbg !4906
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.xenbus_driver* @to_xenbus_driver(%struct.device_driver* %drv) #0 !dbg !4907 {
entry:
  %drv.addr = alloca %struct.device_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.xenbus_driver*, align 8
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !4910, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4912, metadata !DIExpression()), !dbg !4914
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !4914
  %1 = bitcast %struct.device_driver* %0 to i8*, !dbg !4914
  store i8* %1, i8** %__mptr, align 8, !dbg !4914
  br label %do.body, !dbg !4914

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4915

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4914
  %add.ptr = getelementptr i8, i8* %2, i64 -72, !dbg !4914
  %3 = bitcast i8* %add.ptr to %struct.xenbus_driver*, !dbg !4914
  store %struct.xenbus_driver* %3, %struct.xenbus_driver** %tmp, align 8, !dbg !4915
  %4 = load %struct.xenbus_driver*, %struct.xenbus_driver** %tmp, align 8, !dbg !4914
  ret %struct.xenbus_driver* %4, !dbg !4917
}

; Function Attrs: noredzone
declare dso_local i64 @schedule_timeout_interruptible(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @essential_device_connecting(%struct.device* %dev, i8* %data) #0 !dbg !4918 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4919, metadata !DIExpression()), !dbg !4920
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4921, metadata !DIExpression()), !dbg !4922
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4923
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4924
  %call = call i32 @is_device_connecting(%struct.device* %0, i8* %1, i1 zeroext true) #6, !dbg !4925
  ret i32 %call, !dbg !4926
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_read_driver_state(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @frontend_probe_and_watch(%struct.notifier_block* %notifier, i64 %event, i8* %data) #0 !dbg !4927 {
entry:
  %notifier.addr = alloca %struct.notifier_block*, align 8
  %event.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  store %struct.notifier_block* %notifier, %struct.notifier_block** %notifier.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %notifier.addr, metadata !4928, metadata !DIExpression()), !dbg !4929
  store i64 %event, i64* %event.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %event.addr, metadata !4930, metadata !DIExpression()), !dbg !4931
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4932, metadata !DIExpression()), !dbg !4933
  %0 = load i32, i32* @xen_domain_type, align 4, !dbg !4934
  %cmp = icmp eq i32 %0, 2, !dbg !4934
  br i1 %cmp, label %if.then, label %if.end, !dbg !4936

if.then:                                          ; preds = %entry
  call void @xenbus_reset_state() #6, !dbg !4937
  br label %if.end, !dbg !4937

if.end:                                           ; preds = %if.then, %entry
  %call = call i32 @xenbus_probe_devices(%struct.xen_bus_type* @xenbus_frontend) #6, !dbg !4938
  %call1 = call i32 @register_xenbus_watch(%struct.xenbus_watch* @fe_watch) #6, !dbg !4939
  ret i32 0, !dbg !4940
}

; Function Attrs: noredzone
declare dso_local i32 @bus_register(%struct.bus_type*) #2

; Function Attrs: noredzone
declare dso_local i32 @register_xenstore_notifier(%struct.notifier_block*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenbus_reset_state() #0 !dbg !4941 {
entry:
  %devclass = alloca i8**, align 8
  %dev = alloca i8**, align 8
  %devclass_n = alloca i32, align 4
  %dev_n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  %.compoundliteral2 = alloca %struct.xenbus_transaction, align 4
  call void @llvm.dbg.declare(metadata i8*** %devclass, metadata !4942, metadata !DIExpression()), !dbg !4944
  call void @llvm.dbg.declare(metadata i8*** %dev, metadata !4945, metadata !DIExpression()), !dbg !4946
  call void @llvm.dbg.declare(metadata i32* %devclass_n, metadata !4947, metadata !DIExpression()), !dbg !4948
  call void @llvm.dbg.declare(metadata i32* %dev_n, metadata !4949, metadata !DIExpression()), !dbg !4950
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4951, metadata !DIExpression()), !dbg !4952
  call void @llvm.dbg.declare(metadata i32* %j, metadata !4953, metadata !DIExpression()), !dbg !4954
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !4955
  store i32 0, i32* %id, align 4, !dbg !4955
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !4956
  %0 = load i32, i32* %coerce.dive, align 4, !dbg !4956
  %call = call i8** @xenbus_directory(i32 %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i32* %devclass_n) #6, !dbg !4956
  store i8** %call, i8*** %devclass, align 8, !dbg !4957
  %1 = load i8**, i8*** %devclass, align 8, !dbg !4958
  %2 = bitcast i8** %1 to i8*, !dbg !4958
  %call1 = call zeroext i1 @IS_ERR(i8* %2) #6, !dbg !4960
  br i1 %call1, label %if.then, label %if.end, !dbg !4961

if.then:                                          ; preds = %entry
  br label %return, !dbg !4962

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4963
  br label %for.cond, !dbg !4965

for.cond:                                         ; preds = %for.inc16, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !4966
  %4 = load i32, i32* %devclass_n, align 4, !dbg !4968
  %cmp = icmp slt i32 %3, %4, !dbg !4969
  br i1 %cmp, label %for.body, label %for.end18, !dbg !4970

for.body:                                         ; preds = %for.cond
  %id3 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral2, i32 0, i32 0, !dbg !4971
  store i32 0, i32* %id3, align 4, !dbg !4971
  %5 = load i8**, i8*** %devclass, align 8, !dbg !4973
  %6 = load i32, i32* %i, align 4, !dbg !4974
  %idxprom = sext i32 %6 to i64, !dbg !4973
  %arrayidx = getelementptr i8*, i8** %5, i64 %idxprom, !dbg !4973
  %7 = load i8*, i8** %arrayidx, align 8, !dbg !4973
  %coerce.dive4 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral2, i32 0, i32 0, !dbg !4975
  %8 = load i32, i32* %coerce.dive4, align 4, !dbg !4975
  %call5 = call i8** @xenbus_directory(i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %7, i32* %dev_n) #6, !dbg !4975
  store i8** %call5, i8*** %dev, align 8, !dbg !4976
  %9 = load i8**, i8*** %dev, align 8, !dbg !4977
  %10 = bitcast i8** %9 to i8*, !dbg !4977
  %call6 = call zeroext i1 @IS_ERR(i8* %10) #6, !dbg !4979
  br i1 %call6, label %if.then7, label %if.end8, !dbg !4980

if.then7:                                         ; preds = %for.body
  br label %for.inc16, !dbg !4981

if.end8:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4, !dbg !4982
  br label %for.cond9, !dbg !4984

for.cond9:                                        ; preds = %for.inc, %if.end8
  %11 = load i32, i32* %j, align 4, !dbg !4985
  %12 = load i32, i32* %dev_n, align 4, !dbg !4987
  %cmp10 = icmp slt i32 %11, %12, !dbg !4988
  br i1 %cmp10, label %for.body11, label %for.end, !dbg !4989

for.body11:                                       ; preds = %for.cond9
  %13 = load i8**, i8*** %devclass, align 8, !dbg !4990
  %14 = load i32, i32* %i, align 4, !dbg !4991
  %idxprom12 = sext i32 %14 to i64, !dbg !4990
  %arrayidx13 = getelementptr i8*, i8** %13, i64 %idxprom12, !dbg !4990
  %15 = load i8*, i8** %arrayidx13, align 8, !dbg !4990
  %16 = load i8**, i8*** %dev, align 8, !dbg !4992
  %17 = load i32, i32* %j, align 4, !dbg !4993
  %idxprom14 = sext i32 %17 to i64, !dbg !4992
  %arrayidx15 = getelementptr i8*, i8** %16, i64 %idxprom14, !dbg !4992
  %18 = load i8*, i8** %arrayidx15, align 8, !dbg !4992
  call void @xenbus_check_frontend(i8* %15, i8* %18) #6, !dbg !4994
  br label %for.inc, !dbg !4994

for.inc:                                          ; preds = %for.body11
  %19 = load i32, i32* %j, align 4, !dbg !4995
  %inc = add i32 %19, 1, !dbg !4995
  store i32 %inc, i32* %j, align 4, !dbg !4995
  br label %for.cond9, !dbg !4996, !llvm.loop !4997

for.end:                                          ; preds = %for.cond9
  %20 = load i8**, i8*** %dev, align 8, !dbg !4999
  %21 = bitcast i8** %20 to i8*, !dbg !4999
  call void @kfree(i8* %21) #6, !dbg !5000
  br label %for.inc16, !dbg !5001

for.inc16:                                        ; preds = %for.end, %if.then7
  %22 = load i32, i32* %i, align 4, !dbg !5002
  %inc17 = add i32 %22, 1, !dbg !5002
  store i32 %inc17, i32* %i, align 4, !dbg !5002
  br label %for.cond, !dbg !5003, !llvm.loop !5004

for.end18:                                        ; preds = %for.cond
  %23 = load i8**, i8*** %devclass, align 8, !dbg !5006
  %24 = bitcast i8** %23 to i8*, !dbg !5006
  call void @kfree(i8* %24) #6, !dbg !5007
  br label %return, !dbg !5008

return:                                           ; preds = %for.end18, %if.then
  ret void, !dbg !5008
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_probe_devices(%struct.xen_bus_type*) #2

; Function Attrs: noredzone
declare dso_local i32 @register_xenbus_watch(%struct.xenbus_watch*) #2

; Function Attrs: noredzone
declare dso_local i8** @xenbus_directory(i32, i8*, i8*, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !5009 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5013, metadata !DIExpression()), !dbg !5014
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5015
  %1 = ptrtoint i8* %0 to i64, !dbg !5015
  %2 = inttoptr i64 %1 to i8*, !dbg !5015
  %3 = ptrtoint i8* %2 to i64, !dbg !5015
  %cmp = icmp uge i64 %3, -4095, !dbg !5015
  %lnot = xor i1 %cmp, true, !dbg !5015
  %lnot1 = xor i1 %lnot, true, !dbg !5015
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5015
  %conv = sext i32 %lnot.ext to i64, !dbg !5015
  %tobool = icmp ne i64 %conv, 0, !dbg !5015
  ret i1 %tobool, !dbg !5016
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenbus_check_frontend(i8* %class, i8* %dev) #0 !dbg !5017 {
entry:
  %class.addr = alloca i8*, align 8
  %dev.addr = alloca i8*, align 8
  %be_state = alloca i32, align 4
  %fe_state = alloca i32, align 4
  %err = alloca i32, align 4
  %backend = alloca i8*, align 8
  %frontend = alloca i8*, align 8
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  %.compoundliteral6 = alloca %struct.xenbus_transaction, align 4
  %.compoundliteral14 = alloca %struct.xenbus_transaction, align 4
  store i8* %class, i8** %class.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %class.addr, metadata !5020, metadata !DIExpression()), !dbg !5021
  store i8* %dev, i8** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev.addr, metadata !5022, metadata !DIExpression()), !dbg !5023
  call void @llvm.dbg.declare(metadata i32* %be_state, metadata !5024, metadata !DIExpression()), !dbg !5025
  call void @llvm.dbg.declare(metadata i32* %fe_state, metadata !5026, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5028, metadata !DIExpression()), !dbg !5029
  call void @llvm.dbg.declare(metadata i8** %backend, metadata !5030, metadata !DIExpression()), !dbg !5031
  call void @llvm.dbg.declare(metadata i8** %frontend, metadata !5032, metadata !DIExpression()), !dbg !5033
  %0 = load i8*, i8** %class.addr, align 8, !dbg !5034
  %1 = load i8*, i8** %dev.addr, align 8, !dbg !5035
  %call = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i8* %0, i8* %1) #6, !dbg !5036
  store i8* %call, i8** %frontend, align 8, !dbg !5037
  %2 = load i8*, i8** %frontend, align 8, !dbg !5038
  %tobool = icmp ne i8* %2, null, !dbg !5038
  br i1 %tobool, label %if.end, label %if.then, !dbg !5040

if.then:                                          ; preds = %entry
  br label %return, !dbg !5041

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5042
  store i32 0, i32* %id, align 4, !dbg !5042
  %3 = load i8*, i8** %frontend, align 8, !dbg !5043
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5044
  %4 = load i32, i32* %coerce.dive, align 4, !dbg !5044
  %call1 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_scanf(i32 %4, i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i32* %fe_state) #6, !dbg !5044
  store i32 %call1, i32* %err, align 4, !dbg !5045
  %5 = load i32, i32* %err, align 4, !dbg !5046
  %cmp = icmp ne i32 %5, 1, !dbg !5048
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5049

if.then2:                                         ; preds = %if.end
  br label %out, !dbg !5050

if.end3:                                          ; preds = %if.end
  %6 = load i32, i32* %fe_state, align 4, !dbg !5051
  switch i32 %6, label %sw.default [
    i32 4, label %sw.bb
    i32 6, label %sw.bb
  ], !dbg !5052

sw.bb:                                            ; preds = %if.end3, %if.end3
  %7 = load i8*, i8** %frontend, align 8, !dbg !5053
  %8 = load i32, i32* %fe_state, align 4, !dbg !5055
  %call4 = call i8* @xenbus_strstate(i32 %8) #6, !dbg !5056
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), i8* %7, i8* %call4) #7, !dbg !5057
  %id7 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral6, i32 0, i32 0, !dbg !5058
  store i32 0, i32* %id7, align 4, !dbg !5058
  %9 = load i8*, i8** %frontend, align 8, !dbg !5059
  %coerce.dive8 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral6, i32 0, i32 0, !dbg !5060
  %10 = load i32, i32* %coerce.dive8, align 4, !dbg !5060
  %call9 = call i8* @xenbus_read(i32 %10, i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null) #6, !dbg !5060
  store i8* %call9, i8** %backend, align 8, !dbg !5061
  %11 = load i8*, i8** %backend, align 8, !dbg !5062
  %tobool10 = icmp ne i8* %11, null, !dbg !5062
  br i1 %tobool10, label %lor.lhs.false, label %if.then12, !dbg !5064

lor.lhs.false:                                    ; preds = %sw.bb
  %12 = load i8*, i8** %backend, align 8, !dbg !5065
  %call11 = call zeroext i1 @IS_ERR(i8* %12) #6, !dbg !5066
  br i1 %call11, label %if.then12, label %if.end13, !dbg !5067

if.then12:                                        ; preds = %lor.lhs.false, %sw.bb
  br label %out, !dbg !5068

if.end13:                                         ; preds = %lor.lhs.false
  %id15 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral14, i32 0, i32 0, !dbg !5069
  store i32 0, i32* %id15, align 4, !dbg !5069
  %13 = load i8*, i8** %backend, align 8, !dbg !5070
  %coerce.dive16 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral14, i32 0, i32 0, !dbg !5071
  %14 = load i32, i32* %coerce.dive16, align 4, !dbg !5071
  %call17 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_scanf(i32 %14, i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i32* %be_state) #6, !dbg !5071
  store i32 %call17, i32* %err, align 4, !dbg !5072
  %15 = load i32, i32* %err, align 4, !dbg !5073
  %cmp18 = icmp eq i32 %15, 1, !dbg !5075
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5076

if.then19:                                        ; preds = %if.end13
  %16 = load i8*, i8** %frontend, align 8, !dbg !5077
  %17 = load i8*, i8** %backend, align 8, !dbg !5078
  %18 = load i32, i32* %be_state, align 4, !dbg !5079
  call void @xenbus_reset_frontend(i8* %16, i8* %17, i32 %18) #6, !dbg !5080
  br label %if.end20, !dbg !5080

if.end20:                                         ; preds = %if.then19, %if.end13
  %19 = load i8*, i8** %backend, align 8, !dbg !5081
  call void @kfree(i8* %19) #6, !dbg !5082
  br label %sw.epilog, !dbg !5083

sw.default:                                       ; preds = %if.end3
  br label %sw.epilog, !dbg !5084

sw.epilog:                                        ; preds = %sw.default, %if.end20
  br label %out, !dbg !5085

out:                                              ; preds = %sw.epilog, %if.then12, %if.then2
  call void @llvm.dbg.label(metadata !5086), !dbg !5087
  %20 = load i8*, i8** %frontend, align 8, !dbg !5088
  call void @kfree(i8* %20) #6, !dbg !5089
  br label %return, !dbg !5090

return:                                           ; preds = %out, %if.then
  ret void, !dbg !5090
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_scanf(i32, i8*, i8*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @xenbus_read(i32, i8*, i8*, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenbus_reset_frontend(i8* %fe, i8* %be, i32 %be_state) #0 !dbg !5091 {
entry:
  %fe.addr = alloca i8*, align 8
  %be.addr = alloca i8*, align 8
  %be_state.addr = alloca i32, align 4
  %be_watch = alloca %struct.xenbus_watch, align 8
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  %.compoundliteral8 = alloca %struct.xenbus_transaction, align 4
  %.compoundliteral13 = alloca %struct.xenbus_transaction, align 4
  store i8* %fe, i8** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fe.addr, metadata !5094, metadata !DIExpression()), !dbg !5095
  store i8* %be, i8** %be.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %be.addr, metadata !5096, metadata !DIExpression()), !dbg !5097
  store i32 %be_state, i32* %be_state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %be_state.addr, metadata !5098, metadata !DIExpression()), !dbg !5099
  call void @llvm.dbg.declare(metadata %struct.xenbus_watch* %be_watch, metadata !5100, metadata !DIExpression()), !dbg !5101
  %0 = load i8*, i8** %be.addr, align 8, !dbg !5102
  %1 = load i32, i32* %be_state.addr, align 4, !dbg !5103
  %call = call i8* @xenbus_strstate(i32 %1) #6, !dbg !5104
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i8* %0, i8* %call) #7, !dbg !5105
  %2 = bitcast %struct.xenbus_watch* %be_watch to i8*, !dbg !5106
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 32, i1 false), !dbg !5106
  %3 = load i8*, i8** %be.addr, align 8, !dbg !5107
  %call2 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8* %3) #6, !dbg !5108
  %node = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %be_watch, i32 0, i32 1, !dbg !5109
  store i8* %call2, i8** %node, align 8, !dbg !5110
  %node3 = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %be_watch, i32 0, i32 1, !dbg !5111
  %4 = load i8*, i8** %node3, align 8, !dbg !5111
  %tobool = icmp ne i8* %4, null, !dbg !5113
  br i1 %tobool, label %if.end, label %if.then, !dbg !5114

if.then:                                          ; preds = %entry
  br label %return, !dbg !5115

if.end:                                           ; preds = %entry
  %callback = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %be_watch, i32 0, i32 2, !dbg !5116
  store void (%struct.xenbus_watch*, i8*, i8*)* @xenbus_reset_backend_state_changed, void (%struct.xenbus_watch*, i8*, i8*)** %callback, align 8, !dbg !5117
  store i32 0, i32* @backend_state, align 4, !dbg !5118
  %5 = load i8*, i8** %be.addr, align 8, !dbg !5119
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.27, i64 0, i64 0), i8* %5) #7, !dbg !5119
  %call5 = call i32 @register_xenbus_watch(%struct.xenbus_watch* %be_watch) #6, !dbg !5120
  %6 = load i32, i32* %be_state.addr, align 4, !dbg !5121
  switch i32 %6, label %sw.epilog [
    i32 4, label %sw.bb
    i32 5, label %sw.bb7
    i32 6, label %sw.bb12
  ], !dbg !5122

sw.bb:                                            ; preds = %if.end
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5123
  store i32 0, i32* %id, align 4, !dbg !5123
  %7 = load i8*, i8** %fe.addr, align 8, !dbg !5125
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5126
  %8 = load i32, i32* %coerce.dive, align 4, !dbg !5126
  %call6 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_printf(i32 %8, i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 5) #6, !dbg !5126
  %9 = load i8*, i8** %be.addr, align 8, !dbg !5127
  call void @xenbus_reset_wait_for_backend(i8* %9, i32 5) #6, !dbg !5128
  br label %sw.bb7, !dbg !5128

sw.bb7:                                           ; preds = %if.end, %sw.bb
  %id9 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral8, i32 0, i32 0, !dbg !5129
  store i32 0, i32* %id9, align 4, !dbg !5129
  %10 = load i8*, i8** %fe.addr, align 8, !dbg !5130
  %coerce.dive10 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral8, i32 0, i32 0, !dbg !5131
  %11 = load i32, i32* %coerce.dive10, align 4, !dbg !5131
  %call11 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_printf(i32 %11, i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 6) #6, !dbg !5131
  %12 = load i8*, i8** %be.addr, align 8, !dbg !5132
  call void @xenbus_reset_wait_for_backend(i8* %12, i32 6) #6, !dbg !5133
  br label %sw.bb12, !dbg !5133

sw.bb12:                                          ; preds = %if.end, %sw.bb7
  %id14 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral13, i32 0, i32 0, !dbg !5134
  store i32 0, i32* %id14, align 4, !dbg !5134
  %13 = load i8*, i8** %fe.addr, align 8, !dbg !5135
  %coerce.dive15 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral13, i32 0, i32 0, !dbg !5136
  %14 = load i32, i32* %coerce.dive15, align 4, !dbg !5136
  %call16 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_printf(i32 %14, i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 1) #6, !dbg !5136
  %15 = load i8*, i8** %be.addr, align 8, !dbg !5137
  call void @xenbus_reset_wait_for_backend(i8* %15, i32 2) #6, !dbg !5138
  br label %sw.epilog, !dbg !5139

sw.epilog:                                        ; preds = %sw.bb12, %if.end
  call void @unregister_xenbus_watch(%struct.xenbus_watch* %be_watch) #6, !dbg !5140
  %16 = load i8*, i8** %be.addr, align 8, !dbg !5141
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.29, i64 0, i64 0), i8* %16) #7, !dbg !5141
  %node18 = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %be_watch, i32 0, i32 1, !dbg !5142
  %17 = load i8*, i8** %node18, align 8, !dbg !5142
  call void @kfree(i8* %17) #6, !dbg !5143
  br label %return, !dbg !5144

return:                                           ; preds = %sw.epilog, %if.then
  ret void, !dbg !5144
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenbus_reset_backend_state_changed(%struct.xenbus_watch* %w, i8* %path, i8* %token) #0 !dbg !5145 {
entry:
  %w.addr = alloca %struct.xenbus_watch*, align 8
  %path.addr = alloca i8*, align 8
  %token.addr = alloca i8*, align 8
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  store %struct.xenbus_watch* %w, %struct.xenbus_watch** %w.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_watch** %w.addr, metadata !5146, metadata !DIExpression()), !dbg !5147
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !5148, metadata !DIExpression()), !dbg !5149
  store i8* %token, i8** %token.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %token.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5152
  store i32 0, i32* %id, align 4, !dbg !5152
  %0 = load i8*, i8** %path.addr, align 8, !dbg !5154
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !5155
  %1 = load i32, i32* %coerce.dive, align 4, !dbg !5155
  %call = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_scanf(i32 %1, i8* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i32* @backend_state) #6, !dbg !5155
  %cmp = icmp ne i32 %call, 1, !dbg !5156
  br i1 %cmp, label %if.then, label %if.end, !dbg !5157

if.then:                                          ; preds = %entry
  store i32 0, i32* @backend_state, align 4, !dbg !5158
  br label %if.end, !dbg !5159

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %path.addr, align 8, !dbg !5160
  %3 = load i32, i32* @backend_state, align 4, !dbg !5161
  %call1 = call i8* @xenbus_strstate(i32 %3) #6, !dbg !5162
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i8* %2, i8* %call1) #7, !dbg !5163
  call void @__wake_up(%struct.wait_queue_head* @backend_state_wq, i32 3, i32 1, i8* null) #6, !dbg !5164
  ret void, !dbg !5165
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_printf(i32, i8*, i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenbus_reset_wait_for_backend(i8* %be, i32 %expected) #0 !dbg !5166 {
entry:
  %be.addr = alloca i8*, align 8
  %expected.addr = alloca i32, align 4
  %timeout = alloca i64, align 8
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret8 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond9 = alloca i8, align 1
  %tmp17 = alloca i32, align 4
  %tmp31 = alloca i64, align 8
  %tmp33 = alloca i64, align 8
  store i8* %be, i8** %be.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %be.addr, metadata !5169, metadata !DIExpression()), !dbg !5170
  store i32 %expected, i32* %expected.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %expected.addr, metadata !5171, metadata !DIExpression()), !dbg !5172
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !5173, metadata !DIExpression()), !dbg !5174
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5175, metadata !DIExpression()), !dbg !5177
  store i64 1250, i64* %__ret, align 8, !dbg !5177
  br label %do.body, !dbg !5177

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5178

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5180

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !5178

do.end2:                                          ; preds = %do.end
  call void @llvm.dbg.declare(metadata i8* %__cond, metadata !5182, metadata !DIExpression()), !dbg !5185
  %0 = load i32, i32* @backend_state, align 4, !dbg !5185
  %1 = load i32, i32* %expected.addr, align 4, !dbg !5185
  %cmp = icmp eq i32 %0, %1, !dbg !5185
  %frombool = zext i1 %cmp to i8, !dbg !5185
  store i8 %frombool, i8* %__cond, align 1, !dbg !5185
  %2 = load i8, i8* %__cond, align 1, !dbg !5186
  %tobool = trunc i8 %2 to i1, !dbg !5186
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5186

land.lhs.true:                                    ; preds = %do.end2
  %3 = load i64, i64* %__ret, align 8, !dbg !5186
  %tobool3 = icmp ne i64 %3, 0, !dbg !5186
  br i1 %tobool3, label %if.end, label %if.then, !dbg !5185

if.then:                                          ; preds = %land.lhs.true
  store i64 1, i64* %__ret, align 8, !dbg !5186
  br label %if.end, !dbg !5186

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end2
  %4 = load i8, i8* %__cond, align 1, !dbg !5185
  %tobool4 = trunc i8 %4 to i1, !dbg !5185
  br i1 %tobool4, label %lor.end, label %lor.rhs, !dbg !5185

lor.rhs:                                          ; preds = %if.end
  %5 = load i64, i64* %__ret, align 8, !dbg !5185
  %tobool5 = icmp ne i64 %5, 0, !dbg !5185
  %lnot = xor i1 %tobool5, true, !dbg !5185
  br label %lor.end, !dbg !5185

lor.end:                                          ; preds = %lor.rhs, %if.end
  %6 = phi i1 [ true, %if.end ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32, !dbg !5185
  store i32 %lor.ext, i32* %tmp, align 4, !dbg !5186
  %7 = load i32, i32* %tmp, align 4, !dbg !5185
  %tobool6 = icmp ne i32 %7, 0, !dbg !5188
  br i1 %tobool6, label %if.end32, label %if.then7, !dbg !5177

if.then7:                                         ; preds = %lor.end
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !5189, metadata !DIExpression()), !dbg !5202
  call void @llvm.dbg.declare(metadata i64* %__ret8, metadata !5203, metadata !DIExpression()), !dbg !5202
  store i64 1250, i64* %__ret8, align 8, !dbg !5202
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #6, !dbg !5202
  br label %for.cond, !dbg !5202

for.cond:                                         ; preds = %if.end29, %if.then7
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !5204, metadata !DIExpression()), !dbg !5208
  %call = call i64 @prepare_to_wait_event(%struct.wait_queue_head* @backend_state_wq, %struct.wait_queue_entry* %__wq_entry, i32 1) #6, !dbg !5208
  store i64 %call, i64* %__int, align 8, !dbg !5208
  call void @llvm.dbg.declare(metadata i8* %__cond9, metadata !5209, metadata !DIExpression()), !dbg !5212
  %8 = load i32, i32* @backend_state, align 4, !dbg !5212
  %9 = load i32, i32* %expected.addr, align 4, !dbg !5212
  %cmp10 = icmp eq i32 %8, %9, !dbg !5212
  %frombool11 = zext i1 %cmp10 to i8, !dbg !5212
  store i8 %frombool11, i8* %__cond9, align 1, !dbg !5212
  %10 = load i8, i8* %__cond9, align 1, !dbg !5213
  %tobool12 = trunc i8 %10 to i1, !dbg !5213
  br i1 %tobool12, label %land.lhs.true13, label %if.end16, !dbg !5213

land.lhs.true13:                                  ; preds = %for.cond
  %11 = load i64, i64* %__ret8, align 8, !dbg !5213
  %tobool14 = icmp ne i64 %11, 0, !dbg !5213
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !5212

if.then15:                                        ; preds = %land.lhs.true13
  store i64 1, i64* %__ret8, align 8, !dbg !5213
  br label %if.end16, !dbg !5213

if.end16:                                         ; preds = %if.then15, %land.lhs.true13, %for.cond
  %12 = load i8, i8* %__cond9, align 1, !dbg !5212
  %tobool18 = trunc i8 %12 to i1, !dbg !5212
  br i1 %tobool18, label %lor.end22, label %lor.rhs19, !dbg !5212

lor.rhs19:                                        ; preds = %if.end16
  %13 = load i64, i64* %__ret8, align 8, !dbg !5212
  %tobool20 = icmp ne i64 %13, 0, !dbg !5212
  %lnot21 = xor i1 %tobool20, true, !dbg !5212
  br label %lor.end22, !dbg !5212

lor.end22:                                        ; preds = %lor.rhs19, %if.end16
  %14 = phi i1 [ true, %if.end16 ], [ %lnot21, %lor.rhs19 ]
  %lor.ext23 = zext i1 %14 to i32, !dbg !5212
  store i32 %lor.ext23, i32* %tmp17, align 4, !dbg !5213
  %15 = load i32, i32* %tmp17, align 4, !dbg !5212
  %tobool24 = icmp ne i32 %15, 0, !dbg !5215
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !5208

if.then25:                                        ; preds = %lor.end22
  br label %for.end, !dbg !5215

if.end26:                                         ; preds = %lor.end22
  %16 = load i64, i64* %__int, align 8, !dbg !5216
  %tobool27 = icmp ne i64 %16, 0, !dbg !5216
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !5208

if.then28:                                        ; preds = %if.end26
  %17 = load i64, i64* %__int, align 8, !dbg !5218
  store i64 %17, i64* %__ret8, align 8, !dbg !5218
  br label %__out, !dbg !5218

if.end29:                                         ; preds = %if.end26
  %18 = load i64, i64* %__ret8, align 8, !dbg !5208
  %call30 = call i64 @schedule_timeout(i64 %18) #6, !dbg !5208
  store i64 %call30, i64* %__ret8, align 8, !dbg !5208
  br label %for.cond, !dbg !5220, !llvm.loop !5221

for.end:                                          ; preds = %if.then25
  call void @finish_wait(%struct.wait_queue_head* @backend_state_wq, %struct.wait_queue_entry* %__wq_entry) #6, !dbg !5202
  br label %__out, !dbg !5202

__out:                                            ; preds = %for.end, %if.then28
  call void @llvm.dbg.label(metadata !5223), !dbg !5202
  %19 = load i64, i64* %__ret8, align 8, !dbg !5202
  store i64 %19, i64* %tmp31, align 8, !dbg !5202
  %20 = load i64, i64* %tmp31, align 8, !dbg !5202
  store i64 %20, i64* %__ret, align 8, !dbg !5188
  br label %if.end32, !dbg !5188

if.end32:                                         ; preds = %__out, %lor.end
  %21 = load i64, i64* %__ret, align 8, !dbg !5177
  store i64 %21, i64* %tmp33, align 8, !dbg !5188
  %22 = load i64, i64* %tmp33, align 8, !dbg !5177
  store i64 %22, i64* %timeout, align 8, !dbg !5224
  %23 = load i64, i64* %timeout, align 8, !dbg !5225
  %cmp34 = icmp sle i64 %23, 0, !dbg !5227
  br i1 %cmp34, label %if.then35, label %if.end37, !dbg !5228

if.then35:                                        ; preds = %if.end32
  %24 = load i8*, i8** %be.addr, align 8, !dbg !5229
  %call36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i64 0, i64 0), i8* %24) #7, !dbg !5229
  br label %if.end37, !dbg !5229

if.end37:                                         ; preds = %if.then35, %if.end32
  ret void, !dbg !5230
}

; Function Attrs: noredzone
declare dso_local void @unregister_xenbus_watch(%struct.xenbus_watch*) #2

; Function Attrs: noredzone
declare dso_local void @__wake_up(%struct.wait_queue_head*, i32, i32, i8*) #2

; Function Attrs: noredzone
declare dso_local void @init_wait_entry(%struct.wait_queue_entry*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head*, %struct.wait_queue_entry*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @schedule_timeout(i64) #2

; Function Attrs: noredzone
declare dso_local void @finish_wait(%struct.wait_queue_head*, %struct.wait_queue_entry*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @frontend_changed(%struct.xenbus_watch* %watch, i8* %path, i8* %token) #0 !dbg !5231 {
entry:
  %watch.addr = alloca %struct.xenbus_watch*, align 8
  %path.addr = alloca i8*, align 8
  %token.addr = alloca i8*, align 8
  %tmp = alloca i32, align 4
  store %struct.xenbus_watch* %watch, %struct.xenbus_watch** %watch.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_watch** %watch.addr, metadata !5232, metadata !DIExpression()), !dbg !5233
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !5234, metadata !DIExpression()), !dbg !5235
  store i8* %token, i8** %token.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %token.addr, metadata !5236, metadata !DIExpression()), !dbg !5237
  store i32 0, i32* %tmp, align 4, !dbg !5238
  %0 = load i32, i32* %tmp, align 4, !dbg !5241
  %1 = load i8*, i8** %path.addr, align 8, !dbg !5242
  call void @xenbus_dev_changed(i8* %1, %struct.xen_bus_type* @xenbus_frontend) #6, !dbg !5243
  ret void, !dbg !5244
}

; Function Attrs: noredzone
declare dso_local void @xenbus_dev_changed(i8*, %struct.xen_bus_type*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @xen_has_pv_devices() #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4350, !4351, !4352, !4353}
!llvm.ident = !{!4354}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xenbus_frontend", scope: !2, file: !3, line: 158, type: !4335, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !191, globals: !4294, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/xen/xenbus/xenbus_probe_frontend.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !114, !122, !128, !140, !147, !180, !186}
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
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xenbus_state", file: !129, line: 17, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/xen/interface/io/xenbus.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139}
!131 = !DIEnumerator(name: "XenbusStateUnknown", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "XenbusStateInitialising", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "XenbusStateInitWait", value: 2, isUnsigned: true)
!134 = !DIEnumerator(name: "XenbusStateInitialised", value: 3, isUnsigned: true)
!135 = !DIEnumerator(name: "XenbusStateConnected", value: 4, isUnsigned: true)
!136 = !DIEnumerator(name: "XenbusStateClosing", value: 5, isUnsigned: true)
!137 = !DIEnumerator(name: "XenbusStateClosed", value: 6, isUnsigned: true)
!138 = !DIEnumerator(name: "XenbusStateReconfiguring", value: 7, isUnsigned: true)
!139 = !DIEnumerator(name: "XenbusStateReconfigured", value: 8, isUnsigned: true)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xenstore_init", file: !141, line: 52, baseType: !7, size: 32, elements: !142)
!141 = !DIFile(filename: "drivers/xen/xenbus/xenbus.h", directory: "/home/lizy2001/genbc/linux")
!142 = !{!143, !144, !145, !146}
!143 = !DIEnumerator(name: "XS_UNKNOWN", value: 0, isUnsigned: true)
!144 = !DIEnumerator(name: "XS_PV", value: 1, isUnsigned: true)
!145 = !DIEnumerator(name: "XS_HVM", value: 2, isUnsigned: true)
!146 = !DIEnumerator(name: "XS_LOCAL", value: 3, isUnsigned: true)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 30, baseType: !149, size: 64, elements: !150)
!148 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!149 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179}
!151 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!152 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!153 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!154 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!155 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!156 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!157 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!158 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!159 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!160 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!161 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!162 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!163 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!164 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!165 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!166 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!167 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!168 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!169 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!170 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!171 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!172 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!173 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!174 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!175 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!176 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!177 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!178 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!179 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xen_domain_type", file: !181, line: 5, baseType: !7, size: 32, elements: !182)
!181 = !DIFile(filename: "./include/xen/xen.h", directory: "/home/lizy2001/genbc/linux")
!182 = !{!183, !184, !185}
!183 = !DIEnumerator(name: "XEN_NATIVE", value: 0, isUnsigned: true)
!184 = !DIEnumerator(name: "XEN_PV_DOMAIN", value: 1, isUnsigned: true)
!185 = !DIEnumerator(name: "XEN_HVM_DOMAIN", value: 2, isUnsigned: true)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !187, line: 10, baseType: !7, size: 32, elements: !188)
!187 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!188 = !{!189, !190}
!189 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!190 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!191 = !{!192, !194, !195, !329, !4256, !4258, !149}
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !193, line: 148, baseType: !7)
!193 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_device", file: !197, line: 71, size: 6784, elements: !198)
!197 = !DIFile(filename: "./include/xen/xenbus.h", directory: "/home/lizy2001/genbc/linux")
!198 = !{!199, !203, !204, !205, !207, !222, !4246, !4247, !4248, !4249}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "devicetype", scope: !196, file: !197, line: 72, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !196, file: !197, line: 73, baseType: !200, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "otherend", scope: !196, file: !197, line: 74, baseType: !200, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "otherend_id", scope: !196, file: !197, line: 75, baseType: !206, size: 32, offset: 192)
!206 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "otherend_watch", scope: !196, file: !197, line: 76, baseType: !208, size: 256, offset: 256)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_watch", file: !197, line: 57, size: 256, elements: !209)
!209 = !{!210, !216, !217}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !208, file: !197, line: 59, baseType: !211, size: 128)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !193, line: 178, size: 128, elements: !212)
!212 = !{!213, !215}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !211, file: !193, line: 179, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !211, file: !193, line: 179, baseType: !214, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !208, file: !197, line: 62, baseType: !200, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !208, file: !197, line: 65, baseType: !218, size: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !221, !200, !200}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !196, file: !197, line: 77, baseType: !223, size: 5568, offset: 512)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !224)
!224 = !{!225, !3417, !3419, !3422, !3423, !3474, !3565, !3566, !3567, !3568, !3569, !3578, !3683, !3696, !4173, !4174, !4178, !4180, !4181, !4182, !4186, !4192, !4193, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4234, !4235, !4236, !4239, !4242, !4243, !4244, !4245}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !223, file: !73, line: 462, baseType: !226, size: 512)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !227, line: 64, size: 512, elements: !228)
!227 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!228 = !{!229, !230, !231, !233, !293, !3267, !3407, !3412, !3413, !3414, !3415, !3416}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !226, file: !227, line: 65, baseType: !200, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !226, file: !227, line: 66, baseType: !211, size: 128, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !226, file: !227, line: 67, baseType: !232, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !226, file: !227, line: 68, baseType: !234, size: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !227, line: 192, size: 704, elements: !236)
!236 = !{!237, !238, !254, !255}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !235, file: !227, line: 193, baseType: !211, size: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !235, file: !227, line: 194, baseType: !239, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !240, line: 83, baseType: !241)
!240 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !240, line: 71, elements: !242)
!242 = !{!243}
!243 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !240, line: 72, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !241, file: !240, line: 72, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !244, file: !240, line: 73, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !240, line: 20, elements: !248)
!248 = !{!249}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !247, file: !240, line: 21, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !251, line: 25, baseType: !252)
!251 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 25, elements: !253)
!253 = !{}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !235, file: !227, line: 195, baseType: !226, size: 512, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !235, file: !227, line: 196, baseType: !256, size: 64, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !227, line: 156, size: 192, elements: !259)
!259 = !{!260, !265, !270}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !258, file: !227, line: 157, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!206, !234, !232}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !258, file: !227, line: 158, baseType: !266, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!200, !234, !232}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !258, file: !227, line: 159, baseType: !271, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!206, !234, !232, !275}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !227, line: 148, size: 20736, elements: !277)
!277 = !{!278, !283, !287, !288, !292}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !276, file: !227, line: 149, baseType: !279, size: 192)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 192, elements: !281)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!281 = !{!282}
!282 = !DISubrange(count: 3)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !276, file: !227, line: 150, baseType: !284, size: 4096, offset: 192)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 4096, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !276, file: !227, line: 151, baseType: !206, size: 32, offset: 4288)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !276, file: !227, line: 152, baseType: !289, size: 16384, offset: 4320)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 16384, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 2048)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !276, file: !227, line: 153, baseType: !206, size: 32, offset: 20704)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !226, file: !227, line: 69, baseType: !294, size: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !227, line: 138, size: 448, elements: !296)
!296 = !{!297, !301, !330, !332, !3229, !3257, !3261}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !295, file: !227, line: 139, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !232}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !295, file: !227, line: 140, baseType: !302, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !305, line: 230, size: 128, elements: !306)
!305 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!306 = !{!307, !322}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !304, file: !305, line: 231, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!311, !232, !315, !280}
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !193, line: 60, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !313, line: 73, baseType: !314)
!313 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !313, line: 15, baseType: !149)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !305, line: 30, size: 128, elements: !317)
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !316, file: !305, line: 31, baseType: !200, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !316, file: !305, line: 32, baseType: !320, size: 16, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !193, line: 19, baseType: !321)
!321 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !304, file: !305, line: 232, baseType: !323, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!311, !232, !315, !200, !326}
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !193, line: 55, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !313, line: 72, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !313, line: 16, baseType: !329)
!329 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !295, file: !227, line: 141, baseType: !331, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !295, file: !227, line: 142, baseType: !333, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !305, line: 84, size: 320, elements: !337)
!337 = !{!338, !339, !343, !3226, !3227}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !336, file: !305, line: 85, baseType: !200, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !336, file: !305, line: 86, baseType: !340, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!320, !232, !315, !206}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !336, file: !305, line: 88, baseType: !344, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!320, !232, !347, !206}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !305, line: 168, size: 448, elements: !349)
!349 = !{!350, !351, !352, !353, !3221, !3222}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !348, file: !305, line: 169, baseType: !316, size: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !348, file: !305, line: 170, baseType: !326, size: 64, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !348, file: !305, line: 171, baseType: !194, size: 64, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !348, file: !305, line: 172, baseType: !354, size: 64, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{!311, !357, !232, !347, !280, !536, !326}
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !359)
!359 = !{!360, !378, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3204, !3205, !3214, !3215, !3216, !3217, !3218, !3219, !3220}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !358, file: !44, line: 920, baseType: !361, size: 128)
!361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !44, line: 917, size: 128, elements: !362)
!362 = !{!363, !369}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !361, file: !44, line: 918, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !365, line: 58, size: 64, elements: !366)
!365 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !364, file: !365, line: 59, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !361, file: !44, line: 919, baseType: !370, size: 128, align: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !193, line: 216, size: 128, align: 64, elements: !371)
!371 = !{!372, !374}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !370, file: !193, line: 217, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !370, file: !193, line: 218, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !373}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !358, file: !44, line: 921, baseType: !379, size: 128, offset: 128)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !380, line: 8, size: 128, elements: !381)
!380 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!381 = !{!382, !386}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !379, file: !380, line: 9, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !385, line: 18, flags: DIFlagFwdDecl)
!385 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!386 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !379, file: !380, line: 10, baseType: !387, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !385, line: 89, size: 1536, elements: !389)
!389 = !{!390, !391, !401, !409, !410, !433, !3154, !3156, !3168, !3169, !3170, !3171, !3172, !3178, !3179, !3180}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !388, file: !385, line: 91, baseType: !7, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !388, file: !385, line: 92, baseType: !392, size: 32, offset: 32)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !393, line: 277, baseType: !394)
!393 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !393, line: 277, size: 32, elements: !395)
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !394, file: !393, line: 277, baseType: !397, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !393, line: 70, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !393, line: 65, size: 32, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !398, file: !393, line: 66, baseType: !7, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !388, file: !385, line: 93, baseType: !402, size: 128, offset: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !403, line: 38, size: 128, elements: !404)
!403 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!404 = !{!405, !407}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !402, file: !403, line: 39, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !402, file: !403, line: 39, baseType: !408, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !388, file: !385, line: 94, baseType: !387, size: 64, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !388, file: !385, line: 95, baseType: !411, size: 128, offset: 256)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !385, line: 47, size: 128, elements: !412)
!412 = !{!413, !429}
!413 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !385, line: 48, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !411, file: !385, line: 48, size: 64, elements: !415)
!415 = !{!416, !425}
!416 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !385, line: 49, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !414, file: !385, line: 49, size: 64, elements: !418)
!418 = !{!419, !424}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !417, file: !385, line: 50, baseType: !420, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !421, line: 21, baseType: !422)
!421 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !423, line: 27, baseType: !7)
!423 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!424 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !417, file: !385, line: 50, baseType: !420, size: 32, offset: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !414, file: !385, line: 52, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !421, line: 23, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !423, line: 31, baseType: !428)
!428 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !411, file: !385, line: 54, baseType: !430, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!432 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !388, file: !385, line: 96, baseType: !434, size: 64, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !436)
!436 = !{!437, !438, !439, !447, !454, !455, !603, !2865, !2866, !2867, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !3130, !3138, !3139, !3140, !3150, !3151, !3152, !3153}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !435, file: !44, line: 611, baseType: !320, size: 16)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !435, file: !44, line: 612, baseType: !321, size: 16, offset: 16)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !435, file: !44, line: 613, baseType: !440, size: 32, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !441, line: 23, baseType: !442)
!441 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 21, size: 32, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !442, file: !441, line: 22, baseType: !445, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !193, line: 32, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !313, line: 49, baseType: !7)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !435, file: !44, line: 614, baseType: !448, size: 32, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !441, line: 28, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 26, size: 32, elements: !450)
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !449, file: !441, line: 27, baseType: !452, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !193, line: 33, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !313, line: 50, baseType: !7)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !435, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !435, file: !44, line: 622, baseType: !456, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !459)
!459 = !{!460, !464, !477, !481, !487, !491, !497, !501, !505, !509, !513, !514, !520, !524, !550, !579, !583, !589, !594, !598, !599}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !458, file: !44, line: 1865, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!387, !434, !387, !7}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !458, file: !44, line: 1866, baseType: !465, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!200, !387, !434, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !470, line: 10, size: 128, elements: !471)
!470 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!471 = !{!472, !476}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !469, file: !470, line: 11, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !194}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !469, file: !470, line: 12, baseType: !194, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !458, file: !44, line: 1867, baseType: !478, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!206, !434, !206}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !458, file: !44, line: 1868, baseType: !482, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!485, !434, !206}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !458, file: !44, line: 1870, baseType: !488, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!206, !387, !280, !206}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !458, file: !44, line: 1872, baseType: !492, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!206, !434, !387, !320, !495}
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !193, line: 30, baseType: !496)
!496 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !458, file: !44, line: 1873, baseType: !498, size: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!206, !387, !434, !387}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !458, file: !44, line: 1874, baseType: !502, size: 64, offset: 448)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!206, !434, !387}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !458, file: !44, line: 1875, baseType: !506, size: 64, offset: 512)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!206, !434, !387, !200}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !458, file: !44, line: 1876, baseType: !510, size: 64, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!206, !434, !387, !320}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !458, file: !44, line: 1877, baseType: !502, size: 64, offset: 640)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !458, file: !44, line: 1878, baseType: !515, size: 64, offset: 704)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!206, !434, !387, !320, !518}
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !193, line: 16, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !193, line: 13, baseType: !420)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !458, file: !44, line: 1879, baseType: !521, size: 64, offset: 768)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!206, !434, !387, !434, !387, !7}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !458, file: !44, line: 1881, baseType: !525, size: 64, offset: 832)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!206, !387, !528}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !530)
!530 = !{!531, !532, !533, !534, !535, !539, !547, !548, !549}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !529, file: !44, line: 220, baseType: !7, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !529, file: !44, line: 221, baseType: !320, size: 16, offset: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !529, file: !44, line: 222, baseType: !440, size: 32, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !529, file: !44, line: 223, baseType: !448, size: 32, offset: 96)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !529, file: !44, line: 224, baseType: !536, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !193, line: 46, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !313, line: 88, baseType: !538)
!538 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !529, file: !44, line: 225, baseType: !540, size: 128, offset: 192)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !541, line: 13, size: 128, elements: !542)
!541 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!542 = !{!543, !546}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !540, file: !541, line: 14, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !541, line: 8, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !423, line: 30, baseType: !538)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !540, file: !541, line: 15, baseType: !149, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !529, file: !44, line: 226, baseType: !540, size: 128, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !529, file: !44, line: 227, baseType: !540, size: 128, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !529, file: !44, line: 234, baseType: !357, size: 64, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !458, file: !44, line: 1882, baseType: !551, size: 64, offset: 896)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!206, !554, !556, !420, !7}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !558, line: 22, size: 1152, elements: !559)
!558 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!559 = !{!560, !561, !562, !563, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !557, file: !558, line: 23, baseType: !420, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !557, file: !558, line: 24, baseType: !320, size: 16, offset: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !557, file: !558, line: 25, baseType: !7, size: 32, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !557, file: !558, line: 26, baseType: !564, size: 32, offset: 96)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !193, line: 104, baseType: !420)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !557, file: !558, line: 27, baseType: !426, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !557, file: !558, line: 28, baseType: !426, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !557, file: !558, line: 37, baseType: !426, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !557, file: !558, line: 38, baseType: !518, size: 32, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !557, file: !558, line: 39, baseType: !518, size: 32, offset: 352)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !557, file: !558, line: 40, baseType: !440, size: 32, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !557, file: !558, line: 41, baseType: !448, size: 32, offset: 416)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !557, file: !558, line: 42, baseType: !536, size: 64, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !557, file: !558, line: 43, baseType: !540, size: 128, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !557, file: !558, line: 44, baseType: !540, size: 128, offset: 640)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !557, file: !558, line: 45, baseType: !540, size: 128, offset: 768)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !557, file: !558, line: 46, baseType: !540, size: 128, offset: 896)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !557, file: !558, line: 47, baseType: !426, size: 64, offset: 1024)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !557, file: !558, line: 48, baseType: !426, size: 64, offset: 1088)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !458, file: !44, line: 1883, baseType: !580, size: 64, offset: 960)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!311, !387, !280, !326}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !458, file: !44, line: 1884, baseType: !584, size: 64, offset: 1024)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!206, !434, !587, !426, !426}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !458, file: !44, line: 1886, baseType: !590, size: 64, offset: 1088)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!206, !434, !593, !206}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !458, file: !44, line: 1887, baseType: !595, size: 64, offset: 1152)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!206, !434, !387, !357, !7, !320}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !458, file: !44, line: 1890, baseType: !510, size: 64, offset: 1216)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !458, file: !44, line: 1891, baseType: !600, size: 64, offset: 1280)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!206, !434, !485, !206}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !435, file: !44, line: 623, baseType: !604, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !606)
!606 = !{!607, !608, !609, !610, !611, !612, !661, !2472, !2554, !2637, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2653, !2657, !2658, !2661, !2662, !2665, !2666, !2667, !2708, !2735, !2736, !2737, !2738, !2739, !2740, !2743, !2745, !2752, !2753, !2755, !2756, !2757, !2816, !2817, !2832, !2833, !2834, !2835, !2836, !2839, !2840, !2841, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !605, file: !44, line: 1417, baseType: !211, size: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !605, file: !44, line: 1418, baseType: !518, size: 32, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !605, file: !44, line: 1419, baseType: !432, size: 8, offset: 160)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !605, file: !44, line: 1420, baseType: !329, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !605, file: !44, line: 1421, baseType: !536, size: 64, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !605, file: !44, line: 1422, baseType: !613, size: 64, offset: 320)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !615)
!615 = !{!616, !617, !618, !624, !628, !632, !636, !640, !641, !651, !654, !655, !656, !658, !659, !660}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !614, file: !44, line: 2229, baseType: !200, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !614, file: !44, line: 2230, baseType: !206, size: 32, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !614, file: !44, line: 2238, baseType: !619, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!206, !622}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !44, line: 69, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !614, file: !44, line: 2239, baseType: !625, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !614, file: !44, line: 2240, baseType: !629, size: 64, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!387, !613, !206, !200, !194}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !614, file: !44, line: 2242, baseType: !633, size: 64, offset: 320)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !604}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !614, file: !44, line: 2243, baseType: !637, size: 64, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !639, line: 76, flags: DIFlagFwdDecl)
!639 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !614, file: !44, line: 2244, baseType: !613, size: 64, offset: 448)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !614, file: !44, line: 2245, baseType: !642, size: 64, offset: 512)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !193, line: 182, size: 64, elements: !643)
!643 = !{!644}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !642, file: !193, line: 183, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !193, line: 186, size: 128, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !646, file: !193, line: 187, baseType: !645, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !646, file: !193, line: 187, baseType: !650, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !614, file: !44, line: 2247, baseType: !652, offset: 576)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !653, line: 187, elements: !253)
!653 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!654 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !614, file: !44, line: 2248, baseType: !652, offset: 576)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !614, file: !44, line: 2249, baseType: !652, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !614, file: !44, line: 2250, baseType: !657, offset: 576)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, elements: !281)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !614, file: !44, line: 2252, baseType: !652, offset: 576)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !614, file: !44, line: 2253, baseType: !652, offset: 576)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !614, file: !44, line: 2254, baseType: !652, offset: 576)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !605, file: !44, line: 1423, baseType: !662, size: 64, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !665)
!665 = !{!666, !670, !674, !675, !679, !685, !689, !690, !691, !695, !699, !700, !701, !702, !708, !713, !714, !721, !722, !723, !724, !2456, !2471}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !664, file: !44, line: 1936, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!434, !604}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !664, file: !44, line: 1937, baseType: !671, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !434}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !664, file: !44, line: 1938, baseType: !671, size: 64, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !664, file: !44, line: 1940, baseType: !676, size: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !434, !206}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !664, file: !44, line: 1941, baseType: !680, size: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!206, !434, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !664, file: !44, line: 1942, baseType: !686, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!206, !434}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !664, file: !44, line: 1943, baseType: !671, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !664, file: !44, line: 1944, baseType: !633, size: 64, offset: 448)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !664, file: !44, line: 1945, baseType: !692, size: 64, offset: 512)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!206, !604, !206}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !664, file: !44, line: 1946, baseType: !696, size: 64, offset: 576)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!206, !604}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !664, file: !44, line: 1947, baseType: !696, size: 64, offset: 640)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !664, file: !44, line: 1948, baseType: !696, size: 64, offset: 704)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !664, file: !44, line: 1949, baseType: !696, size: 64, offset: 768)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !664, file: !44, line: 1950, baseType: !703, size: 64, offset: 832)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!206, !387, !706}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !664, file: !44, line: 1951, baseType: !709, size: 64, offset: 896)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!206, !604, !712, !280}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !664, file: !44, line: 1952, baseType: !633, size: 64, offset: 960)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !664, file: !44, line: 1954, baseType: !715, size: 64, offset: 1024)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!206, !718, !387}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !720, line: 539, flags: DIFlagFwdDecl)
!720 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!721 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !664, file: !44, line: 1955, baseType: !715, size: 64, offset: 1088)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !664, file: !44, line: 1956, baseType: !715, size: 64, offset: 1152)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !664, file: !44, line: 1957, baseType: !715, size: 64, offset: 1216)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !664, file: !44, line: 1963, baseType: !725, size: 64, offset: 1280)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!206, !604, !728, !192}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !730, line: 68, size: 512, align: 128, elements: !731)
!730 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!731 = !{!732, !733, !2448, !2455}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !729, file: !730, line: 69, baseType: !329, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !730, line: 77, baseType: !734, size: 320, offset: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !729, file: !730, line: 77, size: 320, elements: !735)
!735 = !{!736, !963, !968, !996, !1004, !1010, !2379, !2447}
!736 = !DIDerivedType(tag: DW_TAG_member, scope: !734, file: !730, line: 78, baseType: !737, size: 320)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !734, file: !730, line: 78, size: 320, elements: !738)
!738 = !{!739, !740, !961, !962}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !737, file: !730, line: 84, baseType: !211, size: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !737, file: !730, line: 86, baseType: !741, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !743)
!743 = !{!744, !745, !752, !753, !758, !773, !789, !790, !791, !792, !954, !955, !958, !959, !960}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !742, file: !44, line: 452, baseType: !434, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !742, file: !44, line: 453, baseType: !746, size: 128, offset: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !747, line: 292, size: 128, elements: !748)
!747 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!748 = !{!749, !750, !751}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !746, file: !747, line: 293, baseType: !239)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !746, file: !747, line: 295, baseType: !192, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !746, file: !747, line: 296, baseType: !194, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !742, file: !44, line: 454, baseType: !192, size: 32, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !742, file: !44, line: 455, baseType: !754, size: 32, offset: 224)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !193, line: 168, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !193, line: 166, size: 32, elements: !756)
!756 = !{!757}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !755, file: !193, line: 167, baseType: !206, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !742, file: !44, line: 460, baseType: !759, size: 128, offset: 256)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !760, line: 125, size: 128, elements: !761)
!760 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!761 = !{!762, !772}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !759, file: !760, line: 126, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !760, line: 31, size: 64, elements: !764)
!764 = !{!765}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !763, file: !760, line: 32, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !760, line: 24, size: 192, align: 64, elements: !768)
!768 = !{!769, !770, !771}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !767, file: !760, line: 25, baseType: !329, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !767, file: !760, line: 26, baseType: !766, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !767, file: !760, line: 27, baseType: !766, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !759, file: !760, line: 127, baseType: !766, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !742, file: !44, line: 461, baseType: !774, size: 256, offset: 384)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !775, line: 35, size: 256, elements: !776)
!775 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!776 = !{!777, !785, !786, !788}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !774, file: !775, line: 36, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !779, line: 13, baseType: !780)
!779 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !193, line: 175, baseType: !781)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !193, line: 173, size: 64, elements: !782)
!782 = !{!783}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !781, file: !193, line: 174, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !421, line: 22, baseType: !545)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !774, file: !775, line: 42, baseType: !778, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !774, file: !775, line: 46, baseType: !787, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !240, line: 29, baseType: !247)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !774, file: !775, line: 47, baseType: !211, size: 128, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !742, file: !44, line: 462, baseType: !329, size: 64, offset: 640)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !742, file: !44, line: 463, baseType: !329, size: 64, offset: 704)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !742, file: !44, line: 464, baseType: !329, size: 64, offset: 768)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !742, file: !44, line: 465, baseType: !793, size: 64, offset: 832)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !795)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !796)
!796 = !{!797, !801, !805, !809, !813, !817, !823, !829, !833, !838, !842, !846, !850, !918, !922, !928, !929, !930, !934, !939, !943, !950}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !795, file: !44, line: 368, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!206, !728, !683}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !795, file: !44, line: 369, baseType: !802, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!206, !357, !728}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !795, file: !44, line: 372, baseType: !806, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!206, !741, !683}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !795, file: !44, line: 375, baseType: !810, size: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!206, !728}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !795, file: !44, line: 381, baseType: !814, size: 64, offset: 256)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!206, !357, !741, !214, !7}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !795, file: !44, line: 383, baseType: !818, size: 64, offset: 320)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{null, !821}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !795, file: !44, line: 385, baseType: !824, size: 64, offset: 384)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!206, !357, !741, !536, !7, !7, !827, !828}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !795, file: !44, line: 388, baseType: !830, size: 64, offset: 448)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!206, !357, !741, !536, !7, !7, !728, !194}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !795, file: !44, line: 393, baseType: !834, size: 64, offset: 512)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!837, !741, !837}
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !193, line: 125, baseType: !426)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !795, file: !44, line: 394, baseType: !839, size: 64, offset: 576)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{null, !728, !7, !7}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !795, file: !44, line: 395, baseType: !843, size: 64, offset: 640)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!206, !728, !192}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !795, file: !44, line: 396, baseType: !847, size: 64, offset: 704)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !728}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !795, file: !44, line: 397, baseType: !851, size: 64, offset: 768)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!311, !854, !876}
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !856)
!856 = !{!857, !858, !859, !863, !864, !865, !868, !869}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !855, file: !44, line: 321, baseType: !357, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !855, file: !44, line: 326, baseType: !536, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !855, file: !44, line: 327, baseType: !860, size: 64, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !854, !149, !149}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !855, file: !44, line: 328, baseType: !194, size: 64, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !855, file: !44, line: 329, baseType: !206, size: 32, offset: 256)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !855, file: !44, line: 330, baseType: !866, size: 16, offset: 288)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !421, line: 19, baseType: !867)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !423, line: 24, baseType: !321)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !855, file: !44, line: 331, baseType: !866, size: 16, offset: 304)
!869 = !DIDerivedType(tag: DW_TAG_member, scope: !855, file: !44, line: 332, baseType: !870, size: 64, offset: 320)
!870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !855, file: !44, line: 332, size: 64, elements: !871)
!871 = !{!872, !873}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !870, file: !44, line: 333, baseType: !7, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !870, file: !44, line: 334, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !878, line: 29, size: 320, elements: !879)
!878 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!879 = !{!880, !881, !882, !883, !909}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !877, file: !878, line: 35, baseType: !7, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !877, file: !878, line: 36, baseType: !326, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !877, file: !878, line: 37, baseType: !326, size: 64, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !878, line: 38, baseType: !884, size: 64, offset: 192)
!884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !877, file: !878, line: 38, size: 64, elements: !885)
!885 = !{!886, !894, !901, !905}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !884, file: !878, line: 39, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !890, line: 17, size: 128, elements: !891)
!890 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!891 = !{!892, !893}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !889, file: !890, line: 19, baseType: !194, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !889, file: !890, line: 20, baseType: !327, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !884, file: !878, line: 40, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !897)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !878, line: 15, size: 128, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !897, file: !878, line: 16, baseType: !194, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !897, file: !878, line: 17, baseType: !326, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !884, file: !878, line: 41, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !904)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !181, line: 45, flags: DIFlagFwdDecl)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !884, file: !878, line: 42, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !908, line: 53, flags: DIFlagFwdDecl)
!908 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !878, line: 44, baseType: !910, size: 64, offset: 256)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !877, file: !878, line: 44, size: 64, elements: !911)
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !910, file: !878, line: 45, baseType: !329, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, scope: !910, file: !878, line: 46, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !910, file: !878, line: 46, size: 64, elements: !915)
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !914, file: !878, line: 47, baseType: !7, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "start_head", scope: !914, file: !878, line: 48, baseType: !7, size: 32, offset: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !795, file: !44, line: 402, baseType: !919, size: 64, offset: 832)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!206, !741, !728, !728, !5}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !795, file: !44, line: 404, baseType: !923, size: 64, offset: 896)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!495, !728, !926}
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !927, line: 305, baseType: !7)
!927 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!928 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !795, file: !44, line: 405, baseType: !847, size: 64, offset: 960)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !795, file: !44, line: 406, baseType: !810, size: 64, offset: 1024)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !795, file: !44, line: 407, baseType: !931, size: 64, offset: 1088)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!206, !728, !329, !329}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !795, file: !44, line: 409, baseType: !935, size: 64, offset: 1152)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{null, !728, !938, !938}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !795, file: !44, line: 410, baseType: !940, size: 64, offset: 1216)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!206, !741, !728}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !795, file: !44, line: 413, baseType: !944, size: 64, offset: 1280)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!206, !947, !357, !949}
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !795, file: !44, line: 415, baseType: !951, size: 64, offset: 1344)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{null, !357}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !742, file: !44, line: 466, baseType: !329, size: 64, offset: 896)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !742, file: !44, line: 467, baseType: !956, size: 32, offset: 960)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !957, line: 8, baseType: !420)
!957 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!958 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !742, file: !44, line: 468, baseType: !239, offset: 992)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !742, file: !44, line: 469, baseType: !211, size: 128, offset: 1024)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !742, file: !44, line: 470, baseType: !194, size: 64, offset: 1152)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !737, file: !730, line: 87, baseType: !329, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !737, file: !730, line: 94, baseType: !329, size: 64, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_member, scope: !734, file: !730, line: 96, baseType: !964, size: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !734, file: !730, line: 96, size: 64, elements: !965)
!965 = !{!966}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !964, file: !730, line: 101, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !193, line: 143, baseType: !426)
!968 = !DIDerivedType(tag: DW_TAG_member, scope: !734, file: !730, line: 103, baseType: !969, size: 320)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !734, file: !730, line: 103, size: 320, elements: !970)
!970 = !{!971, !981, !984, !985}
!971 = !DIDerivedType(tag: DW_TAG_member, scope: !969, file: !730, line: 104, baseType: !972, size: 128)
!972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !969, file: !730, line: 104, size: 128, elements: !973)
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !972, file: !730, line: 105, baseType: !211, size: 128)
!975 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !730, line: 106, baseType: !976, size: 128)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !730, line: 106, size: 128, elements: !977)
!977 = !{!978, !979, !980}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !976, file: !730, line: 107, baseType: !728, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !976, file: !730, line: 109, baseType: !206, size: 32, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !976, file: !730, line: 110, baseType: !206, size: 32, offset: 96)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !969, file: !730, line: 117, baseType: !982, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !730, line: 117, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !969, file: !730, line: 119, baseType: !194, size: 64, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !969, file: !730, line: 120, baseType: !986, size: 64, offset: 256)
!986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !969, file: !730, line: 120, size: 64, elements: !987)
!987 = !{!988, !989, !990}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !986, file: !730, line: 121, baseType: !194, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !986, file: !730, line: 122, baseType: !329, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !986, file: !730, line: 123, baseType: !991, size: 32)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !986, file: !730, line: 123, size: 32, elements: !992)
!992 = !{!993, !994, !995}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !991, file: !730, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !991, file: !730, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !991, file: !730, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !734, file: !730, line: 130, baseType: !997, size: 192)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !734, file: !730, line: 130, size: 192, elements: !998)
!998 = !{!999, !1000, !1001, !1002, !1003}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !997, file: !730, line: 131, baseType: !329, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !997, file: !730, line: 134, baseType: !432, size: 8, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !997, file: !730, line: 135, baseType: !432, size: 8, offset: 72)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !997, file: !730, line: 136, baseType: !754, size: 32, offset: 96)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !997, file: !730, line: 137, baseType: !7, size: 32, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, scope: !734, file: !730, line: 139, baseType: !1005, size: 256)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !734, file: !730, line: 139, size: 256, elements: !1006)
!1006 = !{!1007, !1008, !1009}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1005, file: !730, line: 140, baseType: !329, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1005, file: !730, line: 141, baseType: !754, size: 32, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1005, file: !730, line: 143, baseType: !211, size: 128, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, scope: !734, file: !730, line: 145, baseType: !1011, size: 256)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !734, file: !730, line: 145, size: 256, elements: !1012)
!1012 = !{!1013, !1014, !1016, !1017, !2378}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1011, file: !730, line: 146, baseType: !329, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1011, file: !730, line: 147, baseType: !1015, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !720, line: 509, baseType: !728)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1011, file: !730, line: 148, baseType: !329, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1011, file: !730, line: 149, baseType: !1018, size: 64, offset: 192)
!1018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1011, file: !730, line: 149, size: 64, elements: !1019)
!1019 = !{!1020, !2377}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1018, file: !730, line: 150, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !730, line: 388, size: 7296, elements: !1023)
!1023 = !{!1024, !2373}
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !730, line: 389, baseType: !1025, size: 7296)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1022, file: !730, line: 389, size: 7296, elements: !1026)
!1026 = !{!1027, !1145, !1146, !1147, !1151, !1152, !1153, !1154, !1155, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1196, !1204, !1207, !1253, !1254, !2357, !2358, !2361, !2362, !2363, !2366, !2367, !2368, !2371, !2372}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1025, file: !730, line: 390, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !730, line: 305, size: 1472, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1045, !1046, !1051, !1052, !1055, !1139, !1140, !1141, !1142, !1143}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1029, file: !730, line: 308, baseType: !329, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1029, file: !730, line: 309, baseType: !329, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1029, file: !730, line: 313, baseType: !1028, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1029, file: !730, line: 313, baseType: !1028, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1029, file: !730, line: 315, baseType: !767, size: 192, align: 64, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1029, file: !730, line: 323, baseType: !329, size: 64, offset: 448)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1029, file: !730, line: 327, baseType: !1021, size: 64, offset: 512)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1029, file: !730, line: 333, baseType: !1039, size: 64, offset: 576)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !720, line: 284, baseType: !1040)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !720, line: 284, size: 64, elements: !1041)
!1041 = !{!1042}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1040, file: !720, line: 284, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1044, line: 19, baseType: !329)
!1044 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1029, file: !730, line: 334, baseType: !329, size: 64, offset: 640)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1029, file: !730, line: 343, baseType: !1047, size: 256, offset: 704)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1029, file: !730, line: 340, size: 256, elements: !1048)
!1048 = !{!1049, !1050}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1047, file: !730, line: 341, baseType: !767, size: 192, align: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1047, file: !730, line: 342, baseType: !329, size: 64, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1029, file: !730, line: 351, baseType: !211, size: 128, offset: 960)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1029, file: !730, line: 353, baseType: !1053, size: 64, offset: 1088)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !730, line: 353, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1029, file: !730, line: 356, baseType: !1056, size: 64, offset: 1152)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1058)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1059)
!1059 = !{!1060, !1064, !1065, !1069, !1073, !1113, !1117, !1121, !1125, !1126, !1127, !1131, !1135}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1058, file: !14, line: 558, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{null, !1028}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1058, file: !14, line: 559, baseType: !1061, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1058, file: !14, line: 560, baseType: !1066, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!206, !1028, !329}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1058, file: !14, line: 561, baseType: !1070, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!206, !1028}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1058, file: !14, line: 562, baseType: !1074, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !730, line: 682, baseType: !7)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1080)
!1080 = !{!1081, !1082, !1083, !1084, !1085, !1086, !1093, !1100, !1106, !1107, !1108, !1110, !1112}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1079, file: !14, line: 509, baseType: !1028, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1079, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1079, file: !14, line: 511, baseType: !192, size: 32, offset: 96)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1079, file: !14, line: 512, baseType: !329, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1079, file: !14, line: 513, baseType: !329, size: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1079, file: !14, line: 514, baseType: !1087, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !720, line: 385, baseType: !1089)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !720, line: 385, size: 64, elements: !1090)
!1090 = !{!1091}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1089, file: !720, line: 385, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1044, line: 15, baseType: !329)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1079, file: !14, line: 516, baseType: !1094, size: 64, offset: 320)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !720, line: 359, baseType: !1096)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !720, line: 359, size: 64, elements: !1097)
!1097 = !{!1098}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1096, file: !720, line: 359, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1044, line: 16, baseType: !329)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1079, file: !14, line: 519, baseType: !1101, size: 64, offset: 384)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1044, line: 21, baseType: !1102)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1044, line: 21, size: 64, elements: !1103)
!1103 = !{!1104}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1102, file: !1044, line: 21, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1044, line: 14, baseType: !329)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1079, file: !14, line: 521, baseType: !728, size: 64, offset: 448)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1079, file: !14, line: 522, baseType: !728, size: 64, offset: 512)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1079, file: !14, line: 528, baseType: !1109, size: 64, offset: 576)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1079, file: !14, line: 532, baseType: !1111, size: 64, offset: 640)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1079, file: !14, line: 536, baseType: !1015, size: 64, offset: 704)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1058, file: !14, line: 563, baseType: !1114, size: 64, offset: 320)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!1077, !1078, !13}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1058, file: !14, line: 565, baseType: !1118, size: 64, offset: 384)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{null, !1078, !329, !329}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1058, file: !14, line: 567, baseType: !1122, size: 64, offset: 448)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!329, !1028}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1058, file: !14, line: 571, baseType: !1074, size: 64, offset: 512)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1058, file: !14, line: 574, baseType: !1074, size: 64, offset: 576)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1058, file: !14, line: 579, baseType: !1128, size: 64, offset: 640)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!206, !1028, !329, !194, !206, !206}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1058, file: !14, line: 585, baseType: !1132, size: 64, offset: 704)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!200, !1028}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1058, file: !14, line: 615, baseType: !1136, size: 64, offset: 768)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!728, !1028, !329}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1029, file: !730, line: 359, baseType: !329, size: 64, offset: 1216)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1029, file: !730, line: 361, baseType: !357, size: 64, offset: 1280)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1029, file: !730, line: 362, baseType: !194, size: 64, offset: 1344)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1029, file: !730, line: 365, baseType: !778, size: 64, offset: 1408)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1029, file: !730, line: 373, baseType: !1144, offset: 1472)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !730, line: 296, elements: !253)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1025, file: !730, line: 391, baseType: !763, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1025, file: !730, line: 392, baseType: !426, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1025, file: !730, line: 394, baseType: !1148, size: 64, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!329, !357, !329, !329, !329, !329}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1025, file: !730, line: 398, baseType: !329, size: 64, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1025, file: !730, line: 399, baseType: !329, size: 64, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1025, file: !730, line: 405, baseType: !329, size: 64, offset: 384)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1025, file: !730, line: 406, baseType: !329, size: 64, offset: 448)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1025, file: !730, line: 407, baseType: !1156, size: 64, offset: 512)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !720, line: 286, baseType: !1158)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !720, line: 286, size: 64, elements: !1159)
!1159 = !{!1160}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1158, file: !720, line: 286, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1044, line: 18, baseType: !329)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1025, file: !730, line: 416, baseType: !754, size: 32, offset: 576)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1025, file: !730, line: 428, baseType: !754, size: 32, offset: 608)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1025, file: !730, line: 437, baseType: !754, size: 32, offset: 640)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1025, file: !730, line: 447, baseType: !754, size: 32, offset: 672)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1025, file: !730, line: 450, baseType: !778, size: 64, offset: 704)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1025, file: !730, line: 452, baseType: !206, size: 32, offset: 768)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1025, file: !730, line: 454, baseType: !239, offset: 800)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1025, file: !730, line: 457, baseType: !774, size: 256, offset: 832)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1025, file: !730, line: 459, baseType: !211, size: 128, offset: 1088)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1025, file: !730, line: 466, baseType: !329, size: 64, offset: 1216)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1025, file: !730, line: 467, baseType: !329, size: 64, offset: 1280)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1025, file: !730, line: 469, baseType: !329, size: 64, offset: 1344)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1025, file: !730, line: 470, baseType: !329, size: 64, offset: 1408)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1025, file: !730, line: 471, baseType: !780, size: 64, offset: 1472)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1025, file: !730, line: 472, baseType: !329, size: 64, offset: 1536)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1025, file: !730, line: 473, baseType: !329, size: 64, offset: 1600)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1025, file: !730, line: 474, baseType: !329, size: 64, offset: 1664)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1025, file: !730, line: 475, baseType: !329, size: 64, offset: 1728)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1025, file: !730, line: 477, baseType: !239, offset: 1792)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1025, file: !730, line: 478, baseType: !329, size: 64, offset: 1792)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1025, file: !730, line: 478, baseType: !329, size: 64, offset: 1856)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1025, file: !730, line: 478, baseType: !329, size: 64, offset: 1920)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1025, file: !730, line: 478, baseType: !329, size: 64, offset: 1984)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1025, file: !730, line: 479, baseType: !329, size: 64, offset: 2048)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1025, file: !730, line: 479, baseType: !329, size: 64, offset: 2112)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1025, file: !730, line: 479, baseType: !329, size: 64, offset: 2176)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1025, file: !730, line: 480, baseType: !329, size: 64, offset: 2240)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1025, file: !730, line: 480, baseType: !329, size: 64, offset: 2304)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1025, file: !730, line: 480, baseType: !329, size: 64, offset: 2368)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1025, file: !730, line: 480, baseType: !329, size: 64, offset: 2432)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1025, file: !730, line: 482, baseType: !1193, size: 2816, offset: 2496)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 2816, elements: !1194)
!1194 = !{!1195}
!1195 = !DISubrange(count: 44)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1025, file: !730, line: 488, baseType: !1197, size: 256, offset: 5312)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1198, line: 60, size: 256, elements: !1199)
!1198 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1199 = !{!1200}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1197, file: !1198, line: 61, baseType: !1201, size: 256)
!1201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 256, elements: !1202)
!1202 = !{!1203}
!1203 = !DISubrange(count: 4)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1025, file: !730, line: 490, baseType: !1205, size: 64, offset: 5568)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !730, line: 490, flags: DIFlagFwdDecl)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1025, file: !730, line: 493, baseType: !1208, size: 896, offset: 5632)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1209, line: 53, baseType: !1210)
!1209 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1209, line: 13, size: 896, elements: !1211)
!1211 = !{!1212, !1213, !1214, !1215, !1218, !1219, !1226, !1227, !1247, !1248, !1249}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1210, file: !1209, line: 18, baseType: !426, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1210, file: !1209, line: 28, baseType: !780, size: 64, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1210, file: !1209, line: 31, baseType: !774, size: 256, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1210, file: !1209, line: 32, baseType: !1216, size: 64, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1209, line: 32, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1210, file: !1209, line: 37, baseType: !321, size: 16, offset: 448)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1210, file: !1209, line: 40, baseType: !1220, size: 192, offset: 512)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1221, line: 53, size: 192, elements: !1222)
!1221 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1222 = !{!1223, !1224, !1225}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1220, file: !1221, line: 54, baseType: !778, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1220, file: !1221, line: 55, baseType: !239, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1220, file: !1221, line: 59, baseType: !211, size: 128, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1210, file: !1209, line: 41, baseType: !194, size: 64, offset: 704)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1210, file: !1209, line: 42, baseType: !1228, size: 64, offset: 768)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1230)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1231, line: 13, size: 896, elements: !1232)
!1231 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1232 = !{!1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1230, file: !1231, line: 14, baseType: !194, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1230, file: !1231, line: 15, baseType: !329, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1230, file: !1231, line: 17, baseType: !329, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1230, file: !1231, line: 17, baseType: !329, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1230, file: !1231, line: 19, baseType: !149, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1230, file: !1231, line: 21, baseType: !149, size: 64, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1230, file: !1231, line: 22, baseType: !149, size: 64, offset: 384)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1230, file: !1231, line: 23, baseType: !149, size: 64, offset: 448)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1230, file: !1231, line: 24, baseType: !149, size: 64, offset: 512)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1230, file: !1231, line: 25, baseType: !149, size: 64, offset: 576)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1230, file: !1231, line: 26, baseType: !149, size: 64, offset: 640)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1230, file: !1231, line: 27, baseType: !149, size: 64, offset: 704)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1230, file: !1231, line: 28, baseType: !149, size: 64, offset: 768)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1230, file: !1231, line: 29, baseType: !149, size: 64, offset: 832)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1210, file: !1209, line: 44, baseType: !754, size: 32, offset: 832)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1210, file: !1209, line: 50, baseType: !866, size: 16, offset: 864)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1210, file: !1209, line: 51, baseType: !1250, size: 16, offset: 880)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !421, line: 18, baseType: !1251)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !423, line: 23, baseType: !1252)
!1252 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1025, file: !730, line: 495, baseType: !329, size: 64, offset: 6528)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1025, file: !730, line: 497, baseType: !1255, size: 64, offset: 6592)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !730, line: 381, size: 384, elements: !1257)
!1257 = !{!1258, !1259, !2356}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1256, file: !730, line: 382, baseType: !754, size: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1256, file: !730, line: 383, baseType: !1260, size: 128, offset: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !730, line: 376, size: 128, elements: !1261)
!1261 = !{!1262, !2354}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1260, file: !730, line: 377, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !908, line: 640, size: 48640, elements: !1265)
!1265 = !{!1266, !1272, !1274, !1275, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1292, !1310, !1321, !1406, !1407, !1408, !1419, !1420, !1422, !1423, !1424, !1425, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1504, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1542, !1544, !1545, !1546, !1558, !1559, !1560, !1561, !1562, !1563, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1587, !1592, !1776, !1777, !1778, !1779, !1783, !1786, !1789, !1792, !1795, !1798, !1899, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1945, !1946, !1947, !1948, !1949, !1954, !1955, !1956, !1959, !1960, !1963, !1966, !1969, !1972, !2014, !2017, !2018, !2097, !2098, !2101, !2102, !2105, !2106, !2107, !2111, !2112, !2113, !2126, !2127, !2128, !2138, !2143, !2144, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1264, file: !908, line: 646, baseType: !1267, size: 128)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1268, line: 56, size: 128, elements: !1269)
!1268 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1269 = !{!1270, !1271}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1267, file: !1268, line: 57, baseType: !329, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1267, file: !1268, line: 58, baseType: !420, size: 32, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1264, file: !908, line: 649, baseType: !1273, size: 64, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !149)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1264, file: !908, line: 657, baseType: !194, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1264, file: !908, line: 658, baseType: !1276, size: 32, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1277, line: 113, baseType: !1278)
!1277 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1277, line: 111, size: 32, elements: !1279)
!1279 = !{!1280}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1278, file: !1277, line: 112, baseType: !754, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1264, file: !908, line: 660, baseType: !7, size: 32, offset: 288)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1264, file: !908, line: 661, baseType: !7, size: 32, offset: 320)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1264, file: !908, line: 684, baseType: !206, size: 32, offset: 352)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1264, file: !908, line: 686, baseType: !206, size: 32, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1264, file: !908, line: 687, baseType: !206, size: 32, offset: 416)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1264, file: !908, line: 688, baseType: !206, size: 32, offset: 448)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1264, file: !908, line: 689, baseType: !7, size: 32, offset: 480)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1264, file: !908, line: 691, baseType: !1289, size: 64, offset: 512)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1291)
!1291 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !908, line: 691, flags: DIFlagFwdDecl)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1264, file: !908, line: 692, baseType: !1293, size: 832, offset: 576)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !908, line: 451, size: 832, elements: !1294)
!1294 = !{!1295, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1293, file: !908, line: 453, baseType: !1296, size: 128)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !908, line: 325, size: 128, elements: !1297)
!1297 = !{!1298, !1299}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1296, file: !908, line: 326, baseType: !329, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1296, file: !908, line: 327, baseType: !420, size: 32, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1293, file: !908, line: 454, baseType: !767, size: 192, align: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1293, file: !908, line: 455, baseType: !211, size: 128, offset: 320)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1293, file: !908, line: 456, baseType: !7, size: 32, offset: 448)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1293, file: !908, line: 458, baseType: !426, size: 64, offset: 512)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1293, file: !908, line: 459, baseType: !426, size: 64, offset: 576)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1293, file: !908, line: 460, baseType: !426, size: 64, offset: 640)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1293, file: !908, line: 461, baseType: !426, size: 64, offset: 704)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1293, file: !908, line: 463, baseType: !426, size: 64, offset: 768)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1293, file: !908, line: 465, baseType: !1309, offset: 832)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !908, line: 415, elements: !253)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1264, file: !908, line: 693, baseType: !1311, size: 384, offset: 1408)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !908, line: 489, size: 384, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1316, !1317, !1318, !1319}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1311, file: !908, line: 490, baseType: !211, size: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1311, file: !908, line: 491, baseType: !329, size: 64, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1311, file: !908, line: 492, baseType: !329, size: 64, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1311, file: !908, line: 493, baseType: !7, size: 32, offset: 256)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1311, file: !908, line: 494, baseType: !321, size: 16, offset: 288)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1311, file: !908, line: 495, baseType: !321, size: 16, offset: 304)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1311, file: !908, line: 497, baseType: !1320, size: 64, offset: 320)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1264, file: !908, line: 697, baseType: !1322, size: 1792, offset: 1792)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !908, line: 507, size: 1792, elements: !1323)
!1323 = !{!1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1403, !1404}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1322, file: !908, line: 508, baseType: !767, size: 192, align: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1322, file: !908, line: 515, baseType: !426, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1322, file: !908, line: 516, baseType: !426, size: 64, offset: 256)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1322, file: !908, line: 517, baseType: !426, size: 64, offset: 320)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1322, file: !908, line: 518, baseType: !426, size: 64, offset: 384)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1322, file: !908, line: 519, baseType: !426, size: 64, offset: 448)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1322, file: !908, line: 526, baseType: !784, size: 64, offset: 512)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1322, file: !908, line: 527, baseType: !426, size: 64, offset: 576)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1322, file: !908, line: 528, baseType: !7, size: 32, offset: 640)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1322, file: !908, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1322, file: !908, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1322, file: !908, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1322, file: !908, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1322, file: !908, line: 563, baseType: !1338, size: 512, offset: 704)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1339)
!1339 = !{!1340, !1348, !1349, !1354, !1397, !1400, !1401, !1402}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1338, file: !20, line: 119, baseType: !1341, size: 256)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1342, line: 9, size: 256, elements: !1343)
!1342 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1341, file: !1342, line: 10, baseType: !767, size: 192, align: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1341, file: !1342, line: 11, baseType: !1346, size: 64, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1347, line: 29, baseType: !784)
!1347 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1338, file: !20, line: 120, baseType: !1346, size: 64, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1338, file: !20, line: 121, baseType: !1350, size: 64, offset: 320)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!19, !1353}
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1338, file: !20, line: 122, baseType: !1355, size: 64, offset: 384)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1357)
!1357 = !{!1358, !1378, !1379, !1382, !1387, !1388, !1392, !1396}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1356, file: !20, line: 160, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1361)
!1361 = !{!1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1360, file: !20, line: 215, baseType: !787)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1360, file: !20, line: 216, baseType: !7, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1360, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1360, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1360, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1360, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1360, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1360, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1360, file: !20, line: 233, baseType: !1346, size: 64, offset: 128)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1360, file: !20, line: 234, baseType: !1353, size: 64, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1360, file: !20, line: 235, baseType: !1346, size: 64, offset: 256)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1360, file: !20, line: 236, baseType: !1353, size: 64, offset: 320)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1360, file: !20, line: 237, baseType: !1375, size: 4096, offset: 512)
!1375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1356, size: 4096, elements: !1376)
!1376 = !{!1377}
!1377 = !DISubrange(count: 8)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1356, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1356, file: !20, line: 162, baseType: !1380, size: 32, offset: 96)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !193, line: 27, baseType: !1381)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !313, line: 96, baseType: !206)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1356, file: !20, line: 163, baseType: !1383, size: 32, offset: 128)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !393, line: 276, baseType: !1384)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !393, line: 276, size: 32, elements: !1385)
!1385 = !{!1386}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1384, file: !393, line: 276, baseType: !397, size: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1356, file: !20, line: 164, baseType: !1353, size: 64, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1356, file: !20, line: 165, baseType: !1389, size: 128, offset: 256)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1342, line: 14, size: 128, elements: !1390)
!1390 = !{!1391}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1389, file: !1342, line: 15, baseType: !759, size: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1356, file: !20, line: 166, baseType: !1393, size: 64, offset: 384)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!1346}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1356, file: !20, line: 167, baseType: !1346, size: 64, offset: 448)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1338, file: !20, line: 123, baseType: !1398, size: 8, offset: 448)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !421, line: 17, baseType: !1399)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !423, line: 21, baseType: !432)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1338, file: !20, line: 124, baseType: !1398, size: 8, offset: 456)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1338, file: !20, line: 125, baseType: !1398, size: 8, offset: 464)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1338, file: !20, line: 126, baseType: !1398, size: 8, offset: 472)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1322, file: !908, line: 572, baseType: !1338, size: 512, offset: 1216)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1322, file: !908, line: 580, baseType: !1405, size: 64, offset: 1728)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1264, file: !908, line: 721, baseType: !7, size: 32, offset: 3584)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1264, file: !908, line: 722, baseType: !206, size: 32, offset: 3616)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1264, file: !908, line: 723, baseType: !1409, size: 64, offset: 3648)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1412, line: 17, baseType: !1413)
!1412 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1412, line: 17, size: 64, elements: !1414)
!1414 = !{!1415}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1413, file: !1412, line: 17, baseType: !1416, size: 64)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 64, elements: !1417)
!1417 = !{!1418}
!1418 = !DISubrange(count: 1)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1264, file: !908, line: 724, baseType: !1411, size: 64, offset: 3712)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1264, file: !908, line: 749, baseType: !1421, offset: 3776)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !908, line: 290, elements: !253)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1264, file: !908, line: 751, baseType: !211, size: 128, offset: 3776)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1264, file: !908, line: 757, baseType: !1021, size: 64, offset: 3904)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1264, file: !908, line: 758, baseType: !1021, size: 64, offset: 3968)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1264, file: !908, line: 761, baseType: !1426, size: 320, offset: 4032)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1198, line: 34, size: 320, elements: !1427)
!1427 = !{!1428, !1429}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1426, file: !1198, line: 35, baseType: !426, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1426, file: !1198, line: 36, baseType: !1430, size: 256, offset: 64)
!1430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1028, size: 256, elements: !1202)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1264, file: !908, line: 766, baseType: !206, size: 32, offset: 4352)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1264, file: !908, line: 767, baseType: !206, size: 32, offset: 4384)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1264, file: !908, line: 768, baseType: !206, size: 32, offset: 4416)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1264, file: !908, line: 770, baseType: !206, size: 32, offset: 4448)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1264, file: !908, line: 772, baseType: !329, size: 64, offset: 4480)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1264, file: !908, line: 775, baseType: !7, size: 32, offset: 4544)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1264, file: !908, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1264, file: !908, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1264, file: !908, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1264, file: !908, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1264, file: !908, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1264, file: !908, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1264, file: !908, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1264, file: !908, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1264, file: !908, line: 831, baseType: !329, size: 64, offset: 4672)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1264, file: !908, line: 833, baseType: !1447, size: 384, offset: 4736)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1448)
!1448 = !{!1449, !1454}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1447, file: !25, line: 26, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!149, !1453}
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, scope: !1447, file: !25, line: 27, baseType: !1455, size: 320, offset: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1447, file: !25, line: 27, size: 320, elements: !1456)
!1456 = !{!1457, !1467, !1494}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1455, file: !25, line: 36, baseType: !1458, size: 320)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1455, file: !25, line: 29, size: 320, elements: !1459)
!1459 = !{!1460, !1462, !1463, !1464, !1465, !1466}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1458, file: !25, line: 30, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1458, file: !25, line: 31, baseType: !420, size: 32, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1458, file: !25, line: 32, baseType: !420, size: 32, offset: 96)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1458, file: !25, line: 33, baseType: !420, size: 32, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1458, file: !25, line: 34, baseType: !426, size: 64, offset: 192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1458, file: !25, line: 35, baseType: !1461, size: 64, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1455, file: !25, line: 46, baseType: !1468, size: 192)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1455, file: !25, line: 38, size: 192, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1493}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1468, file: !25, line: 39, baseType: !1380, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1468, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !25, line: 41, baseType: !1473, size: 64, offset: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1468, file: !25, line: 41, size: 64, elements: !1474)
!1474 = !{!1475, !1483}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1473, file: !25, line: 42, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1478, line: 7, size: 128, elements: !1479)
!1478 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1479 = !{!1480, !1482}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1477, file: !1478, line: 8, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !313, line: 93, baseType: !538)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1477, file: !1478, line: 9, baseType: !538, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1473, file: !25, line: 43, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1486, line: 7, size: 64, elements: !1487)
!1486 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1487 = !{!1488, !1492}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1485, file: !1486, line: 8, baseType: !1489, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1486, line: 5, baseType: !1490)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !421, line: 20, baseType: !1491)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !423, line: 26, baseType: !206)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1485, file: !1486, line: 9, baseType: !1490, size: 32, offset: 32)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1468, file: !25, line: 45, baseType: !426, size: 64, offset: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1455, file: !25, line: 54, baseType: !1495, size: 256)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1455, file: !25, line: 48, size: 256, elements: !1496)
!1496 = !{!1497, !1500, !1501, !1502, !1503}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1495, file: !25, line: 49, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1495, file: !25, line: 50, baseType: !206, size: 32, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1495, file: !25, line: 51, baseType: !206, size: 32, offset: 96)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1495, file: !25, line: 52, baseType: !329, size: 64, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1495, file: !25, line: 53, baseType: !329, size: 64, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1264, file: !908, line: 835, baseType: !1505, size: 32, offset: 5120)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !193, line: 22, baseType: !1506)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !313, line: 28, baseType: !206)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1264, file: !908, line: 836, baseType: !1505, size: 32, offset: 5152)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1264, file: !908, line: 840, baseType: !329, size: 64, offset: 5184)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1264, file: !908, line: 849, baseType: !1263, size: 64, offset: 5248)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1264, file: !908, line: 852, baseType: !1263, size: 64, offset: 5312)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1264, file: !908, line: 857, baseType: !211, size: 128, offset: 5376)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1264, file: !908, line: 858, baseType: !211, size: 128, offset: 5504)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1264, file: !908, line: 859, baseType: !1263, size: 64, offset: 5632)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1264, file: !908, line: 867, baseType: !211, size: 128, offset: 5696)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1264, file: !908, line: 868, baseType: !211, size: 128, offset: 5824)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1264, file: !908, line: 871, baseType: !1517, size: 64, offset: 5952)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1519)
!1519 = !{!1520, !1521, !1522, !1523, !1525, !1526, !1533, !1534}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1518, file: !53, line: 61, baseType: !1276, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1518, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1518, file: !53, line: 63, baseType: !239, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1518, file: !53, line: 65, baseType: !1524, size: 256, offset: 64)
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !642, size: 256, elements: !1202)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1518, file: !53, line: 66, baseType: !642, size: 64, offset: 320)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1518, file: !53, line: 68, baseType: !1527, size: 128, offset: 384)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1528, line: 40, baseType: !1529)
!1528 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1528, line: 36, size: 128, elements: !1530)
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1529, file: !1528, line: 37, baseType: !239)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1529, file: !1528, line: 38, baseType: !211, size: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1518, file: !53, line: 69, baseType: !370, size: 128, align: 64, offset: 512)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1518, file: !53, line: 70, baseType: !1535, size: 128, offset: 640)
!1535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1536, size: 128, elements: !1417)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1537)
!1537 = !{!1538, !1539}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1536, file: !53, line: 55, baseType: !206, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1536, file: !53, line: 56, baseType: !1540, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1264, file: !908, line: 872, baseType: !1543, size: 512, offset: 6016)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 512, elements: !1202)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1264, file: !908, line: 873, baseType: !211, size: 128, offset: 6528)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1264, file: !908, line: 874, baseType: !211, size: 128, offset: 6656)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1264, file: !908, line: 876, baseType: !1547, size: 64, offset: 6784)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1549, line: 26, size: 192, elements: !1550)
!1549 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1550 = !{!1551, !1552}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1548, file: !1549, line: 27, baseType: !7, size: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1548, file: !1549, line: 28, baseType: !1553, size: 128, offset: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1554, line: 43, size: 128, elements: !1555)
!1554 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1555 = !{!1556, !1557}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1553, file: !1554, line: 44, baseType: !787)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1553, file: !1554, line: 45, baseType: !211, size: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1264, file: !908, line: 879, baseType: !712, size: 64, offset: 6848)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1264, file: !908, line: 882, baseType: !712, size: 64, offset: 6912)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1264, file: !908, line: 884, baseType: !426, size: 64, offset: 6976)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1264, file: !908, line: 885, baseType: !426, size: 64, offset: 7040)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1264, file: !908, line: 890, baseType: !426, size: 64, offset: 7104)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1264, file: !908, line: 891, baseType: !1564, size: 128, offset: 7168)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !908, line: 242, size: 128, elements: !1565)
!1565 = !{!1566, !1567, !1568}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1564, file: !908, line: 244, baseType: !426, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1564, file: !908, line: 245, baseType: !426, size: 64, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1564, file: !908, line: 246, baseType: !787, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1264, file: !908, line: 900, baseType: !329, size: 64, offset: 7296)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1264, file: !908, line: 901, baseType: !329, size: 64, offset: 7360)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1264, file: !908, line: 904, baseType: !426, size: 64, offset: 7424)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1264, file: !908, line: 907, baseType: !426, size: 64, offset: 7488)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1264, file: !908, line: 910, baseType: !329, size: 64, offset: 7552)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1264, file: !908, line: 911, baseType: !329, size: 64, offset: 7616)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1264, file: !908, line: 914, baseType: !1576, size: 640, offset: 7680)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1577, line: 123, size: 640, elements: !1578)
!1577 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1578 = !{!1579, !1585, !1586}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1576, file: !1577, line: 124, baseType: !1580, size: 576)
!1580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1581, size: 576, elements: !281)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1577, line: 108, size: 192, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1581, file: !1577, line: 109, baseType: !426, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1581, file: !1577, line: 110, baseType: !1389, size: 128, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1576, file: !1577, line: 125, baseType: !7, size: 32, offset: 576)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1576, file: !1577, line: 126, baseType: !7, size: 32, offset: 608)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1264, file: !908, line: 917, baseType: !1588, size: 192, offset: 8320)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1577, line: 134, size: 192, elements: !1589)
!1589 = !{!1590, !1591}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1588, file: !1577, line: 135, baseType: !370, size: 128, align: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1588, file: !1577, line: 136, baseType: !7, size: 32, offset: 128)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1264, file: !908, line: 923, baseType: !1593, size: 64, offset: 8512)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1595)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1596, line: 111, size: 1280, elements: !1597)
!1596 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1617, !1618, !1619, !1620, !1621, !1622, !1729, !1730, !1731, !1732, !1758, !1761, !1771}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1595, file: !1596, line: 112, baseType: !754, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1595, file: !1596, line: 120, baseType: !440, size: 32, offset: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1595, file: !1596, line: 121, baseType: !448, size: 32, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1595, file: !1596, line: 122, baseType: !440, size: 32, offset: 96)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1595, file: !1596, line: 123, baseType: !448, size: 32, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1595, file: !1596, line: 124, baseType: !440, size: 32, offset: 160)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1595, file: !1596, line: 125, baseType: !448, size: 32, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1595, file: !1596, line: 126, baseType: !440, size: 32, offset: 224)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1595, file: !1596, line: 127, baseType: !448, size: 32, offset: 256)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1595, file: !1596, line: 128, baseType: !7, size: 32, offset: 288)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1595, file: !1596, line: 129, baseType: !1609, size: 64, offset: 320)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1610, line: 26, baseType: !1611)
!1610 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1610, line: 24, size: 64, elements: !1612)
!1612 = !{!1613}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1611, file: !1610, line: 25, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 64, elements: !1615)
!1615 = !{!1616}
!1616 = !DISubrange(count: 2)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1595, file: !1596, line: 130, baseType: !1609, size: 64, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1595, file: !1596, line: 131, baseType: !1609, size: 64, offset: 448)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1595, file: !1596, line: 132, baseType: !1609, size: 64, offset: 512)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1595, file: !1596, line: 133, baseType: !1609, size: 64, offset: 576)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1595, file: !1596, line: 135, baseType: !432, size: 8, offset: 640)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1595, file: !1596, line: 137, baseType: !1623, size: 64, offset: 704)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1625, line: 189, size: 1664, elements: !1626)
!1625 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1626 = !{!1627, !1628, !1631, !1636, !1637, !1640, !1641, !1646, !1647, !1648, !1649, !1651, !1652, !1653, !1654, !1655, !1693, !1714}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1624, file: !1625, line: 190, baseType: !1276, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1624, file: !1625, line: 191, baseType: !1629, size: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1625, line: 28, baseType: !1630)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !193, line: 98, baseType: !1490)
!1631 = !DIDerivedType(tag: DW_TAG_member, scope: !1624, file: !1625, line: 192, baseType: !1632, size: 192, offset: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1624, file: !1625, line: 192, size: 192, elements: !1633)
!1633 = !{!1634, !1635}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1632, file: !1625, line: 193, baseType: !211, size: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1632, file: !1625, line: 194, baseType: !767, size: 192, align: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1624, file: !1625, line: 199, baseType: !774, size: 256, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1624, file: !1625, line: 200, baseType: !1638, size: 64, offset: 512)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1625, line: 200, flags: DIFlagFwdDecl)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1624, file: !1625, line: 201, baseType: !194, size: 64, offset: 576)
!1641 = !DIDerivedType(tag: DW_TAG_member, scope: !1624, file: !1625, line: 202, baseType: !1642, size: 64, offset: 640)
!1642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1624, file: !1625, line: 202, size: 64, elements: !1643)
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1642, file: !1625, line: 203, baseType: !544, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1642, file: !1625, line: 204, baseType: !544, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1624, file: !1625, line: 206, baseType: !544, size: 64, offset: 704)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1624, file: !1625, line: 207, baseType: !440, size: 32, offset: 768)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1624, file: !1625, line: 208, baseType: !448, size: 32, offset: 800)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1624, file: !1625, line: 209, baseType: !1650, size: 32, offset: 832)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1625, line: 31, baseType: !564)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1624, file: !1625, line: 210, baseType: !321, size: 16, offset: 864)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1624, file: !1625, line: 211, baseType: !321, size: 16, offset: 880)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1624, file: !1625, line: 215, baseType: !1252, size: 16, offset: 896)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1624, file: !1625, line: 222, baseType: !329, size: 64, offset: 960)
!1655 = !DIDerivedType(tag: DW_TAG_member, scope: !1624, file: !1625, line: 239, baseType: !1656, size: 320, offset: 1024)
!1656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1624, file: !1625, line: 239, size: 320, elements: !1657)
!1657 = !{!1658, !1685}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1656, file: !1625, line: 240, baseType: !1659, size: 320)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1625, line: 108, size: 320, elements: !1660)
!1660 = !{!1661, !1662, !1674, !1677, !1684}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1659, file: !1625, line: 110, baseType: !329, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !1625, line: 111, baseType: !1663, size: 64, offset: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1659, file: !1625, line: 111, size: 64, elements: !1664)
!1664 = !{!1665, !1673}
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1663, file: !1625, line: 112, baseType: !1666, size: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1663, file: !1625, line: 112, size: 64, elements: !1667)
!1667 = !{!1668, !1669}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1666, file: !1625, line: 114, baseType: !866, size: 16)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1666, file: !1625, line: 115, baseType: !1670, size: 48, offset: 16)
!1670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 48, elements: !1671)
!1671 = !{!1672}
!1672 = !DISubrange(count: 6)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1663, file: !1625, line: 121, baseType: !329, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1659, file: !1625, line: 123, baseType: !1675, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1625, line: 96, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1659, file: !1625, line: 124, baseType: !1678, size: 64, offset: 192)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1625, line: 102, size: 192, elements: !1680)
!1680 = !{!1681, !1682, !1683}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1679, file: !1625, line: 103, baseType: !370, size: 128, align: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1679, file: !1625, line: 104, baseType: !1276, size: 32, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1679, file: !1625, line: 105, baseType: !495, size: 8, offset: 160)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1659, file: !1625, line: 125, baseType: !200, size: 64, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_member, scope: !1656, file: !1625, line: 241, baseType: !1686, size: 320)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1656, file: !1625, line: 241, size: 320, elements: !1687)
!1687 = !{!1688, !1689, !1690, !1691, !1692}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1686, file: !1625, line: 242, baseType: !329, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1686, file: !1625, line: 243, baseType: !329, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1686, file: !1625, line: 244, baseType: !1675, size: 64, offset: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1686, file: !1625, line: 245, baseType: !1678, size: 64, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1686, file: !1625, line: 246, baseType: !280, size: 64, offset: 256)
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1624, file: !1625, line: 254, baseType: !1694, size: 256, offset: 1344)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1624, file: !1625, line: 254, size: 256, elements: !1695)
!1695 = !{!1696, !1702}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1694, file: !1625, line: 255, baseType: !1697, size: 256)
!1697 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1625, line: 128, size: 256, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1697, file: !1625, line: 129, baseType: !194, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1697, file: !1625, line: 130, baseType: !1701, size: 256)
!1701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 256, elements: !1202)
!1702 = !DIDerivedType(tag: DW_TAG_member, scope: !1694, file: !1625, line: 256, baseType: !1703, size: 256)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1694, file: !1625, line: 256, size: 256, elements: !1704)
!1704 = !{!1705, !1706}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1703, file: !1625, line: 258, baseType: !211, size: 128)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1703, file: !1625, line: 259, baseType: !1707, size: 128, offset: 128)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1708, line: 22, size: 128, elements: !1709)
!1708 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1709 = !{!1710, !1713}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1707, file: !1708, line: 23, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1708, line: 23, flags: DIFlagFwdDecl)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1707, file: !1708, line: 24, baseType: !329, size: 64, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1624, file: !1625, line: 274, baseType: !1715, size: 64, offset: 1600)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1625, line: 170, size: 192, elements: !1717)
!1717 = !{!1718, !1727, !1728}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1716, file: !1625, line: 171, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1625, line: 165, baseType: !1720)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!206, !1623, !1723, !1725, !1623}
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1676)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1697)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1716, file: !1625, line: 172, baseType: !1623, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1716, file: !1625, line: 173, baseType: !1675, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1595, file: !1596, line: 138, baseType: !1623, size: 64, offset: 768)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1595, file: !1596, line: 139, baseType: !1623, size: 64, offset: 832)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1595, file: !1596, line: 140, baseType: !1623, size: 64, offset: 896)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1595, file: !1596, line: 145, baseType: !1733, size: 64, offset: 960)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1735, line: 13, size: 896, elements: !1736)
!1735 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1736 = !{!1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1734, file: !1735, line: 14, baseType: !1276, size: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1734, file: !1735, line: 15, baseType: !754, size: 32, offset: 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1734, file: !1735, line: 16, baseType: !754, size: 32, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1734, file: !1735, line: 21, baseType: !778, size: 64, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1734, file: !1735, line: 27, baseType: !329, size: 64, offset: 192)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1734, file: !1735, line: 28, baseType: !329, size: 64, offset: 256)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1734, file: !1735, line: 29, baseType: !778, size: 64, offset: 320)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1734, file: !1735, line: 32, baseType: !646, size: 128, offset: 384)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1734, file: !1735, line: 33, baseType: !440, size: 32, offset: 512)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1734, file: !1735, line: 37, baseType: !778, size: 64, offset: 576)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1734, file: !1735, line: 44, baseType: !1748, size: 256, offset: 640)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1749, line: 15, size: 256, elements: !1750)
!1749 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1750 = !{!1751, !1752, !1753, !1754, !1755, !1756, !1757}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1748, file: !1749, line: 16, baseType: !787)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1748, file: !1749, line: 18, baseType: !206, size: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1748, file: !1749, line: 19, baseType: !206, size: 32, offset: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1748, file: !1749, line: 20, baseType: !206, size: 32, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1748, file: !1749, line: 21, baseType: !206, size: 32, offset: 96)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1748, file: !1749, line: 22, baseType: !329, size: 64, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1748, file: !1749, line: 23, baseType: !329, size: 64, offset: 192)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1595, file: !1596, line: 146, baseType: !1759, size: 64, offset: 1024)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !441, line: 18, flags: DIFlagFwdDecl)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1595, file: !1596, line: 147, baseType: !1762, size: 64, offset: 1088)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1596, line: 25, size: 64, elements: !1764)
!1764 = !{!1765, !1766, !1767}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1763, file: !1596, line: 26, baseType: !754, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1763, file: !1596, line: 27, baseType: !206, size: 32, offset: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1763, file: !1596, line: 28, baseType: !1768, offset: 64)
!1768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, elements: !1769)
!1769 = !{!1770}
!1770 = !DISubrange(count: 0)
!1771 = !DIDerivedType(tag: DW_TAG_member, scope: !1595, file: !1596, line: 149, baseType: !1772, size: 128, offset: 1152)
!1772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1595, file: !1596, line: 149, size: 128, elements: !1773)
!1773 = !{!1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1772, file: !1596, line: 150, baseType: !206, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1772, file: !1596, line: 151, baseType: !370, size: 128, align: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1264, file: !908, line: 926, baseType: !1593, size: 64, offset: 8576)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1264, file: !908, line: 929, baseType: !1593, size: 64, offset: 8640)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1264, file: !908, line: 933, baseType: !1623, size: 64, offset: 8704)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1264, file: !908, line: 943, baseType: !1780, size: 128, offset: 8768)
!1780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 128, elements: !1781)
!1781 = !{!1782}
!1782 = !DISubrange(count: 16)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1264, file: !908, line: 945, baseType: !1784, size: 64, offset: 8896)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !908, line: 49, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1264, file: !908, line: 956, baseType: !1787, size: 64, offset: 8960)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !908, line: 45, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1264, file: !908, line: 959, baseType: !1790, size: 64, offset: 9024)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !908, line: 959, flags: DIFlagFwdDecl)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1264, file: !908, line: 962, baseType: !1793, size: 64, offset: 9088)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !908, line: 66, flags: DIFlagFwdDecl)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1264, file: !908, line: 966, baseType: !1796, size: 64, offset: 9152)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !908, line: 50, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1264, file: !908, line: 969, baseType: !1799, size: 64, offset: 9216)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1801, line: 82, size: 7296, elements: !1802)
!1801 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1802 = !{!1803, !1804, !1805, !1806, !1807, !1808, !1809, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1838, !1847, !1848, !1850, !1851, !1852, !1855, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1885, !1886, !1893, !1894, !1895, !1896, !1897, !1898}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1800, file: !1801, line: 83, baseType: !1276, size: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1800, file: !1801, line: 84, baseType: !754, size: 32, offset: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1800, file: !1801, line: 85, baseType: !206, size: 32, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1800, file: !1801, line: 86, baseType: !211, size: 128, offset: 128)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1800, file: !1801, line: 88, baseType: !1527, size: 128, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1800, file: !1801, line: 91, baseType: !1263, size: 64, offset: 384)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1800, file: !1801, line: 94, baseType: !1810, size: 192, offset: 448)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1811, line: 30, size: 192, elements: !1812)
!1811 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1812 = !{!1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1810, file: !1811, line: 31, baseType: !211, size: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1810, file: !1811, line: 32, baseType: !1815, size: 64, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1816, line: 25, baseType: !1817)
!1816 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1816, line: 23, size: 64, elements: !1818)
!1818 = !{!1819}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1817, file: !1816, line: 24, baseType: !1416, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1800, file: !1801, line: 97, baseType: !642, size: 64, offset: 640)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1800, file: !1801, line: 100, baseType: !206, size: 32, offset: 704)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1800, file: !1801, line: 106, baseType: !206, size: 32, offset: 736)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1800, file: !1801, line: 107, baseType: !1263, size: 64, offset: 768)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1800, file: !1801, line: 110, baseType: !206, size: 32, offset: 832)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1800, file: !1801, line: 111, baseType: !7, size: 32, offset: 864)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1800, file: !1801, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1800, file: !1801, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1800, file: !1801, line: 128, baseType: !206, size: 32, offset: 928)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1800, file: !1801, line: 129, baseType: !211, size: 128, offset: 960)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1800, file: !1801, line: 132, baseType: !1338, size: 512, offset: 1088)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1800, file: !1801, line: 133, baseType: !1346, size: 64, offset: 1600)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1800, file: !1801, line: 140, baseType: !1833, size: 256, offset: 1664)
!1833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1834, size: 256, elements: !1615)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1801, line: 38, size: 128, elements: !1835)
!1835 = !{!1836, !1837}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1834, file: !1801, line: 39, baseType: !426, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1834, file: !1801, line: 40, baseType: !426, size: 64, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1800, file: !1801, line: 146, baseType: !1839, size: 192, offset: 1920)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1801, line: 66, size: 192, elements: !1840)
!1840 = !{!1841}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1839, file: !1801, line: 67, baseType: !1842, size: 192)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1801, line: 47, size: 192, elements: !1843)
!1843 = !{!1844, !1845, !1846}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1842, file: !1801, line: 48, baseType: !780, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1842, file: !1801, line: 49, baseType: !780, size: 64, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1842, file: !1801, line: 50, baseType: !780, size: 64, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1800, file: !1801, line: 150, baseType: !1576, size: 640, offset: 2112)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1800, file: !1801, line: 153, baseType: !1849, size: 256, offset: 2752)
!1849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1517, size: 256, elements: !1202)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1800, file: !1801, line: 159, baseType: !1517, size: 64, offset: 3008)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1800, file: !1801, line: 162, baseType: !206, size: 32, offset: 3072)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1800, file: !1801, line: 164, baseType: !1853, size: 64, offset: 3136)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1801, line: 164, flags: DIFlagFwdDecl)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1800, file: !1801, line: 175, baseType: !1856, size: 32, offset: 3200)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !393, line: 805, baseType: !1857)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !393, line: 798, size: 32, elements: !1858)
!1858 = !{!1859, !1860}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1857, file: !393, line: 803, baseType: !392, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1857, file: !393, line: 804, baseType: !239, offset: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1800, file: !1801, line: 176, baseType: !426, size: 64, offset: 3264)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1800, file: !1801, line: 176, baseType: !426, size: 64, offset: 3328)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1800, file: !1801, line: 176, baseType: !426, size: 64, offset: 3392)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1800, file: !1801, line: 176, baseType: !426, size: 64, offset: 3456)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1800, file: !1801, line: 177, baseType: !426, size: 64, offset: 3520)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1800, file: !1801, line: 178, baseType: !426, size: 64, offset: 3584)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1800, file: !1801, line: 179, baseType: !1564, size: 128, offset: 3648)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1800, file: !1801, line: 180, baseType: !329, size: 64, offset: 3776)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1800, file: !1801, line: 180, baseType: !329, size: 64, offset: 3840)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1800, file: !1801, line: 180, baseType: !329, size: 64, offset: 3904)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1800, file: !1801, line: 180, baseType: !329, size: 64, offset: 3968)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1800, file: !1801, line: 181, baseType: !329, size: 64, offset: 4032)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1800, file: !1801, line: 181, baseType: !329, size: 64, offset: 4096)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1800, file: !1801, line: 181, baseType: !329, size: 64, offset: 4160)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1800, file: !1801, line: 181, baseType: !329, size: 64, offset: 4224)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1800, file: !1801, line: 182, baseType: !329, size: 64, offset: 4288)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1800, file: !1801, line: 182, baseType: !329, size: 64, offset: 4352)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1800, file: !1801, line: 182, baseType: !329, size: 64, offset: 4416)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1800, file: !1801, line: 182, baseType: !329, size: 64, offset: 4480)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1800, file: !1801, line: 183, baseType: !329, size: 64, offset: 4544)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1800, file: !1801, line: 183, baseType: !329, size: 64, offset: 4608)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1800, file: !1801, line: 184, baseType: !1883, offset: 4672)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1884, line: 12, elements: !253)
!1884 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1800, file: !1801, line: 192, baseType: !428, size: 64, offset: 4672)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1800, file: !1801, line: 203, baseType: !1887, size: 2048, offset: 4736)
!1887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1888, size: 2048, elements: !1781)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1889, line: 43, size: 128, elements: !1890)
!1889 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1890 = !{!1891, !1892}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1888, file: !1889, line: 44, baseType: !328, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1888, file: !1889, line: 45, baseType: !328, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1800, file: !1801, line: 220, baseType: !495, size: 8, offset: 6784)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1800, file: !1801, line: 221, baseType: !1252, size: 16, offset: 6800)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1800, file: !1801, line: 222, baseType: !1252, size: 16, offset: 6816)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1800, file: !1801, line: 224, baseType: !1021, size: 64, offset: 6848)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1800, file: !1801, line: 227, baseType: !1220, size: 192, offset: 6912)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1800, file: !1801, line: 233, baseType: !1220, size: 192, offset: 7104)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1264, file: !908, line: 970, baseType: !1900, size: 64, offset: 9280)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1801, line: 20, size: 16576, elements: !1902)
!1902 = !{!1903, !1904, !1905, !1906}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1901, file: !1801, line: 21, baseType: !239)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1901, file: !1801, line: 22, baseType: !1276, size: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1901, file: !1801, line: 23, baseType: !1527, size: 128, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1901, file: !1801, line: 24, baseType: !1907, size: 16384, offset: 192)
!1907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1908, size: 16384, elements: !285)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1811, line: 49, size: 256, elements: !1909)
!1909 = !{!1910}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1908, file: !1811, line: 50, baseType: !1911, size: 256)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1811, line: 35, size: 256, elements: !1912)
!1912 = !{!1913, !1920, !1921, !1927}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1911, file: !1811, line: 37, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1915, line: 19, baseType: !1916)
!1915 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1915, line: 18, baseType: !1918)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !206}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1911, file: !1811, line: 38, baseType: !329, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1911, file: !1811, line: 44, baseType: !1922, size: 64, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1915, line: 22, baseType: !1923)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1915, line: 21, baseType: !1925)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{null}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1911, file: !1811, line: 46, baseType: !1815, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1264, file: !908, line: 971, baseType: !1815, size: 64, offset: 9344)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1264, file: !908, line: 972, baseType: !1815, size: 64, offset: 9408)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1264, file: !908, line: 974, baseType: !1815, size: 64, offset: 9472)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1264, file: !908, line: 975, baseType: !1810, size: 192, offset: 9536)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1264, file: !908, line: 976, baseType: !329, size: 64, offset: 9728)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1264, file: !908, line: 977, baseType: !326, size: 64, offset: 9792)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1264, file: !908, line: 978, baseType: !7, size: 32, offset: 9856)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1264, file: !908, line: 980, baseType: !373, size: 64, offset: 9920)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1264, file: !908, line: 989, baseType: !1937, size: 128, offset: 9984)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1938, line: 35, size: 128, elements: !1939)
!1938 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1939 = !{!1940, !1941, !1942}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1937, file: !1938, line: 36, baseType: !206, size: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1937, file: !1938, line: 37, baseType: !754, size: 32, offset: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1937, file: !1938, line: 38, baseType: !1943, size: 64, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1938, line: 23, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1264, file: !908, line: 992, baseType: !426, size: 64, offset: 10112)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1264, file: !908, line: 993, baseType: !426, size: 64, offset: 10176)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1264, file: !908, line: 996, baseType: !239, offset: 10240)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1264, file: !908, line: 999, baseType: !787, offset: 10240)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1264, file: !908, line: 1001, baseType: !1950, size: 64, offset: 10240)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !908, line: 636, size: 64, elements: !1951)
!1951 = !{!1952}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1950, file: !908, line: 637, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1264, file: !908, line: 1005, baseType: !759, size: 128, offset: 10304)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1264, file: !908, line: 1007, baseType: !1263, size: 64, offset: 10432)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1264, file: !908, line: 1009, baseType: !1957, size: 64, offset: 10496)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !908, line: 1009, flags: DIFlagFwdDecl)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1264, file: !908, line: 1043, baseType: !194, size: 64, offset: 10560)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1264, file: !908, line: 1046, baseType: !1961, size: 64, offset: 10624)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !908, line: 41, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1264, file: !908, line: 1050, baseType: !1964, size: 64, offset: 10688)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !908, line: 42, flags: DIFlagFwdDecl)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1264, file: !908, line: 1054, baseType: !1967, size: 64, offset: 10752)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !908, line: 55, flags: DIFlagFwdDecl)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1264, file: !908, line: 1056, baseType: !1970, size: 64, offset: 10816)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !908, line: 40, flags: DIFlagFwdDecl)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1264, file: !908, line: 1058, baseType: !1973, size: 64, offset: 10880)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1975, line: 99, size: 704, elements: !1976)
!1975 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1976 = !{!1977, !1978, !1979, !1980, !1981, !1982, !1983, !2002, !2003}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1974, file: !1975, line: 100, baseType: !778, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1974, file: !1975, line: 101, baseType: !754, size: 32, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1974, file: !1975, line: 102, baseType: !754, size: 32, offset: 96)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1974, file: !1975, line: 105, baseType: !239, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1974, file: !1975, line: 107, baseType: !321, size: 16, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1974, file: !1975, line: 109, baseType: !746, size: 128, offset: 192)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1974, file: !1975, line: 110, baseType: !1984, size: 64, offset: 320)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1975, line: 73, size: 448, elements: !1986)
!1986 = !{!1987, !1990, !1991, !1996, !2001}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1985, file: !1975, line: 74, baseType: !1988, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1975, line: 74, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1985, file: !1975, line: 75, baseType: !1973, size: 64, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, scope: !1985, file: !1975, line: 83, baseType: !1992, size: 128, offset: 128)
!1992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1985, file: !1975, line: 83, size: 128, elements: !1993)
!1993 = !{!1994, !1995}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1992, file: !1975, line: 84, baseType: !211, size: 128)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1992, file: !1975, line: 85, baseType: !982, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, scope: !1985, file: !1975, line: 87, baseType: !1997, size: 128, offset: 256)
!1997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1985, file: !1975, line: 87, size: 128, elements: !1998)
!1998 = !{!1999, !2000}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1997, file: !1975, line: 88, baseType: !646, size: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1997, file: !1975, line: 89, baseType: !370, size: 128, align: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1985, file: !1975, line: 92, baseType: !7, size: 32, offset: 384)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1974, file: !1975, line: 111, baseType: !642, size: 64, offset: 384)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1974, file: !1975, line: 113, baseType: !2004, size: 256, offset: 448)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !148, line: 102, size: 256, elements: !2005)
!2005 = !{!2006, !2007, !2008}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2004, file: !148, line: 103, baseType: !778, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2004, file: !148, line: 104, baseType: !211, size: 128, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2004, file: !148, line: 105, baseType: !2009, size: 64, offset: 192)
!2009 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !148, line: 21, baseType: !2010)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{null, !2013}
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1264, file: !908, line: 1061, baseType: !2015, size: 64, offset: 10944)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !908, line: 43, flags: DIFlagFwdDecl)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1264, file: !908, line: 1064, baseType: !329, size: 64, offset: 11008)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1264, file: !908, line: 1065, baseType: !2019, size: 64, offset: 11072)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1811, line: 14, baseType: !2021)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1811, line: 12, size: 384, elements: !2022)
!2022 = !{!2023}
!2023 = !DIDerivedType(tag: DW_TAG_member, scope: !2021, file: !1811, line: 13, baseType: !2024, size: 384)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2021, file: !1811, line: 13, size: 384, elements: !2025)
!2025 = !{!2026, !2027, !2028, !2029}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2024, file: !1811, line: 13, baseType: !206, size: 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2024, file: !1811, line: 13, baseType: !206, size: 32, offset: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2024, file: !1811, line: 13, baseType: !206, size: 32, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2024, file: !1811, line: 13, baseType: !2030, size: 256, offset: 128)
!2030 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2031, line: 32, size: 256, elements: !2032)
!2031 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2032 = !{!2033, !2038, !2051, !2057, !2066, !2086, !2091}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2030, file: !2031, line: 37, baseType: !2034, size: 64)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2030, file: !2031, line: 34, size: 64, elements: !2035)
!2035 = !{!2036, !2037}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2034, file: !2031, line: 35, baseType: !1506, size: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2034, file: !2031, line: 36, baseType: !446, size: 32, offset: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2030, file: !2031, line: 45, baseType: !2039, size: 192)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2030, file: !2031, line: 40, size: 192, elements: !2040)
!2040 = !{!2041, !2043, !2044, !2050}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2039, file: !2031, line: 41, baseType: !2042, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !313, line: 95, baseType: !206)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2039, file: !2031, line: 42, baseType: !206, size: 32, offset: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2039, file: !2031, line: 43, baseType: !2045, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2031, line: 11, baseType: !2046)
!2046 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2031, line: 8, size: 64, elements: !2047)
!2047 = !{!2048, !2049}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2046, file: !2031, line: 9, baseType: !206, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2046, file: !2031, line: 10, baseType: !194, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2039, file: !2031, line: 44, baseType: !206, size: 32, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2030, file: !2031, line: 52, baseType: !2052, size: 128)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2030, file: !2031, line: 48, size: 128, elements: !2053)
!2053 = !{!2054, !2055, !2056}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2052, file: !2031, line: 49, baseType: !1506, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2052, file: !2031, line: 50, baseType: !446, size: 32, offset: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2052, file: !2031, line: 51, baseType: !2045, size: 64, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2030, file: !2031, line: 61, baseType: !2058, size: 256)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2030, file: !2031, line: 55, size: 256, elements: !2059)
!2059 = !{!2060, !2061, !2062, !2063, !2065}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2058, file: !2031, line: 56, baseType: !1506, size: 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2058, file: !2031, line: 57, baseType: !446, size: 32, offset: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2058, file: !2031, line: 58, baseType: !206, size: 32, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2058, file: !2031, line: 59, baseType: !2064, size: 64, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !313, line: 94, baseType: !314)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2058, file: !2031, line: 60, baseType: !2064, size: 64, offset: 192)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2030, file: !2031, line: 95, baseType: !2067, size: 256)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2030, file: !2031, line: 64, size: 256, elements: !2068)
!2068 = !{!2069, !2070}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2067, file: !2031, line: 65, baseType: !194, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, scope: !2067, file: !2031, line: 77, baseType: !2071, size: 192, offset: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2067, file: !2031, line: 77, size: 192, elements: !2072)
!2072 = !{!2073, !2074, !2081}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2071, file: !2031, line: 82, baseType: !1252, size: 16)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2071, file: !2031, line: 88, baseType: !2075, size: 192)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2071, file: !2031, line: 84, size: 192, elements: !2076)
!2076 = !{!2077, !2079, !2080}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2075, file: !2031, line: 85, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 64, elements: !1376)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2075, file: !2031, line: 86, baseType: !194, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2075, file: !2031, line: 87, baseType: !194, size: 64, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2071, file: !2031, line: 93, baseType: !2082, size: 96)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2071, file: !2031, line: 90, size: 96, elements: !2083)
!2083 = !{!2084, !2085}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2082, file: !2031, line: 91, baseType: !2078, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2082, file: !2031, line: 92, baseType: !422, size: 32, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2030, file: !2031, line: 101, baseType: !2087, size: 128)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2030, file: !2031, line: 98, size: 128, elements: !2088)
!2088 = !{!2089, !2090}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2087, file: !2031, line: 99, baseType: !149, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2087, file: !2031, line: 100, baseType: !206, size: 32, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2030, file: !2031, line: 108, baseType: !2092, size: 128)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2030, file: !2031, line: 104, size: 128, elements: !2093)
!2093 = !{!2094, !2095, !2096}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2092, file: !2031, line: 105, baseType: !194, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2092, file: !2031, line: 106, baseType: !206, size: 32, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2092, file: !2031, line: 107, baseType: !7, size: 32, offset: 96)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1264, file: !908, line: 1067, baseType: !1883, offset: 11136)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1264, file: !908, line: 1099, baseType: !2099, size: 64, offset: 11136)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !908, line: 56, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1264, file: !908, line: 1103, baseType: !211, size: 128, offset: 11200)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1264, file: !908, line: 1104, baseType: !2103, size: 64, offset: 11328)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !908, line: 46, flags: DIFlagFwdDecl)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1264, file: !908, line: 1105, baseType: !1220, size: 192, offset: 11392)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1264, file: !908, line: 1106, baseType: !7, size: 32, offset: 11584)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1264, file: !908, line: 1109, baseType: !2108, size: 128, offset: 11648)
!2108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2109, size: 128, elements: !1615)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !908, line: 51, flags: DIFlagFwdDecl)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1264, file: !908, line: 1110, baseType: !1220, size: 192, offset: 11776)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1264, file: !908, line: 1111, baseType: !211, size: 128, offset: 11968)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1264, file: !908, line: 1173, baseType: !2114, size: 64, offset: 12096)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2116, line: 62, size: 256, align: 256, elements: !2117)
!2116 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2117 = !{!2118, !2119, !2120, !2125}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2115, file: !2116, line: 75, baseType: !422, size: 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2115, file: !2116, line: 90, baseType: !422, size: 32, offset: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2115, file: !2116, line: 124, baseType: !2121, size: 64, offset: 64)
!2121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2115, file: !2116, line: 109, size: 64, elements: !2122)
!2122 = !{!2123, !2124}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2121, file: !2116, line: 110, baseType: !427, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2121, file: !2116, line: 112, baseType: !427, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2115, file: !2116, line: 144, baseType: !422, size: 32, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1264, file: !908, line: 1174, baseType: !420, size: 32, offset: 12160)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1264, file: !908, line: 1179, baseType: !329, size: 64, offset: 12224)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1264, file: !908, line: 1182, baseType: !2129, size: 128, offset: 12288)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1198, line: 76, size: 128, elements: !2130)
!2130 = !{!2131, !2136, !2137}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2129, file: !1198, line: 85, baseType: !2132, size: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2133, line: 7, size: 64, elements: !2134)
!2133 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2134 = !{!2135}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2132, file: !2133, line: 12, baseType: !1413, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2129, file: !1198, line: 88, baseType: !495, size: 8, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2129, file: !1198, line: 95, baseType: !495, size: 8, offset: 72)
!2138 = !DIDerivedType(tag: DW_TAG_member, scope: !1264, file: !908, line: 1184, baseType: !2139, size: 128, offset: 12416)
!2139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1264, file: !908, line: 1184, size: 128, elements: !2140)
!2140 = !{!2141, !2142}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2139, file: !908, line: 1185, baseType: !1276, size: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2139, file: !908, line: 1186, baseType: !370, size: 128, align: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1264, file: !908, line: 1190, baseType: !906, size: 64, offset: 12544)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1264, file: !908, line: 1192, baseType: !2145, size: 128, offset: 12608)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1198, line: 64, size: 128, elements: !2146)
!2146 = !{!2147, !2148, !2149}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2145, file: !1198, line: 65, baseType: !728, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2145, file: !1198, line: 67, baseType: !422, size: 32, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2145, file: !1198, line: 68, baseType: !422, size: 32, offset: 96)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1264, file: !908, line: 1206, baseType: !206, size: 32, offset: 12736)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1264, file: !908, line: 1207, baseType: !206, size: 32, offset: 12768)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1264, file: !908, line: 1209, baseType: !329, size: 64, offset: 12800)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1264, file: !908, line: 1219, baseType: !426, size: 64, offset: 12864)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1264, file: !908, line: 1220, baseType: !426, size: 64, offset: 12928)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1264, file: !908, line: 1317, baseType: !206, size: 32, offset: 12992)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1264, file: !908, line: 1319, baseType: !1263, size: 64, offset: 13056)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1264, file: !908, line: 1322, baseType: !2158, size: 64, offset: 13120)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2160, line: 56, size: 512, elements: !2161)
!2160 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2161 = !{!2162, !2163, !2164, !2165, !2166, !2167, !2168, !2170}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2159, file: !2160, line: 57, baseType: !2158, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2159, file: !2160, line: 58, baseType: !194, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2159, file: !2160, line: 59, baseType: !329, size: 64, offset: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2159, file: !2160, line: 60, baseType: !329, size: 64, offset: 192)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2159, file: !2160, line: 61, baseType: !827, size: 64, offset: 256)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2159, file: !2160, line: 62, baseType: !7, size: 32, offset: 320)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2159, file: !2160, line: 63, baseType: !2169, size: 64, offset: 384)
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !193, line: 153, baseType: !426)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2159, file: !2160, line: 64, baseType: !2171, size: 64, offset: 448)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1264, file: !908, line: 1326, baseType: !1276, size: 32, offset: 13184)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1264, file: !908, line: 1342, baseType: !194, size: 64, offset: 13248)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1264, file: !908, line: 1343, baseType: !427, size: 64, offset: 13312)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1264, file: !908, line: 1344, baseType: !426, size: 64, offset: 13376)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1264, file: !908, line: 1345, baseType: !427, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1264, file: !908, line: 1346, baseType: !427, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1264, file: !908, line: 1347, baseType: !427, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1264, file: !908, line: 1348, baseType: !370, size: 128, align: 64, offset: 13504)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1264, file: !908, line: 1358, baseType: !2182, size: 34816, offset: 13824)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2183, line: 485, size: 34816, elements: !2184)
!2183 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2184 = !{!2185, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2214, !2215, !2216, !2217, !2218, !2219, !2222, !2223, !2224}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2182, file: !2183, line: 487, baseType: !2186, size: 192)
!2186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2187, size: 192, elements: !281)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2188, line: 16, size: 64, elements: !2189)
!2188 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2189 = !{!2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2187, file: !2188, line: 17, baseType: !866, size: 16)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2187, file: !2188, line: 18, baseType: !866, size: 16, offset: 16)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2187, file: !2188, line: 19, baseType: !866, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2187, file: !2188, line: 19, baseType: !866, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2187, file: !2188, line: 19, baseType: !866, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2187, file: !2188, line: 19, baseType: !866, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2187, file: !2188, line: 19, baseType: !866, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2187, file: !2188, line: 20, baseType: !866, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2187, file: !2188, line: 20, baseType: !866, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2187, file: !2188, line: 20, baseType: !866, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2187, file: !2188, line: 20, baseType: !866, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2187, file: !2188, line: 20, baseType: !866, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2187, file: !2188, line: 20, baseType: !866, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2182, file: !2183, line: 491, baseType: !329, size: 64, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2182, file: !2183, line: 495, baseType: !321, size: 16, offset: 256)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2182, file: !2183, line: 496, baseType: !321, size: 16, offset: 272)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2182, file: !2183, line: 497, baseType: !321, size: 16, offset: 288)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2182, file: !2183, line: 498, baseType: !321, size: 16, offset: 304)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2182, file: !2183, line: 502, baseType: !329, size: 64, offset: 320)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2182, file: !2183, line: 503, baseType: !329, size: 64, offset: 384)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2182, file: !2183, line: 514, baseType: !2211, size: 256, offset: 448)
!2211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2212, size: 256, elements: !1202)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2183, line: 483, flags: DIFlagFwdDecl)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2182, file: !2183, line: 516, baseType: !329, size: 64, offset: 704)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2182, file: !2183, line: 518, baseType: !329, size: 64, offset: 768)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2182, file: !2183, line: 520, baseType: !329, size: 64, offset: 832)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2182, file: !2183, line: 521, baseType: !329, size: 64, offset: 896)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2182, file: !2183, line: 522, baseType: !329, size: 64, offset: 960)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2182, file: !2183, line: 528, baseType: !2220, size: 64, offset: 1024)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2183, line: 10, flags: DIFlagFwdDecl)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2182, file: !2183, line: 535, baseType: !329, size: 64, offset: 1088)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2182, file: !2183, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2182, file: !2183, line: 540, baseType: !2225, size: 33280, offset: 1536)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2226, line: 317, size: 33280, elements: !2227)
!2226 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2227 = !{!2228, !2229, !2230}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2225, file: !2226, line: 330, baseType: !7, size: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2225, file: !2226, line: 337, baseType: !329, size: 64, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2225, file: !2226, line: 348, baseType: !2231, size: 32768, offset: 512)
!2231 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2226, line: 304, size: 32768, elements: !2232)
!2232 = !{!2233, !2248, !2287, !2337, !2350}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2231, file: !2226, line: 305, baseType: !2234, size: 896)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2226, line: 12, size: 896, elements: !2235)
!2235 = !{!2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2247}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2234, file: !2226, line: 13, baseType: !420, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2234, file: !2226, line: 14, baseType: !420, size: 32, offset: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2234, file: !2226, line: 15, baseType: !420, size: 32, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2234, file: !2226, line: 16, baseType: !420, size: 32, offset: 96)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2234, file: !2226, line: 17, baseType: !420, size: 32, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2234, file: !2226, line: 18, baseType: !420, size: 32, offset: 160)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2234, file: !2226, line: 19, baseType: !420, size: 32, offset: 192)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2234, file: !2226, line: 22, baseType: !2244, size: 640, offset: 224)
!2244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 640, elements: !2245)
!2245 = !{!2246}
!2246 = !DISubrange(count: 20)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2234, file: !2226, line: 25, baseType: !420, size: 32, offset: 864)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2231, file: !2226, line: 306, baseType: !2249, size: 4096, align: 128)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2226, line: 34, size: 4096, align: 128, elements: !2250)
!2250 = !{!2251, !2252, !2253, !2254, !2255, !2270, !2271, !2272, !2276, !2278, !2282}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2249, file: !2226, line: 35, baseType: !866, size: 16)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2249, file: !2226, line: 36, baseType: !866, size: 16, offset: 16)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2249, file: !2226, line: 37, baseType: !866, size: 16, offset: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2249, file: !2226, line: 38, baseType: !866, size: 16, offset: 48)
!2255 = !DIDerivedType(tag: DW_TAG_member, scope: !2249, file: !2226, line: 39, baseType: !2256, size: 128, offset: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2249, file: !2226, line: 39, size: 128, elements: !2257)
!2257 = !{!2258, !2263}
!2258 = !DIDerivedType(tag: DW_TAG_member, scope: !2256, file: !2226, line: 40, baseType: !2259, size: 128)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2256, file: !2226, line: 40, size: 128, elements: !2260)
!2260 = !{!2261, !2262}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2259, file: !2226, line: 41, baseType: !426, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2259, file: !2226, line: 42, baseType: !426, size: 64, offset: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, scope: !2256, file: !2226, line: 44, baseType: !2264, size: 128)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2256, file: !2226, line: 44, size: 128, elements: !2265)
!2265 = !{!2266, !2267, !2268, !2269}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2264, file: !2226, line: 45, baseType: !420, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2264, file: !2226, line: 46, baseType: !420, size: 32, offset: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2264, file: !2226, line: 47, baseType: !420, size: 32, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2264, file: !2226, line: 48, baseType: !420, size: 32, offset: 96)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2249, file: !2226, line: 51, baseType: !420, size: 32, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2249, file: !2226, line: 52, baseType: !420, size: 32, offset: 224)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2249, file: !2226, line: 55, baseType: !2273, size: 1024, offset: 256)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 1024, elements: !2274)
!2274 = !{!2275}
!2275 = !DISubrange(count: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2249, file: !2226, line: 58, baseType: !2277, size: 2048, offset: 1280)
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 2048, elements: !285)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2249, file: !2226, line: 60, baseType: !2279, size: 384, offset: 3328)
!2279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 384, elements: !2280)
!2280 = !{!2281}
!2281 = !DISubrange(count: 12)
!2282 = !DIDerivedType(tag: DW_TAG_member, scope: !2249, file: !2226, line: 62, baseType: !2283, size: 384, offset: 3712)
!2283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2249, file: !2226, line: 62, size: 384, elements: !2284)
!2284 = !{!2285, !2286}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2283, file: !2226, line: 63, baseType: !2279, size: 384)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2283, file: !2226, line: 64, baseType: !2279, size: 384)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2231, file: !2226, line: 307, baseType: !2288, size: 1088)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2226, line: 79, size: 1088, elements: !2289)
!2289 = !{!2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2336}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2288, file: !2226, line: 80, baseType: !420, size: 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2288, file: !2226, line: 81, baseType: !420, size: 32, offset: 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2288, file: !2226, line: 82, baseType: !420, size: 32, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2288, file: !2226, line: 83, baseType: !420, size: 32, offset: 96)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2288, file: !2226, line: 84, baseType: !420, size: 32, offset: 128)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2288, file: !2226, line: 85, baseType: !420, size: 32, offset: 160)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2288, file: !2226, line: 86, baseType: !420, size: 32, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2288, file: !2226, line: 88, baseType: !2244, size: 640, offset: 224)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2288, file: !2226, line: 89, baseType: !1398, size: 8, offset: 864)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2288, file: !2226, line: 90, baseType: !1398, size: 8, offset: 872)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2288, file: !2226, line: 91, baseType: !1398, size: 8, offset: 880)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2288, file: !2226, line: 92, baseType: !1398, size: 8, offset: 888)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2288, file: !2226, line: 93, baseType: !1398, size: 8, offset: 896)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2288, file: !2226, line: 94, baseType: !1398, size: 8, offset: 904)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2288, file: !2226, line: 95, baseType: !2305, size: 64, offset: 960)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2307, line: 11, size: 128, elements: !2308)
!2307 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2308 = !{!2309, !2310}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2306, file: !2307, line: 12, baseType: !149, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2306, file: !2307, line: 13, baseType: !2311, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2313, line: 56, size: 1344, elements: !2314)
!2313 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2314 = !{!2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2312, file: !2313, line: 61, baseType: !329, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2312, file: !2313, line: 62, baseType: !329, size: 64, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2312, file: !2313, line: 63, baseType: !329, size: 64, offset: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2312, file: !2313, line: 64, baseType: !329, size: 64, offset: 192)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2312, file: !2313, line: 65, baseType: !329, size: 64, offset: 256)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2312, file: !2313, line: 66, baseType: !329, size: 64, offset: 320)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2312, file: !2313, line: 68, baseType: !329, size: 64, offset: 384)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2312, file: !2313, line: 69, baseType: !329, size: 64, offset: 448)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2312, file: !2313, line: 70, baseType: !329, size: 64, offset: 512)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2312, file: !2313, line: 71, baseType: !329, size: 64, offset: 576)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2312, file: !2313, line: 72, baseType: !329, size: 64, offset: 640)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2312, file: !2313, line: 73, baseType: !329, size: 64, offset: 704)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2312, file: !2313, line: 74, baseType: !329, size: 64, offset: 768)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2312, file: !2313, line: 75, baseType: !329, size: 64, offset: 832)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2312, file: !2313, line: 76, baseType: !329, size: 64, offset: 896)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2312, file: !2313, line: 81, baseType: !329, size: 64, offset: 960)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2312, file: !2313, line: 83, baseType: !329, size: 64, offset: 1024)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2312, file: !2313, line: 84, baseType: !329, size: 64, offset: 1088)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2312, file: !2313, line: 85, baseType: !329, size: 64, offset: 1152)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2312, file: !2313, line: 86, baseType: !329, size: 64, offset: 1216)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2312, file: !2313, line: 87, baseType: !329, size: 64, offset: 1280)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2288, file: !2226, line: 96, baseType: !420, size: 32, offset: 1024)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2231, file: !2226, line: 308, baseType: !2338, size: 4608, align: 512)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2226, line: 289, size: 4608, align: 512, elements: !2339)
!2339 = !{!2340, !2341, !2348}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2338, file: !2226, line: 290, baseType: !2249, size: 4096, align: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2338, file: !2226, line: 291, baseType: !2342, size: 512, offset: 4096)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2226, line: 268, size: 512, elements: !2343)
!2343 = !{!2344, !2345, !2346}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2342, file: !2226, line: 269, baseType: !426, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2342, file: !2226, line: 270, baseType: !426, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2342, file: !2226, line: 271, baseType: !2347, size: 384, offset: 128)
!2347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 384, elements: !1671)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2338, file: !2226, line: 292, baseType: !2349, offset: 4608)
!2349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1398, elements: !1769)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2231, file: !2226, line: 309, baseType: !2351, size: 32768)
!2351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1398, size: 32768, elements: !2352)
!2352 = !{!2353}
!2353 = !DISubrange(count: 4096)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1260, file: !730, line: 378, baseType: !2355, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1256, file: !730, line: 384, baseType: !1548, size: 192, offset: 192)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1025, file: !730, line: 500, baseType: !239, offset: 6656)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1025, file: !730, line: 501, baseType: !2359, size: 64, offset: 6656)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !730, line: 387, flags: DIFlagFwdDecl)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1025, file: !730, line: 516, baseType: !1759, size: 64, offset: 6720)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1025, file: !730, line: 519, baseType: !357, size: 64, offset: 6784)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1025, file: !730, line: 521, baseType: !2364, size: 64, offset: 6848)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !730, line: 521, flags: DIFlagFwdDecl)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1025, file: !730, line: 545, baseType: !754, size: 32, offset: 6912)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1025, file: !730, line: 548, baseType: !495, size: 8, offset: 6944)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1025, file: !730, line: 550, baseType: !2369, offset: 6952)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2370, line: 142, elements: !253)
!2370 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1025, file: !730, line: 554, baseType: !2004, size: 256, offset: 6976)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1025, file: !730, line: 557, baseType: !420, size: 32, offset: 7232)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1022, file: !730, line: 565, baseType: !2374, offset: 7296)
!2374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, elements: !2375)
!2375 = !{!2376}
!2376 = !DISubrange(count: -1)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1018, file: !730, line: 151, baseType: !754, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1011, file: !730, line: 156, baseType: !239, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, scope: !734, file: !730, line: 159, baseType: !2380, size: 128)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !734, file: !730, line: 159, size: 128, elements: !2381)
!2381 = !{!2382, !2446}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2380, file: !730, line: 161, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2385)
!2385 = !{!2386, !2396, !2417, !2418, !2419, !2420, !2421, !2433, !2434, !2435}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2384, file: !31, line: 111, baseType: !2387, size: 384)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2388)
!2388 = !{!2389, !2391, !2392, !2393, !2394, !2395}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2387, file: !31, line: 20, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2387, file: !31, line: 21, baseType: !2390, size: 64, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2387, file: !31, line: 22, baseType: !2390, size: 64, offset: 128)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2387, file: !31, line: 23, baseType: !329, size: 64, offset: 192)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2387, file: !31, line: 24, baseType: !329, size: 64, offset: 256)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2387, file: !31, line: 25, baseType: !329, size: 64, offset: 320)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2384, file: !31, line: 112, baseType: !2397, size: 64, offset: 384)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2399, line: 105, size: 128, elements: !2400)
!2399 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2400 = !{!2401, !2402}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2398, file: !2399, line: 110, baseType: !329, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2398, file: !2399, line: 118, baseType: !2403, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2399, line: 95, size: 448, elements: !2405)
!2405 = !{!2406, !2407, !2412, !2413, !2414, !2415, !2416}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2404, file: !2399, line: 96, baseType: !778, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2404, file: !2399, line: 97, baseType: !2408, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2399, line: 60, baseType: !2410)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{null, !2397}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2404, file: !2399, line: 98, baseType: !2408, size: 64, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2404, file: !2399, line: 99, baseType: !495, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2404, file: !2399, line: 100, baseType: !495, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2404, file: !2399, line: 101, baseType: !370, size: 128, align: 64, offset: 256)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2404, file: !2399, line: 102, baseType: !2397, size: 64, offset: 384)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2384, file: !31, line: 113, baseType: !2398, size: 128, offset: 448)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2384, file: !31, line: 114, baseType: !1548, size: 192, offset: 576)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2384, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2384, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2384, file: !31, line: 117, baseType: !2422, size: 64, offset: 832)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2424)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2425)
!2425 = !{!2426, !2427, !2431, !2432}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2424, file: !31, line: 73, baseType: !847, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2424, file: !31, line: 78, baseType: !2428, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{null, !2383}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2424, file: !31, line: 83, baseType: !2428, size: 64, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2424, file: !31, line: 89, baseType: !1074, size: 64, offset: 192)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2384, file: !31, line: 118, baseType: !194, size: 64, offset: 896)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2384, file: !31, line: 119, baseType: !206, size: 32, offset: 960)
!2435 = !DIDerivedType(tag: DW_TAG_member, scope: !2384, file: !31, line: 120, baseType: !2436, size: 128, offset: 1024)
!2436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2384, file: !31, line: 120, size: 128, elements: !2437)
!2437 = !{!2438, !2444}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2436, file: !31, line: 121, baseType: !2439, size: 128)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2440, line: 6, size: 128, elements: !2441)
!2440 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2441 = !{!2442, !2443}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2439, file: !2440, line: 7, baseType: !426, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2439, file: !2440, line: 8, baseType: !426, size: 64, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2436, file: !31, line: 122, baseType: !2445)
!2445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2439, elements: !1769)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2380, file: !730, line: 162, baseType: !194, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !734, file: !730, line: 176, baseType: !370, size: 128, align: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !730, line: 179, baseType: !2449, size: 32, offset: 384)
!2449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !729, file: !730, line: 179, size: 32, elements: !2450)
!2450 = !{!2451, !2452, !2453, !2454}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2449, file: !730, line: 184, baseType: !754, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2449, file: !730, line: 192, baseType: !7, size: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2449, file: !730, line: 194, baseType: !7, size: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2449, file: !730, line: 195, baseType: !206, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !729, file: !730, line: 199, baseType: !754, size: 32, offset: 416)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !664, file: !44, line: 1964, baseType: !2457, size: 64, offset: 1344)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!149, !604, !2460}
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2462, line: 12, size: 256, elements: !2463)
!2462 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2463 = !{!2464, !2465, !2466, !2467, !2468}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2461, file: !2462, line: 13, baseType: !192, size: 32)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2461, file: !2462, line: 16, baseType: !206, size: 32, offset: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2461, file: !2462, line: 23, baseType: !329, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2461, file: !2462, line: 30, baseType: !329, size: 64, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2461, file: !2462, line: 33, baseType: !2469, size: 64, offset: 192)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !730, line: 27, flags: DIFlagFwdDecl)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !664, file: !44, line: 1966, baseType: !2457, size: 64, offset: 1408)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !605, file: !44, line: 1424, baseType: !2473, size: 64, offset: 448)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2475)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2476)
!2476 = !{!2477, !2523, !2527, !2531, !2532, !2533, !2534, !2535, !2540, !2545, !2549}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2475, file: !38, line: 323, baseType: !2478, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!206, !2481}
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2483)
!2483 = !{!2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2508, !2509, !2510}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2482, file: !38, line: 295, baseType: !646, size: 128)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2482, file: !38, line: 296, baseType: !211, size: 128, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2482, file: !38, line: 297, baseType: !211, size: 128, offset: 256)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2482, file: !38, line: 298, baseType: !211, size: 128, offset: 384)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2482, file: !38, line: 299, baseType: !1220, size: 192, offset: 512)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2482, file: !38, line: 300, baseType: !239, offset: 704)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2482, file: !38, line: 301, baseType: !754, size: 32, offset: 704)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2482, file: !38, line: 302, baseType: !604, size: 64, offset: 768)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2482, file: !38, line: 303, baseType: !2493, size: 64, offset: 832)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2494)
!2494 = !{!2495, !2507}
!2495 = !DIDerivedType(tag: DW_TAG_member, scope: !2493, file: !38, line: 69, baseType: !2496, size: 32)
!2496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2493, file: !38, line: 69, size: 32, elements: !2497)
!2497 = !{!2498, !2499, !2500}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2496, file: !38, line: 70, baseType: !440, size: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2496, file: !38, line: 71, baseType: !448, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2496, file: !38, line: 72, baseType: !2501, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2502, line: 24, baseType: !2503)
!2502 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2502, line: 22, size: 32, elements: !2504)
!2504 = !{!2505}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2503, file: !2502, line: 23, baseType: !2506, size: 32)
!2506 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2502, line: 20, baseType: !446)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2493, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2482, file: !38, line: 304, baseType: !536, size: 64, offset: 896)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2482, file: !38, line: 305, baseType: !329, size: 64, offset: 960)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2482, file: !38, line: 306, baseType: !2511, size: 576, offset: 1024)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2512)
!2512 = !{!2513, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2511, file: !38, line: 206, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !538)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2511, file: !38, line: 207, baseType: !2514, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2511, file: !38, line: 208, baseType: !2514, size: 64, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2511, file: !38, line: 209, baseType: !2514, size: 64, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2511, file: !38, line: 210, baseType: !2514, size: 64, offset: 256)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2511, file: !38, line: 211, baseType: !2514, size: 64, offset: 320)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2511, file: !38, line: 212, baseType: !2514, size: 64, offset: 384)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2511, file: !38, line: 213, baseType: !544, size: 64, offset: 448)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2511, file: !38, line: 214, baseType: !544, size: 64, offset: 512)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2475, file: !38, line: 324, baseType: !2524, size: 64, offset: 64)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!2481, !604, !206}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2475, file: !38, line: 325, baseType: !2528, size: 64, offset: 128)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{null, !2481}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2475, file: !38, line: 326, baseType: !2478, size: 64, offset: 192)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2475, file: !38, line: 327, baseType: !2478, size: 64, offset: 256)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2475, file: !38, line: 328, baseType: !2478, size: 64, offset: 320)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2475, file: !38, line: 329, baseType: !692, size: 64, offset: 384)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2475, file: !38, line: 332, baseType: !2536, size: 64, offset: 448)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!2539, !434}
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2475, file: !38, line: 333, baseType: !2541, size: 64, offset: 512)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!206, !434, !2544}
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2475, file: !38, line: 335, baseType: !2546, size: 64, offset: 576)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!206, !434, !2539}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2475, file: !38, line: 337, baseType: !2550, size: 64, offset: 640)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!206, !604, !2553}
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !605, file: !44, line: 1425, baseType: !2555, size: 64, offset: 512)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2557)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2558)
!2558 = !{!2559, !2563, !2564, !2568, !2569, !2570, !2585, !2608, !2612, !2613, !2636}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2557, file: !38, line: 429, baseType: !2560, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!206, !604, !206, !206, !554}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2557, file: !38, line: 430, baseType: !692, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2557, file: !38, line: 431, baseType: !2565, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!206, !604, !7}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2557, file: !38, line: 432, baseType: !2565, size: 64, offset: 192)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2557, file: !38, line: 433, baseType: !692, size: 64, offset: 256)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2557, file: !38, line: 434, baseType: !2571, size: 64, offset: 320)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!206, !604, !206, !2574}
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2576)
!2576 = !{!2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2575, file: !38, line: 416, baseType: !206, size: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2575, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2575, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2575, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2575, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2575, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2575, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2575, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2557, file: !38, line: 435, baseType: !2586, size: 64, offset: 384)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!206, !604, !2493, !2589}
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2591)
!2591 = !{!2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2590, file: !38, line: 344, baseType: !206, size: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2590, file: !38, line: 345, baseType: !426, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2590, file: !38, line: 346, baseType: !426, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2590, file: !38, line: 347, baseType: !426, size: 64, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2590, file: !38, line: 348, baseType: !426, size: 64, offset: 256)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2590, file: !38, line: 349, baseType: !426, size: 64, offset: 320)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2590, file: !38, line: 350, baseType: !426, size: 64, offset: 384)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2590, file: !38, line: 351, baseType: !784, size: 64, offset: 448)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2590, file: !38, line: 353, baseType: !784, size: 64, offset: 512)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2590, file: !38, line: 354, baseType: !206, size: 32, offset: 576)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2590, file: !38, line: 355, baseType: !206, size: 32, offset: 608)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2590, file: !38, line: 356, baseType: !426, size: 64, offset: 640)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2590, file: !38, line: 357, baseType: !426, size: 64, offset: 704)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2590, file: !38, line: 358, baseType: !426, size: 64, offset: 768)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2590, file: !38, line: 359, baseType: !784, size: 64, offset: 832)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2590, file: !38, line: 360, baseType: !206, size: 32, offset: 896)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2557, file: !38, line: 436, baseType: !2609, size: 64, offset: 448)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!206, !604, !2553, !2589}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2557, file: !38, line: 438, baseType: !2586, size: 64, offset: 512)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2557, file: !38, line: 439, baseType: !2614, size: 64, offset: 576)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!206, !604, !2617}
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2619)
!2619 = !{!2620, !2621}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2618, file: !38, line: 410, baseType: !7, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2618, file: !38, line: 411, baseType: !2622, size: 1344, offset: 64)
!2622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2623, size: 1344, elements: !281)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2624)
!2624 = !{!2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2635}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2623, file: !38, line: 396, baseType: !7, size: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2623, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2623, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2623, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2623, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2623, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2623, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2623, file: !38, line: 404, baseType: !428, size: 64, offset: 256)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2623, file: !38, line: 405, baseType: !2634, size: 64, offset: 320)
!2634 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !193, line: 126, baseType: !426)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2623, file: !38, line: 406, baseType: !2634, size: 64, offset: 384)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2557, file: !38, line: 440, baseType: !2565, size: 64, offset: 640)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !605, file: !44, line: 1426, baseType: !2638, size: 64, offset: 576)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2640)
!2640 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !605, file: !44, line: 1427, baseType: !329, size: 64, offset: 640)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !605, file: !44, line: 1428, baseType: !329, size: 64, offset: 704)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !605, file: !44, line: 1429, baseType: !329, size: 64, offset: 768)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !605, file: !44, line: 1430, baseType: !387, size: 64, offset: 832)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !605, file: !44, line: 1431, baseType: !774, size: 256, offset: 896)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !605, file: !44, line: 1432, baseType: !206, size: 32, offset: 1152)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !605, file: !44, line: 1433, baseType: !754, size: 32, offset: 1184)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !605, file: !44, line: 1437, baseType: !2649, size: 64, offset: 1216)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2652)
!2652 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !605, file: !44, line: 1449, baseType: !2654, size: 64, offset: 1280)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !403, line: 34, size: 64, elements: !2655)
!2655 = !{!2656}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2654, file: !403, line: 35, baseType: !406, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !605, file: !44, line: 1450, baseType: !211, size: 128, offset: 1344)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !605, file: !44, line: 1451, baseType: !2659, size: 64, offset: 1472)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !605, file: !44, line: 1452, baseType: !1970, size: 64, offset: 1536)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !605, file: !44, line: 1453, baseType: !2663, size: 64, offset: 1600)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !605, file: !44, line: 1454, baseType: !646, size: 128, offset: 1664)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !605, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !605, file: !44, line: 1456, baseType: !2668, size: 2432, offset: 1856)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2669)
!2669 = !{!2670, !2671, !2672, !2674, !2706}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2668, file: !38, line: 519, baseType: !7, size: 32)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2668, file: !38, line: 520, baseType: !774, size: 256, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2668, file: !38, line: 521, baseType: !2673, size: 192, offset: 320)
!2673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 192, elements: !281)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2668, file: !38, line: 522, baseType: !2675, size: 1728, offset: 512)
!2675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2676, size: 1728, elements: !281)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2677)
!2677 = !{!2678, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2676, file: !38, line: 223, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2681)
!2681 = !{!2682, !2683, !2696, !2697}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2680, file: !38, line: 444, baseType: !206, size: 32)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2680, file: !38, line: 445, baseType: !2684, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2686)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2687)
!2687 = !{!2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2686, file: !38, line: 311, baseType: !692, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2686, file: !38, line: 312, baseType: !692, size: 64, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2686, file: !38, line: 313, baseType: !692, size: 64, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2686, file: !38, line: 314, baseType: !692, size: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2686, file: !38, line: 315, baseType: !2478, size: 64, offset: 256)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2686, file: !38, line: 316, baseType: !2478, size: 64, offset: 320)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2686, file: !38, line: 317, baseType: !2478, size: 64, offset: 384)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2686, file: !38, line: 318, baseType: !2550, size: 64, offset: 448)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2680, file: !38, line: 446, baseType: !637, size: 64, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2680, file: !38, line: 447, baseType: !2679, size: 64, offset: 192)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2676, file: !38, line: 224, baseType: !206, size: 32, offset: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2676, file: !38, line: 226, baseType: !211, size: 128, offset: 128)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2676, file: !38, line: 227, baseType: !329, size: 64, offset: 256)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2676, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2676, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2676, file: !38, line: 230, baseType: !2514, size: 64, offset: 384)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2676, file: !38, line: 231, baseType: !2514, size: 64, offset: 448)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2676, file: !38, line: 232, baseType: !194, size: 64, offset: 512)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2668, file: !38, line: 523, baseType: !2707, size: 192, offset: 2240)
!2707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2684, size: 192, elements: !281)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !605, file: !44, line: 1458, baseType: !2709, size: 2112, offset: 4288)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2710)
!2710 = !{!2711, !2712, !2713}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2709, file: !44, line: 1411, baseType: !206, size: 32)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2709, file: !44, line: 1412, baseType: !1527, size: 128, offset: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2709, file: !44, line: 1413, baseType: !2714, size: 1920, offset: 192)
!2714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2715, size: 1920, elements: !281)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2716, line: 12, size: 640, elements: !2717)
!2716 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2717 = !{!2718, !2726, !2728, !2733, !2734}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2715, file: !2716, line: 13, baseType: !2719, size: 320)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2720, line: 17, size: 320, elements: !2721)
!2720 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2721 = !{!2722, !2723, !2724, !2725}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2719, file: !2720, line: 18, baseType: !206, size: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2719, file: !2720, line: 19, baseType: !206, size: 32, offset: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2719, file: !2720, line: 20, baseType: !1527, size: 128, offset: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2719, file: !2720, line: 22, baseType: !370, size: 128, align: 64, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2715, file: !2716, line: 14, baseType: !2727, size: 64, offset: 320)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2715, file: !2716, line: 15, baseType: !2729, size: 64, offset: 384)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2730, line: 16, size: 64, elements: !2731)
!2730 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2731 = !{!2732}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2729, file: !2730, line: 17, baseType: !1263, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2715, file: !2716, line: 16, baseType: !1527, size: 128, offset: 448)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2715, file: !2716, line: 17, baseType: !754, size: 32, offset: 576)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !605, file: !44, line: 1465, baseType: !194, size: 64, offset: 6400)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !605, file: !44, line: 1468, baseType: !420, size: 32, offset: 6464)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !605, file: !44, line: 1470, baseType: !544, size: 64, offset: 6528)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !605, file: !44, line: 1471, baseType: !544, size: 64, offset: 6592)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !605, file: !44, line: 1473, baseType: !422, size: 32, offset: 6656)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !605, file: !44, line: 1474, baseType: !2741, size: 64, offset: 6720)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !605, file: !44, line: 1477, baseType: !2744, size: 256, offset: 6784)
!2744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 256, elements: !2274)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !605, file: !44, line: 1478, baseType: !2746, size: 128, offset: 7040)
!2746 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2747, line: 18, baseType: !2748)
!2747 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2747, line: 16, size: 128, elements: !2749)
!2749 = !{!2750}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2748, file: !2747, line: 17, baseType: !2751, size: 128)
!2751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1399, size: 128, elements: !1781)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !605, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !605, file: !44, line: 1481, baseType: !2754, size: 32, offset: 7200)
!2754 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !193, line: 150, baseType: !7)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !605, file: !44, line: 1487, baseType: !1220, size: 192, offset: 7232)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !605, file: !44, line: 1493, baseType: !200, size: 64, offset: 7424)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !605, file: !44, line: 1495, baseType: !2758, size: 64, offset: 7488)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2760)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !385, line: 135, size: 1024, align: 512, elements: !2761)
!2761 = !{!2762, !2766, !2767, !2774, !2780, !2784, !2788, !2792, !2793, !2797, !2801, !2806, !2810}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2760, file: !385, line: 136, baseType: !2763, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!206, !387, !7}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2760, file: !385, line: 137, baseType: !2763, size: 64, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2760, file: !385, line: 138, baseType: !2768, size: 64, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!206, !2771, !2773}
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2760, file: !385, line: 139, baseType: !2775, size: 64, offset: 192)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!206, !2771, !7, !200, !2778}
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2760, file: !385, line: 141, baseType: !2781, size: 64, offset: 256)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!206, !2771}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2760, file: !385, line: 142, baseType: !2785, size: 64, offset: 320)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!206, !387}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2760, file: !385, line: 143, baseType: !2789, size: 64, offset: 384)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{null, !387}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2760, file: !385, line: 144, baseType: !2789, size: 64, offset: 448)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2760, file: !385, line: 145, baseType: !2794, size: 64, offset: 512)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{null, !387, !434}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2760, file: !385, line: 146, baseType: !2798, size: 64, offset: 576)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!280, !387, !280, !206}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2760, file: !385, line: 147, baseType: !2802, size: 64, offset: 640)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!383, !2805}
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2760, file: !385, line: 148, baseType: !2807, size: 64, offset: 704)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!206, !554, !495}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2760, file: !385, line: 149, baseType: !2811, size: 64, offset: 768)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!387, !387, !2814}
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !605, file: !44, line: 1500, baseType: !206, size: 32, offset: 7552)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !605, file: !44, line: 1502, baseType: !2818, size: 448, offset: 7616)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2462, line: 60, size: 448, elements: !2819)
!2819 = !{!2820, !2825, !2826, !2827, !2828, !2829, !2830}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2818, file: !2462, line: 61, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!329, !2824, !2460}
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2818, file: !2462, line: 63, baseType: !2821, size: 64, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2818, file: !2462, line: 66, baseType: !149, size: 64, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2818, file: !2462, line: 67, baseType: !206, size: 32, offset: 192)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2818, file: !2462, line: 68, baseType: !7, size: 32, offset: 224)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2818, file: !2462, line: 71, baseType: !211, size: 128, offset: 256)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2818, file: !2462, line: 77, baseType: !2831, size: 64, offset: 384)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !605, file: !44, line: 1505, baseType: !778, size: 64, offset: 8064)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !605, file: !44, line: 1508, baseType: !778, size: 64, offset: 8128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !605, file: !44, line: 1511, baseType: !206, size: 32, offset: 8192)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !605, file: !44, line: 1514, baseType: !956, size: 32, offset: 8224)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !605, file: !44, line: 1517, baseType: !2837, size: 64, offset: 8256)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !148, line: 18, flags: DIFlagFwdDecl)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !605, file: !44, line: 1518, baseType: !642, size: 64, offset: 8320)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !605, file: !44, line: 1525, baseType: !1759, size: 64, offset: 8384)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !605, file: !44, line: 1532, baseType: !2842, size: 64, offset: 8448)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2843, line: 52, size: 64, elements: !2844)
!2843 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2844 = !{!2845}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2842, file: !2843, line: 53, baseType: !2846, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2843, line: 40, size: 256, elements: !2848)
!2848 = !{!2849, !2850, !2855}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2847, file: !2843, line: 42, baseType: !239)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2847, file: !2843, line: 44, baseType: !2851, size: 192)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2843, line: 28, size: 192, elements: !2852)
!2852 = !{!2853, !2854}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2851, file: !2843, line: 29, baseType: !211, size: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2851, file: !2843, line: 31, baseType: !149, size: 64, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2847, file: !2843, line: 49, baseType: !149, size: 64, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !605, file: !44, line: 1533, baseType: !2842, size: 64, offset: 8512)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !605, file: !44, line: 1534, baseType: !370, size: 128, align: 64, offset: 8576)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !605, file: !44, line: 1535, baseType: !2004, size: 256, offset: 8704)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !605, file: !44, line: 1537, baseType: !1220, size: 192, offset: 8960)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !605, file: !44, line: 1542, baseType: !206, size: 32, offset: 9152)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !605, file: !44, line: 1545, baseType: !239, offset: 9184)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !605, file: !44, line: 1546, baseType: !211, size: 128, offset: 9216)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !605, file: !44, line: 1548, baseType: !239, offset: 9344)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !605, file: !44, line: 1549, baseType: !211, size: 128, offset: 9344)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !435, file: !44, line: 624, baseType: !741, size: 64, offset: 256)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !435, file: !44, line: 631, baseType: !329, size: 64, offset: 320)
!2867 = !DIDerivedType(tag: DW_TAG_member, scope: !435, file: !44, line: 639, baseType: !2868, size: 32, offset: 384)
!2868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !435, file: !44, line: 639, size: 32, elements: !2869)
!2869 = !{!2870, !2872}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2868, file: !44, line: 640, baseType: !2871, size: 32)
!2871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2868, file: !44, line: 641, baseType: !7, size: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !435, file: !44, line: 643, baseType: !518, size: 32, offset: 416)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !435, file: !44, line: 644, baseType: !536, size: 64, offset: 448)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !435, file: !44, line: 645, baseType: !540, size: 128, offset: 512)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !435, file: !44, line: 646, baseType: !540, size: 128, offset: 640)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !435, file: !44, line: 647, baseType: !540, size: 128, offset: 768)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !435, file: !44, line: 648, baseType: !239, offset: 896)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !435, file: !44, line: 649, baseType: !321, size: 16, offset: 896)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !435, file: !44, line: 650, baseType: !1398, size: 8, offset: 912)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !435, file: !44, line: 651, baseType: !1398, size: 8, offset: 920)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !435, file: !44, line: 652, baseType: !2634, size: 64, offset: 960)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !435, file: !44, line: 659, baseType: !329, size: 64, offset: 1024)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !435, file: !44, line: 660, baseType: !774, size: 256, offset: 1088)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !435, file: !44, line: 662, baseType: !329, size: 64, offset: 1344)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !435, file: !44, line: 663, baseType: !329, size: 64, offset: 1408)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !435, file: !44, line: 665, baseType: !646, size: 128, offset: 1472)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !435, file: !44, line: 666, baseType: !211, size: 128, offset: 1600)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !435, file: !44, line: 675, baseType: !211, size: 128, offset: 1728)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !435, file: !44, line: 676, baseType: !211, size: 128, offset: 1856)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !435, file: !44, line: 677, baseType: !211, size: 128, offset: 1984)
!2892 = !DIDerivedType(tag: DW_TAG_member, scope: !435, file: !44, line: 678, baseType: !2893, size: 128, offset: 2112)
!2893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !435, file: !44, line: 678, size: 128, elements: !2894)
!2894 = !{!2895, !2896}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2893, file: !44, line: 679, baseType: !642, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2893, file: !44, line: 680, baseType: !370, size: 128, align: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !435, file: !44, line: 682, baseType: !780, size: 64, offset: 2240)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !435, file: !44, line: 683, baseType: !780, size: 64, offset: 2304)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !435, file: !44, line: 684, baseType: !754, size: 32, offset: 2368)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !435, file: !44, line: 685, baseType: !754, size: 32, offset: 2400)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !435, file: !44, line: 686, baseType: !754, size: 32, offset: 2432)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !435, file: !44, line: 688, baseType: !754, size: 32, offset: 2464)
!2903 = !DIDerivedType(tag: DW_TAG_member, scope: !435, file: !44, line: 690, baseType: !2904, size: 64, offset: 2496)
!2904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !435, file: !44, line: 690, size: 64, elements: !2905)
!2905 = !{!2906, !3129}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2904, file: !44, line: 691, baseType: !2907, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2909)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2910)
!2910 = !{!2911, !2912, !2916, !2921, !2925, !2926, !2927, !2931, !2944, !2945, !2953, !2957, !2958, !2962, !2963, !2967, !2972, !2973, !2977, !2981, !3089, !3093, !3094, !3098, !3099, !3103, !3107, !3112, !3116, !3120, !3124, !3128}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2909, file: !44, line: 1823, baseType: !637, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2909, file: !44, line: 1824, baseType: !2913, size: 64, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!536, !357, !536, !206}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2909, file: !44, line: 1825, baseType: !2917, size: 64, offset: 128)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!311, !357, !280, !326, !2920}
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2909, file: !44, line: 1826, baseType: !2922, size: 64, offset: 192)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!311, !357, !200, !326, !2920}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2909, file: !44, line: 1827, baseType: !851, size: 64, offset: 256)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2909, file: !44, line: 1828, baseType: !851, size: 64, offset: 320)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2909, file: !44, line: 1829, baseType: !2928, size: 64, offset: 384)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!206, !854, !495}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2909, file: !44, line: 1830, baseType: !2932, size: 64, offset: 448)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!206, !357, !2935}
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2937)
!2937 = !{!2938, !2943}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2936, file: !44, line: 1777, baseType: !2939, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2940)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!206, !2935, !200, !206, !536, !426, !7}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2936, file: !44, line: 1778, baseType: !536, size: 64, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2909, file: !44, line: 1831, baseType: !2932, size: 64, offset: 512)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2909, file: !44, line: 1832, baseType: !2946, size: 64, offset: 576)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!2949, !357, !2951}
!2949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2950, line: 52, baseType: !7)
!2950 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !44, line: 56, flags: DIFlagFwdDecl)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2909, file: !44, line: 1833, baseType: !2954, size: 64, offset: 640)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!149, !357, !7, !329}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2909, file: !44, line: 1834, baseType: !2954, size: 64, offset: 704)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2909, file: !44, line: 1835, baseType: !2959, size: 64, offset: 768)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!206, !357, !1028}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2909, file: !44, line: 1836, baseType: !329, size: 64, offset: 832)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2909, file: !44, line: 1837, baseType: !2964, size: 64, offset: 896)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!206, !434, !357}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2909, file: !44, line: 1838, baseType: !2968, size: 64, offset: 960)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!206, !357, !2971}
!2971 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !194)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2909, file: !44, line: 1839, baseType: !2964, size: 64, offset: 1024)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2909, file: !44, line: 1840, baseType: !2974, size: 64, offset: 1088)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!206, !357, !536, !536, !206}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2909, file: !44, line: 1841, baseType: !2978, size: 64, offset: 1152)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!206, !206, !357, !206}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2909, file: !44, line: 1842, baseType: !2982, size: 64, offset: 1216)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!206, !357, !206, !2985}
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2987)
!2987 = !{!2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3019, !3020, !3021, !3034, !3065}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2986, file: !44, line: 1063, baseType: !2985, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2986, file: !44, line: 1064, baseType: !211, size: 128, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2986, file: !44, line: 1065, baseType: !646, size: 128, offset: 192)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2986, file: !44, line: 1066, baseType: !211, size: 128, offset: 320)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2986, file: !44, line: 1069, baseType: !211, size: 128, offset: 448)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2986, file: !44, line: 1072, baseType: !2971, size: 64, offset: 576)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2986, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2986, file: !44, line: 1074, baseType: !432, size: 8, offset: 672)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2986, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2986, file: !44, line: 1076, baseType: !206, size: 32, offset: 736)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2986, file: !44, line: 1077, baseType: !1527, size: 128, offset: 768)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2986, file: !44, line: 1078, baseType: !357, size: 64, offset: 896)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2986, file: !44, line: 1079, baseType: !536, size: 64, offset: 960)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2986, file: !44, line: 1080, baseType: !536, size: 64, offset: 1024)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2986, file: !44, line: 1082, baseType: !3003, size: 64, offset: 1088)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !3005)
!3005 = !{!3006, !3014, !3015, !3016, !3017, !3018}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3004, file: !44, line: 1315, baseType: !3007)
!3007 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3008, line: 20, baseType: !3009)
!3008 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3008, line: 11, elements: !3010)
!3010 = !{!3011}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3009, file: !3008, line: 12, baseType: !3012)
!3012 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !251, line: 33, baseType: !3013)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 31, elements: !253)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3004, file: !44, line: 1316, baseType: !206, size: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3004, file: !44, line: 1317, baseType: !206, size: 32, offset: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3004, file: !44, line: 1318, baseType: !3003, size: 64, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3004, file: !44, line: 1319, baseType: !357, size: 64, offset: 128)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3004, file: !44, line: 1320, baseType: !370, size: 128, align: 64, offset: 192)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2986, file: !44, line: 1084, baseType: !329, size: 64, offset: 1152)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2986, file: !44, line: 1085, baseType: !329, size: 64, offset: 1216)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2986, file: !44, line: 1087, baseType: !3022, size: 64, offset: 1280)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3024)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3025)
!3025 = !{!3026, !3030}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3024, file: !44, line: 1012, baseType: !3027, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{null, !2985, !2985}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3024, file: !44, line: 1013, baseType: !3031, size: 64, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{null, !2985}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2986, file: !44, line: 1088, baseType: !3035, size: 64, offset: 1344)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3037)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3038)
!3038 = !{!3039, !3043, !3047, !3048, !3052, !3056, !3060, !3064}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3037, file: !44, line: 1017, baseType: !3040, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!2971, !2971}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3037, file: !44, line: 1018, baseType: !3044, size: 64, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{null, !2971}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3037, file: !44, line: 1019, baseType: !3031, size: 64, offset: 128)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3037, file: !44, line: 1020, baseType: !3049, size: 64, offset: 192)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!206, !2985, !206}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3037, file: !44, line: 1021, baseType: !3053, size: 64, offset: 256)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!495, !2985}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3037, file: !44, line: 1022, baseType: !3057, size: 64, offset: 320)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!206, !2985, !206, !214}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3037, file: !44, line: 1023, baseType: !3061, size: 64, offset: 384)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{null, !2985, !828}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3037, file: !44, line: 1024, baseType: !3053, size: 64, offset: 448)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2986, file: !44, line: 1097, baseType: !3066, size: 256, offset: 1408)
!3066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2986, file: !44, line: 1089, size: 256, elements: !3067)
!3067 = !{!3068, !3077, !3083}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3066, file: !44, line: 1090, baseType: !3069, size: 256)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3070, line: 10, size: 256, elements: !3071)
!3070 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3071 = !{!3072, !3073, !3076}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3069, file: !3070, line: 11, baseType: !420, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3069, file: !3070, line: 12, baseType: !3074, size: 64, offset: 64)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3070, line: 5, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3069, file: !3070, line: 13, baseType: !211, size: 128, offset: 128)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3066, file: !44, line: 1091, baseType: !3078, size: 64)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3070, line: 17, size: 64, elements: !3079)
!3079 = !{!3080}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3078, file: !3070, line: 18, baseType: !3081, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3070, line: 16, flags: DIFlagFwdDecl)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3066, file: !44, line: 1096, baseType: !3084, size: 192)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3066, file: !44, line: 1092, size: 192, elements: !3085)
!3085 = !{!3086, !3087, !3088}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3084, file: !44, line: 1093, baseType: !211, size: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3084, file: !44, line: 1094, baseType: !206, size: 32, offset: 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3084, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2909, file: !44, line: 1843, baseType: !3090, size: 64, offset: 1280)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!311, !357, !728, !206, !326, !2920, !206}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2909, file: !44, line: 1844, baseType: !1148, size: 64, offset: 1344)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2909, file: !44, line: 1845, baseType: !3095, size: 64, offset: 1408)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!206, !206}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2909, file: !44, line: 1846, baseType: !2982, size: 64, offset: 1472)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2909, file: !44, line: 1847, baseType: !3100, size: 64, offset: 1536)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!311, !906, !357, !2920, !326, !7}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2909, file: !44, line: 1848, baseType: !3104, size: 64, offset: 1600)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!311, !357, !2920, !906, !326, !7}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2909, file: !44, line: 1849, baseType: !3108, size: 64, offset: 1664)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!206, !357, !149, !3111, !828}
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2909, file: !44, line: 1850, baseType: !3113, size: 64, offset: 1728)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!149, !357, !206, !536, !536}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2909, file: !44, line: 1852, baseType: !3117, size: 64, offset: 1792)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{null, !718, !357}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2909, file: !44, line: 1856, baseType: !3121, size: 64, offset: 1856)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!311, !357, !536, !357, !536, !326, !7}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2909, file: !44, line: 1858, baseType: !3125, size: 64, offset: 1920)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!536, !357, !536, !357, !536, !536, !7}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2909, file: !44, line: 1861, baseType: !2974, size: 64, offset: 1984)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2904, file: !44, line: 692, baseType: !671, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !435, file: !44, line: 694, baseType: !3131, size: 64, offset: 2560)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3133)
!3133 = !{!3134, !3135, !3136, !3137}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3132, file: !44, line: 1101, baseType: !239)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3132, file: !44, line: 1102, baseType: !211, size: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3132, file: !44, line: 1103, baseType: !211, size: 128, offset: 128)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3132, file: !44, line: 1104, baseType: !211, size: 128, offset: 256)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !435, file: !44, line: 695, baseType: !742, size: 1216, align: 64, offset: 2624)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !435, file: !44, line: 696, baseType: !211, size: 128, offset: 3840)
!3140 = !DIDerivedType(tag: DW_TAG_member, scope: !435, file: !44, line: 697, baseType: !3141, size: 64, offset: 3968)
!3141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !435, file: !44, line: 697, size: 64, elements: !3142)
!3142 = !{!3143, !3144, !3145, !3148, !3149}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3141, file: !44, line: 698, baseType: !906, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3141, file: !44, line: 699, baseType: !2659, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3141, file: !44, line: 700, baseType: !3146, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3141, file: !44, line: 701, baseType: !280, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3141, file: !44, line: 702, baseType: !7, size: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !435, file: !44, line: 705, baseType: !422, size: 32, offset: 4032)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !435, file: !44, line: 708, baseType: !422, size: 32, offset: 4064)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !435, file: !44, line: 709, baseType: !2741, size: 64, offset: 4096)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !435, file: !44, line: 720, baseType: !194, size: 64, offset: 4160)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !388, file: !385, line: 98, baseType: !3155, size: 256, offset: 448)
!3155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 256, elements: !2274)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !388, file: !385, line: 101, baseType: !3157, size: 32, offset: 704)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3158, line: 25, size: 32, elements: !3159)
!3158 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3159 = !{!3160}
!3160 = !DIDerivedType(tag: DW_TAG_member, scope: !3157, file: !3158, line: 26, baseType: !3161, size: 32)
!3161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3157, file: !3158, line: 26, size: 32, elements: !3162)
!3162 = !{!3163}
!3163 = !DIDerivedType(tag: DW_TAG_member, scope: !3161, file: !3158, line: 30, baseType: !3164, size: 32)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3161, file: !3158, line: 30, size: 32, elements: !3165)
!3165 = !{!3166, !3167}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3164, file: !3158, line: 31, baseType: !239)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3164, file: !3158, line: 32, baseType: !206, size: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !388, file: !385, line: 102, baseType: !2758, size: 64, offset: 768)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !388, file: !385, line: 103, baseType: !604, size: 64, offset: 832)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !388, file: !385, line: 104, baseType: !329, size: 64, offset: 896)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !388, file: !385, line: 105, baseType: !194, size: 64, offset: 960)
!3172 = !DIDerivedType(tag: DW_TAG_member, scope: !388, file: !385, line: 107, baseType: !3173, size: 128, offset: 1024)
!3173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !388, file: !385, line: 107, size: 128, elements: !3174)
!3174 = !{!3175, !3176}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3173, file: !385, line: 108, baseType: !211, size: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3173, file: !385, line: 109, baseType: !3177, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !388, file: !385, line: 111, baseType: !211, size: 128, offset: 1152)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !388, file: !385, line: 112, baseType: !211, size: 128, offset: 1280)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !388, file: !385, line: 120, baseType: !3181, size: 128, offset: 1408)
!3181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !388, file: !385, line: 116, size: 128, elements: !3182)
!3182 = !{!3183, !3184, !3185}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3181, file: !385, line: 117, baseType: !646, size: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3181, file: !385, line: 118, baseType: !402, size: 128)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3181, file: !385, line: 119, baseType: !370, size: 128, align: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !358, file: !44, line: 922, baseType: !434, size: 64, offset: 256)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !358, file: !44, line: 923, baseType: !2907, size: 64, offset: 320)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !358, file: !44, line: 929, baseType: !239, offset: 384)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !358, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !358, file: !44, line: 931, baseType: !778, size: 64, offset: 448)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !358, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !358, file: !44, line: 933, baseType: !2754, size: 32, offset: 544)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !358, file: !44, line: 934, baseType: !1220, size: 192, offset: 576)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !358, file: !44, line: 935, baseType: !536, size: 64, offset: 768)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !358, file: !44, line: 936, baseType: !3196, size: 192, offset: 832)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3197)
!3197 = !{!3198, !3199, !3200, !3201, !3202, !3203}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3196, file: !44, line: 886, baseType: !3007)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3196, file: !44, line: 887, baseType: !1517, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3196, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3196, file: !44, line: 889, baseType: !440, size: 32, offset: 96)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3196, file: !44, line: 889, baseType: !440, size: 32, offset: 128)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3196, file: !44, line: 890, baseType: !206, size: 32, offset: 160)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !358, file: !44, line: 937, baseType: !1593, size: 64, offset: 1024)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !358, file: !44, line: 938, baseType: !3206, size: 256, offset: 1088)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3207)
!3207 = !{!3208, !3209, !3210, !3211, !3212, !3213}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3206, file: !44, line: 897, baseType: !329, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3206, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3206, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3206, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3206, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3206, file: !44, line: 904, baseType: !536, size: 64, offset: 192)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !358, file: !44, line: 940, baseType: !426, size: 64, offset: 1344)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !358, file: !44, line: 945, baseType: !194, size: 64, offset: 1408)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !358, file: !44, line: 949, baseType: !211, size: 128, offset: 1472)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !358, file: !44, line: 950, baseType: !211, size: 128, offset: 1600)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !358, file: !44, line: 952, baseType: !741, size: 64, offset: 1728)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !358, file: !44, line: 953, baseType: !956, size: 32, offset: 1792)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !358, file: !44, line: 954, baseType: !956, size: 32, offset: 1824)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !348, file: !305, line: 174, baseType: !354, size: 64, offset: 320)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !348, file: !305, line: 176, baseType: !3223, size: 64, offset: 384)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!206, !357, !232, !347, !1028}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !336, file: !305, line: 90, baseType: !331, size: 64, offset: 192)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !336, file: !305, line: 91, baseType: !3228, size: 64, offset: 256)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !295, file: !227, line: 143, baseType: !3230, size: 64, offset: 256)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!3233, !232}
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3235)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3236)
!3236 = !{!3237, !3238, !3242, !3246, !3252, !3256}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3235, file: !61, line: 40, baseType: !60, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3235, file: !61, line: 41, baseType: !3239, size: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!495}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3235, file: !61, line: 42, baseType: !3243, size: 64, offset: 128)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!194}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3235, file: !61, line: 43, baseType: !3247, size: 64, offset: 192)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!2171, !3250}
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3235, file: !61, line: 44, baseType: !3253, size: 64, offset: 256)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!2171}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3235, file: !61, line: 45, baseType: !473, size: 64, offset: 320)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !295, file: !227, line: 144, baseType: !3258, size: 64, offset: 320)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!2171, !232}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !295, file: !227, line: 145, baseType: !3262, size: 64, offset: 384)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{null, !232, !3265, !3266}
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !226, file: !227, line: 70, baseType: !3268, size: 64, offset: 384)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3270, line: 123, size: 1024, elements: !3271)
!3270 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!3271 = !{!3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3400, !3401, !3402, !3403, !3404}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3269, file: !3270, line: 124, baseType: !754, size: 32)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3269, file: !3270, line: 125, baseType: !754, size: 32, offset: 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3269, file: !3270, line: 135, baseType: !3268, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3269, file: !3270, line: 136, baseType: !200, size: 64, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3269, file: !3270, line: 138, baseType: !767, size: 192, align: 64, offset: 192)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3269, file: !3270, line: 140, baseType: !2171, size: 64, offset: 384)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3269, file: !3270, line: 141, baseType: !7, size: 32, offset: 448)
!3279 = !DIDerivedType(tag: DW_TAG_member, scope: !3269, file: !3270, line: 142, baseType: !3280, size: 256, offset: 512)
!3280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3269, file: !3270, line: 142, size: 256, elements: !3281)
!3281 = !{!3282, !3328, !3332}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3280, file: !3270, line: 143, baseType: !3283, size: 192)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3270, line: 91, size: 192, elements: !3284)
!3284 = !{!3285, !3286, !3287}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3283, file: !3270, line: 92, baseType: !329, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3283, file: !3270, line: 94, baseType: !763, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3283, file: !3270, line: 100, baseType: !3288, size: 64, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3270, line: 180, size: 704, elements: !3290)
!3290 = !{!3291, !3292, !3293, !3300, !3301, !3302, !3326, !3327}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3289, file: !3270, line: 182, baseType: !3268, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3289, file: !3270, line: 183, baseType: !7, size: 32, offset: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3289, file: !3270, line: 186, baseType: !3294, size: 192, offset: 128)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3295, line: 19, size: 192, elements: !3296)
!3295 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3296 = !{!3297, !3298, !3299}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3294, file: !3295, line: 20, baseType: !746, size: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3294, file: !3295, line: 21, baseType: !7, size: 32, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3294, file: !3295, line: 22, baseType: !7, size: 32, offset: 160)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3289, file: !3270, line: 187, baseType: !420, size: 32, offset: 320)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3289, file: !3270, line: 188, baseType: !420, size: 32, offset: 352)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3289, file: !3270, line: 189, baseType: !3303, size: 64, offset: 384)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !3270, line: 168, size: 320, elements: !3305)
!3305 = !{!3306, !3310, !3314, !3318, !3322}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3304, file: !3270, line: 169, baseType: !3307, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!206, !718, !3288}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3304, file: !3270, line: 171, baseType: !3311, size: 64, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!206, !3268, !200, !320}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3304, file: !3270, line: 173, baseType: !3315, size: 64, offset: 128)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!206, !3268}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3304, file: !3270, line: 174, baseType: !3319, size: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!206, !3268, !3268, !200}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3304, file: !3270, line: 176, baseType: !3323, size: 64, offset: 256)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!206, !718, !3268, !3288}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3289, file: !3270, line: 192, baseType: !211, size: 128, offset: 448)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3289, file: !3270, line: 194, baseType: !1527, size: 128, offset: 576)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3280, file: !3270, line: 144, baseType: !3329, size: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3270, line: 103, size: 64, elements: !3330)
!3330 = !{!3331}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3329, file: !3270, line: 104, baseType: !3268, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3280, file: !3270, line: 145, baseType: !3333, size: 256)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3270, line: 107, size: 256, elements: !3334)
!3334 = !{!3335, !3395, !3398, !3399}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3333, file: !3270, line: 108, baseType: !3336, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3338)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3270, line: 217, size: 768, elements: !3339)
!3339 = !{!3340, !3360, !3364, !3368, !3372, !3376, !3380, !3384, !3385, !3386, !3387, !3391}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3338, file: !3270, line: 222, baseType: !3341, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!206, !3344}
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3270, line: 197, size: 1088, elements: !3346)
!3346 = !{!3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3345, file: !3270, line: 199, baseType: !3268, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3345, file: !3270, line: 200, baseType: !357, size: 64, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3345, file: !3270, line: 201, baseType: !718, size: 64, offset: 128)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3345, file: !3270, line: 202, baseType: !194, size: 64, offset: 192)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3345, file: !3270, line: 205, baseType: !1220, size: 192, offset: 256)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3345, file: !3270, line: 206, baseType: !1220, size: 192, offset: 448)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3345, file: !3270, line: 207, baseType: !206, size: 32, offset: 640)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3345, file: !3270, line: 208, baseType: !211, size: 128, offset: 704)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3345, file: !3270, line: 209, baseType: !280, size: 64, offset: 832)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3345, file: !3270, line: 211, baseType: !326, size: 64, offset: 896)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3345, file: !3270, line: 212, baseType: !495, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3345, file: !3270, line: 213, baseType: !495, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3345, file: !3270, line: 214, baseType: !1056, size: 64, offset: 1024)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3338, file: !3270, line: 223, baseType: !3361, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{null, !3344}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3338, file: !3270, line: 236, baseType: !3365, size: 64, offset: 128)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!206, !718, !194}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3338, file: !3270, line: 238, baseType: !3369, size: 64, offset: 192)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!194, !718, !2920}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3338, file: !3270, line: 239, baseType: !3373, size: 64, offset: 256)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!194, !718, !194, !2920}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3338, file: !3270, line: 240, baseType: !3377, size: 64, offset: 320)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{null, !718, !194}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3338, file: !3270, line: 242, baseType: !3381, size: 64, offset: 384)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!311, !3344, !280, !326, !536}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3338, file: !3270, line: 252, baseType: !326, size: 64, offset: 448)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3338, file: !3270, line: 259, baseType: !495, size: 8, offset: 512)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3338, file: !3270, line: 260, baseType: !3381, size: 64, offset: 576)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3338, file: !3270, line: 263, baseType: !3388, size: 64, offset: 640)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!2949, !3344, !2951}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3338, file: !3270, line: 266, baseType: !3392, size: 64, offset: 704)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!206, !3344, !1028}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3333, file: !3270, line: 109, baseType: !3396, size: 64, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3270, line: 31, flags: DIFlagFwdDecl)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3333, file: !3270, line: 110, baseType: !536, size: 64, offset: 128)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3333, file: !3270, line: 111, baseType: !3268, size: 64, offset: 192)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3269, file: !3270, line: 148, baseType: !194, size: 64, offset: 768)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3269, file: !3270, line: 154, baseType: !426, size: 64, offset: 832)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3269, file: !3270, line: 156, baseType: !321, size: 16, offset: 896)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3269, file: !3270, line: 157, baseType: !320, size: 16, offset: 912)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3269, file: !3270, line: 158, baseType: !3405, size: 64, offset: 960)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3270, line: 32, flags: DIFlagFwdDecl)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !226, file: !227, line: 71, baseType: !3408, size: 32, offset: 448)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3409, line: 19, size: 32, elements: !3410)
!3409 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3410 = !{!3411}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3408, file: !3409, line: 20, baseType: !1276, size: 32)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !226, file: !227, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !226, file: !227, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !226, file: !227, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !226, file: !227, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !226, file: !227, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !223, file: !73, line: 463, baseType: !3418, size: 64, offset: 512)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !223, file: !73, line: 465, baseType: !3420, size: 64, offset: 576)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !223, file: !73, line: 467, baseType: !200, size: 64, offset: 640)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !223, file: !73, line: 468, baseType: !3424, size: 64, offset: 704)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3426)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3427)
!3427 = !{!3428, !3429, !3430, !3434, !3439, !3443}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3426, file: !73, line: 88, baseType: !200, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3426, file: !73, line: 89, baseType: !333, size: 64, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3426, file: !73, line: 90, baseType: !3431, size: 64, offset: 128)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!206, !3418, !275}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3426, file: !73, line: 91, baseType: !3435, size: 64, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!280, !3418, !3438, !3265, !3266}
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3426, file: !73, line: 93, baseType: !3440, size: 64, offset: 256)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{null, !3418}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3426, file: !73, line: 95, baseType: !3444, size: 64, offset: 320)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3446)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3447)
!3447 = !{!3448, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3446, file: !80, line: 279, baseType: !3449, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!206, !3418}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3446, file: !80, line: 280, baseType: !3440, size: 64, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3446, file: !80, line: 281, baseType: !3449, size: 64, offset: 128)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3446, file: !80, line: 282, baseType: !3449, size: 64, offset: 192)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3446, file: !80, line: 283, baseType: !3449, size: 64, offset: 256)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3446, file: !80, line: 284, baseType: !3449, size: 64, offset: 320)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3446, file: !80, line: 285, baseType: !3449, size: 64, offset: 384)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3446, file: !80, line: 286, baseType: !3449, size: 64, offset: 448)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3446, file: !80, line: 287, baseType: !3449, size: 64, offset: 512)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3446, file: !80, line: 288, baseType: !3449, size: 64, offset: 576)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3446, file: !80, line: 289, baseType: !3449, size: 64, offset: 640)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3446, file: !80, line: 290, baseType: !3449, size: 64, offset: 704)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3446, file: !80, line: 291, baseType: !3449, size: 64, offset: 768)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3446, file: !80, line: 292, baseType: !3449, size: 64, offset: 832)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3446, file: !80, line: 293, baseType: !3449, size: 64, offset: 896)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3446, file: !80, line: 294, baseType: !3449, size: 64, offset: 960)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3446, file: !80, line: 295, baseType: !3449, size: 64, offset: 1024)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3446, file: !80, line: 296, baseType: !3449, size: 64, offset: 1088)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3446, file: !80, line: 297, baseType: !3449, size: 64, offset: 1152)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3446, file: !80, line: 298, baseType: !3449, size: 64, offset: 1216)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3446, file: !80, line: 299, baseType: !3449, size: 64, offset: 1280)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3446, file: !80, line: 300, baseType: !3449, size: 64, offset: 1344)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3446, file: !80, line: 301, baseType: !3449, size: 64, offset: 1408)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !223, file: !73, line: 470, baseType: !3475, size: 64, offset: 768)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3477, line: 82, size: 1408, elements: !3478)
!3477 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3478 = !{!3479, !3480, !3481, !3482, !3483, !3484, !3485, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3560, !3563, !3564}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3476, file: !3477, line: 83, baseType: !200, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3476, file: !3477, line: 84, baseType: !200, size: 64, offset: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3476, file: !3477, line: 85, baseType: !3418, size: 64, offset: 128)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3476, file: !3477, line: 86, baseType: !333, size: 64, offset: 192)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3476, file: !3477, line: 87, baseType: !333, size: 64, offset: 256)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3476, file: !3477, line: 88, baseType: !333, size: 64, offset: 320)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3476, file: !3477, line: 90, baseType: !3486, size: 64, offset: 384)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!206, !3418, !3489}
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3491)
!3491 = !{!3492, !3493, !3494, !3495, !3496, !3497, !3498, !3511, !3524, !3525, !3526, !3527, !3528, !3536, !3537, !3538, !3539, !3540, !3541}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3490, file: !67, line: 96, baseType: !200, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3490, file: !67, line: 97, baseType: !3475, size: 64, offset: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3490, file: !67, line: 99, baseType: !637, size: 64, offset: 128)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3490, file: !67, line: 100, baseType: !200, size: 64, offset: 192)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3490, file: !67, line: 102, baseType: !495, size: 8, offset: 256)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3490, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3490, file: !67, line: 105, baseType: !3499, size: 64, offset: 320)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3501)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3502, line: 262, size: 1600, elements: !3503)
!3502 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3503 = !{!3504, !3505, !3506, !3510}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3501, file: !3502, line: 263, baseType: !2744, size: 256)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3501, file: !3502, line: 264, baseType: !2744, size: 256, offset: 256)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3501, file: !3502, line: 265, baseType: !3507, size: 1024, offset: 512)
!3507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 1024, elements: !3508)
!3508 = !{!3509}
!3509 = !DISubrange(count: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3501, file: !3502, line: 266, baseType: !2171, size: 64, offset: 1536)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3490, file: !67, line: 106, baseType: !3512, size: 64, offset: 384)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3514)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3502, line: 210, size: 256, elements: !3515)
!3515 = !{!3516, !3520, !3522, !3523}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3514, file: !3502, line: 211, baseType: !3517, size: 72)
!3517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1399, size: 72, elements: !3518)
!3518 = !{!3519}
!3519 = !DISubrange(count: 9)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3514, file: !3502, line: 212, baseType: !3521, size: 64, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3502, line: 14, baseType: !329)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3514, file: !3502, line: 213, baseType: !422, size: 32, offset: 192)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3514, file: !3502, line: 214, baseType: !422, size: 32, offset: 224)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3490, file: !67, line: 108, baseType: !3449, size: 64, offset: 448)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3490, file: !67, line: 109, baseType: !3440, size: 64, offset: 512)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3490, file: !67, line: 110, baseType: !3449, size: 64, offset: 576)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3490, file: !67, line: 111, baseType: !3440, size: 64, offset: 640)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3490, file: !67, line: 112, baseType: !3529, size: 64, offset: 704)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!206, !3418, !3532}
!3532 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3533)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3534)
!3534 = !{!3535}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3533, file: !80, line: 51, baseType: !206, size: 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3490, file: !67, line: 113, baseType: !3449, size: 64, offset: 768)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3490, file: !67, line: 114, baseType: !333, size: 64, offset: 832)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3490, file: !67, line: 115, baseType: !333, size: 64, offset: 896)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3490, file: !67, line: 117, baseType: !3444, size: 64, offset: 960)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3490, file: !67, line: 118, baseType: !3440, size: 64, offset: 1024)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3490, file: !67, line: 120, baseType: !3542, size: 64, offset: 1088)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3476, file: !3477, line: 91, baseType: !3431, size: 64, offset: 448)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3476, file: !3477, line: 92, baseType: !3449, size: 64, offset: 512)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3476, file: !3477, line: 93, baseType: !3440, size: 64, offset: 576)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3476, file: !3477, line: 94, baseType: !3449, size: 64, offset: 640)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3476, file: !3477, line: 95, baseType: !3440, size: 64, offset: 704)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3476, file: !3477, line: 97, baseType: !3449, size: 64, offset: 768)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3476, file: !3477, line: 98, baseType: !3449, size: 64, offset: 832)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3476, file: !3477, line: 100, baseType: !3529, size: 64, offset: 896)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3476, file: !3477, line: 101, baseType: !3449, size: 64, offset: 960)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3476, file: !3477, line: 103, baseType: !3449, size: 64, offset: 1024)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3476, file: !3477, line: 105, baseType: !3449, size: 64, offset: 1088)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3476, file: !3477, line: 107, baseType: !3444, size: 64, offset: 1152)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3476, file: !3477, line: 109, baseType: !3557, size: 64, offset: 1216)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3559)
!3559 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3477, line: 109, flags: DIFlagFwdDecl)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3476, file: !3477, line: 111, baseType: !3561, size: 64, offset: 1280)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3477, line: 111, flags: DIFlagFwdDecl)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3476, file: !3477, line: 112, baseType: !652, offset: 1344)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3476, file: !3477, line: 114, baseType: !495, size: 8, offset: 1344)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !223, file: !73, line: 471, baseType: !3489, size: 64, offset: 832)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !223, file: !73, line: 473, baseType: !194, size: 64, offset: 896)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !223, file: !73, line: 475, baseType: !194, size: 64, offset: 960)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !223, file: !73, line: 480, baseType: !1220, size: 192, offset: 1024)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !223, file: !73, line: 484, baseType: !3570, size: 576, offset: 1216)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3571)
!3571 = !{!3572, !3573, !3574, !3575, !3576, !3577}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3570, file: !73, line: 362, baseType: !211, size: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3570, file: !73, line: 363, baseType: !211, size: 128, offset: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3570, file: !73, line: 364, baseType: !211, size: 128, offset: 256)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3570, file: !73, line: 365, baseType: !211, size: 128, offset: 384)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3570, file: !73, line: 366, baseType: !495, size: 8, offset: 512)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3570, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !223, file: !73, line: 485, baseType: !3579, size: 2304, offset: 1792)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3580)
!3580 = !{!3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3676, !3680}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3579, file: !80, line: 566, baseType: !3532, size: 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3579, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3579, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3579, file: !80, line: 569, baseType: !495, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3579, file: !80, line: 570, baseType: !495, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3579, file: !80, line: 571, baseType: !495, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3579, file: !80, line: 572, baseType: !495, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3579, file: !80, line: 573, baseType: !495, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3579, file: !80, line: 574, baseType: !495, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3579, file: !80, line: 575, baseType: !495, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3579, file: !80, line: 576, baseType: !495, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3579, file: !80, line: 577, baseType: !420, size: 32, offset: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3579, file: !80, line: 578, baseType: !239, offset: 96)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3579, file: !80, line: 580, baseType: !211, size: 128, offset: 128)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3579, file: !80, line: 581, baseType: !1548, size: 192, offset: 256)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3579, file: !80, line: 582, baseType: !3597, size: 64, offset: 448)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3599, line: 43, size: 1472, elements: !3600)
!3599 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3600 = !{!3601, !3602, !3603, !3604, !3605, !3608, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3598, file: !3599, line: 44, baseType: !200, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3598, file: !3599, line: 45, baseType: !206, size: 32, offset: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3598, file: !3599, line: 46, baseType: !211, size: 128, offset: 128)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3598, file: !3599, line: 47, baseType: !239, offset: 256)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3598, file: !3599, line: 48, baseType: !3606, size: 64, offset: 256)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3598, file: !3599, line: 49, baseType: !3609, size: 320, offset: 320)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3610, line: 11, size: 320, elements: !3611)
!3610 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3611 = !{!3612, !3613, !3614, !3619}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3609, file: !3610, line: 16, baseType: !646, size: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3609, file: !3610, line: 17, baseType: !329, size: 64, offset: 128)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3609, file: !3610, line: 18, baseType: !3615, size: 64, offset: 192)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{null, !3618}
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3609, file: !3610, line: 19, baseType: !420, size: 32, offset: 256)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3598, file: !3599, line: 50, baseType: !329, size: 64, offset: 640)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3598, file: !3599, line: 51, baseType: !1346, size: 64, offset: 704)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3598, file: !3599, line: 52, baseType: !1346, size: 64, offset: 768)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3598, file: !3599, line: 53, baseType: !1346, size: 64, offset: 832)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3598, file: !3599, line: 54, baseType: !1346, size: 64, offset: 896)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3598, file: !3599, line: 55, baseType: !1346, size: 64, offset: 960)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3598, file: !3599, line: 56, baseType: !329, size: 64, offset: 1024)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3598, file: !3599, line: 57, baseType: !329, size: 64, offset: 1088)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3598, file: !3599, line: 58, baseType: !329, size: 64, offset: 1152)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3598, file: !3599, line: 59, baseType: !329, size: 64, offset: 1216)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3598, file: !3599, line: 60, baseType: !329, size: 64, offset: 1280)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3598, file: !3599, line: 61, baseType: !3418, size: 64, offset: 1344)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3598, file: !3599, line: 62, baseType: !495, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3598, file: !3599, line: 63, baseType: !495, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3579, file: !80, line: 583, baseType: !495, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3579, file: !80, line: 584, baseType: !495, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3579, file: !80, line: 585, baseType: !495, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3579, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3579, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3579, file: !80, line: 592, baseType: !1338, size: 512, offset: 576)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3579, file: !80, line: 593, baseType: !426, size: 64, offset: 1088)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3579, file: !80, line: 594, baseType: !2004, size: 256, offset: 1152)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3579, file: !80, line: 595, baseType: !1527, size: 128, offset: 1408)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3579, file: !80, line: 596, baseType: !3606, size: 64, offset: 1536)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3579, file: !80, line: 597, baseType: !754, size: 32, offset: 1600)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3579, file: !80, line: 598, baseType: !754, size: 32, offset: 1632)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3579, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3579, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3579, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3579, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3579, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3579, file: !80, line: 604, baseType: !495, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3579, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3579, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3579, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3579, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3579, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3579, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3579, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3579, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3579, file: !80, line: 613, baseType: !206, size: 32, offset: 1792)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3579, file: !80, line: 614, baseType: !206, size: 32, offset: 1824)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3579, file: !80, line: 615, baseType: !426, size: 64, offset: 1856)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3579, file: !80, line: 616, baseType: !426, size: 64, offset: 1920)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3579, file: !80, line: 617, baseType: !426, size: 64, offset: 1984)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3579, file: !80, line: 618, baseType: !426, size: 64, offset: 2048)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3579, file: !80, line: 620, baseType: !3667, size: 64, offset: 2112)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3669)
!3669 = !{!3670, !3671, !3672, !3673}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3668, file: !80, line: 537, baseType: !239)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3668, file: !80, line: 538, baseType: !7, size: 32)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3668, file: !80, line: 540, baseType: !211, size: 128, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3668, file: !80, line: 543, baseType: !3674, size: 64, offset: 192)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3579, file: !80, line: 621, baseType: !3677, size: 64, offset: 2176)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{null, !3418, !1490}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3579, file: !80, line: 622, baseType: !3681, size: 64, offset: 2240)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !223, file: !73, line: 486, baseType: !3684, size: 64, offset: 4096)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3686)
!3686 = !{!3687, !3688, !3689, !3693, !3694, !3695}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3685, file: !80, line: 643, baseType: !3446, size: 1472)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3685, file: !80, line: 644, baseType: !3449, size: 64, offset: 1472)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3685, file: !80, line: 645, baseType: !3690, size: 64, offset: 1536)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{null, !3418, !495}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3685, file: !80, line: 646, baseType: !3449, size: 64, offset: 1600)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3685, file: !80, line: 647, baseType: !3440, size: 64, offset: 1664)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3685, file: !80, line: 648, baseType: !3440, size: 64, offset: 1728)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !223, file: !73, line: 493, baseType: !3697, size: 64, offset: 4160)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3699)
!3699 = !{!3700, !3701, !3702, !4033, !4034, !4035, !4036, !4037, !4038, !4165, !4166, !4167, !4168, !4169, !4170, !4171}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3698, file: !94, line: 163, baseType: !211, size: 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3698, file: !94, line: 164, baseType: !200, size: 64, offset: 128)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3698, file: !94, line: 165, baseType: !3703, size: 64, offset: 192)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3705)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3706)
!3706 = !{!3707, !3825, !3836, !3841, !3845, !3852, !3856, !3860, !4025, !4029}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3705, file: !94, line: 106, baseType: !3708, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!206, !3697, !3711, !93}
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3713, line: 51, size: 1344, elements: !3714)
!3713 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3714 = !{!3715, !3716, !3718, !3719, !3809, !3818, !3819, !3820, !3821, !3822, !3823, !3824}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3712, file: !3713, line: 52, baseType: !200, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3712, file: !3713, line: 53, baseType: !3717, size: 32, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3713, line: 28, baseType: !420)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3712, file: !3713, line: 54, baseType: !200, size: 64, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3712, file: !3713, line: 55, baseType: !3720, size: 192, offset: 192)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3721, line: 17, size: 192, elements: !3722)
!3721 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3722 = !{!3723, !3725, !3808}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3720, file: !3721, line: 18, baseType: !3724, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3720, file: !3721, line: 19, baseType: !3726, size: 64, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3728)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3721, line: 110, size: 1152, elements: !3729)
!3729 = !{!3730, !3734, !3738, !3744, !3750, !3754, !3758, !3763, !3767, !3768, !3772, !3776, !3780, !3791, !3792, !3793, !3794, !3804}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3728, file: !3721, line: 111, baseType: !3731, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!3724, !3724}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3728, file: !3721, line: 112, baseType: !3735, size: 64, offset: 64)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{null, !3724}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3728, file: !3721, line: 113, baseType: !3739, size: 64, offset: 128)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!495, !3742}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3720)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3728, file: !3721, line: 114, baseType: !3745, size: 64, offset: 192)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!2171, !3742, !3748}
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3728, file: !3721, line: 116, baseType: !3751, size: 64, offset: 256)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!495, !3742, !200}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3728, file: !3721, line: 118, baseType: !3755, size: 64, offset: 320)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!206, !3742, !200, !7, !194, !326}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3728, file: !3721, line: 123, baseType: !3759, size: 64, offset: 384)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!206, !3742, !200, !3762, !326}
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3728, file: !3721, line: 126, baseType: !3764, size: 64, offset: 448)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!200, !3742}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3728, file: !3721, line: 127, baseType: !3764, size: 64, offset: 512)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3728, file: !3721, line: 128, baseType: !3769, size: 64, offset: 576)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!3724, !3742}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3728, file: !3721, line: 130, baseType: !3773, size: 64, offset: 640)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!3724, !3742, !3724}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3728, file: !3721, line: 133, baseType: !3777, size: 64, offset: 704)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!3724, !3742, !200}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3728, file: !3721, line: 135, baseType: !3781, size: 64, offset: 768)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!206, !3742, !200, !200, !7, !7, !3784}
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3721, line: 43, size: 640, elements: !3786)
!3786 = !{!3787, !3788, !3789}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3785, file: !3721, line: 44, baseType: !3724, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3785, file: !3721, line: 45, baseType: !7, size: 32, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3785, file: !3721, line: 46, baseType: !3790, size: 512, offset: 128)
!3790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 512, elements: !1376)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3728, file: !3721, line: 140, baseType: !3773, size: 64, offset: 832)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3728, file: !3721, line: 143, baseType: !3769, size: 64, offset: 896)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3728, file: !3721, line: 145, baseType: !3731, size: 64, offset: 960)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3728, file: !3721, line: 146, baseType: !3795, size: 64, offset: 1024)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!206, !3742, !3798}
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3721, line: 29, size: 128, elements: !3800)
!3800 = !{!3801, !3802, !3803}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3799, file: !3721, line: 30, baseType: !7, size: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3799, file: !3721, line: 31, baseType: !7, size: 32, offset: 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3799, file: !3721, line: 32, baseType: !3742, size: 64, offset: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3728, file: !3721, line: 148, baseType: !3805, size: 64, offset: 1088)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!206, !3742, !3418}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3720, file: !3721, line: 20, baseType: !3418, size: 64, offset: 128)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3712, file: !3713, line: 57, baseType: !3810, size: 64, offset: 384)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3713, line: 31, size: 704, elements: !3812)
!3812 = !{!3813, !3814, !3815, !3816, !3817}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3811, file: !3713, line: 32, baseType: !280, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3811, file: !3713, line: 33, baseType: !206, size: 32, offset: 64)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3811, file: !3713, line: 34, baseType: !194, size: 64, offset: 128)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3811, file: !3713, line: 35, baseType: !3810, size: 64, offset: 192)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3811, file: !3713, line: 43, baseType: !348, size: 448, offset: 256)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3712, file: !3713, line: 58, baseType: !3810, size: 64, offset: 448)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3712, file: !3713, line: 59, baseType: !3711, size: 64, offset: 512)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3712, file: !3713, line: 60, baseType: !3711, size: 64, offset: 576)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3712, file: !3713, line: 61, baseType: !3711, size: 64, offset: 640)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3712, file: !3713, line: 63, baseType: !226, size: 512, offset: 704)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3712, file: !3713, line: 65, baseType: !329, size: 64, offset: 1216)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3712, file: !3713, line: 66, baseType: !194, size: 64, offset: 1280)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3705, file: !94, line: 108, baseType: !3826, size: 64, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!206, !3697, !3829, !93}
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3831)
!3831 = !{!3832, !3833, !3834}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3830, file: !94, line: 64, baseType: !3724, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3830, file: !94, line: 65, baseType: !206, size: 32, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3830, file: !94, line: 66, baseType: !3835, size: 512, offset: 96)
!3835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 512, elements: !1781)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3705, file: !94, line: 110, baseType: !3837, size: 64, offset: 128)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!206, !3697, !7, !3840}
!3840 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !193, line: 164, baseType: !329)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3705, file: !94, line: 111, baseType: !3842, size: 64, offset: 192)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{null, !3697, !7}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3705, file: !94, line: 112, baseType: !3846, size: 64, offset: 256)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!206, !3697, !3711, !3849, !7, !3851, !2727}
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3705, file: !94, line: 117, baseType: !3853, size: 64, offset: 320)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!206, !3697, !7, !7, !194}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3705, file: !94, line: 119, baseType: !3857, size: 64, offset: 384)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{null, !3697, !7, !7}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3705, file: !94, line: 121, baseType: !3861, size: 64, offset: 448)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!206, !3697, !3864, !495}
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !115, line: 175, size: 448, elements: !3866)
!3866 = !{!3867, !3868, !3869, !3870, !3943, !4022, !4023, !4024}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3865, file: !115, line: 176, baseType: !420, size: 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3865, file: !115, line: 177, baseType: !7, size: 32, offset: 32)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !3865, file: !115, line: 178, baseType: !329, size: 64, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !3865, file: !115, line: 179, baseType: !3871, size: 64, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !115, line: 145, size: 256, elements: !3873)
!3873 = !{!3874, !3875, !3876, !3940}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !3872, file: !115, line: 146, baseType: !7, size: 32)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !3872, file: !115, line: 150, baseType: !194, size: 64, offset: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !3872, file: !115, line: 151, baseType: !3877, size: 64, offset: 128)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !3879, line: 85, size: 768, elements: !3880)
!3879 = !DIFile(filename: "./include/linux/msi.h", directory: "/home/lizy2001/genbc/linux")
!3880 = !{!3881, !3882, !3883, !3884, !3885, !3891, !3897, !3901, !3902}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3878, file: !3879, line: 87, baseType: !211, size: 128)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3878, file: !3879, line: 88, baseType: !7, size: 32, offset: 128)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "nvec_used", scope: !3878, file: !3879, line: 89, baseType: !7, size: 32, offset: 160)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3878, file: !3879, line: 90, baseType: !3418, size: 64, offset: 192)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !3878, file: !3879, line: 91, baseType: !3886, size: 96, offset: 256)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !3879, line: 8, size: 96, elements: !3887)
!3887 = !{!3888, !3889, !3890}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "address_lo", scope: !3886, file: !3879, line: 9, baseType: !420, size: 32)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "address_hi", scope: !3886, file: !3879, line: 10, baseType: !420, size: 32, offset: 32)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3886, file: !3879, line: 11, baseType: !420, size: 32, offset: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !3878, file: !3879, line: 92, baseType: !3892, size: 64, offset: 384)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_desc", file: !108, line: 308, size: 128, elements: !3894)
!3894 = !{!3895, !3896}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3893, file: !108, line: 309, baseType: !1413, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !3893, file: !108, line: 310, baseType: !7, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg", scope: !3878, file: !3879, line: 97, baseType: !3898, size: 64, offset: 448)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{null, !3877, !194}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg_data", scope: !3878, file: !3879, line: 98, baseType: !194, size: 64, offset: 512)
!3902 = !DIDerivedType(tag: DW_TAG_member, scope: !3878, file: !3879, line: 100, baseType: !3903, size: 192, offset: 576)
!3903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3878, file: !3879, line: 100, size: 192, elements: !3904)
!3904 = !{!3905, !3925, !3932, !3936}
!3905 = !DIDerivedType(tag: DW_TAG_member, scope: !3903, file: !3879, line: 102, baseType: !3906, size: 192)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3903, file: !3879, line: 102, size: 192, elements: !3907)
!3907 = !{!3908, !3909, !3920}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "masked", scope: !3906, file: !3879, line: 103, baseType: !420, size: 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "msi_attrib", scope: !3906, file: !3879, line: 113, baseType: !3910, size: 64, offset: 32)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3906, file: !3879, line: 104, size: 64, elements: !3911)
!3911 = !{!3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "is_msix", scope: !3910, file: !3879, line: 105, baseType: !1398, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "multiple", scope: !3910, file: !3879, line: 106, baseType: !1398, size: 3, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "multi_cap", scope: !3910, file: !3879, line: 107, baseType: !1398, size: 3, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "maskbit", scope: !3910, file: !3879, line: 108, baseType: !1398, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "is_64", scope: !3910, file: !3879, line: 109, baseType: !1398, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual", scope: !3910, file: !3879, line: 110, baseType: !1398, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "entry_nr", scope: !3910, file: !3879, line: 111, baseType: !866, size: 16, offset: 16)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "default_irq", scope: !3910, file: !3879, line: 112, baseType: !7, size: 32, offset: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, scope: !3906, file: !3879, line: 114, baseType: !3921, size: 64, offset: 128)
!3921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3906, file: !3879, line: 114, size: 64, elements: !3922)
!3922 = !{!3923, !3924}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "mask_pos", scope: !3921, file: !3879, line: 115, baseType: !1398, size: 8)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "mask_base", scope: !3921, file: !3879, line: 116, baseType: !194, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "platform", scope: !3903, file: !3879, line: 127, baseType: !3926, size: 128)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_desc", file: !3879, line: 37, size: 128, elements: !3927)
!3927 = !{!3928, !3931}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "msi_priv_data", scope: !3926, file: !3879, line: 38, baseType: !3929, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_priv_data", file: !3879, line: 19, flags: DIFlagFwdDecl)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !3926, file: !3879, line: 39, baseType: !866, size: 16, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "fsl_mc", scope: !3903, file: !3879, line: 128, baseType: !3933, size: 16)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsl_mc_msi_desc", file: !3879, line: 46, size: 16, elements: !3934)
!3934 = !{!3935}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !3933, file: !3879, line: 47, baseType: !866, size: 16)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "inta", scope: !3903, file: !3879, line: 129, baseType: !3937, size: 16)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ti_sci_inta_msi_desc", file: !3879, line: 54, size: 16, elements: !3938)
!3938 = !{!3939}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "dev_index", scope: !3937, file: !3879, line: 55, baseType: !866, size: 16)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !3872, file: !115, line: 152, baseType: !3941, size: 64, offset: 192)
!3941 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1412, line: 756, baseType: !3942)
!3942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1413, size: 64, elements: !1417)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !3865, file: !115, line: 180, baseType: !3944, size: 64, offset: 192)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !115, line: 503, size: 2304, elements: !3946)
!3946 = !{!3947, !3948, !3949, !3953, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3970, !3974, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3991, !3992, !3993, !3998, !3999, !4003, !4007, !4011, !4015, !4019, !4020, !4021}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !3945, file: !115, line: 504, baseType: !3418, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3945, file: !115, line: 505, baseType: !200, size: 64, offset: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !3945, file: !115, line: 506, baseType: !3950, size: 64, offset: 128)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!7, !3864}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !3945, file: !115, line: 507, baseType: !3954, size: 64, offset: 192)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{null, !3864}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !3945, file: !115, line: 508, baseType: !3954, size: 64, offset: 256)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !3945, file: !115, line: 509, baseType: !3954, size: 64, offset: 320)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !3945, file: !115, line: 511, baseType: !3954, size: 64, offset: 384)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !3945, file: !115, line: 512, baseType: !3954, size: 64, offset: 448)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !3945, file: !115, line: 513, baseType: !3954, size: 64, offset: 512)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !3945, file: !115, line: 514, baseType: !3954, size: 64, offset: 576)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !3945, file: !115, line: 515, baseType: !3954, size: 64, offset: 640)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !3945, file: !115, line: 517, baseType: !3965, size: 64, offset: 704)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!206, !3864, !3968, !495}
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1413)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !3945, file: !115, line: 518, baseType: !3971, size: 64, offset: 768)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!206, !3864}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !3945, file: !115, line: 519, baseType: !3975, size: 64, offset: 832)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!206, !3864, !7}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !3945, file: !115, line: 520, baseType: !3975, size: 64, offset: 896)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !3945, file: !115, line: 522, baseType: !3954, size: 64, offset: 960)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !3945, file: !115, line: 523, baseType: !3954, size: 64, offset: 1024)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !3945, file: !115, line: 525, baseType: !3954, size: 64, offset: 1088)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !3945, file: !115, line: 526, baseType: !3954, size: 64, offset: 1152)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !3945, file: !115, line: 528, baseType: !3954, size: 64, offset: 1216)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !3945, file: !115, line: 529, baseType: !3954, size: 64, offset: 1280)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !3945, file: !115, line: 530, baseType: !3954, size: 64, offset: 1344)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !3945, file: !115, line: 532, baseType: !3954, size: 64, offset: 1408)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !3945, file: !115, line: 534, baseType: !3988, size: 64, offset: 1472)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{null, !3864, !718}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !3945, file: !115, line: 535, baseType: !3971, size: 64, offset: 1536)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !3945, file: !115, line: 536, baseType: !3954, size: 64, offset: 1600)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !3945, file: !115, line: 538, baseType: !3994, size: 64, offset: 1664)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{null, !3864, !3997}
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !3945, file: !115, line: 539, baseType: !3994, size: 64, offset: 1728)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !3945, file: !115, line: 541, baseType: !4000, size: 64, offset: 1792)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!206, !3864, !107, !938}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !3945, file: !115, line: 542, baseType: !4004, size: 64, offset: 1856)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!206, !3864, !107, !495}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !3945, file: !115, line: 544, baseType: !4008, size: 64, offset: 1920)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!206, !3864, !194}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !3945, file: !115, line: 546, baseType: !4012, size: 64, offset: 1984)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{null, !3864, !7}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !3945, file: !115, line: 547, baseType: !4016, size: 64, offset: 2048)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{null, !3864, !3968}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !3945, file: !115, line: 549, baseType: !3971, size: 64, offset: 2112)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !3945, file: !115, line: 550, baseType: !3954, size: 64, offset: 2176)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3945, file: !115, line: 552, baseType: !329, size: 64, offset: 2240)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3865, file: !115, line: 181, baseType: !3697, size: 64, offset: 256)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !3865, file: !115, line: 183, baseType: !3864, size: 64, offset: 320)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !3865, file: !115, line: 185, baseType: !194, size: 64, offset: 384)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3705, file: !94, line: 122, baseType: !4026, size: 64, offset: 512)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{null, !3697, !3864}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3705, file: !94, line: 123, baseType: !4030, size: 64, offset: 576)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!206, !3697, !3829, !3851, !2727}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3698, file: !94, line: 166, baseType: !194, size: 64, offset: 256)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3698, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3698, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3698, file: !94, line: 171, baseType: !3724, size: 64, offset: 384)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3698, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3698, file: !94, line: 173, baseType: !4039, size: 64, offset: 512)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !115, line: 1101, size: 192, elements: !4041)
!4041 = !{!4042, !4043, !4044, !4045, !4046, !4047}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !4040, file: !115, line: 1102, baseType: !7, size: 32)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !4040, file: !115, line: 1103, baseType: !7, size: 32, offset: 32)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !4040, file: !115, line: 1104, baseType: !7, size: 32, offset: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !4040, file: !115, line: 1105, baseType: !7, size: 32, offset: 96)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !4040, file: !115, line: 1106, baseType: !114, size: 32, offset: 128)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4040, file: !115, line: 1107, baseType: !4048, offset: 192)
!4048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4049, elements: !2375)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !115, line: 1051, size: 960, elements: !4051)
!4051 = !{!4052, !4053, !4054, !4058, !4062, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4050, file: !115, line: 1052, baseType: !787)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !4050, file: !115, line: 1053, baseType: !194, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !4050, file: !115, line: 1054, baseType: !4055, size: 64, offset: 64)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!420, !194}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !4050, file: !115, line: 1055, baseType: !4059, size: 64, offset: 128)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{null, !420, !194}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4050, file: !115, line: 1056, baseType: !4063, size: 64, offset: 192)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{null, !4049}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4050, file: !115, line: 1057, baseType: !4063, size: 64, offset: 256)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !4050, file: !115, line: 1058, baseType: !7, size: 32, offset: 320)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !4050, file: !115, line: 1059, baseType: !7, size: 32, offset: 352)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !4050, file: !115, line: 1060, baseType: !420, size: 32, offset: 384)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !4050, file: !115, line: 1061, baseType: !420, size: 32, offset: 416)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !4050, file: !115, line: 1062, baseType: !420, size: 32, offset: 448)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !4050, file: !115, line: 1063, baseType: !420, size: 32, offset: 480)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !4050, file: !115, line: 1064, baseType: !420, size: 32, offset: 512)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !4050, file: !115, line: 1065, baseType: !7, size: 32, offset: 544)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4050, file: !115, line: 1066, baseType: !194, size: 64, offset: 576)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !4050, file: !115, line: 1067, baseType: !329, size: 64, offset: 640)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4050, file: !115, line: 1068, baseType: !329, size: 64, offset: 704)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4050, file: !115, line: 1069, baseType: !3697, size: 64, offset: 768)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4050, file: !115, line: 1070, baseType: !211, size: 128, offset: 832)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !4050, file: !115, line: 1071, baseType: !4081, offset: 960)
!4081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4082, elements: !2375)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !115, line: 1009, size: 2944, elements: !4083)
!4083 = !{!4084, !4085, !4095, !4162, !4163, !4164}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !4082, file: !115, line: 1010, baseType: !3945, size: 2304)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4082, file: !115, line: 1011, baseType: !4086, size: 448, offset: 2304)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !115, line: 986, size: 448, elements: !4087)
!4087 = !{!4088, !4089, !4090, !4091, !4092, !4093, !4094}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4086, file: !115, line: 987, baseType: !329, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !4086, file: !115, line: 988, baseType: !329, size: 64, offset: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4086, file: !115, line: 989, baseType: !329, size: 64, offset: 128)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !4086, file: !115, line: 990, baseType: !329, size: 64, offset: 192)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !4086, file: !115, line: 991, baseType: !329, size: 64, offset: 256)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4086, file: !115, line: 992, baseType: !329, size: 64, offset: 320)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !4086, file: !115, line: 993, baseType: !329, size: 64, offset: 384)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4082, file: !115, line: 1012, baseType: !4096, size: 64, offset: 2752)
!4096 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !4097, line: 12, baseType: !4098)
!4097 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{null, !4101}
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !4103, line: 55, size: 2880, elements: !4104)
!4103 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/lizy2001/genbc/linux")
!4104 = !{!4105, !4106, !4107, !4108, !4109, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !4102, file: !4103, line: 56, baseType: !3872, size: 256)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !4102, file: !4103, line: 57, baseType: !3865, size: 448, offset: 256)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !4102, file: !4103, line: 58, baseType: !2727, size: 64, offset: 704)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !4102, file: !4103, line: 59, baseType: !4096, size: 64, offset: 768)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4102, file: !4103, line: 60, baseType: !4110, size: 64, offset: 832)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !108, line: 110, size: 768, elements: !4112)
!4112 = !{!4113, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4111, file: !108, line: 111, baseType: !4114, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !108, line: 92, baseType: !4115)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!4118, !206, !194}
!4118 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !123, line: 17, baseType: !122)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !4111, file: !108, line: 112, baseType: !194, size: 64, offset: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !4111, file: !108, line: 113, baseType: !194, size: 64, offset: 128)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4111, file: !108, line: 114, baseType: !4110, size: 64, offset: 192)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !4111, file: !108, line: 115, baseType: !4114, size: 64, offset: 256)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !4111, file: !108, line: 116, baseType: !1263, size: 64, offset: 320)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4111, file: !108, line: 117, baseType: !4110, size: 64, offset: 384)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4111, file: !108, line: 118, baseType: !7, size: 32, offset: 448)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4111, file: !108, line: 119, baseType: !7, size: 32, offset: 480)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !4111, file: !108, line: 120, baseType: !329, size: 64, offset: 512)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !4111, file: !108, line: 121, baseType: !329, size: 64, offset: 576)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4111, file: !108, line: 122, baseType: !200, size: 64, offset: 640)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4111, file: !108, line: 123, baseType: !4131, size: 64, offset: 704)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4133, line: 12, flags: DIFlagFwdDecl)
!4133 = !DIFile(filename: "./include/linux/proc_fs.h", directory: "/home/lizy2001/genbc/linux")
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !4102, file: !4103, line: 61, baseType: !7, size: 32, offset: 896)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !4102, file: !4103, line: 62, baseType: !7, size: 32, offset: 928)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4102, file: !4103, line: 63, baseType: !7, size: 32, offset: 960)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !4102, file: !4103, line: 64, baseType: !7, size: 32, offset: 992)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !4102, file: !4103, line: 65, baseType: !7, size: 32, offset: 1024)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4102, file: !4103, line: 66, baseType: !7, size: 32, offset: 1056)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !4102, file: !4103, line: 67, baseType: !329, size: 64, offset: 1088)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !4102, file: !4103, line: 68, baseType: !7, size: 32, offset: 1152)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !4102, file: !4103, line: 69, baseType: !754, size: 32, offset: 1184)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !4102, file: !4103, line: 70, baseType: !206, size: 32, offset: 1216)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4102, file: !4103, line: 71, baseType: !787, offset: 1248)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !4102, file: !4103, line: 72, baseType: !4146, size: 64, offset: 1280)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !4102, file: !4103, line: 73, baseType: !3968, size: 64, offset: 1344)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !4102, file: !4103, line: 81, baseType: !329, size: 64, offset: 1408)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !4102, file: !4103, line: 82, baseType: !754, size: 32, offset: 1472)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !4102, file: !4103, line: 83, baseType: !1527, size: 128, offset: 1536)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !4102, file: !4103, line: 85, baseType: !7, size: 32, offset: 1664)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !4102, file: !4103, line: 86, baseType: !7, size: 32, offset: 1696)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !4102, file: !4103, line: 87, baseType: !7, size: 32, offset: 1728)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !4102, file: !4103, line: 88, baseType: !7, size: 32, offset: 1760)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4102, file: !4103, line: 91, baseType: !4131, size: 64, offset: 1792)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4102, file: !4103, line: 98, baseType: !370, size: 128, align: 64, offset: 1856)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4102, file: !4103, line: 99, baseType: !226, size: 512, offset: 1984)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !4102, file: !4103, line: 101, baseType: !1220, size: 192, offset: 2496)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !4102, file: !4103, line: 102, baseType: !206, size: 32, offset: 2688)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4102, file: !4103, line: 103, baseType: !637, size: 64, offset: 2752)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4102, file: !4103, line: 104, baseType: !200, size: 64, offset: 2816)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4082, file: !115, line: 1013, baseType: !420, size: 32, offset: 2816)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !4082, file: !115, line: 1014, baseType: !420, size: 32, offset: 2848)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !4082, file: !115, line: 1015, baseType: !1461, size: 64, offset: 2880)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3698, file: !94, line: 175, baseType: !3697, size: 64, offset: 576)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3698, file: !94, line: 182, baseType: !3840, size: 64, offset: 640)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3698, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3698, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3698, file: !94, line: 185, baseType: !746, size: 128, offset: 768)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3698, file: !94, line: 186, baseType: !1220, size: 192, offset: 896)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3698, file: !94, line: 187, baseType: !4172, offset: 1088)
!4172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2375)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !223, file: !73, line: 499, baseType: !211, size: 128, offset: 4224)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !223, file: !73, line: 502, baseType: !4175, size: 64, offset: 4352)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4177)
!4177 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !223, file: !73, line: 504, baseType: !4179, size: 64, offset: 4416)
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !223, file: !73, line: 505, baseType: !426, size: 64, offset: 4480)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !223, file: !73, line: 510, baseType: !426, size: 64, offset: 4544)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !223, file: !73, line: 511, baseType: !4183, size: 64, offset: 4608)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4185)
!4185 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !223, file: !73, line: 513, baseType: !4187, size: 64, offset: 4672)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !4189)
!4189 = !{!4190, !4191}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4188, file: !73, line: 293, baseType: !7, size: 32)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4188, file: !73, line: 294, baseType: !329, size: 64, offset: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !223, file: !73, line: 515, baseType: !211, size: 128, offset: 4736)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !223, file: !73, line: 526, baseType: !4194, offset: 4864)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4195, line: 5, elements: !253)
!4195 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !223, file: !73, line: 528, baseType: !3711, size: 64, offset: 4864)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !223, file: !73, line: 529, baseType: !3724, size: 64, offset: 4928)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !223, file: !73, line: 534, baseType: !518, size: 32, offset: 4992)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !223, file: !73, line: 535, baseType: !420, size: 32, offset: 5024)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !223, file: !73, line: 537, baseType: !239, offset: 5056)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !223, file: !73, line: 538, baseType: !211, size: 128, offset: 5056)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !223, file: !73, line: 540, baseType: !4203, size: 64, offset: 5184)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4205, line: 54, size: 960, elements: !4206)
!4205 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4206 = !{!4207, !4208, !4209, !4210, !4211, !4212, !4213, !4217, !4221, !4222, !4223, !4224, !4228, !4232, !4233}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4204, file: !4205, line: 55, baseType: !200, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4204, file: !4205, line: 56, baseType: !637, size: 64, offset: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4204, file: !4205, line: 58, baseType: !333, size: 64, offset: 128)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4204, file: !4205, line: 59, baseType: !333, size: 64, offset: 192)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4204, file: !4205, line: 60, baseType: !232, size: 64, offset: 256)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4204, file: !4205, line: 62, baseType: !3431, size: 64, offset: 320)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4204, file: !4205, line: 63, baseType: !4214, size: 64, offset: 384)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!280, !3418, !3438}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4204, file: !4205, line: 65, baseType: !4218, size: 64, offset: 448)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{null, !4203}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4204, file: !4205, line: 66, baseType: !3440, size: 64, offset: 512)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4204, file: !4205, line: 68, baseType: !3449, size: 64, offset: 576)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4204, file: !4205, line: 70, baseType: !3233, size: 64, offset: 640)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4204, file: !4205, line: 71, baseType: !4225, size: 64, offset: 704)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!2171, !3418}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4204, file: !4205, line: 73, baseType: !4229, size: 64, offset: 768)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{null, !3418, !3265, !3266}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4204, file: !4205, line: 75, baseType: !3444, size: 64, offset: 832)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4204, file: !4205, line: 77, baseType: !3561, size: 64, offset: 896)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !223, file: !73, line: 541, baseType: !333, size: 64, offset: 5248)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !223, file: !73, line: 543, baseType: !3440, size: 64, offset: 5312)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !223, file: !73, line: 544, baseType: !4237, size: 64, offset: 5376)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !223, file: !73, line: 545, baseType: !4240, size: 64, offset: 5440)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !223, file: !73, line: 547, baseType: !495, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !223, file: !73, line: 548, baseType: !495, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !223, file: !73, line: 549, baseType: !495, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !223, file: !73, line: 550, baseType: !495, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !196, file: !197, line: 78, baseType: !128, size: 32, offset: 6080)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "down", scope: !196, file: !197, line: 79, baseType: !1548, size: 192, offset: 6144)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !196, file: !197, line: 80, baseType: !2004, size: 256, offset: 6336)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_sem", scope: !196, file: !197, line: 81, baseType: !4250, size: 192, offset: 6592)
!4250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "semaphore", file: !4251, line: 15, size: 192, elements: !4252)
!4251 = !DIFile(filename: "./include/linux/semaphore.h", directory: "/home/lizy2001/genbc/linux")
!4252 = !{!4253, !4254, !4255}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4250, file: !4251, line: 16, baseType: !787)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4250, file: !4251, line: 17, baseType: !7, size: 32)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !4250, file: !4251, line: 18, baseType: !211, size: 128, offset: 64)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !214)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_driver", file: !197, line: 96, size: 1920, elements: !4260)
!4260 = !{!4261, !4262, !4268, !4269, !4273, !4277, !4281, !4282, !4283, !4287, !4288, !4289, !4290}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4259, file: !197, line: 97, baseType: !200, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4259, file: !197, line: 98, baseType: !4263, size: 64, offset: 64)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4265)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_device_id", file: !197, line: 89, size: 256, elements: !4266)
!4266 = !{!4267}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "devicetype", scope: !4265, file: !197, line: 92, baseType: !2744, size: 256)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "allow_rebind", scope: !4259, file: !197, line: 99, baseType: !495, size: 8, offset: 128)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4259, file: !197, line: 100, baseType: !4270, size: 64, offset: 192)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!206, !195, !4263}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "otherend_changed", scope: !4259, file: !197, line: 102, baseType: !4274, size: 64, offset: 256)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{null, !195, !128}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4259, file: !197, line: 104, baseType: !4278, size: 64, offset: 320)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!206, !195}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4259, file: !197, line: 105, baseType: !4278, size: 64, offset: 384)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4259, file: !197, line: 106, baseType: !4278, size: 64, offset: 448)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4259, file: !197, line: 107, baseType: !4284, size: 64, offset: 512)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!206, !195, !275}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4259, file: !197, line: 108, baseType: !3490, size: 1152, offset: 576)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "read_otherend_details", scope: !4259, file: !197, line: 109, baseType: !4278, size: 64, offset: 1728)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "is_ready", scope: !4259, file: !197, line: 110, baseType: !4278, size: 64, offset: 1792)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_memory", scope: !4259, file: !197, line: 111, baseType: !4291, size: 64, offset: 1856)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{null, !195}
!4294 = !{!4295, !4297, !4299, !4304, !0, !4309, !4311, !4313, !4329, !4331, !4333}
!4295 = !DIGlobalVariableExpression(var: !4296, expr: !DIExpression())
!4296 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xenbus_probe_frontend_init238", scope: !2, file: !3, line: 508, type: !194, isLocal: true, isDefinition: true)
!4297 = !DIGlobalVariableExpression(var: !4298, expr: !DIExpression())
!4298 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_boot_wait_for_devices239", scope: !2, file: !3, line: 521, type: !194, isLocal: true, isDefinition: true)
!4299 = !DIGlobalVariableExpression(var: !4300, expr: !DIExpression())
!4300 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file240", scope: !2, file: !3, line: 524, type: !4301, isLocal: true, isDefinition: true, align: 8)
!4301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 544, elements: !4302)
!4302 = !{!4303}
!4303 = !DISubrange(count: 68)
!4304 = !DIGlobalVariableExpression(var: !4305, expr: !DIExpression())
!4305 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license241", scope: !2, file: !3, line: 524, type: !4306, isLocal: true, isDefinition: true, align: 8)
!4306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 272, elements: !4307)
!4307 = !{!4308}
!4308 = !DISubrange(count: 34)
!4309 = !DIGlobalVariableExpression(var: !4310, expr: !DIExpression())
!4310 = distinct !DIGlobalVariable(name: "xenbus_pm_ops", scope: !2, file: !3, line: 150, type: !3445, isLocal: true, isDefinition: true)
!4311 = !DIGlobalVariableExpression(var: !4312, expr: !DIExpression())
!4312 = distinct !DIGlobalVariable(name: "ready_to_wait_for_devices", scope: !2, file: !3, line: 275, type: !206, isLocal: true, isDefinition: true)
!4313 = !DIGlobalVariableExpression(var: !4314, expr: !DIExpression())
!4314 = distinct !DIGlobalVariable(name: "xenstore_notifier", scope: !4315, file: !3, line: 492, type: !4318, isLocal: true, isDefinition: true)
!4315 = distinct !DISubprogram(name: "xenbus_probe_frontend_init", scope: !3, file: !3, line: 490, type: !4316, scopeLine: 491, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!206}
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4319, line: 54, size: 192, elements: !4320)
!4319 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!4320 = !{!4321, !4327, !4328}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4318, file: !4319, line: 55, baseType: !4322, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4319, line: 51, baseType: !4323)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!206, !4326, !329, !194}
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4318, file: !4319, line: 56, baseType: !4326, size: 64, offset: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4318, file: !4319, line: 57, baseType: !206, size: 32, offset: 128)
!4329 = !DIGlobalVariableExpression(var: !4330, expr: !DIExpression())
!4330 = distinct !DIGlobalVariable(name: "backend_state_wq", scope: !2, file: !3, line: 353, type: !1529, isLocal: true, isDefinition: true)
!4331 = !DIGlobalVariableExpression(var: !4332, expr: !DIExpression())
!4332 = distinct !DIGlobalVariable(name: "backend_state", scope: !2, file: !3, line: 354, type: !206, isLocal: true, isDefinition: true)
!4333 = !DIGlobalVariableExpression(var: !4334, expr: !DIExpression())
!4334 = distinct !DIGlobalVariable(name: "fe_watch", scope: !2, file: !3, line: 187, type: !208, isLocal: true, isDefinition: true)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xen_bus_type", file: !141, line: 41, size: 1728, elements: !4336)
!4336 = !{!4337, !4338, !4339, !4343, !4348, !4349}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4335, file: !141, line: 42, baseType: !280, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "levels", scope: !4335, file: !141, line: 43, baseType: !7, size: 32, offset: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_id", scope: !4335, file: !141, line: 44, baseType: !4340, size: 64, offset: 128)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!206, !280, !200}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4335, file: !141, line: 45, baseType: !4344, size: 64, offset: 192)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!206, !4347, !200, !200}
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "otherend_changed", scope: !4335, file: !141, line: 47, baseType: !218, size: 64, offset: 256)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4335, file: !141, line: 49, baseType: !3476, size: 1408, offset: 320)
!4350 = !{i32 7, !"Dwarf Version", i32 4}
!4351 = !{i32 2, !"Debug Info Version", i32 3}
!4352 = !{i32 1, !"wchar_size", i32 2}
!4353 = !{i32 1, !"Code Model", i32 2}
!4354 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4355 = distinct !DISubprogram(name: "__xenbus_register_frontend", scope: !3, file: !3, line: 334, type: !4356, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!206, !4258, !637, !200}
!4358 = !DILocalVariable(name: "drv", arg: 1, scope: !4355, file: !3, line: 334, type: !4258)
!4359 = !DILocation(line: 334, column: 54, scope: !4355)
!4360 = !DILocalVariable(name: "owner", arg: 2, scope: !4355, file: !3, line: 334, type: !637)
!4361 = !DILocation(line: 334, column: 74, scope: !4355)
!4362 = !DILocalVariable(name: "mod_name", arg: 3, scope: !4355, file: !3, line: 335, type: !200)
!4363 = !DILocation(line: 335, column: 23, scope: !4355)
!4364 = !DILocalVariable(name: "ret", scope: !4355, file: !3, line: 337, type: !206)
!4365 = !DILocation(line: 337, column: 6, scope: !4355)
!4366 = !DILocation(line: 339, column: 2, scope: !4355)
!4367 = !DILocation(line: 339, column: 7, scope: !4355)
!4368 = !DILocation(line: 339, column: 29, scope: !4355)
!4369 = !DILocation(line: 341, column: 38, scope: !4355)
!4370 = !DILocation(line: 342, column: 10, scope: !4355)
!4371 = !DILocation(line: 342, column: 17, scope: !4355)
!4372 = !DILocation(line: 341, column: 8, scope: !4355)
!4373 = !DILocation(line: 341, column: 6, scope: !4355)
!4374 = !DILocation(line: 343, column: 6, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4355, file: !3, line: 343, column: 6)
!4376 = !DILocation(line: 343, column: 6, scope: !4355)
!4377 = !DILocation(line: 344, column: 10, scope: !4375)
!4378 = !DILocation(line: 344, column: 3, scope: !4375)
!4379 = !DILocation(line: 347, column: 19, scope: !4355)
!4380 = !DILocation(line: 347, column: 2, scope: !4355)
!4381 = !DILocation(line: 349, column: 2, scope: !4355)
!4382 = !DILocation(line: 350, column: 1, scope: !4355)
!4383 = distinct !DISubprogram(name: "read_backend_details", scope: !3, file: !3, line: 192, type: !4279, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4384 = !DILocalVariable(name: "xendev", arg: 1, scope: !4383, file: !3, line: 192, type: !195)
!4385 = !DILocation(line: 192, column: 55, scope: !4383)
!4386 = !DILocation(line: 194, column: 38, scope: !4383)
!4387 = !DILocation(line: 194, column: 9, scope: !4383)
!4388 = !DILocation(line: 194, column: 2, scope: !4383)
!4389 = distinct !DISubprogram(name: "wait_for_devices", scope: !3, file: !3, line: 309, type: !4390, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{null, !4258}
!4392 = !DILocalVariable(name: "xendrv", arg: 1, scope: !4389, file: !3, line: 309, type: !4258)
!4393 = !DILocation(line: 309, column: 52, scope: !4389)
!4394 = !DILocalVariable(name: "start", scope: !4389, file: !3, line: 311, type: !329)
!4395 = !DILocation(line: 311, column: 16, scope: !4389)
!4396 = !DILocation(line: 311, column: 24, scope: !4389)
!4397 = !DILocalVariable(name: "drv", scope: !4389, file: !3, line: 312, type: !3489)
!4398 = !DILocation(line: 312, column: 24, scope: !4389)
!4399 = !DILocation(line: 312, column: 30, scope: !4389)
!4400 = !DILocation(line: 312, column: 40, scope: !4389)
!4401 = !DILocation(line: 312, column: 48, scope: !4389)
!4402 = !DILocalVariable(name: "seconds_waited", scope: !4389, file: !3, line: 313, type: !7)
!4403 = !DILocation(line: 313, column: 15, scope: !4389)
!4404 = !DILocation(line: 315, column: 7, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4389, file: !3, line: 315, column: 6)
!4406 = !DILocation(line: 315, column: 33, scope: !4405)
!4407 = !DILocation(line: 315, column: 37, scope: !4405)
!4408 = !DILocation(line: 315, column: 6, scope: !4389)
!4409 = !DILocation(line: 316, column: 3, scope: !4405)
!4410 = !DILocation(line: 318, column: 2, scope: !4389)
!4411 = !DILocation(line: 318, column: 48, scope: !4389)
!4412 = !DILocation(line: 318, column: 9, scope: !4389)
!4413 = !DILocation(line: 319, column: 17, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4389, file: !3, line: 319, column: 7)
!4415 = !DILocation(line: 319, column: 7, scope: !4414)
!4416 = !DILocation(line: 319, column: 7, scope: !4389)
!4417 = !DILocation(line: 320, column: 4, scope: !4414)
!4418 = distinct !{!4418, !4410, !4419}
!4419 = !DILocation(line: 320, column: 4, scope: !4389)
!4420 = !DILocation(line: 323, column: 2, scope: !4389)
!4421 = !DILocation(line: 323, column: 44, scope: !4389)
!4422 = !DILocation(line: 323, column: 9, scope: !4389)
!4423 = !DILocation(line: 324, column: 17, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4389, file: !3, line: 324, column: 7)
!4425 = !DILocation(line: 324, column: 7, scope: !4424)
!4426 = !DILocation(line: 324, column: 7, scope: !4389)
!4427 = !DILocation(line: 325, column: 4, scope: !4424)
!4428 = distinct !{!4428, !4420, !4429}
!4429 = !DILocation(line: 325, column: 4, scope: !4389)
!4430 = !DILocation(line: 327, column: 6, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4389, file: !3, line: 327, column: 6)
!4432 = !DILocation(line: 327, column: 6, scope: !4389)
!4433 = !DILocation(line: 328, column: 3, scope: !4431)
!4434 = !DILocation(line: 330, column: 47, scope: !4389)
!4435 = !DILocation(line: 330, column: 2, scope: !4389)
!4436 = !DILocation(line: 332, column: 1, scope: !4389)
!4437 = !DILocalVariable(name: "err", scope: !4315, file: !3, line: 495, type: !206)
!4438 = !DILocation(line: 495, column: 6, scope: !4315)
!4439 = !DILocation(line: 497, column: 2, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 497, column: 2)
!4441 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 497, column: 2)
!4442 = !DILocation(line: 497, column: 2, scope: !4441)
!4443 = !DILocation(line: 500, column: 8, scope: !4315)
!4444 = !DILocation(line: 500, column: 6, scope: !4315)
!4445 = !DILocation(line: 501, column: 6, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 501, column: 6)
!4447 = !DILocation(line: 501, column: 6, scope: !4315)
!4448 = !DILocation(line: 502, column: 10, scope: !4446)
!4449 = !DILocation(line: 502, column: 3, scope: !4446)
!4450 = !DILocation(line: 504, column: 2, scope: !4315)
!4451 = !DILocation(line: 506, column: 2, scope: !4315)
!4452 = !DILocation(line: 507, column: 1, scope: !4315)
!4453 = distinct !DISubprogram(name: "boot_wait_for_devices", scope: !3, file: !3, line: 511, type: !4316, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4454 = !DILocation(line: 513, column: 7, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 513, column: 6)
!4456 = !DILocation(line: 513, column: 6, scope: !4453)
!4457 = !DILocation(line: 514, column: 3, scope: !4455)
!4458 = !DILocation(line: 516, column: 28, scope: !4453)
!4459 = !DILocation(line: 517, column: 2, scope: !4453)
!4460 = !DILocation(line: 518, column: 2, scope: !4453)
!4461 = !DILocation(line: 519, column: 1, scope: !4453)
!4462 = distinct !DISubprogram(name: "frontend_bus_id", scope: !3, file: !3, line: 35, type: !4341, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4463 = !DILocalVariable(name: "bus_id", arg: 1, scope: !4462, file: !3, line: 35, type: !280)
!4464 = !DILocation(line: 35, column: 33, scope: !4462)
!4465 = !DILocalVariable(name: "nodename", arg: 2, scope: !4462, file: !3, line: 35, type: !200)
!4466 = !DILocation(line: 35, column: 70, scope: !4462)
!4467 = !DILocation(line: 37, column: 20, scope: !4462)
!4468 = !DILocation(line: 37, column: 13, scope: !4462)
!4469 = !DILocation(line: 37, column: 11, scope: !4462)
!4470 = !DILocation(line: 38, column: 7, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 38, column: 6)
!4472 = !DILocation(line: 38, column: 16, scope: !4471)
!4473 = !DILocation(line: 38, column: 26, scope: !4471)
!4474 = !DILocation(line: 38, column: 35, scope: !4471)
!4475 = !DILocation(line: 38, column: 19, scope: !4471)
!4476 = !DILocation(line: 38, column: 40, scope: !4471)
!4477 = !DILocation(line: 38, column: 6, scope: !4462)
!4478 = !DILocation(line: 39, column: 3, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4471, file: !3, line: 38, column: 60)
!4480 = !DILocation(line: 40, column: 3, scope: !4479)
!4481 = !DILocation(line: 43, column: 10, scope: !4462)
!4482 = !DILocation(line: 43, column: 18, scope: !4462)
!4483 = !DILocation(line: 43, column: 27, scope: !4462)
!4484 = !DILocation(line: 43, column: 2, scope: !4462)
!4485 = !DILocation(line: 44, column: 14, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4462, file: !3, line: 44, column: 6)
!4487 = !DILocation(line: 44, column: 7, scope: !4486)
!4488 = !DILocation(line: 44, column: 6, scope: !4462)
!4489 = !DILocation(line: 45, column: 3, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4486, file: !3, line: 44, column: 28)
!4491 = !DILocation(line: 46, column: 3, scope: !4490)
!4492 = !DILocation(line: 48, column: 10, scope: !4462)
!4493 = !DILocation(line: 48, column: 3, scope: !4462)
!4494 = !DILocation(line: 48, column: 23, scope: !4462)
!4495 = !DILocation(line: 49, column: 2, scope: !4462)
!4496 = !DILocation(line: 50, column: 1, scope: !4462)
!4497 = distinct !DISubprogram(name: "xenbus_probe_frontend", scope: !3, file: !3, line: 53, type: !4345, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4498 = !DILocalVariable(name: "bus", arg: 1, scope: !4497, file: !3, line: 53, type: !4347)
!4499 = !DILocation(line: 53, column: 55, scope: !4497)
!4500 = !DILocalVariable(name: "type", arg: 2, scope: !4497, file: !3, line: 53, type: !200)
!4501 = !DILocation(line: 53, column: 72, scope: !4497)
!4502 = !DILocalVariable(name: "name", arg: 3, scope: !4497, file: !3, line: 54, type: !200)
!4503 = !DILocation(line: 54, column: 18, scope: !4497)
!4504 = !DILocalVariable(name: "nodename", scope: !4497, file: !3, line: 56, type: !280)
!4505 = !DILocation(line: 56, column: 8, scope: !4497)
!4506 = !DILocalVariable(name: "err", scope: !4497, file: !3, line: 57, type: !206)
!4507 = !DILocation(line: 57, column: 6, scope: !4497)
!4508 = !DILocation(line: 60, column: 15, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 60, column: 6)
!4510 = !DILocation(line: 60, column: 7, scope: !4509)
!4511 = !DILocation(line: 60, column: 35, scope: !4509)
!4512 = !DILocation(line: 60, column: 47, scope: !4509)
!4513 = !DILocation(line: 60, column: 39, scope: !4509)
!4514 = !DILocation(line: 60, column: 6, scope: !4497)
!4515 = !DILocation(line: 61, column: 3, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 61, column: 3)
!4517 = distinct !DILexicalBlock(scope: !4518, file: !3, line: 61, column: 3)
!4518 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 60, column: 62)
!4519 = !DILocation(line: 61, column: 3, scope: !4517)
!4520 = !DILocation(line: 62, column: 3, scope: !4518)
!4521 = !DILocation(line: 65, column: 47, scope: !4497)
!4522 = !DILocation(line: 65, column: 52, scope: !4497)
!4523 = !DILocation(line: 65, column: 58, scope: !4497)
!4524 = !DILocation(line: 65, column: 64, scope: !4497)
!4525 = !DILocation(line: 65, column: 13, scope: !4497)
!4526 = !DILocation(line: 65, column: 11, scope: !4497)
!4527 = !DILocation(line: 66, column: 7, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 66, column: 6)
!4529 = !DILocation(line: 66, column: 6, scope: !4497)
!4530 = !DILocation(line: 67, column: 3, scope: !4528)
!4531 = !DILocation(line: 69, column: 2, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4533, file: !3, line: 69, column: 2)
!4533 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 69, column: 2)
!4534 = !DILocation(line: 69, column: 2, scope: !4533)
!4535 = !DILocation(line: 71, column: 26, scope: !4497)
!4536 = !DILocation(line: 71, column: 31, scope: !4497)
!4537 = !DILocation(line: 71, column: 37, scope: !4497)
!4538 = !DILocation(line: 71, column: 8, scope: !4497)
!4539 = !DILocation(line: 71, column: 6, scope: !4497)
!4540 = !DILocation(line: 72, column: 8, scope: !4497)
!4541 = !DILocation(line: 72, column: 2, scope: !4497)
!4542 = !DILocation(line: 73, column: 9, scope: !4497)
!4543 = !DILocation(line: 73, column: 2, scope: !4497)
!4544 = !DILocation(line: 74, column: 1, scope: !4497)
!4545 = distinct !DISubprogram(name: "backend_changed", scope: !3, file: !3, line: 88, type: !219, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4546 = !DILocalVariable(name: "watch", arg: 1, scope: !4545, file: !3, line: 88, type: !221)
!4547 = !DILocation(line: 88, column: 50, scope: !4545)
!4548 = !DILocalVariable(name: "path", arg: 2, scope: !4545, file: !3, line: 89, type: !200)
!4549 = !DILocation(line: 89, column: 20, scope: !4545)
!4550 = !DILocalVariable(name: "token", arg: 3, scope: !4545, file: !3, line: 89, type: !200)
!4551 = !DILocation(line: 89, column: 38, scope: !4545)
!4552 = !DILocation(line: 91, column: 26, scope: !4545)
!4553 = !DILocation(line: 91, column: 33, scope: !4545)
!4554 = !DILocation(line: 91, column: 39, scope: !4545)
!4555 = !DILocation(line: 91, column: 2, scope: !4545)
!4556 = !DILocation(line: 92, column: 1, scope: !4545)
!4557 = distinct !DISubprogram(name: "xenbus_uevent_frontend", scope: !3, file: !3, line: 76, type: !3432, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4558 = !DILocalVariable(name: "_dev", arg: 1, scope: !4557, file: !3, line: 76, type: !3418)
!4559 = !DILocation(line: 76, column: 50, scope: !4557)
!4560 = !DILocalVariable(name: "env", arg: 2, scope: !4557, file: !3, line: 77, type: !275)
!4561 = !DILocation(line: 77, column: 31, scope: !4557)
!4562 = !DILocalVariable(name: "dev", scope: !4557, file: !3, line: 79, type: !195)
!4563 = !DILocation(line: 79, column: 24, scope: !4557)
!4564 = !DILocation(line: 79, column: 47, scope: !4557)
!4565 = !DILocation(line: 79, column: 30, scope: !4557)
!4566 = !DILocation(line: 81, column: 21, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4557, file: !3, line: 81, column: 6)
!4568 = !DILocation(line: 81, column: 45, scope: !4567)
!4569 = !DILocation(line: 81, column: 50, scope: !4567)
!4570 = !DILocation(line: 81, column: 6, scope: !4567)
!4571 = !DILocation(line: 81, column: 6, scope: !4557)
!4572 = !DILocation(line: 82, column: 3, scope: !4567)
!4573 = !DILocation(line: 84, column: 2, scope: !4557)
!4574 = !DILocation(line: 85, column: 1, scope: !4557)
!4575 = distinct !DISubprogram(name: "xenbus_frontend_dev_probe", scope: !3, file: !3, line: 118, type: !3450, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4576 = !DILocalVariable(name: "dev", arg: 1, scope: !4575, file: !3, line: 118, type: !3418)
!4577 = !DILocation(line: 118, column: 53, scope: !4575)
!4578 = !DILocation(line: 120, column: 6, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 120, column: 6)
!4580 = !DILocation(line: 120, column: 28, scope: !4579)
!4581 = !DILocation(line: 120, column: 6, scope: !4575)
!4582 = !DILocalVariable(name: "xdev", scope: !4583, file: !3, line: 121, type: !195)
!4583 = distinct !DILexicalBlock(scope: !4579, file: !3, line: 120, column: 41)
!4584 = !DILocation(line: 121, column: 25, scope: !4583)
!4585 = !DILocation(line: 121, column: 49, scope: !4583)
!4586 = !DILocation(line: 121, column: 32, scope: !4583)
!4587 = !DILocation(line: 122, column: 3, scope: !4583)
!4588 = !DILocation(line: 122, column: 3, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4583, file: !3, line: 122, column: 3)
!4590 = !DILocation(line: 123, column: 2, scope: !4583)
!4591 = !DILocation(line: 125, column: 26, scope: !4575)
!4592 = !DILocation(line: 125, column: 9, scope: !4575)
!4593 = !DILocation(line: 125, column: 2, scope: !4575)
!4594 = distinct !DISubprogram(name: "xenbus_frontend_dev_shutdown", scope: !3, file: !3, line: 128, type: !3441, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4595 = !DILocalVariable(name: "_dev", arg: 1, scope: !4594, file: !3, line: 128, type: !3418)
!4596 = !DILocation(line: 128, column: 57, scope: !4594)
!4597 = !DILocalVariable(name: "dev", scope: !4594, file: !3, line: 130, type: !195)
!4598 = !DILocation(line: 130, column: 24, scope: !4594)
!4599 = !DILocation(line: 130, column: 47, scope: !4594)
!4600 = !DILocation(line: 130, column: 30, scope: !4594)
!4601 = !DILocalVariable(name: "timeout", scope: !4594, file: !3, line: 131, type: !329)
!4602 = !DILocation(line: 131, column: 16, scope: !4594)
!4603 = !DILocation(line: 133, column: 2, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4605, file: !3, line: 133, column: 2)
!4605 = distinct !DILexicalBlock(scope: !4594, file: !3, line: 133, column: 2)
!4606 = !DILocation(line: 133, column: 2, scope: !4605)
!4607 = !DILocation(line: 135, column: 14, scope: !4594)
!4608 = !DILocation(line: 135, column: 19, scope: !4594)
!4609 = !DILocation(line: 135, column: 2, scope: !4594)
!4610 = !DILocation(line: 136, column: 6, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4594, file: !3, line: 136, column: 6)
!4612 = !DILocation(line: 136, column: 11, scope: !4611)
!4613 = !DILocation(line: 136, column: 17, scope: !4611)
!4614 = !DILocation(line: 136, column: 6, scope: !4594)
!4615 = !DILocation(line: 137, column: 3, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 136, column: 42)
!4617 = !DILocation(line: 139, column: 3, scope: !4616)
!4618 = !DILocation(line: 141, column: 22, scope: !4594)
!4619 = !DILocation(line: 141, column: 2, scope: !4594)
!4620 = !DILocation(line: 142, column: 41, scope: !4594)
!4621 = !DILocation(line: 142, column: 46, scope: !4594)
!4622 = !DILocation(line: 142, column: 52, scope: !4594)
!4623 = !DILocation(line: 142, column: 12, scope: !4594)
!4624 = !DILocation(line: 142, column: 10, scope: !4594)
!4625 = !DILocation(line: 143, column: 7, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4594, file: !3, line: 143, column: 6)
!4627 = !DILocation(line: 143, column: 6, scope: !4594)
!4628 = !DILocation(line: 144, column: 3, scope: !4626)
!4629 = !DILabel(scope: !4594, name: "out", file: !3, line: 146)
!4630 = !DILocation(line: 146, column: 2, scope: !4594)
!4631 = !DILocation(line: 147, column: 14, scope: !4594)
!4632 = !DILocation(line: 147, column: 19, scope: !4594)
!4633 = !DILocation(line: 147, column: 2, scope: !4594)
!4634 = !DILocation(line: 148, column: 1, scope: !4594)
!4635 = distinct !DISubprogram(name: "to_xenbus_device", scope: !197, file: !197, line: 84, type: !4636, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!195, !3418}
!4638 = !DILocalVariable(name: "dev", arg: 1, scope: !4635, file: !197, line: 84, type: !3418)
!4639 = !DILocation(line: 84, column: 69, scope: !4635)
!4640 = !DILocalVariable(name: "__mptr", scope: !4641, file: !197, line: 86, type: !194)
!4641 = distinct !DILexicalBlock(scope: !4635, file: !197, line: 86, column: 9)
!4642 = !DILocation(line: 86, column: 9, scope: !4641)
!4643 = !DILocation(line: 86, column: 9, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4641, file: !197, line: 86, column: 9)
!4645 = !DILocation(line: 86, column: 2, scope: !4635)
!4646 = distinct !DISubprogram(name: "__init_work", scope: !148, file: !148, line: 215, type: !4647, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{null, !2013, !206}
!4649 = !DILocalVariable(name: "work", arg: 1, scope: !4646, file: !148, line: 215, type: !2013)
!4650 = !DILocation(line: 215, column: 52, scope: !4646)
!4651 = !DILocalVariable(name: "onstack", arg: 2, scope: !4646, file: !148, line: 215, type: !206)
!4652 = !DILocation(line: 215, column: 62, scope: !4646)
!4653 = !DILocation(line: 215, column: 73, scope: !4646)
!4654 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4655, file: !4655, line: 33, type: !4656, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4655 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4656 = !DISubroutineType(types: !4657)
!4657 = !{null, !214}
!4658 = !DILocalVariable(name: "list", arg: 1, scope: !4654, file: !4655, line: 33, type: !214)
!4659 = !DILocation(line: 33, column: 53, scope: !4654)
!4660 = !DILocation(line: 35, column: 2, scope: !4654)
!4661 = !DILocation(line: 35, column: 2, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4654, file: !4655, line: 35, column: 2)
!4663 = !DILocation(line: 35, column: 2, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4662, file: !4655, line: 35, column: 2)
!4665 = !DILocation(line: 35, column: 2, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4662, file: !4655, line: 35, column: 2)
!4667 = !DILocation(line: 36, column: 15, scope: !4654)
!4668 = !DILocation(line: 36, column: 2, scope: !4654)
!4669 = !DILocation(line: 36, column: 8, scope: !4654)
!4670 = !DILocation(line: 36, column: 13, scope: !4654)
!4671 = !DILocation(line: 37, column: 1, scope: !4654)
!4672 = distinct !DISubprogram(name: "xenbus_frontend_delayed_resume", scope: !3, file: !3, line: 94, type: !2011, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4673 = !DILocalVariable(name: "w", arg: 1, scope: !4672, file: !3, line: 94, type: !2013)
!4674 = !DILocation(line: 94, column: 64, scope: !4672)
!4675 = !DILocalVariable(name: "xdev", scope: !4672, file: !3, line: 96, type: !195)
!4676 = !DILocation(line: 96, column: 24, scope: !4672)
!4677 = !DILocalVariable(name: "__mptr", scope: !4678, file: !3, line: 96, type: !194)
!4678 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 96, column: 31)
!4679 = !DILocation(line: 96, column: 31, scope: !4678)
!4680 = !DILocation(line: 96, column: 31, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4678, file: !3, line: 96, column: 31)
!4682 = !DILocation(line: 98, column: 21, scope: !4672)
!4683 = !DILocation(line: 98, column: 27, scope: !4672)
!4684 = !DILocation(line: 98, column: 2, scope: !4672)
!4685 = !DILocation(line: 99, column: 1, scope: !4672)
!4686 = distinct !DISubprogram(name: "xenbus_frontend_dev_resume", scope: !3, file: !3, line: 101, type: !3450, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4687 = !DILocalVariable(name: "dev", arg: 1, scope: !4686, file: !3, line: 101, type: !3418)
!4688 = !DILocation(line: 101, column: 54, scope: !4686)
!4689 = !DILocation(line: 107, column: 6, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4686, file: !3, line: 107, column: 6)
!4691 = !DILocation(line: 107, column: 28, scope: !4690)
!4692 = !DILocation(line: 107, column: 6, scope: !4686)
!4693 = !DILocalVariable(name: "xdev", scope: !4694, file: !3, line: 108, type: !195)
!4694 = distinct !DILexicalBlock(scope: !4690, file: !3, line: 107, column: 41)
!4695 = !DILocation(line: 108, column: 25, scope: !4694)
!4696 = !DILocation(line: 108, column: 49, scope: !4694)
!4697 = !DILocation(line: 108, column: 32, scope: !4694)
!4698 = !DILocation(line: 110, column: 18, scope: !4694)
!4699 = !DILocation(line: 110, column: 24, scope: !4694)
!4700 = !DILocation(line: 110, column: 3, scope: !4694)
!4701 = !DILocation(line: 112, column: 3, scope: !4694)
!4702 = !DILocation(line: 115, column: 27, scope: !4686)
!4703 = !DILocation(line: 115, column: 9, scope: !4686)
!4704 = !DILocation(line: 115, column: 2, scope: !4686)
!4705 = !DILocation(line: 116, column: 1, scope: !4686)
!4706 = distinct !DISubprogram(name: "schedule_work", scope: !148, file: !148, line: 566, type: !4707, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{!495, !2013}
!4709 = !DILocalVariable(name: "work", arg: 1, scope: !4706, file: !148, line: 566, type: !2013)
!4710 = !DILocation(line: 566, column: 54, scope: !4706)
!4711 = !DILocation(line: 568, column: 20, scope: !4706)
!4712 = !DILocation(line: 568, column: 31, scope: !4706)
!4713 = !DILocation(line: 568, column: 9, scope: !4706)
!4714 = !DILocation(line: 568, column: 2, scope: !4706)
!4715 = distinct !DISubprogram(name: "queue_work", scope: !148, file: !148, line: 504, type: !4716, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4716 = !DISubroutineType(types: !4717)
!4717 = !{!495, !2837, !2013}
!4718 = !DILocalVariable(name: "wq", arg: 1, scope: !4715, file: !148, line: 504, type: !2837)
!4719 = !DILocation(line: 504, column: 56, scope: !4715)
!4720 = !DILocalVariable(name: "work", arg: 2, scope: !4715, file: !148, line: 505, type: !2013)
!4721 = !DILocation(line: 505, column: 30, scope: !4715)
!4722 = !DILocation(line: 507, column: 41, scope: !4715)
!4723 = !DILocation(line: 507, column: 45, scope: !4715)
!4724 = !DILocation(line: 507, column: 9, scope: !4715)
!4725 = !DILocation(line: 507, column: 2, scope: !4715)
!4726 = distinct !DISubprogram(name: "exists_non_essential_connecting_device", scope: !3, file: !3, line: 245, type: !4727, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!206, !3489}
!4729 = !DILocalVariable(name: "drv", arg: 1, scope: !4726, file: !3, line: 245, type: !3489)
!4730 = !DILocation(line: 245, column: 73, scope: !4726)
!4731 = !DILocation(line: 247, column: 54, scope: !4726)
!4732 = !DILocation(line: 247, column: 9, scope: !4726)
!4733 = !DILocation(line: 247, column: 2, scope: !4726)
!4734 = distinct !DISubprogram(name: "wait_loop", scope: !3, file: !3, line: 277, type: !4735, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!495, !329, !7, !2727}
!4737 = !DILocalVariable(name: "start", arg: 1, scope: !4734, file: !3, line: 277, type: !329)
!4738 = !DILocation(line: 277, column: 37, scope: !4734)
!4739 = !DILocalVariable(name: "max_delay", arg: 2, scope: !4734, file: !3, line: 277, type: !7)
!4740 = !DILocation(line: 277, column: 57, scope: !4734)
!4741 = !DILocalVariable(name: "seconds_waited", arg: 3, scope: !4734, file: !3, line: 278, type: !2727)
!4742 = !DILocation(line: 278, column: 22, scope: !4734)
!4743 = !DILocation(line: 280, column: 6, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 280, column: 6)
!4745 = !DILocation(line: 280, column: 6, scope: !4734)
!4746 = !DILocation(line: 281, column: 9, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 281, column: 7)
!4748 = distinct !DILexicalBlock(scope: !4744, file: !3, line: 280, column: 59)
!4749 = !DILocation(line: 281, column: 8, scope: !4747)
!4750 = !DILocation(line: 281, column: 7, scope: !4748)
!4751 = !DILocation(line: 282, column: 4, scope: !4747)
!4752 = !DILocation(line: 283, column: 4, scope: !4748)
!4753 = !DILocation(line: 283, column: 19, scope: !4748)
!4754 = !DILocation(line: 284, column: 3, scope: !4748)
!4755 = !DILocation(line: 285, column: 8, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 285, column: 7)
!4757 = !DILocation(line: 285, column: 7, scope: !4756)
!4758 = !DILocation(line: 285, column: 26, scope: !4756)
!4759 = !DILocation(line: 285, column: 23, scope: !4756)
!4760 = !DILocation(line: 285, column: 7, scope: !4748)
!4761 = !DILocation(line: 286, column: 4, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4756, file: !3, line: 285, column: 37)
!4763 = !DILocation(line: 287, column: 4, scope: !4762)
!4764 = !DILocation(line: 289, column: 2, scope: !4748)
!4765 = !DILocation(line: 291, column: 2, scope: !4734)
!4766 = !DILocation(line: 293, column: 2, scope: !4734)
!4767 = !DILocation(line: 294, column: 1, scope: !4734)
!4768 = distinct !DISubprogram(name: "exists_essential_connecting_device", scope: !3, file: !3, line: 240, type: !4727, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4769 = !DILocalVariable(name: "drv", arg: 1, scope: !4768, file: !3, line: 240, type: !3489)
!4770 = !DILocation(line: 240, column: 69, scope: !4768)
!4771 = !DILocation(line: 242, column: 54, scope: !4768)
!4772 = !DILocation(line: 242, column: 9, scope: !4768)
!4773 = !DILocation(line: 242, column: 2, scope: !4768)
!4774 = distinct !DISubprogram(name: "print_device_status", scope: !3, file: !3, line: 251, type: !4775, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4775 = !DISubroutineType(types: !4776)
!4776 = !{!206, !3418, !194}
!4777 = !DILocalVariable(name: "dev", arg: 1, scope: !4774, file: !3, line: 251, type: !3418)
!4778 = !DILocation(line: 251, column: 47, scope: !4774)
!4779 = !DILocalVariable(name: "data", arg: 2, scope: !4774, file: !3, line: 251, type: !194)
!4780 = !DILocation(line: 251, column: 58, scope: !4774)
!4781 = !DILocalVariable(name: "xendev", scope: !4774, file: !3, line: 253, type: !195)
!4782 = !DILocation(line: 253, column: 24, scope: !4774)
!4783 = !DILocation(line: 253, column: 50, scope: !4774)
!4784 = !DILocation(line: 253, column: 33, scope: !4774)
!4785 = !DILocalVariable(name: "drv", scope: !4774, file: !3, line: 254, type: !3489)
!4786 = !DILocation(line: 254, column: 24, scope: !4774)
!4787 = !DILocation(line: 254, column: 30, scope: !4774)
!4788 = !DILocation(line: 257, column: 6, scope: !4789)
!4789 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 257, column: 6)
!4790 = !DILocation(line: 257, column: 10, scope: !4789)
!4791 = !DILocation(line: 257, column: 14, scope: !4789)
!4792 = !DILocation(line: 257, column: 19, scope: !4789)
!4793 = !DILocation(line: 257, column: 29, scope: !4789)
!4794 = !DILocation(line: 257, column: 26, scope: !4789)
!4795 = !DILocation(line: 257, column: 6, scope: !4774)
!4796 = !DILocation(line: 258, column: 3, scope: !4789)
!4797 = !DILocation(line: 260, column: 7, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 260, column: 6)
!4799 = !DILocation(line: 260, column: 12, scope: !4798)
!4800 = !DILocation(line: 260, column: 6, scope: !4774)
!4801 = !DILocation(line: 262, column: 3, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 260, column: 20)
!4803 = !DILocation(line: 263, column: 2, scope: !4802)
!4804 = !DILocation(line: 263, column: 13, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 263, column: 13)
!4806 = !DILocation(line: 263, column: 21, scope: !4805)
!4807 = !DILocation(line: 263, column: 27, scope: !4805)
!4808 = !DILocation(line: 263, column: 13, scope: !4798)
!4809 = !DILocalVariable(name: "rstate", scope: !4810, file: !3, line: 264, type: !128)
!4810 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 263, column: 51)
!4811 = !DILocation(line: 264, column: 21, scope: !4810)
!4812 = !DILocation(line: 265, column: 7, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 265, column: 7)
!4814 = !DILocation(line: 265, column: 15, scope: !4813)
!4815 = !DILocation(line: 265, column: 7, scope: !4810)
!4816 = !DILocation(line: 266, column: 38, scope: !4813)
!4817 = !DILocation(line: 266, column: 46, scope: !4813)
!4818 = !DILocation(line: 266, column: 13, scope: !4813)
!4819 = !DILocation(line: 266, column: 11, scope: !4813)
!4820 = !DILocation(line: 266, column: 4, scope: !4813)
!4821 = !DILocation(line: 267, column: 3, scope: !4810)
!4822 = !DILocation(line: 269, column: 2, scope: !4810)
!4823 = !DILocation(line: 271, column: 2, scope: !4774)
!4824 = !DILocation(line: 272, column: 1, scope: !4774)
!4825 = distinct !DISubprogram(name: "non_essential_device_connecting", scope: !3, file: !3, line: 235, type: !4775, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4826 = !DILocalVariable(name: "dev", arg: 1, scope: !4825, file: !3, line: 235, type: !3418)
!4827 = !DILocation(line: 235, column: 59, scope: !4825)
!4828 = !DILocalVariable(name: "data", arg: 2, scope: !4825, file: !3, line: 235, type: !194)
!4829 = !DILocation(line: 235, column: 70, scope: !4825)
!4830 = !DILocation(line: 237, column: 30, scope: !4825)
!4831 = !DILocation(line: 237, column: 35, scope: !4825)
!4832 = !DILocation(line: 237, column: 9, scope: !4825)
!4833 = !DILocation(line: 237, column: 2, scope: !4825)
!4834 = distinct !DISubprogram(name: "is_device_connecting", scope: !3, file: !3, line: 197, type: !4835, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4835 = !DISubroutineType(types: !4836)
!4836 = !{!206, !3418, !194, !495}
!4837 = !DILocalVariable(name: "dev", arg: 1, scope: !4834, file: !3, line: 197, type: !3418)
!4838 = !DILocation(line: 197, column: 48, scope: !4834)
!4839 = !DILocalVariable(name: "data", arg: 2, scope: !4834, file: !3, line: 197, type: !194)
!4840 = !DILocation(line: 197, column: 59, scope: !4834)
!4841 = !DILocalVariable(name: "ignore_nonessential", arg: 3, scope: !4834, file: !3, line: 197, type: !495)
!4842 = !DILocation(line: 197, column: 70, scope: !4834)
!4843 = !DILocalVariable(name: "xendev", scope: !4834, file: !3, line: 199, type: !195)
!4844 = !DILocation(line: 199, column: 24, scope: !4834)
!4845 = !DILocation(line: 199, column: 50, scope: !4834)
!4846 = !DILocation(line: 199, column: 33, scope: !4834)
!4847 = !DILocalVariable(name: "drv", scope: !4834, file: !3, line: 200, type: !3489)
!4848 = !DILocation(line: 200, column: 24, scope: !4834)
!4849 = !DILocation(line: 200, column: 30, scope: !4834)
!4850 = !DILocalVariable(name: "xendrv", scope: !4834, file: !3, line: 201, type: !4258)
!4851 = !DILocation(line: 201, column: 24, scope: !4834)
!4852 = !DILocation(line: 207, column: 7, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 207, column: 6)
!4854 = !DILocation(line: 207, column: 12, scope: !4853)
!4855 = !DILocation(line: 207, column: 6, scope: !4834)
!4856 = !DILocation(line: 208, column: 3, scope: !4853)
!4857 = !DILocation(line: 211, column: 6, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 211, column: 6)
!4859 = !DILocation(line: 211, column: 10, scope: !4858)
!4860 = !DILocation(line: 211, column: 14, scope: !4858)
!4861 = !DILocation(line: 211, column: 19, scope: !4858)
!4862 = !DILocation(line: 211, column: 29, scope: !4858)
!4863 = !DILocation(line: 211, column: 26, scope: !4858)
!4864 = !DILocation(line: 211, column: 6, scope: !4834)
!4865 = !DILocation(line: 212, column: 3, scope: !4858)
!4866 = !DILocation(line: 214, column: 6, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 214, column: 6)
!4868 = !DILocation(line: 214, column: 6, scope: !4834)
!4869 = !DILocation(line: 220, column: 16, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 220, column: 7)
!4871 = distinct !DILexicalBlock(scope: !4867, file: !3, line: 214, column: 27)
!4872 = !DILocation(line: 220, column: 24, scope: !4870)
!4873 = !DILocation(line: 220, column: 8, scope: !4870)
!4874 = !DILocation(line: 220, column: 53, scope: !4870)
!4875 = !DILocation(line: 220, column: 7, scope: !4871)
!4876 = !DILocation(line: 221, column: 4, scope: !4870)
!4877 = !DILocation(line: 223, column: 16, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 223, column: 7)
!4879 = !DILocation(line: 223, column: 24, scope: !4878)
!4880 = !DILocation(line: 223, column: 8, scope: !4878)
!4881 = !DILocation(line: 223, column: 52, scope: !4878)
!4882 = !DILocation(line: 223, column: 7, scope: !4871)
!4883 = !DILocation(line: 224, column: 4, scope: !4878)
!4884 = !DILocation(line: 225, column: 2, scope: !4871)
!4885 = !DILocation(line: 226, column: 28, scope: !4834)
!4886 = !DILocation(line: 226, column: 33, scope: !4834)
!4887 = !DILocation(line: 226, column: 11, scope: !4834)
!4888 = !DILocation(line: 226, column: 9, scope: !4834)
!4889 = !DILocation(line: 227, column: 10, scope: !4834)
!4890 = !DILocation(line: 227, column: 18, scope: !4834)
!4891 = !DILocation(line: 227, column: 24, scope: !4834)
!4892 = !DILocation(line: 227, column: 47, scope: !4834)
!4893 = !DILocation(line: 228, column: 4, scope: !4834)
!4894 = !DILocation(line: 228, column: 12, scope: !4834)
!4895 = !DILocation(line: 228, column: 18, scope: !4834)
!4896 = !DILocation(line: 228, column: 42, scope: !4834)
!4897 = !DILocation(line: 229, column: 4, scope: !4834)
!4898 = !DILocation(line: 229, column: 12, scope: !4834)
!4899 = !DILocation(line: 229, column: 21, scope: !4834)
!4900 = !DILocation(line: 229, column: 25, scope: !4834)
!4901 = !DILocation(line: 229, column: 33, scope: !4834)
!4902 = !DILocation(line: 229, column: 42, scope: !4834)
!4903 = !DILocation(line: 229, column: 24, scope: !4834)
!4904 = !DILocation(line: 0, scope: !4834)
!4905 = !DILocation(line: 227, column: 2, scope: !4834)
!4906 = !DILocation(line: 230, column: 1, scope: !4834)
!4907 = distinct !DISubprogram(name: "to_xenbus_driver", scope: !197, file: !197, line: 114, type: !4908, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4908 = !DISubroutineType(types: !4909)
!4909 = !{!4258, !3489}
!4910 = !DILocalVariable(name: "drv", arg: 1, scope: !4907, file: !197, line: 114, type: !3489)
!4911 = !DILocation(line: 114, column: 76, scope: !4907)
!4912 = !DILocalVariable(name: "__mptr", scope: !4913, file: !197, line: 116, type: !194)
!4913 = distinct !DILexicalBlock(scope: !4907, file: !197, line: 116, column: 9)
!4914 = !DILocation(line: 116, column: 9, scope: !4913)
!4915 = !DILocation(line: 116, column: 9, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4913, file: !197, line: 116, column: 9)
!4917 = !DILocation(line: 116, column: 2, scope: !4907)
!4918 = distinct !DISubprogram(name: "essential_device_connecting", scope: !3, file: !3, line: 231, type: !4775, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4919 = !DILocalVariable(name: "dev", arg: 1, scope: !4918, file: !3, line: 231, type: !3418)
!4920 = !DILocation(line: 231, column: 55, scope: !4918)
!4921 = !DILocalVariable(name: "data", arg: 2, scope: !4918, file: !3, line: 231, type: !194)
!4922 = !DILocation(line: 231, column: 66, scope: !4918)
!4923 = !DILocation(line: 233, column: 30, scope: !4918)
!4924 = !DILocation(line: 233, column: 35, scope: !4918)
!4925 = !DILocation(line: 233, column: 9, scope: !4918)
!4926 = !DILocation(line: 233, column: 2, scope: !4918)
!4927 = distinct !DISubprogram(name: "frontend_probe_and_watch", scope: !3, file: !3, line: 475, type: !4324, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4928 = !DILocalVariable(name: "notifier", arg: 1, scope: !4927, file: !3, line: 475, type: !4326)
!4929 = !DILocation(line: 475, column: 60, scope: !4927)
!4930 = !DILocalVariable(name: "event", arg: 2, scope: !4927, file: !3, line: 476, type: !329)
!4931 = !DILocation(line: 476, column: 22, scope: !4927)
!4932 = !DILocalVariable(name: "data", arg: 3, scope: !4927, file: !3, line: 477, type: !194)
!4933 = !DILocation(line: 477, column: 14, scope: !4927)
!4934 = !DILocation(line: 480, column: 6, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4927, file: !3, line: 480, column: 6)
!4936 = !DILocation(line: 480, column: 6, scope: !4927)
!4937 = !DILocation(line: 481, column: 3, scope: !4935)
!4938 = !DILocation(line: 483, column: 2, scope: !4927)
!4939 = !DILocation(line: 484, column: 2, scope: !4927)
!4940 = !DILocation(line: 486, column: 2, scope: !4927)
!4941 = distinct !DISubprogram(name: "xenbus_reset_state", scope: !3, file: !3, line: 454, type: !1925, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!4942 = !DILocalVariable(name: "devclass", scope: !4941, file: !3, line: 456, type: !4943)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!4944 = !DILocation(line: 456, column: 9, scope: !4941)
!4945 = !DILocalVariable(name: "dev", scope: !4941, file: !3, line: 456, type: !4943)
!4946 = !DILocation(line: 456, column: 21, scope: !4941)
!4947 = !DILocalVariable(name: "devclass_n", scope: !4941, file: !3, line: 457, type: !206)
!4948 = !DILocation(line: 457, column: 6, scope: !4941)
!4949 = !DILocalVariable(name: "dev_n", scope: !4941, file: !3, line: 457, type: !206)
!4950 = !DILocation(line: 457, column: 18, scope: !4941)
!4951 = !DILocalVariable(name: "i", scope: !4941, file: !3, line: 458, type: !206)
!4952 = !DILocation(line: 458, column: 6, scope: !4941)
!4953 = !DILocalVariable(name: "j", scope: !4941, file: !3, line: 458, type: !206)
!4954 = !DILocation(line: 458, column: 9, scope: !4941)
!4955 = !DILocation(line: 460, column: 30, scope: !4941)
!4956 = !DILocation(line: 460, column: 13, scope: !4941)
!4957 = !DILocation(line: 460, column: 11, scope: !4941)
!4958 = !DILocation(line: 461, column: 13, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 461, column: 6)
!4960 = !DILocation(line: 461, column: 6, scope: !4959)
!4961 = !DILocation(line: 461, column: 6, scope: !4941)
!4962 = !DILocation(line: 462, column: 3, scope: !4959)
!4963 = !DILocation(line: 464, column: 9, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 464, column: 2)
!4965 = !DILocation(line: 464, column: 7, scope: !4964)
!4966 = !DILocation(line: 464, column: 14, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 464, column: 2)
!4968 = !DILocation(line: 464, column: 18, scope: !4967)
!4969 = !DILocation(line: 464, column: 16, scope: !4967)
!4970 = !DILocation(line: 464, column: 2, scope: !4964)
!4971 = !DILocation(line: 465, column: 26, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4967, file: !3, line: 464, column: 35)
!4973 = !DILocation(line: 465, column: 45, scope: !4972)
!4974 = !DILocation(line: 465, column: 54, scope: !4972)
!4975 = !DILocation(line: 465, column: 9, scope: !4972)
!4976 = !DILocation(line: 465, column: 7, scope: !4972)
!4977 = !DILocation(line: 466, column: 14, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 466, column: 7)
!4979 = !DILocation(line: 466, column: 7, scope: !4978)
!4980 = !DILocation(line: 466, column: 7, scope: !4972)
!4981 = !DILocation(line: 467, column: 4, scope: !4978)
!4982 = !DILocation(line: 468, column: 10, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 468, column: 3)
!4984 = !DILocation(line: 468, column: 8, scope: !4983)
!4985 = !DILocation(line: 468, column: 15, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 468, column: 3)
!4987 = !DILocation(line: 468, column: 19, scope: !4986)
!4988 = !DILocation(line: 468, column: 17, scope: !4986)
!4989 = !DILocation(line: 468, column: 3, scope: !4983)
!4990 = !DILocation(line: 469, column: 26, scope: !4986)
!4991 = !DILocation(line: 469, column: 35, scope: !4986)
!4992 = !DILocation(line: 469, column: 39, scope: !4986)
!4993 = !DILocation(line: 469, column: 43, scope: !4986)
!4994 = !DILocation(line: 469, column: 4, scope: !4986)
!4995 = !DILocation(line: 468, column: 27, scope: !4986)
!4996 = !DILocation(line: 468, column: 3, scope: !4986)
!4997 = distinct !{!4997, !4989, !4998}
!4998 = !DILocation(line: 469, column: 45, scope: !4983)
!4999 = !DILocation(line: 470, column: 9, scope: !4972)
!5000 = !DILocation(line: 470, column: 3, scope: !4972)
!5001 = !DILocation(line: 471, column: 2, scope: !4972)
!5002 = !DILocation(line: 464, column: 31, scope: !4967)
!5003 = !DILocation(line: 464, column: 2, scope: !4967)
!5004 = distinct !{!5004, !4970, !5005}
!5005 = !DILocation(line: 471, column: 2, scope: !4964)
!5006 = !DILocation(line: 472, column: 8, scope: !4941)
!5007 = !DILocation(line: 472, column: 2, scope: !4941)
!5008 = !DILocation(line: 473, column: 1, scope: !4941)
!5009 = distinct !DISubprogram(name: "IS_ERR", scope: !5010, file: !5010, line: 34, type: !5011, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5010 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5011 = !DISubroutineType(types: !5012)
!5012 = !{!495, !2171}
!5013 = !DILocalVariable(name: "ptr", arg: 1, scope: !5009, file: !5010, line: 34, type: !2171)
!5014 = !DILocation(line: 34, column: 60, scope: !5009)
!5015 = !DILocation(line: 36, column: 9, scope: !5009)
!5016 = !DILocation(line: 36, column: 2, scope: !5009)
!5017 = distinct !DISubprogram(name: "xenbus_check_frontend", scope: !3, file: !3, line: 421, type: !5018, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5018 = !DISubroutineType(types: !5019)
!5019 = !{null, !280, !280}
!5020 = !DILocalVariable(name: "class", arg: 1, scope: !5017, file: !3, line: 421, type: !280)
!5021 = !DILocation(line: 421, column: 41, scope: !5017)
!5022 = !DILocalVariable(name: "dev", arg: 2, scope: !5017, file: !3, line: 421, type: !280)
!5023 = !DILocation(line: 421, column: 54, scope: !5017)
!5024 = !DILocalVariable(name: "be_state", scope: !5017, file: !3, line: 423, type: !206)
!5025 = !DILocation(line: 423, column: 6, scope: !5017)
!5026 = !DILocalVariable(name: "fe_state", scope: !5017, file: !3, line: 423, type: !206)
!5027 = !DILocation(line: 423, column: 16, scope: !5017)
!5028 = !DILocalVariable(name: "err", scope: !5017, file: !3, line: 423, type: !206)
!5029 = !DILocation(line: 423, column: 26, scope: !5017)
!5030 = !DILocalVariable(name: "backend", scope: !5017, file: !3, line: 424, type: !280)
!5031 = !DILocation(line: 424, column: 8, scope: !5017)
!5032 = !DILocalVariable(name: "frontend", scope: !5017, file: !3, line: 424, type: !280)
!5033 = !DILocation(line: 424, column: 18, scope: !5017)
!5034 = !DILocation(line: 426, column: 62, scope: !5017)
!5035 = !DILocation(line: 426, column: 69, scope: !5017)
!5036 = !DILocation(line: 426, column: 13, scope: !5017)
!5037 = !DILocation(line: 426, column: 11, scope: !5017)
!5038 = !DILocation(line: 427, column: 7, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 427, column: 6)
!5040 = !DILocation(line: 427, column: 6, scope: !5017)
!5041 = !DILocation(line: 428, column: 3, scope: !5039)
!5042 = !DILocation(line: 430, column: 21, scope: !5017)
!5043 = !DILocation(line: 430, column: 30, scope: !5017)
!5044 = !DILocation(line: 430, column: 8, scope: !5017)
!5045 = !DILocation(line: 430, column: 6, scope: !5017)
!5046 = !DILocation(line: 431, column: 6, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 431, column: 6)
!5048 = !DILocation(line: 431, column: 10, scope: !5047)
!5049 = !DILocation(line: 431, column: 6, scope: !5017)
!5050 = !DILocation(line: 432, column: 3, scope: !5047)
!5051 = !DILocation(line: 434, column: 10, scope: !5017)
!5052 = !DILocation(line: 434, column: 2, scope: !5017)
!5053 = !DILocation(line: 438, column: 5, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 434, column: 20)
!5055 = !DILocation(line: 438, column: 31, scope: !5054)
!5056 = !DILocation(line: 438, column: 15, scope: !5054)
!5057 = !DILocation(line: 437, column: 3, scope: !5054)
!5058 = !DILocation(line: 439, column: 25, scope: !5054)
!5059 = !DILocation(line: 439, column: 34, scope: !5054)
!5060 = !DILocation(line: 439, column: 13, scope: !5054)
!5061 = !DILocation(line: 439, column: 11, scope: !5054)
!5062 = !DILocation(line: 440, column: 8, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 440, column: 7)
!5064 = !DILocation(line: 440, column: 16, scope: !5063)
!5065 = !DILocation(line: 440, column: 26, scope: !5063)
!5066 = !DILocation(line: 440, column: 19, scope: !5063)
!5067 = !DILocation(line: 440, column: 7, scope: !5054)
!5068 = !DILocation(line: 441, column: 4, scope: !5063)
!5069 = !DILocation(line: 442, column: 22, scope: !5054)
!5070 = !DILocation(line: 442, column: 31, scope: !5054)
!5071 = !DILocation(line: 442, column: 9, scope: !5054)
!5072 = !DILocation(line: 442, column: 7, scope: !5054)
!5073 = !DILocation(line: 443, column: 7, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 443, column: 7)
!5075 = !DILocation(line: 443, column: 11, scope: !5074)
!5076 = !DILocation(line: 443, column: 7, scope: !5054)
!5077 = !DILocation(line: 444, column: 26, scope: !5074)
!5078 = !DILocation(line: 444, column: 36, scope: !5074)
!5079 = !DILocation(line: 444, column: 45, scope: !5074)
!5080 = !DILocation(line: 444, column: 4, scope: !5074)
!5081 = !DILocation(line: 445, column: 9, scope: !5054)
!5082 = !DILocation(line: 445, column: 3, scope: !5054)
!5083 = !DILocation(line: 446, column: 3, scope: !5054)
!5084 = !DILocation(line: 448, column: 3, scope: !5054)
!5085 = !DILocation(line: 449, column: 2, scope: !5054)
!5086 = !DILabel(scope: !5017, name: "out", file: !3, line: 450)
!5087 = !DILocation(line: 450, column: 1, scope: !5017)
!5088 = !DILocation(line: 451, column: 8, scope: !5017)
!5089 = !DILocation(line: 451, column: 2, scope: !5017)
!5090 = !DILocation(line: 452, column: 1, scope: !5017)
!5091 = distinct !DISubprogram(name: "xenbus_reset_frontend", scope: !3, file: !3, line: 381, type: !5092, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5092 = !DISubroutineType(types: !5093)
!5093 = !{null, !280, !280, !206}
!5094 = !DILocalVariable(name: "fe", arg: 1, scope: !5091, file: !3, line: 381, type: !280)
!5095 = !DILocation(line: 381, column: 41, scope: !5091)
!5096 = !DILocalVariable(name: "be", arg: 2, scope: !5091, file: !3, line: 381, type: !280)
!5097 = !DILocation(line: 381, column: 51, scope: !5091)
!5098 = !DILocalVariable(name: "be_state", arg: 3, scope: !5091, file: !3, line: 381, type: !206)
!5099 = !DILocation(line: 381, column: 59, scope: !5091)
!5100 = !DILocalVariable(name: "be_watch", scope: !5091, file: !3, line: 383, type: !208)
!5101 = !DILocation(line: 383, column: 22, scope: !5091)
!5102 = !DILocation(line: 386, column: 4, scope: !5091)
!5103 = !DILocation(line: 386, column: 24, scope: !5091)
!5104 = !DILocation(line: 386, column: 8, scope: !5091)
!5105 = !DILocation(line: 385, column: 2, scope: !5091)
!5106 = !DILocation(line: 388, column: 2, scope: !5091)
!5107 = !DILocation(line: 389, column: 63, scope: !5091)
!5108 = !DILocation(line: 389, column: 18, scope: !5091)
!5109 = !DILocation(line: 389, column: 11, scope: !5091)
!5110 = !DILocation(line: 389, column: 16, scope: !5091)
!5111 = !DILocation(line: 390, column: 16, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5091, file: !3, line: 390, column: 6)
!5113 = !DILocation(line: 390, column: 7, scope: !5112)
!5114 = !DILocation(line: 390, column: 6, scope: !5091)
!5115 = !DILocation(line: 391, column: 3, scope: !5112)
!5116 = !DILocation(line: 393, column: 11, scope: !5091)
!5117 = !DILocation(line: 393, column: 20, scope: !5091)
!5118 = !DILocation(line: 394, column: 16, scope: !5091)
!5119 = !DILocation(line: 396, column: 2, scope: !5091)
!5120 = !DILocation(line: 397, column: 2, scope: !5091)
!5121 = !DILocation(line: 400, column: 10, scope: !5091)
!5122 = !DILocation(line: 400, column: 2, scope: !5091)
!5123 = !DILocation(line: 402, column: 17, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5091, file: !3, line: 400, column: 20)
!5125 = !DILocation(line: 402, column: 26, scope: !5124)
!5126 = !DILocation(line: 402, column: 3, scope: !5124)
!5127 = !DILocation(line: 403, column: 33, scope: !5124)
!5128 = !DILocation(line: 403, column: 3, scope: !5124)
!5129 = !DILocation(line: 407, column: 17, scope: !5124)
!5130 = !DILocation(line: 407, column: 26, scope: !5124)
!5131 = !DILocation(line: 407, column: 3, scope: !5124)
!5132 = !DILocation(line: 408, column: 33, scope: !5124)
!5133 = !DILocation(line: 408, column: 3, scope: !5124)
!5134 = !DILocation(line: 412, column: 17, scope: !5124)
!5135 = !DILocation(line: 412, column: 26, scope: !5124)
!5136 = !DILocation(line: 412, column: 3, scope: !5124)
!5137 = !DILocation(line: 413, column: 33, scope: !5124)
!5138 = !DILocation(line: 413, column: 3, scope: !5124)
!5139 = !DILocation(line: 414, column: 2, scope: !5124)
!5140 = !DILocation(line: 416, column: 2, scope: !5091)
!5141 = !DILocation(line: 417, column: 2, scope: !5091)
!5142 = !DILocation(line: 418, column: 17, scope: !5091)
!5143 = !DILocation(line: 418, column: 2, scope: !5091)
!5144 = !DILocation(line: 419, column: 1, scope: !5091)
!5145 = distinct !DISubprogram(name: "xenbus_reset_backend_state_changed", scope: !3, file: !3, line: 356, type: !219, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5146 = !DILocalVariable(name: "w", arg: 1, scope: !5145, file: !3, line: 356, type: !221)
!5147 = !DILocation(line: 356, column: 69, scope: !5145)
!5148 = !DILocalVariable(name: "path", arg: 2, scope: !5145, file: !3, line: 357, type: !200)
!5149 = !DILocation(line: 357, column: 18, scope: !5145)
!5150 = !DILocalVariable(name: "token", arg: 3, scope: !5145, file: !3, line: 357, type: !200)
!5151 = !DILocation(line: 357, column: 36, scope: !5145)
!5152 = !DILocation(line: 359, column: 19, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 359, column: 6)
!5154 = !DILocation(line: 359, column: 28, scope: !5153)
!5155 = !DILocation(line: 359, column: 6, scope: !5153)
!5156 = !DILocation(line: 360, column: 21, scope: !5153)
!5157 = !DILocation(line: 359, column: 6, scope: !5145)
!5158 = !DILocation(line: 361, column: 17, scope: !5153)
!5159 = !DILocation(line: 361, column: 3, scope: !5153)
!5160 = !DILocation(line: 363, column: 9, scope: !5145)
!5161 = !DILocation(line: 363, column: 31, scope: !5145)
!5162 = !DILocation(line: 363, column: 15, scope: !5145)
!5163 = !DILocation(line: 362, column: 2, scope: !5145)
!5164 = !DILocation(line: 364, column: 2, scope: !5145)
!5165 = !DILocation(line: 365, column: 1, scope: !5145)
!5166 = distinct !DISubprogram(name: "xenbus_reset_wait_for_backend", scope: !3, file: !3, line: 367, type: !5167, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5167 = !DISubroutineType(types: !5168)
!5168 = !{null, !280, !206}
!5169 = !DILocalVariable(name: "be", arg: 1, scope: !5166, file: !3, line: 367, type: !280)
!5170 = !DILocation(line: 367, column: 49, scope: !5166)
!5171 = !DILocalVariable(name: "expected", arg: 2, scope: !5166, file: !3, line: 367, type: !206)
!5172 = !DILocation(line: 367, column: 57, scope: !5166)
!5173 = !DILocalVariable(name: "timeout", scope: !5166, file: !3, line: 369, type: !149)
!5174 = !DILocation(line: 369, column: 7, scope: !5166)
!5175 = !DILocalVariable(name: "__ret", scope: !5176, file: !3, line: 370, type: !149)
!5176 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 370, column: 12)
!5177 = !DILocation(line: 370, column: 12, scope: !5176)
!5178 = !DILocation(line: 370, column: 12, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 370, column: 12)
!5180 = !DILocation(line: 370, column: 12, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 370, column: 12)
!5182 = !DILocalVariable(name: "__cond", scope: !5183, file: !3, line: 370, type: !495)
!5183 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 370, column: 12)
!5184 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 370, column: 12)
!5185 = !DILocation(line: 370, column: 12, scope: !5183)
!5186 = !DILocation(line: 370, column: 12, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 370, column: 12)
!5188 = !DILocation(line: 370, column: 12, scope: !5184)
!5189 = !DILocalVariable(name: "__wq_entry", scope: !5190, file: !3, line: 370, type: !5191)
!5190 = distinct !DILexicalBlock(scope: !5184, file: !3, line: 370, column: 12)
!5191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1528, line: 29, size: 320, elements: !5192)
!5192 = !{!5193, !5194, !5195, !5201}
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5191, file: !1528, line: 30, baseType: !7, size: 32)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5191, file: !1528, line: 31, baseType: !194, size: 64, offset: 64)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5191, file: !1528, line: 32, baseType: !5196, size: 64, offset: 128)
!5196 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1528, line: 16, baseType: !5197)
!5197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5198, size: 64)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!206, !5200, !7, !206, !194}
!5200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5191, size: 64)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5191, file: !1528, line: 33, baseType: !211, size: 128, offset: 192)
!5202 = !DILocation(line: 370, column: 12, scope: !5190)
!5203 = !DILocalVariable(name: "__ret", scope: !5190, file: !3, line: 370, type: !149)
!5204 = !DILocalVariable(name: "__int", scope: !5205, file: !3, line: 370, type: !149)
!5205 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 370, column: 12)
!5206 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 370, column: 12)
!5207 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 370, column: 12)
!5208 = !DILocation(line: 370, column: 12, scope: !5205)
!5209 = !DILocalVariable(name: "__cond", scope: !5210, file: !3, line: 370, type: !495)
!5210 = distinct !DILexicalBlock(scope: !5211, file: !3, line: 370, column: 12)
!5211 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 370, column: 12)
!5212 = !DILocation(line: 370, column: 12, scope: !5210)
!5213 = !DILocation(line: 370, column: 12, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 370, column: 12)
!5215 = !DILocation(line: 370, column: 12, scope: !5211)
!5216 = !DILocation(line: 370, column: 12, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 370, column: 12)
!5218 = !DILocation(line: 370, column: 12, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5217, file: !3, line: 370, column: 12)
!5220 = !DILocation(line: 370, column: 12, scope: !5206)
!5221 = distinct !{!5221, !5222, !5222}
!5222 = !DILocation(line: 370, column: 12, scope: !5207)
!5223 = !DILabel(scope: !5190, name: "__out", file: !3, line: 370)
!5224 = !DILocation(line: 370, column: 10, scope: !5166)
!5225 = !DILocation(line: 372, column: 6, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5166, file: !3, line: 372, column: 6)
!5227 = !DILocation(line: 372, column: 14, scope: !5226)
!5228 = !DILocation(line: 372, column: 6, scope: !5166)
!5229 = !DILocation(line: 373, column: 3, scope: !5226)
!5230 = !DILocation(line: 374, column: 1, scope: !5166)
!5231 = distinct !DISubprogram(name: "frontend_changed", scope: !3, file: !3, line: 177, type: !219, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !253)
!5232 = !DILocalVariable(name: "watch", arg: 1, scope: !5231, file: !3, line: 177, type: !221)
!5233 = !DILocation(line: 177, column: 51, scope: !5231)
!5234 = !DILocalVariable(name: "path", arg: 2, scope: !5231, file: !3, line: 178, type: !200)
!5235 = !DILocation(line: 178, column: 21, scope: !5231)
!5236 = !DILocalVariable(name: "token", arg: 3, scope: !5231, file: !3, line: 178, type: !200)
!5237 = !DILocation(line: 178, column: 39, scope: !5231)
!5238 = !DILocation(line: 180, column: 2, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 180, column: 2)
!5240 = distinct !DILexicalBlock(scope: !5231, file: !3, line: 180, column: 2)
!5241 = !DILocation(line: 180, column: 2, scope: !5240)
!5242 = !DILocation(line: 182, column: 21, scope: !5231)
!5243 = !DILocation(line: 182, column: 2, scope: !5231)
!5244 = !DILocation(line: 183, column: 1, scope: !5231)
