; ModuleID = '../bcout/drivers/input/misc/xen-kbdfront.llvm.bc'
source_filename = "drivers/input/misc/xen-kbdfront.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_xenkbd_init6:\09\09\09"
module asm ".long\09xenkbd_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.kparam_array = type { i32, i32, i32*, %struct.kernel_param_ops*, i8* }
%struct.xenbus_driver = type { i8*, %struct.xenbus_device_id*, i8, i32 (%struct.xenbus_device*, %struct.xenbus_device_id*)*, void (%struct.xenbus_device*, i32)*, i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*, %struct.kobj_uevent_env*)*, %struct.device_driver, i32 (%struct.xenbus_device*)*, i32 (%struct.xenbus_device*)*, void (%struct.xenbus_device*)* }
%struct.xenbus_device_id = type { [32 x i8] }
%struct.xenbus_device = type { i8*, i8*, i8*, i32, %struct.xenbus_watch, %struct.device, i32, %struct.completion, %struct.work_struct, %struct.semaphore }
%struct.xenbus_watch = type { %struct.list_head, i8*, void (%struct.xenbus_watch*, i8*, i8*)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
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
%struct.msi_desc = type { %struct.list_head, i32, i32, %struct.device*, %struct.msi_msg, %struct.irq_affinity_desc*, void (%struct.msi_desc*, i8*)*, i8*, %union.anon.66 }
%struct.msi_msg = type { i32, i32, i32 }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { i32, %struct.anon.68, %union.anon.69 }
%struct.anon.68 = type { i16, i16, i32 }
%union.anon.69 = type { i8* }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.kmem_cache = type opaque
%struct.xenkbd_info = type { %struct.input_dev*, %struct.input_dev*, %struct.input_dev*, %struct.xenkbd_page*, i32, i32, %struct.xenbus_device*, [32 x i8], i32 }
%struct.input_dev = type { i8*, i8*, i8*, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, i8*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*)*, %struct.ff_device*, %struct.input_dev_poller*, i32, %struct.timer_list, [2 x i32], %struct.input_mt*, %struct.input_absinfo*, [12 x i64], [1 x i64], [1 x i64], [1 x i64], i32 (%struct.input_dev*)*, void (%struct.input_dev*)*, i32 (%struct.input_dev*, %struct.file*)*, i32 (%struct.input_dev*, i32, i32, i32)*, %struct.input_handle*, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, %struct.input_value*, i8, [3 x i64] }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.ff_device = type { i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32, i32)*, void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)*, void (%struct.ff_device*)*, i8*, [2 x i64], %struct.mutex, i32, %struct.ff_effect*, [0 x %struct.file*] }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.70 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.70 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, i16* }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.input_dev_poller = type opaque
%struct.input_mt = type { i32, i32, i32, i32, i32, i32*, [0 x %struct.input_mt_slot] }
%struct.input_mt_slot = type { [14 x i32], i32, i32 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_handle = type { i8*, i32, i8*, %struct.input_dev*, %struct.input_handler*, %struct.list_head, %struct.list_head }
%struct.input_handler = type { i8*, void (%struct.input_handle*, i32, i32, i32)*, void (%struct.input_handle*, %struct.input_value*, i32)*, i1 (%struct.input_handle*, i32, i32, i32)*, i1 (%struct.input_handler*, %struct.input_dev*)*, i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)*, void (%struct.input_handle*)*, void (%struct.input_handle*)*, i8, i32, i8*, %struct.input_device_id*, %struct.list_head, %struct.list_head }
%struct.input_device_id = type { i64, i16, i16, i16, i16, [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }
%struct.input_value = type { i16, i16, i32 }
%struct.xenkbd_page = type { i32, i32, i32, i32 }
%struct.xenbus_transaction = type { i32 }
%union.xenkbd_in_event = type { %struct.xenkbd_motion, [24 x i8] }
%struct.xenkbd_motion = type { i8, i32, i32, i32 }
%struct.xenkbd_key = type { i8, i8, i32 }
%struct.xenkbd_position = type { i8, i32, i32, i32 }
%struct.xenkbd_mtouch = type { i8, i8, i8, [5 x i8], %union.anon.71 }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { i32, i32 }
%struct.anon.73 = type { i32, i32 }

@__param_str_ptr_size = internal constant [22 x i8] c"xen_kbdfront.ptr_size\00", align 16, !dbg !0
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 8
@__param_arr_ptr_size = internal constant %struct.kparam_array { i32 2, i32 4, i32* null, %struct.kernel_param_ops* @param_ops_int, i8* bitcast ([2 x i32]* @ptr_size to i8*) }, align 8, !dbg !348
@__param_ptr_size = internal constant { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, { %struct.kparam_array* } } { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__param_str_ptr_size, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_array_ops, i16 292, i8 -1, i8 0, { %struct.kparam_array* } { %struct.kparam_array* @__param_arr_ptr_size } }, section "__param", align 8, !dbg !248
@__UNIQUE_ID_ptr_sizetype239 = internal constant [44 x i8] c"xen_kbdfront.parmtype=ptr_size:array of int\00", section ".modinfo", align 1, !dbg !309
@__UNIQUE_ID_ptr_size240 = internal constant [85 x i8] c"xen_kbdfront.parm=ptr_size:Pointing device width, height in pixels (default 800,600)\00", section ".modinfo", align 1, !dbg !314
@xenkbd_driver = internal global %struct.xenbus_driver { i8* null, %struct.xenbus_device_id* getelementptr inbounds ([2 x %struct.xenbus_device_id], [2 x %struct.xenbus_device_id]* @xenkbd_ids, i32 0, i32 0), i8 0, i32 (%struct.xenbus_device*, %struct.xenbus_device_id*)* @xenkbd_probe, void (%struct.xenbus_device*, i32)* @xenkbd_backend_changed, i32 (%struct.xenbus_device*)* @xenkbd_remove, i32 (%struct.xenbus_device*)* null, i32 (%struct.xenbus_device*)* @xenkbd_resume, i32 (%struct.xenbus_device*, %struct.kobj_uevent_env*)* null, %struct.device_driver zeroinitializer, i32 (%struct.xenbus_device*)* null, i32 (%struct.xenbus_device*)* null, void (%struct.xenbus_device*)* null }, align 8, !dbg !355
@__UNIQUE_ID___addressable_xenkbd_init241 = internal global i8* bitcast (i32 ()* @xenkbd_init to i8*), section ".discard.addressable", align 8, !dbg !319
@__exitcall_xenkbd_cleanup = internal global void ()* @xenkbd_cleanup, section ".exitcall.exit", align 8, !dbg !321
@__UNIQUE_ID_description242 = internal constant [70 x i8] c"xen_kbdfront.description=Xen virtual keyboard/pointer device frontend\00", section ".modinfo", align 1, !dbg !328
@__UNIQUE_ID_file243 = internal constant [50 x i8] c"xen_kbdfront.file=drivers/input/misc/xen-kbdfront\00", section ".modinfo", align 1, !dbg !333
@__UNIQUE_ID_license244 = internal constant [25 x i8] c"xen_kbdfront.license=GPL\00", section ".modinfo", align 1, !dbg !338
@__UNIQUE_ID_alias245 = internal constant [28 x i8] c"xen_kbdfront.alias=xen:vkbd\00", section ".modinfo", align 1, !dbg !343
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@ptr_size = internal global [2 x i32] [i32 800, i32 600], align 4, !dbg !350
@xenkbd_ids = internal constant [2 x %struct.xenbus_device_id] [%struct.xenbus_device_id { [32 x i8] c"vkbd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.xenbus_device_id zeroinitializer], align 16, !dbg !4379
@.str = private unnamed_addr constant [26 x i8] c"allocating info structure\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"xenbus/%s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"feature-disable-keyboard\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"feature-disable-pointer\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"feature-multi-touch\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"request-multi-touch\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"\014xen_kbdfront: xenkbd: can't request multi-touch\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Xen Virtual Keyboard\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"input_register_device(kbd)\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"feature-abs-pointer\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"request-abs-pointer\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"\014xen_kbdfront: xenkbd: can't request abs-pointer\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Xen Virtual Pointer\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"input_register_device(ptr)\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"multi-touch-num-contacts\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"multi-touch-width\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"multi-touch-height\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Xen Virtual Multi-touch\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"input_mt_init_slots\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"input_register_device(mtouch)\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"allocating device memory\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.24 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"bind_evtchn_to_irqhandler\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"starting transaction\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"page-ref\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"page-gref\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"event-channel\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"completing transaction\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"writing xenstore\00", align 1
@xen_features = external dso_local global [32 x i8], align 16
@xen_p2m_size = external dso_local global i64, align 8
@xen_p2m_addr = external dso_local global i64*, align 8
@xen_max_p2m_pfn = external dso_local global i64, align 8
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@.str.34 = private unnamed_addr constant [40 x i8] c"\014xen_kbdfront: unhandled keycode 0x%x\0A\00", align 1
@xen_domain_type = external dso_local global i32, align 4
@xen_start_flags = external dso_local global i32, align 4
@.str.35 = private unnamed_addr constant [13 x i8] c"xen_kbdfront\00", align 1
@llvm.used = appending global [10 x i8*] [i8* bitcast ({ i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, { %struct.kparam_array* } }* @__param_ptr_size to i8*), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__UNIQUE_ID_ptr_sizetype239, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__UNIQUE_ID_ptr_size240, i32 0, i32 0), i8* bitcast (void ()* @xenkbd_cleanup to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_xenkbd_init241 to i8*), i8* bitcast (void ()** @__exitcall_xenkbd_cleanup to i8*), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__UNIQUE_ID_description242, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__UNIQUE_ID_file243, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_license244, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__UNIQUE_ID_alias245, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @xenkbd_cleanup() #0 section ".exit.text" !dbg !4390 {
entry:
  call void @xenbus_unregister_driver(%struct.xenbus_driver* @xenkbd_driver) #9, !dbg !4391
  ret void, !dbg !4392
}

; Function Attrs: noredzone
declare dso_local void @xenbus_unregister_driver(%struct.xenbus_driver*) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @xenkbd_init() #0 section ".init.text" !dbg !4393 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @xen_domain_type, align 4, !dbg !4396
  %cmp = icmp ne i32 %0, 0, !dbg !4396
  br i1 %cmp, label %if.end, label %if.then, !dbg !4398

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4399
  br label %return, !dbg !4399

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @xen_domain_type, align 4, !dbg !4400
  %cmp1 = icmp ne i32 %1, 0, !dbg !4400
  br i1 %cmp1, label %land.lhs.true, label %if.end3, !dbg !4400

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* @xen_start_flags, align 4, !dbg !4400
  %and = and i32 %2, 2, !dbg !4400
  %tobool = icmp ne i32 %and, 0, !dbg !4400
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !4402

if.then2:                                         ; preds = %land.lhs.true
  store i32 -19, i32* %retval, align 4, !dbg !4403
  br label %return, !dbg !4403

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %call = call zeroext i1 @xen_has_pv_devices() #9, !dbg !4404
  br i1 %call, label %if.end5, label %if.then4, !dbg !4406

if.then4:                                         ; preds = %if.end3
  store i32 -19, i32* %retval, align 4, !dbg !4407
  br label %return, !dbg !4407

if.end5:                                          ; preds = %if.end3
  %call6 = call i32 @__xenbus_register_frontend(%struct.xenbus_driver* @xenkbd_driver, %struct.module* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0)) #9, !dbg !4408
  store i32 %call6, i32* %retval, align 4, !dbg !4409
  br label %return, !dbg !4409

return:                                           ; preds = %if.end5, %if.then4, %if.then2, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !4410
  ret i32 %3, !dbg !4410
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenkbd_probe(%struct.xenbus_device* %dev, %struct.xenbus_device_id* %id) #2 !dbg !4411 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %id.addr = alloca %struct.xenbus_device_id*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %with_mtouch = alloca i8, align 1
  %with_kbd = alloca i8, align 1
  %with_ptr = alloca i8, align 1
  %info = alloca %struct.xenkbd_info*, align 8
  %kbd = alloca %struct.input_dev*, align 8
  %ptr = alloca %struct.input_dev*, align 8
  %mtouch = alloca %struct.input_dev*, align 8
  %.compoundliteral = alloca %struct.xenbus_transaction, align 4
  %abs = alloca i32, align 4
  %.compoundliteral69 = alloca %struct.xenbus_transaction, align 4
  %num_cont = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !4412, metadata !DIExpression()), !dbg !4413
  store %struct.xenbus_device_id* %id, %struct.xenbus_device_id** %id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device_id** %id.addr, metadata !4414, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4416, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4418, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.declare(metadata i8* %with_mtouch, metadata !4420, metadata !DIExpression()), !dbg !4421
  call void @llvm.dbg.declare(metadata i8* %with_kbd, metadata !4422, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.declare(metadata i8* %with_ptr, metadata !4424, metadata !DIExpression()), !dbg !4425
  call void @llvm.dbg.declare(metadata %struct.xenkbd_info** %info, metadata !4426, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.declare(metadata %struct.input_dev** %kbd, metadata !4739, metadata !DIExpression()), !dbg !4740
  call void @llvm.dbg.declare(metadata %struct.input_dev** %ptr, metadata !4741, metadata !DIExpression()), !dbg !4742
  call void @llvm.dbg.declare(metadata %struct.input_dev** %mtouch, metadata !4743, metadata !DIExpression()), !dbg !4744
  %call = call i8* @kzalloc(i64 88, i32 3264) #9, !dbg !4745
  %0 = bitcast i8* %call to %struct.xenkbd_info*, !dbg !4745
  store %struct.xenkbd_info* %0, %struct.xenkbd_info** %info, align 8, !dbg !4746
  %1 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !4747
  %tobool = icmp ne %struct.xenkbd_info* %1, null, !dbg !4747
  br i1 %tobool, label %if.end, label %if.then, !dbg !4749

if.then:                                          ; preds = %entry
  %2 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4750
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %2, i32 -12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #9, !dbg !4752
  store i32 -12, i32* %retval, align 4, !dbg !4753
  br label %return, !dbg !4753

if.end:                                           ; preds = %entry
  %3 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4754
  %dev1 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %3, i32 0, i32 5, !dbg !4755
  %4 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !4756
  %5 = bitcast %struct.xenkbd_info* %4 to i8*, !dbg !4756
  call void @dev_set_drvdata(%struct.device* %dev1, i8* %5) #9, !dbg !4757
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4758
  %7 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !4759
  %xbdev = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %7, i32 0, i32 6, !dbg !4760
  store %struct.xenbus_device* %6, %struct.xenbus_device** %xbdev, align 8, !dbg !4761
  %8 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !4762
  %irq = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %8, i32 0, i32 5, !dbg !4763
  store i32 -1, i32* %irq, align 4, !dbg !4764
  %9 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !4765
  %gref = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %9, i32 0, i32 4, !dbg !4766
  store i32 -1, i32* %gref, align 8, !dbg !4767
  %10 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !4768
  %phys = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %10, i32 0, i32 7, !dbg !4769
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %phys, i64 0, i64 0, !dbg !4768
  %11 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4770
  %nodename = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %11, i32 0, i32 1, !dbg !4771
  %12 = load i8*, i8** %nodename, align 8, !dbg !4771
  %call2 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %12) #9, !dbg !4772
  %call3 = call i64 @__get_free_pages(i32 3520, i32 0) #9, !dbg !4773
  %13 = inttoptr i64 %call3 to i8*, !dbg !4774
  %14 = bitcast i8* %13 to %struct.xenkbd_page*, !dbg !4774
  %15 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !4775
  %page = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %15, i32 0, i32 3, !dbg !4776
  store %struct.xenkbd_page* %14, %struct.xenkbd_page** %page, align 8, !dbg !4777
  %16 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !4778
  %page4 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %16, i32 0, i32 3, !dbg !4780
  %17 = load %struct.xenkbd_page*, %struct.xenkbd_page** %page4, align 8, !dbg !4780
  %tobool5 = icmp ne %struct.xenkbd_page* %17, null, !dbg !4778
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !4781

if.then6:                                         ; preds = %if.end
  br label %error_nomem, !dbg !4782

if.end7:                                          ; preds = %if.end
  %18 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4783
  %otherend = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %18, i32 0, i32 2, !dbg !4784
  %19 = load i8*, i8** %otherend, align 8, !dbg !4784
  %call8 = call i32 @xenbus_read_unsigned(i8* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 0) #9, !dbg !4785
  %tobool9 = icmp ne i32 %call8, 0, !dbg !4786
  %lnot = xor i1 %tobool9, true, !dbg !4786
  %frombool = zext i1 %lnot to i8, !dbg !4787
  store i8 %frombool, i8* %with_kbd, align 1, !dbg !4787
  %20 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4788
  %otherend10 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %20, i32 0, i32 2, !dbg !4789
  %21 = load i8*, i8** %otherend10, align 8, !dbg !4789
  %call11 = call i32 @xenbus_read_unsigned(i8* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 0) #9, !dbg !4790
  %tobool12 = icmp ne i32 %call11, 0, !dbg !4791
  %lnot13 = xor i1 %tobool12, true, !dbg !4791
  %frombool14 = zext i1 %lnot13 to i8, !dbg !4792
  store i8 %frombool14, i8* %with_ptr, align 1, !dbg !4792
  %22 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4793
  %otherend15 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %22, i32 0, i32 2, !dbg !4794
  %23 = load i8*, i8** %otherend15, align 8, !dbg !4794
  %call16 = call i32 @xenbus_read_unsigned(i8* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 0) #9, !dbg !4795
  %tobool17 = icmp ne i32 %call16, 0, !dbg !4795
  %frombool18 = zext i1 %tobool17 to i8, !dbg !4796
  store i8 %frombool18, i8* %with_mtouch, align 1, !dbg !4796
  %24 = load i8, i8* %with_mtouch, align 1, !dbg !4797
  %tobool19 = trunc i8 %24 to i1, !dbg !4797
  br i1 %tobool19, label %if.then20, label %if.end28, !dbg !4799

if.then20:                                        ; preds = %if.end7
  %id21 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !4800
  store i32 0, i32* %id21, align 4, !dbg !4800
  %25 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4802
  %nodename22 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %25, i32 0, i32 1, !dbg !4803
  %26 = load i8*, i8** %nodename22, align 8, !dbg !4803
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral, i32 0, i32 0, !dbg !4804
  %27 = load i32, i32* %coerce.dive, align 4, !dbg !4804
  %call23 = call i32 @xenbus_write(i32 %27, i8* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !4804
  store i32 %call23, i32* %ret, align 4, !dbg !4805
  %28 = load i32, i32* %ret, align 4, !dbg !4806
  %tobool24 = icmp ne i32 %28, 0, !dbg !4806
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !4808

if.then25:                                        ; preds = %if.then20
  %call26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !4809
  store i8 0, i8* %with_mtouch, align 1, !dbg !4811
  br label %if.end27, !dbg !4812

if.end27:                                         ; preds = %if.then25, %if.then20
  br label %if.end28, !dbg !4813

if.end28:                                         ; preds = %if.end27, %if.end7
  %29 = load i8, i8* %with_kbd, align 1, !dbg !4814
  %tobool29 = trunc i8 %29 to i1, !dbg !4814
  br i1 %tobool29, label %if.then30, label %if.end58, !dbg !4816

if.then30:                                        ; preds = %if.end28
  %call31 = call %struct.input_dev* @input_allocate_device() #9, !dbg !4817
  store %struct.input_dev* %call31, %struct.input_dev** %kbd, align 8, !dbg !4819
  %30 = load %struct.input_dev*, %struct.input_dev** %kbd, align 8, !dbg !4820
  %tobool32 = icmp ne %struct.input_dev* %30, null, !dbg !4820
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !4822

if.then33:                                        ; preds = %if.then30
  br label %error_nomem, !dbg !4823

if.end34:                                         ; preds = %if.then30
  %31 = load %struct.input_dev*, %struct.input_dev** %kbd, align 8, !dbg !4824
  %name = getelementptr inbounds %struct.input_dev, %struct.input_dev* %31, i32 0, i32 0, !dbg !4825
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8** %name, align 8, !dbg !4826
  %32 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !4827
  %phys35 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %32, i32 0, i32 7, !dbg !4828
  %arraydecay36 = getelementptr inbounds [32 x i8], [32 x i8]* %phys35, i64 0, i64 0, !dbg !4827
  %33 = load %struct.input_dev*, %struct.input_dev** %kbd, align 8, !dbg !4829
  %phys37 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %33, i32 0, i32 1, !dbg !4830
  store i8* %arraydecay36, i8** %phys37, align 8, !dbg !4831
  %34 = load %struct.input_dev*, %struct.input_dev** %kbd, align 8, !dbg !4832
  %id38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 3, !dbg !4833
  %bustype = getelementptr inbounds %struct.input_id, %struct.input_id* %id38, i32 0, i32 0, !dbg !4834
  store i16 1, i16* %bustype, align 8, !dbg !4835
  %35 = load %struct.input_dev*, %struct.input_dev** %kbd, align 8, !dbg !4836
  %id39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %35, i32 0, i32 3, !dbg !4837
  %vendor = getelementptr inbounds %struct.input_id, %struct.input_id* %id39, i32 0, i32 1, !dbg !4838
  store i16 22611, i16* %vendor, align 2, !dbg !4839
  %36 = load %struct.input_dev*, %struct.input_dev** %kbd, align 8, !dbg !4840
  %id40 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %36, i32 0, i32 3, !dbg !4841
  %product = getelementptr inbounds %struct.input_id, %struct.input_id* %id40, i32 0, i32 2, !dbg !4842
  store i16 -1, i16* %product, align 4, !dbg !4843
  %37 = load %struct.input_dev*, %struct.input_dev** %kbd, align 8, !dbg !4844
  %evbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 5, !dbg !4845
  %arraydecay41 = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i64 0, i64 0, !dbg !4844
  call void @__set_bit(i64 1, i64* %arraydecay41) #9, !dbg !4846
  store i32 1, i32* %i, align 4, !dbg !4847
  br label %for.cond, !dbg !4849

for.cond:                                         ; preds = %for.inc, %if.end34
  %38 = load i32, i32* %i, align 4, !dbg !4850
  %cmp = icmp slt i32 %38, 240, !dbg !4852
  br i1 %cmp, label %for.body, label %for.end, !dbg !4853

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* %i, align 4, !dbg !4854
  %conv = sext i32 %39 to i64, !dbg !4854
  %40 = load %struct.input_dev*, %struct.input_dev** %kbd, align 8, !dbg !4855
  %keybit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %40, i32 0, i32 6, !dbg !4856
  %arraydecay42 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit, i64 0, i64 0, !dbg !4855
  call void @__set_bit(i64 %conv, i64* %arraydecay42) #9, !dbg !4857
  br label %for.inc, !dbg !4857

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4, !dbg !4858
  %inc = add i32 %41, 1, !dbg !4858
  store i32 %inc, i32* %i, align 4, !dbg !4858
  br label %for.cond, !dbg !4859, !llvm.loop !4860

for.end:                                          ; preds = %for.cond
  store i32 352, i32* %i, align 4, !dbg !4862
  br label %for.cond43, !dbg !4864

for.cond43:                                       ; preds = %for.inc50, %for.end
  %42 = load i32, i32* %i, align 4, !dbg !4865
  %cmp44 = icmp slt i32 %42, 767, !dbg !4867
  br i1 %cmp44, label %for.body46, label %for.end52, !dbg !4868

for.body46:                                       ; preds = %for.cond43
  %43 = load i32, i32* %i, align 4, !dbg !4869
  %conv47 = sext i32 %43 to i64, !dbg !4869
  %44 = load %struct.input_dev*, %struct.input_dev** %kbd, align 8, !dbg !4870
  %keybit48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 6, !dbg !4871
  %arraydecay49 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit48, i64 0, i64 0, !dbg !4870
  call void @__set_bit(i64 %conv47, i64* %arraydecay49) #9, !dbg !4872
  br label %for.inc50, !dbg !4872

for.inc50:                                        ; preds = %for.body46
  %45 = load i32, i32* %i, align 4, !dbg !4873
  %inc51 = add i32 %45, 1, !dbg !4873
  store i32 %inc51, i32* %i, align 4, !dbg !4873
  br label %for.cond43, !dbg !4874, !llvm.loop !4875

for.end52:                                        ; preds = %for.cond43
  %46 = load %struct.input_dev*, %struct.input_dev** %kbd, align 8, !dbg !4877
  %call53 = call i32 @input_register_device(%struct.input_dev* %46) #9, !dbg !4878
  store i32 %call53, i32* %ret, align 4, !dbg !4879
  %47 = load i32, i32* %ret, align 4, !dbg !4880
  %tobool54 = icmp ne i32 %47, 0, !dbg !4880
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !4882

if.then55:                                        ; preds = %for.end52
  %48 = load %struct.input_dev*, %struct.input_dev** %kbd, align 8, !dbg !4883
  call void @input_free_device(%struct.input_dev* %48) #9, !dbg !4885
  %49 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4886
  %50 = load i32, i32* %ret, align 4, !dbg !4887
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %49, i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !4888
  br label %error, !dbg !4889

if.end56:                                         ; preds = %for.end52
  %51 = load %struct.input_dev*, %struct.input_dev** %kbd, align 8, !dbg !4890
  %52 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !4891
  %kbd57 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %52, i32 0, i32 0, !dbg !4892
  store %struct.input_dev* %51, %struct.input_dev** %kbd57, align 8, !dbg !4893
  br label %if.end58, !dbg !4894

if.end58:                                         ; preds = %if.end56, %if.end28
  %53 = load i8, i8* %with_ptr, align 1, !dbg !4895
  %tobool59 = trunc i8 %53 to i1, !dbg !4895
  br i1 %tobool59, label %if.then60, label %if.end115, !dbg !4897

if.then60:                                        ; preds = %if.end58
  call void @llvm.dbg.declare(metadata i32* %abs, metadata !4898, metadata !DIExpression()), !dbg !4900
  %54 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4901
  %otherend61 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %54, i32 0, i32 2, !dbg !4902
  %55 = load i8*, i8** %otherend61, align 8, !dbg !4902
  %call62 = call i32 @xenbus_read_unsigned(i8* %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 0) #9, !dbg !4903
  store i32 %call62, i32* %abs, align 4, !dbg !4904
  %56 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4905
  %otherend63 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %56, i32 0, i32 2, !dbg !4906
  %57 = load i8*, i8** %otherend63, align 8, !dbg !4906
  %58 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @ptr_size, i64 0, i64 0), align 4, !dbg !4907
  %call64 = call i32 @xenbus_read_unsigned(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %58) #9, !dbg !4908
  store i32 %call64, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @ptr_size, i64 0, i64 0), align 4, !dbg !4909
  %59 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4910
  %otherend65 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %59, i32 0, i32 2, !dbg !4911
  %60 = load i8*, i8** %otherend65, align 8, !dbg !4911
  %61 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @ptr_size, i64 0, i64 1), align 4, !dbg !4912
  %call66 = call i32 @xenbus_read_unsigned(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %61) #9, !dbg !4913
  store i32 %call66, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @ptr_size, i64 0, i64 1), align 4, !dbg !4914
  %62 = load i32, i32* %abs, align 4, !dbg !4915
  %tobool67 = icmp ne i32 %62, 0, !dbg !4915
  br i1 %tobool67, label %if.then68, label %if.end78, !dbg !4917

if.then68:                                        ; preds = %if.then60
  %id70 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral69, i32 0, i32 0, !dbg !4918
  store i32 0, i32* %id70, align 4, !dbg !4918
  %63 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !4920
  %nodename71 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %63, i32 0, i32 1, !dbg !4921
  %64 = load i8*, i8** %nodename71, align 8, !dbg !4921
  %coerce.dive72 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %.compoundliteral69, i32 0, i32 0, !dbg !4922
  %65 = load i32, i32* %coerce.dive72, align 4, !dbg !4922
  %call73 = call i32 @xenbus_write(i32 %65, i8* %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !4922
  store i32 %call73, i32* %ret, align 4, !dbg !4923
  %66 = load i32, i32* %ret, align 4, !dbg !4924
  %tobool74 = icmp ne i32 %66, 0, !dbg !4924
  br i1 %tobool74, label %if.then75, label %if.end77, !dbg !4926

if.then75:                                        ; preds = %if.then68
  %call76 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !4927
  store i32 0, i32* %abs, align 4, !dbg !4929
  br label %if.end77, !dbg !4930

if.end77:                                         ; preds = %if.then75, %if.then68
  br label %if.end78, !dbg !4931

if.end78:                                         ; preds = %if.end77, %if.then60
  %call79 = call %struct.input_dev* @input_allocate_device() #9, !dbg !4932
  store %struct.input_dev* %call79, %struct.input_dev** %ptr, align 8, !dbg !4933
  %67 = load %struct.input_dev*, %struct.input_dev** %ptr, align 8, !dbg !4934
  %tobool80 = icmp ne %struct.input_dev* %67, null, !dbg !4934
  br i1 %tobool80, label %if.end82, label %if.then81, !dbg !4936

if.then81:                                        ; preds = %if.end78
  br label %error_nomem, !dbg !4937

if.end82:                                         ; preds = %if.end78
  %68 = load %struct.input_dev*, %struct.input_dev** %ptr, align 8, !dbg !4938
  %name83 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %68, i32 0, i32 0, !dbg !4939
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8** %name83, align 8, !dbg !4940
  %69 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !4941
  %phys84 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %69, i32 0, i32 7, !dbg !4942
  %arraydecay85 = getelementptr inbounds [32 x i8], [32 x i8]* %phys84, i64 0, i64 0, !dbg !4941
  %70 = load %struct.input_dev*, %struct.input_dev** %ptr, align 8, !dbg !4943
  %phys86 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %70, i32 0, i32 1, !dbg !4944
  store i8* %arraydecay85, i8** %phys86, align 8, !dbg !4945
  %71 = load %struct.input_dev*, %struct.input_dev** %ptr, align 8, !dbg !4946
  %id87 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %71, i32 0, i32 3, !dbg !4947
  %bustype88 = getelementptr inbounds %struct.input_id, %struct.input_id* %id87, i32 0, i32 0, !dbg !4948
  store i16 1, i16* %bustype88, align 8, !dbg !4949
  %72 = load %struct.input_dev*, %struct.input_dev** %ptr, align 8, !dbg !4950
  %id89 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %72, i32 0, i32 3, !dbg !4951
  %vendor90 = getelementptr inbounds %struct.input_id, %struct.input_id* %id89, i32 0, i32 1, !dbg !4952
  store i16 22611, i16* %vendor90, align 2, !dbg !4953
  %73 = load %struct.input_dev*, %struct.input_dev** %ptr, align 8, !dbg !4954
  %id91 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %73, i32 0, i32 3, !dbg !4955
  %product92 = getelementptr inbounds %struct.input_id, %struct.input_id* %id91, i32 0, i32 2, !dbg !4956
  store i16 -2, i16* %product92, align 4, !dbg !4957
  %74 = load i32, i32* %abs, align 4, !dbg !4958
  %tobool93 = icmp ne i32 %74, 0, !dbg !4958
  br i1 %tobool93, label %if.then94, label %if.else, !dbg !4960

if.then94:                                        ; preds = %if.end82
  %75 = load %struct.input_dev*, %struct.input_dev** %ptr, align 8, !dbg !4961
  %evbit95 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %75, i32 0, i32 5, !dbg !4963
  %arraydecay96 = getelementptr inbounds [1 x i64], [1 x i64]* %evbit95, i64 0, i64 0, !dbg !4961
  call void @__set_bit(i64 3, i64* %arraydecay96) #9, !dbg !4964
  %76 = load %struct.input_dev*, %struct.input_dev** %ptr, align 8, !dbg !4965
  %77 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @ptr_size, i64 0, i64 0), align 4, !dbg !4966
  call void @input_set_abs_params(%struct.input_dev* %76, i32 0, i32 0, i32 %77, i32 0, i32 0) #9, !dbg !4967
  %78 = load %struct.input_dev*, %struct.input_dev** %ptr, align 8, !dbg !4968
  %79 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @ptr_size, i64 0, i64 1), align 4, !dbg !4969
  call void @input_set_abs_params(%struct.input_dev* %78, i32 1, i32 0, i32 %79, i32 0, i32 0) #9, !dbg !4970
  br label %if.end97, !dbg !4971

if.else:                                          ; preds = %if.end82
  %80 = load %struct.input_dev*, %struct.input_dev** %ptr, align 8, !dbg !4972
  call void @input_set_capability(%struct.input_dev* %80, i32 2, i32 0) #9, !dbg !4974
  %81 = load %struct.input_dev*, %struct.input_dev** %ptr, align 8, !dbg !4975
  call void @input_set_capability(%struct.input_dev* %81, i32 2, i32 1) #9, !dbg !4976
  br label %if.end97

if.end97:                                         ; preds = %if.else, %if.then94
  %82 = load %struct.input_dev*, %struct.input_dev** %ptr, align 8, !dbg !4977
  call void @input_set_capability(%struct.input_dev* %82, i32 2, i32 8) #9, !dbg !4978
  %83 = load %struct.input_dev*, %struct.input_dev** %ptr, align 8, !dbg !4979
  %evbit98 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %83, i32 0, i32 5, !dbg !4980
  %arraydecay99 = getelementptr inbounds [1 x i64], [1 x i64]* %evbit98, i64 0, i64 0, !dbg !4979
  call void @__set_bit(i64 1, i64* %arraydecay99) #9, !dbg !4981
  store i32 272, i32* %i, align 4, !dbg !4982
  br label %for.cond100, !dbg !4984

for.cond100:                                      ; preds = %for.inc107, %if.end97
  %84 = load i32, i32* %i, align 4, !dbg !4985
  %cmp101 = icmp sle i32 %84, 279, !dbg !4987
  br i1 %cmp101, label %for.body103, label %for.end109, !dbg !4988

for.body103:                                      ; preds = %for.cond100
  %85 = load i32, i32* %i, align 4, !dbg !4989
  %conv104 = sext i32 %85 to i64, !dbg !4989
  %86 = load %struct.input_dev*, %struct.input_dev** %ptr, align 8, !dbg !4990
  %keybit105 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %86, i32 0, i32 6, !dbg !4991
  %arraydecay106 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit105, i64 0, i64 0, !dbg !4990
  call void @__set_bit(i64 %conv104, i64* %arraydecay106) #9, !dbg !4992
  br label %for.inc107, !dbg !4992

for.inc107:                                       ; preds = %for.body103
  %87 = load i32, i32* %i, align 4, !dbg !4993
  %inc108 = add i32 %87, 1, !dbg !4993
  store i32 %inc108, i32* %i, align 4, !dbg !4993
  br label %for.cond100, !dbg !4994, !llvm.loop !4995

for.end109:                                       ; preds = %for.cond100
  %88 = load %struct.input_dev*, %struct.input_dev** %ptr, align 8, !dbg !4997
  %call110 = call i32 @input_register_device(%struct.input_dev* %88) #9, !dbg !4998
  store i32 %call110, i32* %ret, align 4, !dbg !4999
  %89 = load i32, i32* %ret, align 4, !dbg !5000
  %tobool111 = icmp ne i32 %89, 0, !dbg !5000
  br i1 %tobool111, label %if.then112, label %if.end113, !dbg !5002

if.then112:                                       ; preds = %for.end109
  %90 = load %struct.input_dev*, %struct.input_dev** %ptr, align 8, !dbg !5003
  call void @input_free_device(%struct.input_dev* %90) #9, !dbg !5005
  %91 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5006
  %92 = load i32, i32* %ret, align 4, !dbg !5007
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %91, i32 %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !5008
  br label %error, !dbg !5009

if.end113:                                        ; preds = %for.end109
  %93 = load %struct.input_dev*, %struct.input_dev** %ptr, align 8, !dbg !5010
  %94 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5011
  %ptr114 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %94, i32 0, i32 1, !dbg !5012
  store %struct.input_dev* %93, %struct.input_dev** %ptr114, align 8, !dbg !5013
  br label %if.end115, !dbg !5014

if.end115:                                        ; preds = %if.end113, %if.end58
  %95 = load i8, i8* %with_mtouch, align 1, !dbg !5015
  %tobool116 = trunc i8 %95 to i1, !dbg !5015
  br i1 %tobool116, label %if.then117, label %if.end152, !dbg !5017

if.then117:                                       ; preds = %if.end115
  call void @llvm.dbg.declare(metadata i32* %num_cont, metadata !5018, metadata !DIExpression()), !dbg !5020
  call void @llvm.dbg.declare(metadata i32* %width, metadata !5021, metadata !DIExpression()), !dbg !5022
  call void @llvm.dbg.declare(metadata i32* %height, metadata !5023, metadata !DIExpression()), !dbg !5024
  %call118 = call %struct.input_dev* @input_allocate_device() #9, !dbg !5025
  store %struct.input_dev* %call118, %struct.input_dev** %mtouch, align 8, !dbg !5026
  %96 = load %struct.input_dev*, %struct.input_dev** %mtouch, align 8, !dbg !5027
  %tobool119 = icmp ne %struct.input_dev* %96, null, !dbg !5027
  br i1 %tobool119, label %if.end121, label %if.then120, !dbg !5029

if.then120:                                       ; preds = %if.then117
  br label %error_nomem, !dbg !5030

if.end121:                                        ; preds = %if.then117
  %97 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5031
  %xbdev122 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %97, i32 0, i32 6, !dbg !5032
  %98 = load %struct.xenbus_device*, %struct.xenbus_device** %xbdev122, align 8, !dbg !5032
  %otherend123 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %98, i32 0, i32 2, !dbg !5033
  %99 = load i8*, i8** %otherend123, align 8, !dbg !5033
  %call124 = call i32 @xenbus_read_unsigned(i8* %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 1) #9, !dbg !5034
  store i32 %call124, i32* %num_cont, align 4, !dbg !5035
  %100 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5036
  %xbdev125 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %100, i32 0, i32 6, !dbg !5037
  %101 = load %struct.xenbus_device*, %struct.xenbus_device** %xbdev125, align 8, !dbg !5037
  %otherend126 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %101, i32 0, i32 2, !dbg !5038
  %102 = load i8*, i8** %otherend126, align 8, !dbg !5038
  %call127 = call i32 @xenbus_read_unsigned(i8* %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 800) #9, !dbg !5039
  store i32 %call127, i32* %width, align 4, !dbg !5040
  %103 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5041
  %xbdev128 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %103, i32 0, i32 6, !dbg !5042
  %104 = load %struct.xenbus_device*, %struct.xenbus_device** %xbdev128, align 8, !dbg !5042
  %otherend129 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %104, i32 0, i32 2, !dbg !5043
  %105 = load i8*, i8** %otherend129, align 8, !dbg !5043
  %call130 = call i32 @xenbus_read_unsigned(i8* %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i32 600) #9, !dbg !5044
  store i32 %call130, i32* %height, align 4, !dbg !5045
  %106 = load %struct.input_dev*, %struct.input_dev** %mtouch, align 8, !dbg !5046
  %name131 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %106, i32 0, i32 0, !dbg !5047
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8** %name131, align 8, !dbg !5048
  %107 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5049
  %phys132 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %107, i32 0, i32 7, !dbg !5050
  %arraydecay133 = getelementptr inbounds [32 x i8], [32 x i8]* %phys132, i64 0, i64 0, !dbg !5049
  %108 = load %struct.input_dev*, %struct.input_dev** %mtouch, align 8, !dbg !5051
  %phys134 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %108, i32 0, i32 1, !dbg !5052
  store i8* %arraydecay133, i8** %phys134, align 8, !dbg !5053
  %109 = load %struct.input_dev*, %struct.input_dev** %mtouch, align 8, !dbg !5054
  %id135 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %109, i32 0, i32 3, !dbg !5055
  %bustype136 = getelementptr inbounds %struct.input_id, %struct.input_id* %id135, i32 0, i32 0, !dbg !5056
  store i16 1, i16* %bustype136, align 8, !dbg !5057
  %110 = load %struct.input_dev*, %struct.input_dev** %mtouch, align 8, !dbg !5058
  %id137 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %110, i32 0, i32 3, !dbg !5059
  %vendor138 = getelementptr inbounds %struct.input_id, %struct.input_id* %id137, i32 0, i32 1, !dbg !5060
  store i16 22611, i16* %vendor138, align 2, !dbg !5061
  %111 = load %struct.input_dev*, %struct.input_dev** %mtouch, align 8, !dbg !5062
  %id139 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %111, i32 0, i32 3, !dbg !5063
  %product140 = getelementptr inbounds %struct.input_id, %struct.input_id* %id139, i32 0, i32 2, !dbg !5064
  store i16 -3, i16* %product140, align 4, !dbg !5065
  %112 = load %struct.input_dev*, %struct.input_dev** %mtouch, align 8, !dbg !5066
  call void @input_set_abs_params(%struct.input_dev* %112, i32 48, i32 0, i32 255, i32 0, i32 0) #9, !dbg !5067
  %113 = load %struct.input_dev*, %struct.input_dev** %mtouch, align 8, !dbg !5068
  %114 = load i32, i32* %width, align 4, !dbg !5069
  call void @input_set_abs_params(%struct.input_dev* %113, i32 53, i32 0, i32 %114, i32 0, i32 0) #9, !dbg !5070
  %115 = load %struct.input_dev*, %struct.input_dev** %mtouch, align 8, !dbg !5071
  %116 = load i32, i32* %height, align 4, !dbg !5072
  call void @input_set_abs_params(%struct.input_dev* %115, i32 54, i32 0, i32 %116, i32 0, i32 0) #9, !dbg !5073
  %117 = load %struct.input_dev*, %struct.input_dev** %mtouch, align 8, !dbg !5074
  %118 = load i32, i32* %num_cont, align 4, !dbg !5075
  %call141 = call i32 @input_mt_init_slots(%struct.input_dev* %117, i32 %118, i32 2) #9, !dbg !5076
  store i32 %call141, i32* %ret, align 4, !dbg !5077
  %119 = load i32, i32* %ret, align 4, !dbg !5078
  %tobool142 = icmp ne i32 %119, 0, !dbg !5078
  br i1 %tobool142, label %if.then143, label %if.end145, !dbg !5080

if.then143:                                       ; preds = %if.end121
  %120 = load %struct.input_dev*, %struct.input_dev** %mtouch, align 8, !dbg !5081
  call void @input_free_device(%struct.input_dev* %120) #9, !dbg !5083
  %121 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5084
  %xbdev144 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %121, i32 0, i32 6, !dbg !5085
  %122 = load %struct.xenbus_device*, %struct.xenbus_device** %xbdev144, align 8, !dbg !5085
  %123 = load i32, i32* %ret, align 4, !dbg !5086
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %122, i32 %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0)) #9, !dbg !5087
  br label %error, !dbg !5088

if.end145:                                        ; preds = %if.end121
  %124 = load %struct.input_dev*, %struct.input_dev** %mtouch, align 8, !dbg !5089
  %call146 = call i32 @input_register_device(%struct.input_dev* %124) #9, !dbg !5090
  store i32 %call146, i32* %ret, align 4, !dbg !5091
  %125 = load i32, i32* %ret, align 4, !dbg !5092
  %tobool147 = icmp ne i32 %125, 0, !dbg !5092
  br i1 %tobool147, label %if.then148, label %if.end150, !dbg !5094

if.then148:                                       ; preds = %if.end145
  %126 = load %struct.input_dev*, %struct.input_dev** %mtouch, align 8, !dbg !5095
  call void @input_free_device(%struct.input_dev* %126) #9, !dbg !5097
  %127 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5098
  %xbdev149 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %127, i32 0, i32 6, !dbg !5099
  %128 = load %struct.xenbus_device*, %struct.xenbus_device** %xbdev149, align 8, !dbg !5099
  %129 = load i32, i32* %ret, align 4, !dbg !5100
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %128, i32 %129, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0)) #9, !dbg !5101
  br label %error, !dbg !5102

if.end150:                                        ; preds = %if.end145
  %130 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5103
  %mtouch_cur_contact_id = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %130, i32 0, i32 8, !dbg !5104
  store i32 -1, i32* %mtouch_cur_contact_id, align 8, !dbg !5105
  %131 = load %struct.input_dev*, %struct.input_dev** %mtouch, align 8, !dbg !5106
  %132 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5107
  %mtouch151 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %132, i32 0, i32 2, !dbg !5108
  store %struct.input_dev* %131, %struct.input_dev** %mtouch151, align 8, !dbg !5109
  br label %if.end152, !dbg !5110

if.end152:                                        ; preds = %if.end150, %if.end115
  %133 = load i8, i8* %with_kbd, align 1, !dbg !5111
  %tobool153 = trunc i8 %133 to i1, !dbg !5111
  br i1 %tobool153, label %if.end161, label %lor.lhs.false, !dbg !5113

lor.lhs.false:                                    ; preds = %if.end152
  %134 = load i8, i8* %with_ptr, align 1, !dbg !5114
  %tobool155 = trunc i8 %134 to i1, !dbg !5114
  br i1 %tobool155, label %if.end161, label %lor.lhs.false157, !dbg !5115

lor.lhs.false157:                                 ; preds = %lor.lhs.false
  %135 = load i8, i8* %with_mtouch, align 1, !dbg !5116
  %tobool158 = trunc i8 %135 to i1, !dbg !5116
  br i1 %tobool158, label %if.end161, label %if.then160, !dbg !5117

if.then160:                                       ; preds = %lor.lhs.false157
  store i32 -6, i32* %ret, align 4, !dbg !5118
  br label %error, !dbg !5120

if.end161:                                        ; preds = %lor.lhs.false157, %lor.lhs.false, %if.end152
  %136 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5121
  %137 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5122
  %call162 = call i32 @xenkbd_connect_backend(%struct.xenbus_device* %136, %struct.xenkbd_info* %137) #9, !dbg !5123
  store i32 %call162, i32* %ret, align 4, !dbg !5124
  %138 = load i32, i32* %ret, align 4, !dbg !5125
  %cmp163 = icmp slt i32 %138, 0, !dbg !5127
  br i1 %cmp163, label %if.then165, label %if.end166, !dbg !5128

if.then165:                                       ; preds = %if.end161
  br label %error, !dbg !5129

if.end166:                                        ; preds = %if.end161
  store i32 0, i32* %retval, align 4, !dbg !5130
  br label %return, !dbg !5130

error_nomem:                                      ; preds = %if.then120, %if.then81, %if.then33, %if.then6
  call void @llvm.dbg.label(metadata !5131), !dbg !5132
  store i32 -12, i32* %ret, align 4, !dbg !5133
  %139 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5134
  %140 = load i32, i32* %ret, align 4, !dbg !5135
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %139, i32 %140, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0)) #9, !dbg !5136
  br label %error, !dbg !5136

error:                                            ; preds = %error_nomem, %if.then165, %if.then160, %if.then148, %if.then143, %if.then112, %if.then55
  call void @llvm.dbg.label(metadata !5137), !dbg !5138
  %141 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5139
  %call167 = call i32 @xenkbd_remove(%struct.xenbus_device* %141) #9, !dbg !5140
  %142 = load i32, i32* %ret, align 4, !dbg !5141
  store i32 %142, i32* %retval, align 4, !dbg !5142
  br label %return, !dbg !5142

return:                                           ; preds = %error, %if.end166, %if.then
  %143 = load i32, i32* %retval, align 4, !dbg !5143
  ret i32 %143, !dbg !5143
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenkbd_backend_changed(%struct.xenbus_device* %dev, i32 %backend_state) #2 !dbg !5144 {
entry:
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %backend_state.addr = alloca i32, align 4
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !5145, metadata !DIExpression()), !dbg !5146
  store i32 %backend_state, i32* %backend_state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %backend_state.addr, metadata !5147, metadata !DIExpression()), !dbg !5148
  %0 = load i32, i32* %backend_state.addr, align 4, !dbg !5149
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb2
    i32 6, label %sw.bb4
    i32 5, label %sw.bb9
  ], !dbg !5150

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
  br label %sw.epilog, !dbg !5151

sw.bb1:                                           ; preds = %entry
  %1 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5153
  %call = call i32 @xenbus_switch_state(%struct.xenbus_device* %1, i32 4) #9, !dbg !5154
  br label %sw.epilog, !dbg !5155

sw.bb2:                                           ; preds = %entry
  %2 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5156
  %state = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %2, i32 0, i32 6, !dbg !5158
  %3 = load i32, i32* %state, align 8, !dbg !5158
  %cmp = icmp ne i32 %3, 4, !dbg !5159
  br i1 %cmp, label %if.then, label %if.end, !dbg !5160

if.then:                                          ; preds = %sw.bb2
  %4 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5161
  %call3 = call i32 @xenbus_switch_state(%struct.xenbus_device* %4, i32 4) #9, !dbg !5162
  br label %if.end, !dbg !5162

if.end:                                           ; preds = %if.then, %sw.bb2
  br label %sw.epilog, !dbg !5163

sw.bb4:                                           ; preds = %entry
  %5 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5164
  %state5 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %5, i32 0, i32 6, !dbg !5166
  %6 = load i32, i32* %state5, align 8, !dbg !5166
  %cmp6 = icmp eq i32 %6, 6, !dbg !5167
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !5168

if.then7:                                         ; preds = %sw.bb4
  br label %sw.epilog, !dbg !5169

if.end8:                                          ; preds = %sw.bb4
  br label %sw.bb9, !dbg !5170

sw.bb9:                                           ; preds = %entry, %if.end8
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5171
  %call10 = call i32 @xenbus_frontend_closed(%struct.xenbus_device* %7) #9, !dbg !5172
  br label %sw.epilog, !dbg !5173

sw.epilog:                                        ; preds = %entry, %sw.bb9, %if.then7, %if.end, %sw.bb1, %sw.bb
  ret void, !dbg !5174
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenkbd_remove(%struct.xenbus_device* %dev) #2 !dbg !5175 {
entry:
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %info = alloca %struct.xenkbd_info*, align 8
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !5176, metadata !DIExpression()), !dbg !5177
  call void @llvm.dbg.declare(metadata %struct.xenkbd_info** %info, metadata !5178, metadata !DIExpression()), !dbg !5179
  %0 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5180
  %dev1 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %0, i32 0, i32 5, !dbg !5181
  %call = call i8* @dev_get_drvdata(%struct.device* %dev1) #9, !dbg !5182
  %1 = bitcast i8* %call to %struct.xenkbd_info*, !dbg !5182
  store %struct.xenkbd_info* %1, %struct.xenkbd_info** %info, align 8, !dbg !5179
  %2 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5183
  call void @xenkbd_disconnect_backend(%struct.xenkbd_info* %2) #9, !dbg !5184
  %3 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5185
  %kbd = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %3, i32 0, i32 0, !dbg !5187
  %4 = load %struct.input_dev*, %struct.input_dev** %kbd, align 8, !dbg !5187
  %tobool = icmp ne %struct.input_dev* %4, null, !dbg !5185
  br i1 %tobool, label %if.then, label %if.end, !dbg !5188

if.then:                                          ; preds = %entry
  %5 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5189
  %kbd2 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %5, i32 0, i32 0, !dbg !5190
  %6 = load %struct.input_dev*, %struct.input_dev** %kbd2, align 8, !dbg !5190
  call void @input_unregister_device(%struct.input_dev* %6) #9, !dbg !5191
  br label %if.end, !dbg !5191

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5192
  %ptr = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %7, i32 0, i32 1, !dbg !5194
  %8 = load %struct.input_dev*, %struct.input_dev** %ptr, align 8, !dbg !5194
  %tobool3 = icmp ne %struct.input_dev* %8, null, !dbg !5192
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !5195

if.then4:                                         ; preds = %if.end
  %9 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5196
  %ptr5 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %9, i32 0, i32 1, !dbg !5197
  %10 = load %struct.input_dev*, %struct.input_dev** %ptr5, align 8, !dbg !5197
  call void @input_unregister_device(%struct.input_dev* %10) #9, !dbg !5198
  br label %if.end6, !dbg !5198

if.end6:                                          ; preds = %if.then4, %if.end
  %11 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5199
  %mtouch = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %11, i32 0, i32 2, !dbg !5201
  %12 = load %struct.input_dev*, %struct.input_dev** %mtouch, align 8, !dbg !5201
  %tobool7 = icmp ne %struct.input_dev* %12, null, !dbg !5199
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !5202

if.then8:                                         ; preds = %if.end6
  %13 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5203
  %mtouch9 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %13, i32 0, i32 2, !dbg !5204
  %14 = load %struct.input_dev*, %struct.input_dev** %mtouch9, align 8, !dbg !5204
  call void @input_unregister_device(%struct.input_dev* %14) #9, !dbg !5205
  br label %if.end10, !dbg !5205

if.end10:                                         ; preds = %if.then8, %if.end6
  %15 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5206
  %page = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %15, i32 0, i32 3, !dbg !5206
  %16 = load %struct.xenkbd_page*, %struct.xenkbd_page** %page, align 8, !dbg !5206
  %17 = ptrtoint %struct.xenkbd_page* %16 to i64, !dbg !5206
  call void @free_pages(i64 %17, i32 0) #9, !dbg !5206
  %18 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5207
  %19 = bitcast %struct.xenkbd_info* %18 to i8*, !dbg !5207
  call void @kfree(i8* %19) #9, !dbg !5208
  ret i32 0, !dbg !5209
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenkbd_resume(%struct.xenbus_device* %dev) #2 !dbg !5210 {
entry:
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %info = alloca %struct.xenkbd_info*, align 8
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !5211, metadata !DIExpression()), !dbg !5212
  call void @llvm.dbg.declare(metadata %struct.xenkbd_info** %info, metadata !5213, metadata !DIExpression()), !dbg !5214
  %0 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5215
  %dev1 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %0, i32 0, i32 5, !dbg !5216
  %call = call i8* @dev_get_drvdata(%struct.device* %dev1) #9, !dbg !5217
  %1 = bitcast i8* %call to %struct.xenkbd_info*, !dbg !5217
  store %struct.xenkbd_info* %1, %struct.xenkbd_info** %info, align 8, !dbg !5214
  %2 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5218
  call void @xenkbd_disconnect_backend(%struct.xenkbd_info* %2) #9, !dbg !5219
  %3 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5220
  %page = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %3, i32 0, i32 3, !dbg !5221
  %4 = load %struct.xenkbd_page*, %struct.xenkbd_page** %page, align 8, !dbg !5221
  %5 = bitcast %struct.xenkbd_page* %4 to i8*, !dbg !5222
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 4096, i1 false), !dbg !5222
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5223
  %7 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5224
  %call2 = call i32 @xenkbd_connect_backend(%struct.xenbus_device* %6, %struct.xenkbd_info* %7) #9, !dbg !5225
  ret i32 %call2, !dbg !5226
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !5227 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5230, metadata !DIExpression()), !dbg !5234
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5240, metadata !DIExpression()), !dbg !5241
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5242, metadata !DIExpression()), !dbg !5243
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5244, metadata !DIExpression()), !dbg !5245
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5246, metadata !DIExpression()), !dbg !5250
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5252, metadata !DIExpression()), !dbg !5256
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5258, metadata !DIExpression()), !dbg !5262
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5267, metadata !DIExpression()), !dbg !5268
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5269, metadata !DIExpression()), !dbg !5270
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5271, metadata !DIExpression()), !dbg !5272
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5273, metadata !DIExpression()), !dbg !5274
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5275, metadata !DIExpression()), !dbg !5276
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5277, metadata !DIExpression()), !dbg !5278
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5279, metadata !DIExpression()), !dbg !5280
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5281, metadata !DIExpression()), !dbg !5282
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5283, metadata !DIExpression()), !dbg !5284
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5285, metadata !DIExpression()), !dbg !5286
  %0 = load i64, i64* %size.addr, align 8, !dbg !5287
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5288
  %or = or i32 %1, 256, !dbg !5289
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5290
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !5291
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5292

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5293
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5294
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5295

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5296
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5297
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5298
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !5299
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5276
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5300
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5301
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5302
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5303
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5304
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5305
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !5306
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5306
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5306
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5306
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !5306
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5307
  br label %kmalloc.exit, !dbg !5307

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5308
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5309
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5309
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5311

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5312
  br label %kmalloc_index.exit.i, !dbg !5312

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5313
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5315
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5316

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5317
  br label %kmalloc_index.exit.i, !dbg !5317

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5318
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5320
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5321

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5322
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5323
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5324

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5325
  br label %kmalloc_index.exit.i, !dbg !5325

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5326
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5328
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5329

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5330
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5331
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5332

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5333
  br label %kmalloc_index.exit.i, !dbg !5333

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5334
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5336
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5337

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5338
  br label %kmalloc_index.exit.i, !dbg !5338

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5339
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5341
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5342

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5343
  br label %kmalloc_index.exit.i, !dbg !5343

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5344
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5346
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5347

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5348
  br label %kmalloc_index.exit.i, !dbg !5348

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5349
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5351
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5352

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5353
  br label %kmalloc_index.exit.i, !dbg !5353

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5354
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5356
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5357

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5358
  br label %kmalloc_index.exit.i, !dbg !5358

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5359
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5361
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5362

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5363
  br label %kmalloc_index.exit.i, !dbg !5363

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5364
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5366
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5367

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5368
  br label %kmalloc_index.exit.i, !dbg !5368

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5369
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5371
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5372

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5373
  br label %kmalloc_index.exit.i, !dbg !5373

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5374
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5376
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5377

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5378
  br label %kmalloc_index.exit.i, !dbg !5378

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5379
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5381
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5382

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5383
  br label %kmalloc_index.exit.i, !dbg !5383

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5384
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5386
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5387

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5388
  br label %kmalloc_index.exit.i, !dbg !5388

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5389
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5391
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5392

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5393
  br label %kmalloc_index.exit.i, !dbg !5393

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5394
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5396
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5397

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5398
  br label %kmalloc_index.exit.i, !dbg !5398

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5399
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5401
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5402

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5403
  br label %kmalloc_index.exit.i, !dbg !5403

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5404
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5406
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5407

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5408
  br label %kmalloc_index.exit.i, !dbg !5408

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5409
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5411
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5412

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5413
  br label %kmalloc_index.exit.i, !dbg !5413

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5414
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5416
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5417

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5418
  br label %kmalloc_index.exit.i, !dbg !5418

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5419
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5421
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5422

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5423
  br label %kmalloc_index.exit.i, !dbg !5423

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5424
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5426
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5427

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5428
  br label %kmalloc_index.exit.i, !dbg !5428

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5429
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5431
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5432

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5433
  br label %kmalloc_index.exit.i, !dbg !5433

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5434
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5436
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5437

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5438
  br label %kmalloc_index.exit.i, !dbg !5438

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5439
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5441
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5442

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5443
  br label %kmalloc_index.exit.i, !dbg !5443

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5444
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5446
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5447

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5448
  br label %kmalloc_index.exit.i, !dbg !5448

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5449
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5451
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5452

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5453
  br label %kmalloc_index.exit.i, !dbg !5453

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5454, !srcloc !5457
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 203) #11, !dbg !5458, !srcloc !5461
  unreachable, !dbg !5462

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5463
  store i32 %45, i32* %index.i, align 4, !dbg !5464
  %46 = load i32, i32* %index.i, align 4, !dbg !5465
  %tobool.i = icmp ne i32 %46, 0, !dbg !5465
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5467

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5468
  br label %kmalloc.exit, !dbg !5468

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5469
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5470
  %and.i.i = and i32 %48, 17, !dbg !5470
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5470
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5470
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5470
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5470
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5472

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5473
  br label %kmalloc_type.exit.i, !dbg !5473

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5474
  %and2.i.i = and i32 %49, 1, !dbg !5475
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5474
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5474
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5474
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5476
  br label %kmalloc_type.exit.i, !dbg !5476

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5477
  %idxprom.i = zext i32 %51 to i64, !dbg !5478
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5478
  %52 = load i32, i32* %index.i, align 4, !dbg !5479
  %idxprom6.i = zext i32 %52 to i64, !dbg !5478
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5478
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5478
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5480
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5481
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5482
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5483
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !5484
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5484
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5484
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5484
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5484
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5245
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5485
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5486
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5487
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5488
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !5489
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5490
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5491
  store i8* %62, i8** %retval.i, align 8, !dbg !5492
  br label %kmalloc.exit, !dbg !5492

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5493
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5494
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !5495
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5495
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5495
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5495
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5495
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5496
  br label %kmalloc.exit, !dbg !5496

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5497
  ret i8* %65, !dbg !5498
}

; Function Attrs: noredzone
declare dso_local void @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !5499 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5502, metadata !DIExpression()), !dbg !5503
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5504, metadata !DIExpression()), !dbg !5505
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5506
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5507
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5508
  store i8* %0, i8** %driver_data, align 8, !dbg !5509
  ret void, !dbg !5510
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noredzone
declare dso_local i64 @__get_free_pages(i32, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @xenbus_read_unsigned(i8*, i8*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @xenbus_write(i32, i8*, i8*, i8*) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local %struct.input_dev* @input_allocate_device() #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__set_bit(i64 %nr, i64* %addr) #2 !dbg !5511 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5517, metadata !DIExpression()), !dbg !5520
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5522, metadata !DIExpression()), !dbg !5523
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5524, metadata !DIExpression()), !dbg !5532
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5534, metadata !DIExpression()), !dbg !5535
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5536, metadata !DIExpression()), !dbg !5537
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5538, metadata !DIExpression()), !dbg !5539
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5540
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5541
  %div = sdiv i64 %1, 64, !dbg !5541
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5542
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5540
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5543
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5544
  %conv.i = trunc i64 %4 to i32, !dbg !5544
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #13, !dbg !5545
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5546
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5546
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #13, !dbg !5546
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5547
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5548
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !5549
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !5550
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #11, !dbg !5551, !srcloc !5552
  ret void, !dbg !5553
}

; Function Attrs: noredzone
declare dso_local i32 @input_register_device(%struct.input_dev*) #1

; Function Attrs: noredzone
declare dso_local void @input_free_device(%struct.input_dev*) #1

; Function Attrs: noredzone
declare dso_local void @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

; Function Attrs: noredzone
declare dso_local void @input_set_capability(%struct.input_dev*, i32, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenkbd_connect_backend(%struct.xenbus_device* %dev, %struct.xenkbd_info* %info) #2 !dbg !5554 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.xenbus_device*, align 8
  %info.addr = alloca %struct.xenkbd_info*, align 8
  %ret = alloca i32, align 4
  %evtchn = alloca i32, align 4
  %xbt = alloca %struct.xenbus_transaction, align 4
  store %struct.xenbus_device* %dev, %struct.xenbus_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_device** %dev.addr, metadata !5557, metadata !DIExpression()), !dbg !5558
  store %struct.xenkbd_info* %info, %struct.xenkbd_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenkbd_info** %info.addr, metadata !5559, metadata !DIExpression()), !dbg !5560
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5561, metadata !DIExpression()), !dbg !5562
  call void @llvm.dbg.declare(metadata i32* %evtchn, metadata !5563, metadata !DIExpression()), !dbg !5564
  call void @llvm.dbg.declare(metadata %struct.xenbus_transaction* %xbt, metadata !5565, metadata !DIExpression()), !dbg !5569
  %0 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5570
  %otherend_id = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %0, i32 0, i32 3, !dbg !5571
  %1 = load i32, i32* %otherend_id, align 8, !dbg !5571
  %conv = trunc i32 %1 to i16, !dbg !5570
  %2 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !5572
  %page = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %2, i32 0, i32 3, !dbg !5572
  %3 = load %struct.xenkbd_page*, %struct.xenkbd_page** %page, align 8, !dbg !5572
  %4 = ptrtoint %struct.xenkbd_page* %3 to i64, !dbg !5572
  %call = call i64 @__phys_addr_nodebug(i64 %4) #9, !dbg !5572
  %shr = lshr i64 %call, 12, !dbg !5572
  %call1 = call i64 @pfn_to_gfn(i64 %shr) #9, !dbg !5572
  %call2 = call i32 @gnttab_grant_foreign_access(i16 zeroext %conv, i64 %call1, i32 0) #9, !dbg !5573
  store i32 %call2, i32* %ret, align 4, !dbg !5574
  %5 = load i32, i32* %ret, align 4, !dbg !5575
  %cmp = icmp slt i32 %5, 0, !dbg !5577
  br i1 %cmp, label %if.then, label %if.end, !dbg !5578

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %ret, align 4, !dbg !5579
  store i32 %6, i32* %retval, align 4, !dbg !5580
  br label %return, !dbg !5580

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %ret, align 4, !dbg !5581
  %8 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !5582
  %gref = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %8, i32 0, i32 4, !dbg !5583
  store i32 %7, i32* %gref, align 8, !dbg !5584
  %9 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5585
  %call4 = call i32 @xenbus_alloc_evtchn(%struct.xenbus_device* %9, i32* %evtchn) #9, !dbg !5586
  store i32 %call4, i32* %ret, align 4, !dbg !5587
  %10 = load i32, i32* %ret, align 4, !dbg !5588
  %tobool = icmp ne i32 %10, 0, !dbg !5588
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !5590

if.then5:                                         ; preds = %if.end
  br label %error_grant, !dbg !5591

if.end6:                                          ; preds = %if.end
  %11 = load i32, i32* %evtchn, align 4, !dbg !5592
  %12 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5593
  %devicetype = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %12, i32 0, i32 0, !dbg !5594
  %13 = load i8*, i8** %devicetype, align 8, !dbg !5594
  %14 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !5595
  %15 = bitcast %struct.xenkbd_info* %14 to i8*, !dbg !5595
  %call7 = call i32 @bind_evtchn_to_irqhandler(i32 %11, i32 (i32, i8*)* @input_handler, i64 0, i8* %13, i8* %15) #9, !dbg !5596
  store i32 %call7, i32* %ret, align 4, !dbg !5597
  %16 = load i32, i32* %ret, align 4, !dbg !5598
  %cmp8 = icmp slt i32 %16, 0, !dbg !5600
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !5601

if.then10:                                        ; preds = %if.end6
  %17 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5602
  %18 = load i32, i32* %ret, align 4, !dbg !5604
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %17, i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0)) #9, !dbg !5605
  br label %error_evtchan, !dbg !5606

if.end11:                                         ; preds = %if.end6
  %19 = load i32, i32* %ret, align 4, !dbg !5607
  %20 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !5608
  %irq = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %20, i32 0, i32 5, !dbg !5609
  store i32 %19, i32* %irq, align 4, !dbg !5610
  br label %again, !dbg !5608

again:                                            ; preds = %if.then43, %if.end11
  call void @llvm.dbg.label(metadata !5611), !dbg !5612
  %call12 = call i32 @xenbus_transaction_start(%struct.xenbus_transaction* %xbt) #9, !dbg !5613
  store i32 %call12, i32* %ret, align 4, !dbg !5614
  %21 = load i32, i32* %ret, align 4, !dbg !5615
  %tobool13 = icmp ne i32 %21, 0, !dbg !5615
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !5617

if.then14:                                        ; preds = %again
  %22 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5618
  %23 = load i32, i32* %ret, align 4, !dbg !5620
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %22, i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0)) #9, !dbg !5621
  br label %error_irqh, !dbg !5622

if.end15:                                         ; preds = %again
  %24 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5623
  %nodename = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %24, i32 0, i32 1, !dbg !5624
  %25 = load i8*, i8** %nodename, align 8, !dbg !5624
  %26 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !5625
  %page16 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %26, i32 0, i32 3, !dbg !5625
  %27 = load %struct.xenkbd_page*, %struct.xenkbd_page** %page16, align 8, !dbg !5625
  %28 = ptrtoint %struct.xenkbd_page* %27 to i64, !dbg !5625
  %call17 = call i64 @__phys_addr_nodebug(i64 %28) #9, !dbg !5625
  %shr18 = lshr i64 %call17, 12, !dbg !5625
  %call19 = call i64 @pfn_to_gfn(i64 %shr18) #9, !dbg !5625
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %xbt, i32 0, i32 0, !dbg !5626
  %29 = load i32, i32* %coerce.dive, align 4, !dbg !5626
  %call20 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_printf(i32 %29, i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i64 %call19) #9, !dbg !5626
  store i32 %call20, i32* %ret, align 4, !dbg !5627
  %30 = load i32, i32* %ret, align 4, !dbg !5628
  %tobool21 = icmp ne i32 %30, 0, !dbg !5628
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !5630

if.then22:                                        ; preds = %if.end15
  br label %error_xenbus, !dbg !5631

if.end23:                                         ; preds = %if.end15
  %31 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5632
  %nodename24 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %31, i32 0, i32 1, !dbg !5633
  %32 = load i8*, i8** %nodename24, align 8, !dbg !5633
  %33 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !5634
  %gref25 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %33, i32 0, i32 4, !dbg !5635
  %34 = load i32, i32* %gref25, align 8, !dbg !5635
  %coerce.dive26 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %xbt, i32 0, i32 0, !dbg !5636
  %35 = load i32, i32* %coerce.dive26, align 4, !dbg !5636
  %call27 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_printf(i32 %35, i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i32 %34) #9, !dbg !5636
  store i32 %call27, i32* %ret, align 4, !dbg !5637
  %36 = load i32, i32* %ret, align 4, !dbg !5638
  %tobool28 = icmp ne i32 %36, 0, !dbg !5638
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !5640

if.then29:                                        ; preds = %if.end23
  br label %error_xenbus, !dbg !5641

if.end30:                                         ; preds = %if.end23
  %37 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5642
  %nodename31 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %37, i32 0, i32 1, !dbg !5643
  %38 = load i8*, i8** %nodename31, align 8, !dbg !5643
  %39 = load i32, i32* %evtchn, align 4, !dbg !5644
  %coerce.dive32 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %xbt, i32 0, i32 0, !dbg !5645
  %40 = load i32, i32* %coerce.dive32, align 4, !dbg !5645
  %call33 = call i32 (i32, i8*, i8*, i8*, ...) @xenbus_printf(i32 %40, i8* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i32 %39) #9, !dbg !5645
  store i32 %call33, i32* %ret, align 4, !dbg !5646
  %41 = load i32, i32* %ret, align 4, !dbg !5647
  %tobool34 = icmp ne i32 %41, 0, !dbg !5647
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !5649

if.then35:                                        ; preds = %if.end30
  br label %error_xenbus, !dbg !5650

if.end36:                                         ; preds = %if.end30
  %coerce.dive37 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %xbt, i32 0, i32 0, !dbg !5651
  %42 = load i32, i32* %coerce.dive37, align 4, !dbg !5651
  %call38 = call i32 @xenbus_transaction_end(i32 %42, i32 0) #9, !dbg !5651
  store i32 %call38, i32* %ret, align 4, !dbg !5652
  %43 = load i32, i32* %ret, align 4, !dbg !5653
  %tobool39 = icmp ne i32 %43, 0, !dbg !5653
  br i1 %tobool39, label %if.then40, label %if.end45, !dbg !5655

if.then40:                                        ; preds = %if.end36
  %44 = load i32, i32* %ret, align 4, !dbg !5656
  %cmp41 = icmp eq i32 %44, -11, !dbg !5659
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !5660

if.then43:                                        ; preds = %if.then40
  br label %again, !dbg !5661

if.end44:                                         ; preds = %if.then40
  %45 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5662
  %46 = load i32, i32* %ret, align 4, !dbg !5663
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %45, i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0)) #9, !dbg !5664
  br label %error_irqh, !dbg !5665

if.end45:                                         ; preds = %if.end36
  %47 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5666
  %call46 = call i32 @xenbus_switch_state(%struct.xenbus_device* %47, i32 3) #9, !dbg !5667
  store i32 0, i32* %retval, align 4, !dbg !5668
  br label %return, !dbg !5668

error_xenbus:                                     ; preds = %if.then35, %if.then29, %if.then22
  call void @llvm.dbg.label(metadata !5669), !dbg !5670
  %coerce.dive47 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %xbt, i32 0, i32 0, !dbg !5671
  %48 = load i32, i32* %coerce.dive47, align 4, !dbg !5671
  %call48 = call i32 @xenbus_transaction_end(i32 %48, i32 1) #9, !dbg !5671
  %49 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5672
  %50 = load i32, i32* %ret, align 4, !dbg !5673
  call void (%struct.xenbus_device*, i32, i8*, ...) @xenbus_dev_fatal(%struct.xenbus_device* %49, i32 %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0)) #9, !dbg !5674
  br label %error_irqh, !dbg !5674

error_irqh:                                       ; preds = %error_xenbus, %if.end44, %if.then14
  call void @llvm.dbg.label(metadata !5675), !dbg !5676
  %51 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !5677
  %irq49 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %51, i32 0, i32 5, !dbg !5678
  %52 = load i32, i32* %irq49, align 4, !dbg !5678
  %53 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !5679
  %54 = bitcast %struct.xenkbd_info* %53 to i8*, !dbg !5679
  call void @unbind_from_irqhandler(i32 %52, i8* %54) #9, !dbg !5680
  %55 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !5681
  %irq50 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %55, i32 0, i32 5, !dbg !5682
  store i32 -1, i32* %irq50, align 4, !dbg !5683
  br label %error_evtchan, !dbg !5681

error_evtchan:                                    ; preds = %error_irqh, %if.then10
  call void @llvm.dbg.label(metadata !5684), !dbg !5685
  %56 = load %struct.xenbus_device*, %struct.xenbus_device** %dev.addr, align 8, !dbg !5686
  %57 = load i32, i32* %evtchn, align 4, !dbg !5687
  %call51 = call i32 @xenbus_free_evtchn(%struct.xenbus_device* %56, i32 %57) #9, !dbg !5688
  br label %error_grant, !dbg !5688

error_grant:                                      ; preds = %error_evtchan, %if.then5
  call void @llvm.dbg.label(metadata !5689), !dbg !5690
  %58 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !5691
  %gref52 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %58, i32 0, i32 4, !dbg !5692
  %59 = load i32, i32* %gref52, align 8, !dbg !5692
  call void @gnttab_end_foreign_access(i32 %59, i32 0, i64 0) #9, !dbg !5693
  %60 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !5694
  %gref53 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %60, i32 0, i32 4, !dbg !5695
  store i32 -1, i32* %gref53, align 8, !dbg !5696
  %61 = load i32, i32* %ret, align 4, !dbg !5697
  store i32 %61, i32* %retval, align 4, !dbg !5698
  br label %return, !dbg !5698

return:                                           ; preds = %error_grant, %if.end45, %if.then
  %62 = load i32, i32* %retval, align 4, !dbg !5699
  ret i32 %62, !dbg !5699
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5700 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5704, metadata !DIExpression()), !dbg !5708
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5710, metadata !DIExpression()), !dbg !5711
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5712, metadata !DIExpression()), !dbg !5713
  %0 = load i64, i64* %size.addr, align 8, !dbg !5714
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5716
  br i1 %1, label %if.then, label %if.end447, !dbg !5717

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5718
  %tobool = icmp ne i64 %2, 0, !dbg !5718
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5721

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5722
  br label %return, !dbg !5722

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5723
  %cmp = icmp ult i64 %3, 4096, !dbg !5725
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5726

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5727
  br label %return, !dbg !5727

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub = sub i64 %4, 1, !dbg !5728
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5728
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5728

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub4 = sub i64 %6, 1, !dbg !5728
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5728
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5728

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub6 = sub i64 %8, 1, !dbg !5728
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5728
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5728

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5728

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub9 = sub i64 %9, 1, !dbg !5728
  %and = and i64 %sub9, -9223372036854775808, !dbg !5728
  %tobool10 = icmp ne i64 %and, 0, !dbg !5728
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5728

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5728

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub13 = sub i64 %10, 1, !dbg !5728
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5728
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5728
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5728

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5728

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub18 = sub i64 %11, 1, !dbg !5728
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5728
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5728
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5728

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5728

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub23 = sub i64 %12, 1, !dbg !5728
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5728
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5728
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5728

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5728

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub28 = sub i64 %13, 1, !dbg !5728
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5728
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5728
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5728

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5728

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub33 = sub i64 %14, 1, !dbg !5728
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5728
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5728
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5728

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5728

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub38 = sub i64 %15, 1, !dbg !5728
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5728
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5728
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5728

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5728

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub43 = sub i64 %16, 1, !dbg !5728
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5728
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5728
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5728

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5728

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub48 = sub i64 %17, 1, !dbg !5728
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5728
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5728
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5728

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5728

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub53 = sub i64 %18, 1, !dbg !5728
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5728
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5728
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5728

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5728

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub58 = sub i64 %19, 1, !dbg !5728
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5728
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5728
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5728

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5728

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub63 = sub i64 %20, 1, !dbg !5728
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5728
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5728
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5728

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5728

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub68 = sub i64 %21, 1, !dbg !5728
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5728
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5728
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5728

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5728

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub73 = sub i64 %22, 1, !dbg !5728
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5728
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5728
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5728

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5728

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub78 = sub i64 %23, 1, !dbg !5728
  %and79 = and i64 %sub78, 562949953421312, !dbg !5728
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5728
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5728

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5728

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub83 = sub i64 %24, 1, !dbg !5728
  %and84 = and i64 %sub83, 281474976710656, !dbg !5728
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5728
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5728

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5728

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub88 = sub i64 %25, 1, !dbg !5728
  %and89 = and i64 %sub88, 140737488355328, !dbg !5728
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5728
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5728

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5728

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub93 = sub i64 %26, 1, !dbg !5728
  %and94 = and i64 %sub93, 70368744177664, !dbg !5728
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5728
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5728

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5728

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub98 = sub i64 %27, 1, !dbg !5728
  %and99 = and i64 %sub98, 35184372088832, !dbg !5728
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5728
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5728

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5728

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub103 = sub i64 %28, 1, !dbg !5728
  %and104 = and i64 %sub103, 17592186044416, !dbg !5728
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5728
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5728

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5728

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub108 = sub i64 %29, 1, !dbg !5728
  %and109 = and i64 %sub108, 8796093022208, !dbg !5728
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5728
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5728

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5728

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub113 = sub i64 %30, 1, !dbg !5728
  %and114 = and i64 %sub113, 4398046511104, !dbg !5728
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5728
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5728

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5728

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub118 = sub i64 %31, 1, !dbg !5728
  %and119 = and i64 %sub118, 2199023255552, !dbg !5728
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5728
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5728

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5728

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub123 = sub i64 %32, 1, !dbg !5728
  %and124 = and i64 %sub123, 1099511627776, !dbg !5728
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5728
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5728

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5728

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub128 = sub i64 %33, 1, !dbg !5728
  %and129 = and i64 %sub128, 549755813888, !dbg !5728
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5728
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5728

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5728

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub133 = sub i64 %34, 1, !dbg !5728
  %and134 = and i64 %sub133, 274877906944, !dbg !5728
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5728
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5728

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5728

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub138 = sub i64 %35, 1, !dbg !5728
  %and139 = and i64 %sub138, 137438953472, !dbg !5728
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5728
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5728

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5728

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub143 = sub i64 %36, 1, !dbg !5728
  %and144 = and i64 %sub143, 68719476736, !dbg !5728
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5728
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5728

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5728

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub148 = sub i64 %37, 1, !dbg !5728
  %and149 = and i64 %sub148, 34359738368, !dbg !5728
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5728
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5728

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5728

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub153 = sub i64 %38, 1, !dbg !5728
  %and154 = and i64 %sub153, 17179869184, !dbg !5728
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5728
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5728

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5728

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub158 = sub i64 %39, 1, !dbg !5728
  %and159 = and i64 %sub158, 8589934592, !dbg !5728
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5728
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5728

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5728

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub163 = sub i64 %40, 1, !dbg !5728
  %and164 = and i64 %sub163, 4294967296, !dbg !5728
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5728
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5728

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5728

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub168 = sub i64 %41, 1, !dbg !5728
  %and169 = and i64 %sub168, 2147483648, !dbg !5728
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5728
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5728

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5728

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub173 = sub i64 %42, 1, !dbg !5728
  %and174 = and i64 %sub173, 1073741824, !dbg !5728
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5728
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5728

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5728

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub178 = sub i64 %43, 1, !dbg !5728
  %and179 = and i64 %sub178, 536870912, !dbg !5728
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5728
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5728

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5728

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub183 = sub i64 %44, 1, !dbg !5728
  %and184 = and i64 %sub183, 268435456, !dbg !5728
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5728
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5728

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5728

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub188 = sub i64 %45, 1, !dbg !5728
  %and189 = and i64 %sub188, 134217728, !dbg !5728
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5728
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5728

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5728

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub193 = sub i64 %46, 1, !dbg !5728
  %and194 = and i64 %sub193, 67108864, !dbg !5728
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5728
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5728

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5728

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub198 = sub i64 %47, 1, !dbg !5728
  %and199 = and i64 %sub198, 33554432, !dbg !5728
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5728
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5728

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5728

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub203 = sub i64 %48, 1, !dbg !5728
  %and204 = and i64 %sub203, 16777216, !dbg !5728
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5728
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5728

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5728

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub208 = sub i64 %49, 1, !dbg !5728
  %and209 = and i64 %sub208, 8388608, !dbg !5728
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5728
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5728

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5728

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub213 = sub i64 %50, 1, !dbg !5728
  %and214 = and i64 %sub213, 4194304, !dbg !5728
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5728
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5728

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5728

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub218 = sub i64 %51, 1, !dbg !5728
  %and219 = and i64 %sub218, 2097152, !dbg !5728
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5728
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5728

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5728

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub223 = sub i64 %52, 1, !dbg !5728
  %and224 = and i64 %sub223, 1048576, !dbg !5728
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5728
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5728

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5728

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub228 = sub i64 %53, 1, !dbg !5728
  %and229 = and i64 %sub228, 524288, !dbg !5728
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5728
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5728

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5728

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub233 = sub i64 %54, 1, !dbg !5728
  %and234 = and i64 %sub233, 262144, !dbg !5728
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5728
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5728

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5728

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub238 = sub i64 %55, 1, !dbg !5728
  %and239 = and i64 %sub238, 131072, !dbg !5728
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5728
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5728

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5728

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub243 = sub i64 %56, 1, !dbg !5728
  %and244 = and i64 %sub243, 65536, !dbg !5728
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5728
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5728

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5728

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub248 = sub i64 %57, 1, !dbg !5728
  %and249 = and i64 %sub248, 32768, !dbg !5728
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5728
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5728

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5728

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub253 = sub i64 %58, 1, !dbg !5728
  %and254 = and i64 %sub253, 16384, !dbg !5728
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5728
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5728

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5728

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub258 = sub i64 %59, 1, !dbg !5728
  %and259 = and i64 %sub258, 8192, !dbg !5728
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5728
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5728

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5728

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub263 = sub i64 %60, 1, !dbg !5728
  %and264 = and i64 %sub263, 4096, !dbg !5728
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5728
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5728

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5728

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub268 = sub i64 %61, 1, !dbg !5728
  %and269 = and i64 %sub268, 2048, !dbg !5728
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5728
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5728

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5728

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub273 = sub i64 %62, 1, !dbg !5728
  %and274 = and i64 %sub273, 1024, !dbg !5728
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5728
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5728

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5728

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub278 = sub i64 %63, 1, !dbg !5728
  %and279 = and i64 %sub278, 512, !dbg !5728
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5728
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5728

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5728

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub283 = sub i64 %64, 1, !dbg !5728
  %and284 = and i64 %sub283, 256, !dbg !5728
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5728
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5728

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5728

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub288 = sub i64 %65, 1, !dbg !5728
  %and289 = and i64 %sub288, 128, !dbg !5728
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5728
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5728

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5728

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub293 = sub i64 %66, 1, !dbg !5728
  %and294 = and i64 %sub293, 64, !dbg !5728
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5728
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5728

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5728

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub298 = sub i64 %67, 1, !dbg !5728
  %and299 = and i64 %sub298, 32, !dbg !5728
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5728
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5728

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5728

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub303 = sub i64 %68, 1, !dbg !5728
  %and304 = and i64 %sub303, 16, !dbg !5728
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5728
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5728

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5728

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub308 = sub i64 %69, 1, !dbg !5728
  %and309 = and i64 %sub308, 8, !dbg !5728
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5728
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5728

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5728

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub313 = sub i64 %70, 1, !dbg !5728
  %and314 = and i64 %sub313, 4, !dbg !5728
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5728
  %71 = zext i1 %tobool315 to i64, !dbg !5728
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5728
  br label %cond.end, !dbg !5728

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5728
  br label %cond.end317, !dbg !5728

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5728
  br label %cond.end319, !dbg !5728

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5728
  br label %cond.end321, !dbg !5728

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5728
  br label %cond.end323, !dbg !5728

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5728
  br label %cond.end325, !dbg !5728

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5728
  br label %cond.end327, !dbg !5728

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5728
  br label %cond.end329, !dbg !5728

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5728
  br label %cond.end331, !dbg !5728

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5728
  br label %cond.end333, !dbg !5728

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5728
  br label %cond.end335, !dbg !5728

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5728
  br label %cond.end337, !dbg !5728

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5728
  br label %cond.end339, !dbg !5728

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5728
  br label %cond.end341, !dbg !5728

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5728
  br label %cond.end343, !dbg !5728

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5728
  br label %cond.end345, !dbg !5728

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5728
  br label %cond.end347, !dbg !5728

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5728
  br label %cond.end349, !dbg !5728

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5728
  br label %cond.end351, !dbg !5728

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5728
  br label %cond.end353, !dbg !5728

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5728
  br label %cond.end355, !dbg !5728

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5728
  br label %cond.end357, !dbg !5728

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5728
  br label %cond.end359, !dbg !5728

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5728
  br label %cond.end361, !dbg !5728

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5728
  br label %cond.end363, !dbg !5728

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5728
  br label %cond.end365, !dbg !5728

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5728
  br label %cond.end367, !dbg !5728

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5728
  br label %cond.end369, !dbg !5728

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5728
  br label %cond.end371, !dbg !5728

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5728
  br label %cond.end373, !dbg !5728

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5728
  br label %cond.end375, !dbg !5728

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5728
  br label %cond.end377, !dbg !5728

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5728
  br label %cond.end379, !dbg !5728

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5728
  br label %cond.end381, !dbg !5728

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5728
  br label %cond.end383, !dbg !5728

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5728
  br label %cond.end385, !dbg !5728

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5728
  br label %cond.end387, !dbg !5728

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5728
  br label %cond.end389, !dbg !5728

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5728
  br label %cond.end391, !dbg !5728

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5728
  br label %cond.end393, !dbg !5728

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5728
  br label %cond.end395, !dbg !5728

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5728
  br label %cond.end397, !dbg !5728

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5728
  br label %cond.end399, !dbg !5728

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5728
  br label %cond.end401, !dbg !5728

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5728
  br label %cond.end403, !dbg !5728

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5728
  br label %cond.end405, !dbg !5728

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5728
  br label %cond.end407, !dbg !5728

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5728
  br label %cond.end409, !dbg !5728

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5728
  br label %cond.end411, !dbg !5728

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5728
  br label %cond.end413, !dbg !5728

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5728
  br label %cond.end415, !dbg !5728

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5728
  br label %cond.end417, !dbg !5728

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5728
  br label %cond.end419, !dbg !5728

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5728
  br label %cond.end421, !dbg !5728

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5728
  br label %cond.end423, !dbg !5728

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5728
  br label %cond.end425, !dbg !5728

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5728
  br label %cond.end427, !dbg !5728

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5728
  br label %cond.end429, !dbg !5728

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5728
  br label %cond.end431, !dbg !5728

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5728
  br label %cond.end433, !dbg !5728

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5728
  br label %cond.end435, !dbg !5728

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5728
  br label %cond.end437, !dbg !5728

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5728
  br label %cond.end440, !dbg !5728

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5728

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5728
  br label %cond.end444, !dbg !5728

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5728
  %sub443 = sub i64 %72, 1, !dbg !5728
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !5728
  br label %cond.end444, !dbg !5728

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5728
  %sub446 = sub i32 %cond445, 12, !dbg !5729
  %add = add i32 %sub446, 1, !dbg !5730
  store i32 %add, i32* %retval, align 4, !dbg !5731
  br label %return, !dbg !5731

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5732
  %dec = add i64 %73, -1, !dbg !5732
  store i64 %dec, i64* %size.addr, align 8, !dbg !5732
  %74 = load i64, i64* %size.addr, align 8, !dbg !5733
  %shr = lshr i64 %74, 12, !dbg !5733
  store i64 %shr, i64* %size.addr, align 8, !dbg !5733
  %75 = load i64, i64* %size.addr, align 8, !dbg !5734
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5711
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5735
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5736
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5735, !srcloc !5737
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5735
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5738
  %add.i = add i32 %79, 1, !dbg !5739
  store i32 %add.i, i32* %retval, align 4, !dbg !5740
  br label %return, !dbg !5740

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5741
  ret i32 %80, !dbg !5741
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5742 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5704, metadata !DIExpression()), !dbg !5746
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5710, metadata !DIExpression()), !dbg !5748
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5749, metadata !DIExpression()), !dbg !5750
  %0 = load i64, i64* %n.addr, align 8, !dbg !5751
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5748
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5752
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5753
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5752, !srcloc !5737
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5752
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5754
  %add.i = add i32 %4, 1, !dbg !5755
  %sub = sub i32 %add.i, 1, !dbg !5756
  ret i32 %sub, !dbg !5757
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5758 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5762, metadata !DIExpression()), !dbg !5763
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5764, metadata !DIExpression()), !dbg !5765
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5766, metadata !DIExpression()), !dbg !5767
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5768, metadata !DIExpression()), !dbg !5769
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5770
  ret i8* %0, !dbg !5771
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !5772 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5776, metadata !DIExpression()), !dbg !5777
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5778, metadata !DIExpression()), !dbg !5779
  ret i1 true, !dbg !5780
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !5781 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5785, metadata !DIExpression()), !dbg !5786
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5787, metadata !DIExpression()), !dbg !5788
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5789, metadata !DIExpression()), !dbg !5790
  ret void, !dbg !5791
}

; Function Attrs: noredzone
declare dso_local i32 @gnttab_grant_foreign_access(i16 zeroext, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pfn_to_gfn(i64 %pfn) #2 !dbg !5792 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !5796, metadata !DIExpression()), !dbg !5797
  %call = call i32 @xen_feature(i32 2) #9, !dbg !5798
  %tobool = icmp ne i32 %call, 0, !dbg !5798
  br i1 %tobool, label %if.then, label %if.else, !dbg !5800

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !5801
  store i64 %0, i64* %retval, align 8, !dbg !5802
  br label %return, !dbg !5802

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %pfn.addr, align 8, !dbg !5803
  %call1 = call i64 @pfn_to_mfn(i64 %1) #9, !dbg !5804
  store i64 %call1, i64* %retval, align 8, !dbg !5805
  br label %return, !dbg !5805

return:                                           ; preds = %if.else, %if.then
  %2 = load i64, i64* %retval, align 8, !dbg !5806
  ret i64 %2, !dbg !5806
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__phys_addr_nodebug(i64 %x) #2 !dbg !5807 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr, metadata !5809, metadata !DIExpression()), !dbg !5810
  call void @llvm.dbg.declare(metadata i64* %y, metadata !5811, metadata !DIExpression()), !dbg !5812
  %0 = load i64, i64* %x.addr, align 8, !dbg !5813
  %sub = sub i64 %0, -2147483648, !dbg !5814
  store i64 %sub, i64* %y, align 8, !dbg !5812
  %1 = load i64, i64* %y, align 8, !dbg !5815
  %2 = load i64, i64* %x.addr, align 8, !dbg !5816
  %3 = load i64, i64* %y, align 8, !dbg !5817
  %cmp = icmp ugt i64 %2, %3, !dbg !5818
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5819

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* @phys_base, align 8, !dbg !5820
  br label %cond.end, !dbg !5819

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* @page_offset_base, align 8, !dbg !5821
  %sub1 = sub i64 -2147483648, %5, !dbg !5822
  br label %cond.end, !dbg !5819

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !5819
  %add = add i64 %1, %cond, !dbg !5823
  store i64 %add, i64* %x.addr, align 8, !dbg !5824
  %6 = load i64, i64* %x.addr, align 8, !dbg !5825
  ret i64 %6, !dbg !5826
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_alloc_evtchn(%struct.xenbus_device*, i32*) #1

; Function Attrs: noredzone
declare dso_local i32 @bind_evtchn_to_irqhandler(i32, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @input_handler(i32 %rq, i8* %dev_id) #2 !dbg !5827 {
entry:
  %retval = alloca i32, align 4
  %rq.addr = alloca i32, align 4
  %dev_id.addr = alloca i8*, align 8
  %info = alloca %struct.xenkbd_info*, align 8
  %page = alloca %struct.xenkbd_page*, align 8
  %cons = alloca i32, align 4
  %prod = alloca i32, align 4
  store i32 %rq, i32* %rq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %rq.addr, metadata !5828, metadata !DIExpression()), !dbg !5829
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !5830, metadata !DIExpression()), !dbg !5831
  call void @llvm.dbg.declare(metadata %struct.xenkbd_info** %info, metadata !5832, metadata !DIExpression()), !dbg !5833
  %0 = load i8*, i8** %dev_id.addr, align 8, !dbg !5834
  %1 = bitcast i8* %0 to %struct.xenkbd_info*, !dbg !5834
  store %struct.xenkbd_info* %1, %struct.xenkbd_info** %info, align 8, !dbg !5833
  call void @llvm.dbg.declare(metadata %struct.xenkbd_page** %page, metadata !5835, metadata !DIExpression()), !dbg !5836
  %2 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5837
  %page1 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %2, i32 0, i32 3, !dbg !5838
  %3 = load %struct.xenkbd_page*, %struct.xenkbd_page** %page1, align 8, !dbg !5838
  store %struct.xenkbd_page* %3, %struct.xenkbd_page** %page, align 8, !dbg !5836
  call void @llvm.dbg.declare(metadata i32* %cons, metadata !5839, metadata !DIExpression()), !dbg !5840
  call void @llvm.dbg.declare(metadata i32* %prod, metadata !5841, metadata !DIExpression()), !dbg !5842
  %4 = load %struct.xenkbd_page*, %struct.xenkbd_page** %page, align 8, !dbg !5843
  %in_prod = getelementptr inbounds %struct.xenkbd_page, %struct.xenkbd_page* %4, i32 0, i32 1, !dbg !5844
  %5 = load i32, i32* %in_prod, align 4, !dbg !5844
  store i32 %5, i32* %prod, align 4, !dbg !5845
  %6 = load i32, i32* %prod, align 4, !dbg !5846
  %7 = load %struct.xenkbd_page*, %struct.xenkbd_page** %page, align 8, !dbg !5848
  %in_cons = getelementptr inbounds %struct.xenkbd_page, %struct.xenkbd_page* %7, i32 0, i32 0, !dbg !5849
  %8 = load i32, i32* %in_cons, align 4, !dbg !5849
  %cmp = icmp eq i32 %6, %8, !dbg !5850
  br i1 %cmp, label %if.then, label %if.end, !dbg !5851

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !5852
  br label %return, !dbg !5852

if.end:                                           ; preds = %entry
  call void asm sideeffect "lfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !5853, !srcloc !5854
  %9 = load %struct.xenkbd_page*, %struct.xenkbd_page** %page, align 8, !dbg !5855
  %in_cons2 = getelementptr inbounds %struct.xenkbd_page, %struct.xenkbd_page* %9, i32 0, i32 0, !dbg !5857
  %10 = load i32, i32* %in_cons2, align 4, !dbg !5857
  store i32 %10, i32* %cons, align 4, !dbg !5858
  br label %for.cond, !dbg !5859

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %cons, align 4, !dbg !5860
  %12 = load i32, i32* %prod, align 4, !dbg !5862
  %cmp3 = icmp ne i32 %11, %12, !dbg !5863
  br i1 %cmp3, label %for.body, label %for.end, !dbg !5864

for.body:                                         ; preds = %for.cond
  %13 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5865
  %14 = load %struct.xenkbd_page*, %struct.xenkbd_page** %page, align 8, !dbg !5866
  %15 = bitcast %struct.xenkbd_page* %14 to i8*, !dbg !5866
  %add.ptr = getelementptr i8, i8* %15, i64 1024, !dbg !5866
  %16 = bitcast i8* %add.ptr to %union.xenkbd_in_event*, !dbg !5866
  %17 = load i32, i32* %cons, align 4, !dbg !5866
  %rem = urem i32 %17, 51, !dbg !5866
  %idxprom = zext i32 %rem to i64, !dbg !5866
  %arrayidx = getelementptr %union.xenkbd_in_event, %union.xenkbd_in_event* %16, i64 %idxprom, !dbg !5866
  call void @xenkbd_handle_event(%struct.xenkbd_info* %13, %union.xenkbd_in_event* %arrayidx) #9, !dbg !5867
  br label %for.inc, !dbg !5867

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %cons, align 4, !dbg !5868
  %inc = add i32 %18, 1, !dbg !5868
  store i32 %inc, i32* %cons, align 4, !dbg !5868
  br label %for.cond, !dbg !5869, !llvm.loop !5870

for.end:                                          ; preds = %for.cond
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !5872, !srcloc !5873
  %19 = load i32, i32* %cons, align 4, !dbg !5874
  %20 = load %struct.xenkbd_page*, %struct.xenkbd_page** %page, align 8, !dbg !5875
  %in_cons4 = getelementptr inbounds %struct.xenkbd_page, %struct.xenkbd_page* %20, i32 0, i32 0, !dbg !5876
  store i32 %19, i32* %in_cons4, align 4, !dbg !5877
  %21 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info, align 8, !dbg !5878
  %irq = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %21, i32 0, i32 5, !dbg !5879
  %22 = load i32, i32* %irq, align 4, !dbg !5879
  call void @notify_remote_via_irq(i32 %22) #9, !dbg !5880
  store i32 1, i32* %retval, align 4, !dbg !5881
  br label %return, !dbg !5881

return:                                           ; preds = %for.end, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !5882
  ret i32 %23, !dbg !5882
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_transaction_start(%struct.xenbus_transaction*) #1

; Function Attrs: noredzone
declare dso_local i32 @xenbus_printf(i32, i8*, i8*, i8*, ...) #1

; Function Attrs: noredzone
declare dso_local i32 @xenbus_transaction_end(i32, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #1

; Function Attrs: noredzone
declare dso_local void @unbind_from_irqhandler(i32, i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @xenbus_free_evtchn(%struct.xenbus_device*, i32) #1

; Function Attrs: noredzone
declare dso_local void @gnttab_end_foreign_access(i32, i32, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_feature(i32 %flag) #2 !dbg !5883 {
entry:
  %flag.addr = alloca i32, align 4
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !5885, metadata !DIExpression()), !dbg !5886
  %0 = load i32, i32* %flag.addr, align 4, !dbg !5887
  %idxprom = sext i32 %0 to i64, !dbg !5888
  %arrayidx = getelementptr [32 x i8], [32 x i8]* @xen_features, i64 0, i64 %idxprom, !dbg !5888
  %1 = load i8, i8* %arrayidx, align 1, !dbg !5888
  %conv = zext i8 %1 to i32, !dbg !5888
  ret i32 %conv, !dbg !5889
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pfn_to_mfn(i64 %pfn) #2 !dbg !5890 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  %mfn = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !5891, metadata !DIExpression()), !dbg !5892
  call void @llvm.dbg.declare(metadata i64* %mfn, metadata !5893, metadata !DIExpression()), !dbg !5894
  %call = call i32 @xen_feature(i32 2) #9, !dbg !5895
  %tobool = icmp ne i32 %call, 0, !dbg !5895
  br i1 %tobool, label %if.then, label %if.end, !dbg !5897

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !5898
  store i64 %0, i64* %retval, align 8, !dbg !5899
  br label %return, !dbg !5899

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %pfn.addr, align 8, !dbg !5900
  %call1 = call i64 @__pfn_to_mfn(i64 %1) #9, !dbg !5901
  store i64 %call1, i64* %mfn, align 8, !dbg !5902
  %2 = load i64, i64* %mfn, align 8, !dbg !5903
  %cmp = icmp ne i64 %2, -1, !dbg !5905
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5906

if.then2:                                         ; preds = %if.end
  %3 = load i64, i64* %mfn, align 8, !dbg !5907
  %and = and i64 %3, 4611686018427387903, !dbg !5907
  store i64 %and, i64* %mfn, align 8, !dbg !5907
  br label %if.end3, !dbg !5908

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i64, i64* %mfn, align 8, !dbg !5909
  store i64 %4, i64* %retval, align 8, !dbg !5910
  br label %return, !dbg !5910

return:                                           ; preds = %if.end3, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !5911
  ret i64 %5, !dbg !5911
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__pfn_to_mfn(i64 %pfn) #2 !dbg !5912 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  %mfn = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !5913, metadata !DIExpression()), !dbg !5914
  call void @llvm.dbg.declare(metadata i64* %mfn, metadata !5915, metadata !DIExpression()), !dbg !5916
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !5917
  %1 = load i64, i64* @xen_p2m_size, align 8, !dbg !5919
  %cmp = icmp ult i64 %0, %1, !dbg !5920
  br i1 %cmp, label %if.then, label %if.else, !dbg !5921

if.then:                                          ; preds = %entry
  %2 = load i64*, i64** @xen_p2m_addr, align 8, !dbg !5922
  %3 = load i64, i64* %pfn.addr, align 8, !dbg !5923
  %arrayidx = getelementptr i64, i64* %2, i64 %3, !dbg !5922
  %4 = load i64, i64* %arrayidx, align 8, !dbg !5922
  store i64 %4, i64* %mfn, align 8, !dbg !5924
  br label %if.end, !dbg !5925

if.else:                                          ; preds = %entry
  %5 = load i64, i64* %pfn.addr, align 8, !dbg !5926
  %6 = load i64, i64* @xen_max_p2m_pfn, align 8, !dbg !5926
  %cmp1 = icmp ult i64 %5, %6, !dbg !5926
  %lnot = xor i1 %cmp1, true, !dbg !5926
  %lnot2 = xor i1 %lnot, true, !dbg !5926
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5926
  %conv = sext i32 %lnot.ext to i64, !dbg !5926
  %tobool = icmp ne i64 %conv, 0, !dbg !5926
  br i1 %tobool, label %if.then3, label %if.else4, !dbg !5928

if.then3:                                         ; preds = %if.else
  %7 = load i64, i64* %pfn.addr, align 8, !dbg !5929
  %call = call i64 @get_phys_to_machine(i64 %7) #9, !dbg !5930
  store i64 %call, i64* %retval, align 8, !dbg !5931
  br label %return, !dbg !5931

if.else4:                                         ; preds = %if.else
  %8 = load i64, i64* %pfn.addr, align 8, !dbg !5932
  %or = or i64 %8, 4611686018427387904, !dbg !5932
  store i64 %or, i64* %retval, align 8, !dbg !5933
  br label %return, !dbg !5933

if.end:                                           ; preds = %if.then
  %9 = load i64, i64* %mfn, align 8, !dbg !5934
  %cmp5 = icmp eq i64 %9, -1, !dbg !5934
  %lnot7 = xor i1 %cmp5, true, !dbg !5934
  %lnot9 = xor i1 %lnot7, true, !dbg !5934
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !5934
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !5934
  %tobool12 = icmp ne i64 %conv11, 0, !dbg !5934
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !5936

if.then13:                                        ; preds = %if.end
  %10 = load i64, i64* %pfn.addr, align 8, !dbg !5937
  %call14 = call i64 @get_phys_to_machine(i64 %10) #9, !dbg !5938
  store i64 %call14, i64* %retval, align 8, !dbg !5939
  br label %return, !dbg !5939

if.end15:                                         ; preds = %if.end
  %11 = load i64, i64* %mfn, align 8, !dbg !5940
  store i64 %11, i64* %retval, align 8, !dbg !5941
  br label %return, !dbg !5941

return:                                           ; preds = %if.end15, %if.then13, %if.else4, %if.then3
  %12 = load i64, i64* %retval, align 8, !dbg !5942
  ret i64 %12, !dbg !5942
}

; Function Attrs: noredzone
declare dso_local i64 @get_phys_to_machine(i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenkbd_handle_event(%struct.xenkbd_info* %info, %union.xenkbd_in_event* %event) #2 !dbg !5943 {
entry:
  %info.addr = alloca %struct.xenkbd_info*, align 8
  %event.addr = alloca %union.xenkbd_in_event*, align 8
  store %struct.xenkbd_info* %info, %struct.xenkbd_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenkbd_info** %info.addr, metadata !5946, metadata !DIExpression()), !dbg !5947
  store %union.xenkbd_in_event* %event, %union.xenkbd_in_event** %event.addr, align 8
  call void @llvm.dbg.declare(metadata %union.xenkbd_in_event** %event.addr, metadata !5948, metadata !DIExpression()), !dbg !5949
  %0 = load %union.xenkbd_in_event*, %union.xenkbd_in_event** %event.addr, align 8, !dbg !5950
  %type = bitcast %union.xenkbd_in_event* %0 to i8*, !dbg !5951
  %1 = load i8, i8* %type, align 4, !dbg !5951
  %conv = zext i8 %1 to i32, !dbg !5950
  switch i32 %conv, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb2
    i32 5, label %sw.bb3
  ], !dbg !5952

sw.bb:                                            ; preds = %entry
  %2 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !5953
  %3 = load %union.xenkbd_in_event*, %union.xenkbd_in_event** %event.addr, align 8, !dbg !5955
  %motion = bitcast %union.xenkbd_in_event* %3 to %struct.xenkbd_motion*, !dbg !5956
  call void @xenkbd_handle_motion_event(%struct.xenkbd_info* %2, %struct.xenkbd_motion* %motion) #9, !dbg !5957
  br label %sw.epilog, !dbg !5958

sw.bb1:                                           ; preds = %entry
  %4 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !5959
  %5 = load %union.xenkbd_in_event*, %union.xenkbd_in_event** %event.addr, align 8, !dbg !5960
  %key = bitcast %union.xenkbd_in_event* %5 to %struct.xenkbd_key*, !dbg !5961
  call void @xenkbd_handle_key_event(%struct.xenkbd_info* %4, %struct.xenkbd_key* %key) #9, !dbg !5962
  br label %sw.epilog, !dbg !5963

sw.bb2:                                           ; preds = %entry
  %6 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !5964
  %7 = load %union.xenkbd_in_event*, %union.xenkbd_in_event** %event.addr, align 8, !dbg !5965
  %pos = bitcast %union.xenkbd_in_event* %7 to %struct.xenkbd_position*, !dbg !5966
  call void @xenkbd_handle_position_event(%struct.xenkbd_info* %6, %struct.xenkbd_position* %pos) #9, !dbg !5967
  br label %sw.epilog, !dbg !5968

sw.bb3:                                           ; preds = %entry
  %8 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !5969
  %9 = load %union.xenkbd_in_event*, %union.xenkbd_in_event** %event.addr, align 8, !dbg !5970
  %mtouch = bitcast %union.xenkbd_in_event* %9 to %struct.xenkbd_mtouch*, !dbg !5971
  call void @xenkbd_handle_mt_event(%struct.xenkbd_info* %8, %struct.xenkbd_mtouch* %mtouch) #9, !dbg !5972
  br label %sw.epilog, !dbg !5973

sw.epilog:                                        ; preds = %entry, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void, !dbg !5974
}

; Function Attrs: noredzone
declare dso_local void @notify_remote_via_irq(i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenkbd_handle_motion_event(%struct.xenkbd_info* %info, %struct.xenkbd_motion* %motion) #2 !dbg !5975 {
entry:
  %info.addr = alloca %struct.xenkbd_info*, align 8
  %motion.addr = alloca %struct.xenkbd_motion*, align 8
  store %struct.xenkbd_info* %info, %struct.xenkbd_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenkbd_info** %info.addr, metadata !5979, metadata !DIExpression()), !dbg !5980
  store %struct.xenkbd_motion* %motion, %struct.xenkbd_motion** %motion.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenkbd_motion** %motion.addr, metadata !5981, metadata !DIExpression()), !dbg !5982
  %0 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !5983
  %ptr = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %0, i32 0, i32 1, !dbg !5983
  %1 = load %struct.input_dev*, %struct.input_dev** %ptr, align 8, !dbg !5983
  %tobool = icmp ne %struct.input_dev* %1, null, !dbg !5983
  %lnot = xor i1 %tobool, true, !dbg !5983
  %lnot1 = xor i1 %lnot, true, !dbg !5983
  %lnot2 = xor i1 %lnot1, true, !dbg !5983
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5983
  %conv = sext i32 %lnot.ext to i64, !dbg !5983
  %tobool3 = icmp ne i64 %conv, 0, !dbg !5983
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5985

if.then:                                          ; preds = %entry
  br label %return, !dbg !5986

if.end:                                           ; preds = %entry
  %2 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !5987
  %ptr4 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %2, i32 0, i32 1, !dbg !5988
  %3 = load %struct.input_dev*, %struct.input_dev** %ptr4, align 8, !dbg !5988
  %4 = load %struct.xenkbd_motion*, %struct.xenkbd_motion** %motion.addr, align 8, !dbg !5989
  %rel_x = getelementptr inbounds %struct.xenkbd_motion, %struct.xenkbd_motion* %4, i32 0, i32 1, !dbg !5990
  %5 = load i32, i32* %rel_x, align 4, !dbg !5990
  call void @input_report_rel(%struct.input_dev* %3, i32 0, i32 %5) #9, !dbg !5991
  %6 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !5992
  %ptr5 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %6, i32 0, i32 1, !dbg !5993
  %7 = load %struct.input_dev*, %struct.input_dev** %ptr5, align 8, !dbg !5993
  %8 = load %struct.xenkbd_motion*, %struct.xenkbd_motion** %motion.addr, align 8, !dbg !5994
  %rel_y = getelementptr inbounds %struct.xenkbd_motion, %struct.xenkbd_motion* %8, i32 0, i32 2, !dbg !5995
  %9 = load i32, i32* %rel_y, align 4, !dbg !5995
  call void @input_report_rel(%struct.input_dev* %7, i32 1, i32 %9) #9, !dbg !5996
  %10 = load %struct.xenkbd_motion*, %struct.xenkbd_motion** %motion.addr, align 8, !dbg !5997
  %rel_z = getelementptr inbounds %struct.xenkbd_motion, %struct.xenkbd_motion* %10, i32 0, i32 3, !dbg !5999
  %11 = load i32, i32* %rel_z, align 4, !dbg !5999
  %tobool6 = icmp ne i32 %11, 0, !dbg !5997
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !6000

if.then7:                                         ; preds = %if.end
  %12 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6001
  %ptr8 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %12, i32 0, i32 1, !dbg !6002
  %13 = load %struct.input_dev*, %struct.input_dev** %ptr8, align 8, !dbg !6002
  %14 = load %struct.xenkbd_motion*, %struct.xenkbd_motion** %motion.addr, align 8, !dbg !6003
  %rel_z9 = getelementptr inbounds %struct.xenkbd_motion, %struct.xenkbd_motion* %14, i32 0, i32 3, !dbg !6004
  %15 = load i32, i32* %rel_z9, align 4, !dbg !6004
  %sub = sub i32 0, %15, !dbg !6005
  call void @input_report_rel(%struct.input_dev* %13, i32 8, i32 %sub) #9, !dbg !6006
  br label %if.end10, !dbg !6006

if.end10:                                         ; preds = %if.then7, %if.end
  %16 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6007
  %ptr11 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %16, i32 0, i32 1, !dbg !6008
  %17 = load %struct.input_dev*, %struct.input_dev** %ptr11, align 8, !dbg !6008
  call void @input_sync(%struct.input_dev* %17) #9, !dbg !6009
  br label %return, !dbg !6010

return:                                           ; preds = %if.end10, %if.then
  ret void, !dbg !6010
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenkbd_handle_key_event(%struct.xenkbd_info* %info, %struct.xenkbd_key* %key) #2 !dbg !6011 {
entry:
  %info.addr = alloca %struct.xenkbd_info*, align 8
  %key.addr = alloca %struct.xenkbd_key*, align 8
  %dev = alloca %struct.input_dev*, align 8
  %value = alloca i32, align 4
  store %struct.xenkbd_info* %info, %struct.xenkbd_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenkbd_info** %info.addr, metadata !6015, metadata !DIExpression()), !dbg !6016
  store %struct.xenkbd_key* %key, %struct.xenkbd_key** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenkbd_key** %key.addr, metadata !6017, metadata !DIExpression()), !dbg !6018
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev, metadata !6019, metadata !DIExpression()), !dbg !6020
  call void @llvm.dbg.declare(metadata i32* %value, metadata !6021, metadata !DIExpression()), !dbg !6022
  %0 = load %struct.xenkbd_key*, %struct.xenkbd_key** %key.addr, align 8, !dbg !6023
  %pressed = getelementptr inbounds %struct.xenkbd_key, %struct.xenkbd_key* %0, i32 0, i32 1, !dbg !6024
  %1 = load i8, i8* %pressed, align 1, !dbg !6024
  %conv = zext i8 %1 to i32, !dbg !6023
  store i32 %conv, i32* %value, align 4, !dbg !6022
  %2 = load %struct.xenkbd_key*, %struct.xenkbd_key** %key.addr, align 8, !dbg !6025
  %keycode = getelementptr inbounds %struct.xenkbd_key, %struct.xenkbd_key* %2, i32 0, i32 2, !dbg !6027
  %3 = load i32, i32* %keycode, align 4, !dbg !6027
  %conv1 = zext i32 %3 to i64, !dbg !6025
  %4 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6028
  %ptr = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %4, i32 0, i32 1, !dbg !6029
  %5 = load %struct.input_dev*, %struct.input_dev** %ptr, align 8, !dbg !6029
  %keybit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %5, i32 0, i32 6, !dbg !6030
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %keybit, i64 0, i64 0, !dbg !6028
  %call = call zeroext i1 @test_bit(i64 %conv1, i64* %arraydecay) #9, !dbg !6031
  br i1 %call, label %if.then, label %if.else, !dbg !6032

if.then:                                          ; preds = %entry
  %6 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6033
  %ptr2 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %6, i32 0, i32 1, !dbg !6035
  %7 = load %struct.input_dev*, %struct.input_dev** %ptr2, align 8, !dbg !6035
  store %struct.input_dev* %7, %struct.input_dev** %dev, align 8, !dbg !6036
  br label %if.end24, !dbg !6037

if.else:                                          ; preds = %entry
  %8 = load %struct.xenkbd_key*, %struct.xenkbd_key** %key.addr, align 8, !dbg !6038
  %keycode3 = getelementptr inbounds %struct.xenkbd_key, %struct.xenkbd_key* %8, i32 0, i32 2, !dbg !6040
  %9 = load i32, i32* %keycode3, align 4, !dbg !6040
  %conv4 = zext i32 %9 to i64, !dbg !6038
  %10 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6041
  %kbd = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %10, i32 0, i32 0, !dbg !6042
  %11 = load %struct.input_dev*, %struct.input_dev** %kbd, align 8, !dbg !6042
  %keybit5 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %11, i32 0, i32 6, !dbg !6043
  %arraydecay6 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit5, i64 0, i64 0, !dbg !6041
  %call7 = call zeroext i1 @test_bit(i64 %conv4, i64* %arraydecay6) #9, !dbg !6044
  br i1 %call7, label %if.then8, label %if.else20, !dbg !6045

if.then8:                                         ; preds = %if.else
  %12 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6046
  %kbd9 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %12, i32 0, i32 0, !dbg !6048
  %13 = load %struct.input_dev*, %struct.input_dev** %kbd9, align 8, !dbg !6048
  store %struct.input_dev* %13, %struct.input_dev** %dev, align 8, !dbg !6049
  %14 = load %struct.xenkbd_key*, %struct.xenkbd_key** %key.addr, align 8, !dbg !6050
  %pressed10 = getelementptr inbounds %struct.xenkbd_key, %struct.xenkbd_key* %14, i32 0, i32 1, !dbg !6052
  %15 = load i8, i8* %pressed10, align 1, !dbg !6052
  %conv11 = zext i8 %15 to i32, !dbg !6050
  %tobool = icmp ne i32 %conv11, 0, !dbg !6050
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6053

land.lhs.true:                                    ; preds = %if.then8
  %16 = load %struct.xenkbd_key*, %struct.xenkbd_key** %key.addr, align 8, !dbg !6054
  %keycode12 = getelementptr inbounds %struct.xenkbd_key, %struct.xenkbd_key* %16, i32 0, i32 2, !dbg !6055
  %17 = load i32, i32* %keycode12, align 4, !dbg !6055
  %conv13 = zext i32 %17 to i64, !dbg !6054
  %18 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6056
  %kbd14 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %18, i32 0, i32 0, !dbg !6057
  %19 = load %struct.input_dev*, %struct.input_dev** %kbd14, align 8, !dbg !6057
  %key15 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %19, i32 0, i32 27, !dbg !6058
  %arraydecay16 = getelementptr inbounds [12 x i64], [12 x i64]* %key15, i64 0, i64 0, !dbg !6056
  %call17 = call zeroext i1 @test_bit(i64 %conv13, i64* %arraydecay16) #9, !dbg !6059
  br i1 %call17, label %if.then19, label %if.end, !dbg !6060

if.then19:                                        ; preds = %land.lhs.true
  store i32 2, i32* %value, align 4, !dbg !6061
  br label %if.end, !dbg !6062

if.end:                                           ; preds = %if.then19, %land.lhs.true, %if.then8
  br label %if.end23, !dbg !6063

if.else20:                                        ; preds = %if.else
  %20 = load %struct.xenkbd_key*, %struct.xenkbd_key** %key.addr, align 8, !dbg !6064
  %keycode21 = getelementptr inbounds %struct.xenkbd_key, %struct.xenkbd_key* %20, i32 0, i32 2, !dbg !6064
  %21 = load i32, i32* %keycode21, align 4, !dbg !6064
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0), i32 %21) #10, !dbg !6064
  br label %return, !dbg !6066

if.end23:                                         ; preds = %if.end
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then
  %22 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !6067
  %tobool25 = icmp ne %struct.input_dev* %22, null, !dbg !6067
  %lnot = xor i1 %tobool25, true, !dbg !6067
  %lnot26 = xor i1 %lnot, true, !dbg !6067
  %lnot27 = xor i1 %lnot26, true, !dbg !6067
  %lnot.ext = zext i1 %lnot27 to i32, !dbg !6067
  %conv28 = sext i32 %lnot.ext to i64, !dbg !6067
  %tobool29 = icmp ne i64 %conv28, 0, !dbg !6067
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !6069

if.then30:                                        ; preds = %if.end24
  br label %return, !dbg !6070

if.end31:                                         ; preds = %if.end24
  %23 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !6071
  %24 = load %struct.xenkbd_key*, %struct.xenkbd_key** %key.addr, align 8, !dbg !6072
  %keycode32 = getelementptr inbounds %struct.xenkbd_key, %struct.xenkbd_key* %24, i32 0, i32 2, !dbg !6073
  %25 = load i32, i32* %keycode32, align 4, !dbg !6073
  %26 = load i32, i32* %value, align 4, !dbg !6074
  call void @input_event(%struct.input_dev* %23, i32 1, i32 %25, i32 %26) #9, !dbg !6075
  %27 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !6076
  call void @input_sync(%struct.input_dev* %27) #9, !dbg !6077
  br label %return, !dbg !6078

return:                                           ; preds = %if.end31, %if.then30, %if.else20
  ret void, !dbg !6078
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenkbd_handle_position_event(%struct.xenkbd_info* %info, %struct.xenkbd_position* %pos) #2 !dbg !6079 {
entry:
  %info.addr = alloca %struct.xenkbd_info*, align 8
  %pos.addr = alloca %struct.xenkbd_position*, align 8
  store %struct.xenkbd_info* %info, %struct.xenkbd_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenkbd_info** %info.addr, metadata !6083, metadata !DIExpression()), !dbg !6084
  store %struct.xenkbd_position* %pos, %struct.xenkbd_position** %pos.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenkbd_position** %pos.addr, metadata !6085, metadata !DIExpression()), !dbg !6086
  %0 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6087
  %ptr = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %0, i32 0, i32 1, !dbg !6087
  %1 = load %struct.input_dev*, %struct.input_dev** %ptr, align 8, !dbg !6087
  %tobool = icmp ne %struct.input_dev* %1, null, !dbg !6087
  %lnot = xor i1 %tobool, true, !dbg !6087
  %lnot1 = xor i1 %lnot, true, !dbg !6087
  %lnot2 = xor i1 %lnot1, true, !dbg !6087
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6087
  %conv = sext i32 %lnot.ext to i64, !dbg !6087
  %tobool3 = icmp ne i64 %conv, 0, !dbg !6087
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6089

if.then:                                          ; preds = %entry
  br label %return, !dbg !6090

if.end:                                           ; preds = %entry
  %2 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6091
  %ptr4 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %2, i32 0, i32 1, !dbg !6092
  %3 = load %struct.input_dev*, %struct.input_dev** %ptr4, align 8, !dbg !6092
  %4 = load %struct.xenkbd_position*, %struct.xenkbd_position** %pos.addr, align 8, !dbg !6093
  %abs_x = getelementptr inbounds %struct.xenkbd_position, %struct.xenkbd_position* %4, i32 0, i32 1, !dbg !6094
  %5 = load i32, i32* %abs_x, align 4, !dbg !6094
  call void @input_report_abs(%struct.input_dev* %3, i32 0, i32 %5) #9, !dbg !6095
  %6 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6096
  %ptr5 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %6, i32 0, i32 1, !dbg !6097
  %7 = load %struct.input_dev*, %struct.input_dev** %ptr5, align 8, !dbg !6097
  %8 = load %struct.xenkbd_position*, %struct.xenkbd_position** %pos.addr, align 8, !dbg !6098
  %abs_y = getelementptr inbounds %struct.xenkbd_position, %struct.xenkbd_position* %8, i32 0, i32 2, !dbg !6099
  %9 = load i32, i32* %abs_y, align 4, !dbg !6099
  call void @input_report_abs(%struct.input_dev* %7, i32 1, i32 %9) #9, !dbg !6100
  %10 = load %struct.xenkbd_position*, %struct.xenkbd_position** %pos.addr, align 8, !dbg !6101
  %rel_z = getelementptr inbounds %struct.xenkbd_position, %struct.xenkbd_position* %10, i32 0, i32 3, !dbg !6103
  %11 = load i32, i32* %rel_z, align 4, !dbg !6103
  %tobool6 = icmp ne i32 %11, 0, !dbg !6101
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !6104

if.then7:                                         ; preds = %if.end
  %12 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6105
  %ptr8 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %12, i32 0, i32 1, !dbg !6106
  %13 = load %struct.input_dev*, %struct.input_dev** %ptr8, align 8, !dbg !6106
  %14 = load %struct.xenkbd_position*, %struct.xenkbd_position** %pos.addr, align 8, !dbg !6107
  %rel_z9 = getelementptr inbounds %struct.xenkbd_position, %struct.xenkbd_position* %14, i32 0, i32 3, !dbg !6108
  %15 = load i32, i32* %rel_z9, align 4, !dbg !6108
  %sub = sub i32 0, %15, !dbg !6109
  call void @input_report_rel(%struct.input_dev* %13, i32 8, i32 %sub) #9, !dbg !6110
  br label %if.end10, !dbg !6110

if.end10:                                         ; preds = %if.then7, %if.end
  %16 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6111
  %ptr11 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %16, i32 0, i32 1, !dbg !6112
  %17 = load %struct.input_dev*, %struct.input_dev** %ptr11, align 8, !dbg !6112
  call void @input_sync(%struct.input_dev* %17) #9, !dbg !6113
  br label %return, !dbg !6114

return:                                           ; preds = %if.end10, %if.then
  ret void, !dbg !6114
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenkbd_handle_mt_event(%struct.xenkbd_info* %info, %struct.xenkbd_mtouch* %mtouch) #2 !dbg !6115 {
entry:
  %info.addr = alloca %struct.xenkbd_info*, align 8
  %mtouch.addr = alloca %struct.xenkbd_mtouch*, align 8
  store %struct.xenkbd_info* %info, %struct.xenkbd_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenkbd_info** %info.addr, metadata !6119, metadata !DIExpression()), !dbg !6120
  store %struct.xenkbd_mtouch* %mtouch, %struct.xenkbd_mtouch** %mtouch.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenkbd_mtouch** %mtouch.addr, metadata !6121, metadata !DIExpression()), !dbg !6122
  %0 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6123
  %mtouch1 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %0, i32 0, i32 2, !dbg !6123
  %1 = load %struct.input_dev*, %struct.input_dev** %mtouch1, align 8, !dbg !6123
  %tobool = icmp ne %struct.input_dev* %1, null, !dbg !6123
  %lnot = xor i1 %tobool, true, !dbg !6123
  %lnot2 = xor i1 %lnot, true, !dbg !6123
  %lnot3 = xor i1 %lnot2, true, !dbg !6123
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6123
  %conv = sext i32 %lnot.ext to i64, !dbg !6123
  %tobool4 = icmp ne i64 %conv, 0, !dbg !6123
  br i1 %tobool4, label %if.then, label %if.end, !dbg !6125

if.then:                                          ; preds = %entry
  br label %sw.epilog, !dbg !6126

if.end:                                           ; preds = %entry
  %2 = load %struct.xenkbd_mtouch*, %struct.xenkbd_mtouch** %mtouch.addr, align 8, !dbg !6127
  %contact_id = getelementptr inbounds %struct.xenkbd_mtouch, %struct.xenkbd_mtouch* %2, i32 0, i32 2, !dbg !6129
  %3 = load i8, i8* %contact_id, align 2, !dbg !6129
  %conv5 = zext i8 %3 to i32, !dbg !6127
  %4 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6130
  %mtouch_cur_contact_id = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %4, i32 0, i32 8, !dbg !6131
  %5 = load i32, i32* %mtouch_cur_contact_id, align 8, !dbg !6131
  %cmp = icmp ne i32 %conv5, %5, !dbg !6132
  br i1 %cmp, label %if.then7, label %if.end14, !dbg !6133

if.then7:                                         ; preds = %if.end
  %6 = load %struct.xenkbd_mtouch*, %struct.xenkbd_mtouch** %mtouch.addr, align 8, !dbg !6134
  %contact_id8 = getelementptr inbounds %struct.xenkbd_mtouch, %struct.xenkbd_mtouch* %6, i32 0, i32 2, !dbg !6136
  %7 = load i8, i8* %contact_id8, align 2, !dbg !6136
  %conv9 = zext i8 %7 to i32, !dbg !6134
  %8 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6137
  %mtouch_cur_contact_id10 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %8, i32 0, i32 8, !dbg !6138
  store i32 %conv9, i32* %mtouch_cur_contact_id10, align 8, !dbg !6139
  %9 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6140
  %mtouch11 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %9, i32 0, i32 2, !dbg !6141
  %10 = load %struct.input_dev*, %struct.input_dev** %mtouch11, align 8, !dbg !6141
  %11 = load %struct.xenkbd_mtouch*, %struct.xenkbd_mtouch** %mtouch.addr, align 8, !dbg !6142
  %contact_id12 = getelementptr inbounds %struct.xenkbd_mtouch, %struct.xenkbd_mtouch* %11, i32 0, i32 2, !dbg !6143
  %12 = load i8, i8* %contact_id12, align 2, !dbg !6143
  %conv13 = zext i8 %12 to i32, !dbg !6142
  call void @input_mt_slot(%struct.input_dev* %10, i32 %conv13) #9, !dbg !6144
  br label %if.end14, !dbg !6145

if.end14:                                         ; preds = %if.then7, %if.end
  %13 = load %struct.xenkbd_mtouch*, %struct.xenkbd_mtouch** %mtouch.addr, align 8, !dbg !6146
  %event_type = getelementptr inbounds %struct.xenkbd_mtouch, %struct.xenkbd_mtouch* %13, i32 0, i32 1, !dbg !6147
  %14 = load i8, i8* %event_type, align 1, !dbg !6147
  %conv15 = zext i8 %14 to i32, !dbg !6146
  switch i32 %conv15, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb17
    i32 4, label %sw.bb22
    i32 5, label %sw.bb28
    i32 1, label %sw.bb32
    i32 3, label %sw.bb34
  ], !dbg !6148

sw.bb:                                            ; preds = %if.end14
  %15 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6149
  %mtouch16 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %15, i32 0, i32 2, !dbg !6151
  %16 = load %struct.input_dev*, %struct.input_dev** %mtouch16, align 8, !dbg !6151
  %call = call zeroext i1 @input_mt_report_slot_state(%struct.input_dev* %16, i32 0, i1 zeroext true) #9, !dbg !6152
  br label %sw.bb17, !dbg !6152

sw.bb17:                                          ; preds = %if.end14, %sw.bb
  %17 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6153
  %mtouch18 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %17, i32 0, i32 2, !dbg !6154
  %18 = load %struct.input_dev*, %struct.input_dev** %mtouch18, align 8, !dbg !6154
  %19 = load %struct.xenkbd_mtouch*, %struct.xenkbd_mtouch** %mtouch.addr, align 8, !dbg !6155
  %u = getelementptr inbounds %struct.xenkbd_mtouch, %struct.xenkbd_mtouch* %19, i32 0, i32 4, !dbg !6156
  %pos = bitcast %union.anon.71* %u to %struct.anon.72*, !dbg !6157
  %abs_x = getelementptr inbounds %struct.anon.72, %struct.anon.72* %pos, i32 0, i32 0, !dbg !6158
  %20 = load i32, i32* %abs_x, align 4, !dbg !6158
  call void @input_report_abs(%struct.input_dev* %18, i32 53, i32 %20) #9, !dbg !6159
  %21 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6160
  %mtouch19 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %21, i32 0, i32 2, !dbg !6161
  %22 = load %struct.input_dev*, %struct.input_dev** %mtouch19, align 8, !dbg !6161
  %23 = load %struct.xenkbd_mtouch*, %struct.xenkbd_mtouch** %mtouch.addr, align 8, !dbg !6162
  %u20 = getelementptr inbounds %struct.xenkbd_mtouch, %struct.xenkbd_mtouch* %23, i32 0, i32 4, !dbg !6163
  %pos21 = bitcast %union.anon.71* %u20 to %struct.anon.72*, !dbg !6164
  %abs_y = getelementptr inbounds %struct.anon.72, %struct.anon.72* %pos21, i32 0, i32 1, !dbg !6165
  %24 = load i32, i32* %abs_y, align 4, !dbg !6165
  call void @input_report_abs(%struct.input_dev* %22, i32 54, i32 %24) #9, !dbg !6166
  br label %sw.epilog, !dbg !6167

sw.bb22:                                          ; preds = %if.end14
  %25 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6168
  %mtouch23 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %25, i32 0, i32 2, !dbg !6169
  %26 = load %struct.input_dev*, %struct.input_dev** %mtouch23, align 8, !dbg !6169
  %27 = load %struct.xenkbd_mtouch*, %struct.xenkbd_mtouch** %mtouch.addr, align 8, !dbg !6170
  %u24 = getelementptr inbounds %struct.xenkbd_mtouch, %struct.xenkbd_mtouch* %27, i32 0, i32 4, !dbg !6171
  %shape = bitcast %union.anon.71* %u24 to %struct.anon.73*, !dbg !6172
  %major = getelementptr inbounds %struct.anon.73, %struct.anon.73* %shape, i32 0, i32 0, !dbg !6173
  %28 = load i32, i32* %major, align 4, !dbg !6173
  call void @input_report_abs(%struct.input_dev* %26, i32 48, i32 %28) #9, !dbg !6174
  %29 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6175
  %mtouch25 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %29, i32 0, i32 2, !dbg !6176
  %30 = load %struct.input_dev*, %struct.input_dev** %mtouch25, align 8, !dbg !6176
  %31 = load %struct.xenkbd_mtouch*, %struct.xenkbd_mtouch** %mtouch.addr, align 8, !dbg !6177
  %u26 = getelementptr inbounds %struct.xenkbd_mtouch, %struct.xenkbd_mtouch* %31, i32 0, i32 4, !dbg !6178
  %shape27 = bitcast %union.anon.71* %u26 to %struct.anon.73*, !dbg !6179
  %minor = getelementptr inbounds %struct.anon.73, %struct.anon.73* %shape27, i32 0, i32 1, !dbg !6180
  %32 = load i32, i32* %minor, align 4, !dbg !6180
  call void @input_report_abs(%struct.input_dev* %30, i32 49, i32 %32) #9, !dbg !6181
  br label %sw.epilog, !dbg !6182

sw.bb28:                                          ; preds = %if.end14
  %33 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6183
  %mtouch29 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %33, i32 0, i32 2, !dbg !6184
  %34 = load %struct.input_dev*, %struct.input_dev** %mtouch29, align 8, !dbg !6184
  %35 = load %struct.xenkbd_mtouch*, %struct.xenkbd_mtouch** %mtouch.addr, align 8, !dbg !6185
  %u30 = getelementptr inbounds %struct.xenkbd_mtouch, %struct.xenkbd_mtouch* %35, i32 0, i32 4, !dbg !6186
  %orientation = bitcast %union.anon.71* %u30 to i16*, !dbg !6187
  %36 = load i16, i16* %orientation, align 4, !dbg !6187
  %conv31 = sext i16 %36 to i32, !dbg !6185
  call void @input_report_abs(%struct.input_dev* %34, i32 52, i32 %conv31) #9, !dbg !6188
  br label %sw.epilog, !dbg !6189

sw.bb32:                                          ; preds = %if.end14
  %37 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6190
  %mtouch33 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %37, i32 0, i32 2, !dbg !6191
  %38 = load %struct.input_dev*, %struct.input_dev** %mtouch33, align 8, !dbg !6191
  call void @input_mt_report_slot_inactive(%struct.input_dev* %38) #9, !dbg !6192
  br label %sw.epilog, !dbg !6193

sw.bb34:                                          ; preds = %if.end14
  %39 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6194
  %mtouch35 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %39, i32 0, i32 2, !dbg !6195
  %40 = load %struct.input_dev*, %struct.input_dev** %mtouch35, align 8, !dbg !6195
  call void @input_mt_sync_frame(%struct.input_dev* %40) #9, !dbg !6196
  %41 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6197
  %mtouch36 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %41, i32 0, i32 2, !dbg !6198
  %42 = load %struct.input_dev*, %struct.input_dev** %mtouch36, align 8, !dbg !6198
  call void @input_sync(%struct.input_dev* %42) #9, !dbg !6199
  br label %sw.epilog, !dbg !6200

sw.epilog:                                        ; preds = %if.then, %if.end14, %sw.bb34, %sw.bb32, %sw.bb28, %sw.bb22, %sw.bb17
  ret void, !dbg !6201
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_rel(%struct.input_dev* %dev, i32 %code, i32 %value) #2 !dbg !6202 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !6205, metadata !DIExpression()), !dbg !6206
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !6207, metadata !DIExpression()), !dbg !6208
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !6209, metadata !DIExpression()), !dbg !6210
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !6211
  %1 = load i32, i32* %code.addr, align 4, !dbg !6212
  %2 = load i32, i32* %value.addr, align 4, !dbg !6213
  call void @input_event(%struct.input_dev* %0, i32 2, i32 %1, i32 %2) #9, !dbg !6214
  ret void, !dbg !6215
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_sync(%struct.input_dev* %dev) #2 !dbg !6216 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !6217, metadata !DIExpression()), !dbg !6218
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !6219
  call void @input_event(%struct.input_dev* %0, i32 0, i32 0, i32 0) #9, !dbg !6220
  ret void, !dbg !6221
}

; Function Attrs: noredzone
declare dso_local void @input_event(%struct.input_dev*, i32, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #2 !dbg !6222 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !6227, metadata !DIExpression()), !dbg !6229
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !6231, metadata !DIExpression()), !dbg !6232
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !6233, metadata !DIExpression()), !dbg !6234
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !6235, metadata !DIExpression()), !dbg !6237
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !6239, metadata !DIExpression()), !dbg !6240
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !6241, metadata !DIExpression()), !dbg !6243
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !6245, metadata !DIExpression()), !dbg !6246
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !6247, metadata !DIExpression()), !dbg !6248
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !6249, metadata !DIExpression()), !dbg !6250
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !6251
  %1 = load i64, i64* %nr.addr, align 8, !dbg !6252
  %div = sdiv i64 %1, 64, !dbg !6252
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !6253
  %2 = bitcast i64* %add.ptr to i8*, !dbg !6251
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !6254
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6255
  %conv.i = trunc i64 %4 to i32, !dbg !6255
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #13, !dbg !6256
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !6257
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !6257
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #13, !dbg !6257
  %7 = load i64, i64* %nr.addr, align 8, !dbg !6258
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6258
  br i1 %8, label %cond.true, label %cond.false, !dbg !6258

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !6258
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !6258
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !6259
  %and.i = and i64 %11, 63, !dbg !6260
  %shl.i = shl i64 1, %and.i, !dbg !6261
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !6262
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !6263
  %shr.i = ashr i64 %13, 6, !dbg !6264
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !6262
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !6262
  %and1.i = and i64 %shl.i, %14, !dbg !6265
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !6266
  %conv = zext i1 %cmp.i to i32, !dbg !6258
  br label %cond.end, !dbg !6258

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !6258
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !6258
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !6267
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !6268
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #11, !dbg !6269, !srcloc !6270
  store i8 %19, i8* %oldbit.i, align 1, !dbg !6269
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !6271
  %tobool.i = trunc i8 %20 to i1, !dbg !6271
  %conv2 = zext i1 %tobool.i to i32, !dbg !6258
  br label %cond.end, !dbg !6258

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6258
  %tobool = icmp ne i32 %cond, 0, !dbg !6258
  ret i1 %tobool, !dbg !6272
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #2 !dbg !6273 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !6274, metadata !DIExpression()), !dbg !6275
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6276, metadata !DIExpression()), !dbg !6277
  ret i1 true, !dbg !6278
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_abs(%struct.input_dev* %dev, i32 %code, i32 %value) #2 !dbg !6279 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !6280, metadata !DIExpression()), !dbg !6281
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !6282, metadata !DIExpression()), !dbg !6283
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !6284, metadata !DIExpression()), !dbg !6285
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !6286
  %1 = load i32, i32* %code.addr, align 4, !dbg !6287
  %2 = load i32, i32* %value.addr, align 4, !dbg !6288
  call void @input_event(%struct.input_dev* %0, i32 3, i32 %1, i32 %2) #9, !dbg !6289
  ret void, !dbg !6290
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_mt_slot(%struct.input_dev* %dev, i32 %slot) #2 !dbg !6291 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %slot.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !6294, metadata !DIExpression()), !dbg !6295
  store i32 %slot, i32* %slot.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %slot.addr, metadata !6296, metadata !DIExpression()), !dbg !6297
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !6298
  %1 = load i32, i32* %slot.addr, align 4, !dbg !6299
  call void @input_event(%struct.input_dev* %0, i32 3, i32 47, i32 %1) #9, !dbg !6300
  ret void, !dbg !6301
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @input_mt_report_slot_state(%struct.input_dev*, i32, i1 zeroext) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_mt_report_slot_inactive(%struct.input_dev* %dev) #2 !dbg !6302 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !6303, metadata !DIExpression()), !dbg !6304
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !6305
  %call = call zeroext i1 @input_mt_report_slot_state(%struct.input_dev* %0, i32 0, i1 zeroext false) #9, !dbg !6306
  ret void, !dbg !6307
}

; Function Attrs: noredzone
declare dso_local void @input_mt_sync_frame(%struct.input_dev*) #1

; Function Attrs: noredzone
declare dso_local i32 @xenbus_frontend_closed(%struct.xenbus_device*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !6308 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6311, metadata !DIExpression()), !dbg !6312
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6313
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6314
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6314
  ret i8* %1, !dbg !6315
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenkbd_disconnect_backend(%struct.xenkbd_info* %info) #2 !dbg !6316 {
entry:
  %info.addr = alloca %struct.xenkbd_info*, align 8
  store %struct.xenkbd_info* %info, %struct.xenkbd_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenkbd_info** %info.addr, metadata !6319, metadata !DIExpression()), !dbg !6320
  %0 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6321
  %irq = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %0, i32 0, i32 5, !dbg !6323
  %1 = load i32, i32* %irq, align 4, !dbg !6323
  %cmp = icmp sge i32 %1, 0, !dbg !6324
  br i1 %cmp, label %if.then, label %if.end, !dbg !6325

if.then:                                          ; preds = %entry
  %2 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6326
  %irq1 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %2, i32 0, i32 5, !dbg !6327
  %3 = load i32, i32* %irq1, align 4, !dbg !6327
  %4 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6328
  %5 = bitcast %struct.xenkbd_info* %4 to i8*, !dbg !6328
  call void @unbind_from_irqhandler(i32 %3, i8* %5) #9, !dbg !6329
  br label %if.end, !dbg !6329

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6330
  %irq2 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %6, i32 0, i32 5, !dbg !6331
  store i32 -1, i32* %irq2, align 4, !dbg !6332
  %7 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6333
  %gref = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %7, i32 0, i32 4, !dbg !6335
  %8 = load i32, i32* %gref, align 8, !dbg !6335
  %cmp3 = icmp sge i32 %8, 0, !dbg !6336
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !6337

if.then4:                                         ; preds = %if.end
  %9 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6338
  %gref5 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %9, i32 0, i32 4, !dbg !6339
  %10 = load i32, i32* %gref5, align 8, !dbg !6339
  call void @gnttab_end_foreign_access(i32 %10, i32 0, i64 0) #9, !dbg !6340
  br label %if.end6, !dbg !6340

if.end6:                                          ; preds = %if.then4, %if.end
  %11 = load %struct.xenkbd_info*, %struct.xenkbd_info** %info.addr, align 8, !dbg !6341
  %gref7 = getelementptr inbounds %struct.xenkbd_info, %struct.xenkbd_info* %11, i32 0, i32 4, !dbg !6342
  store i32 -1, i32* %gref7, align 8, !dbg !6343
  ret void, !dbg !6344
}

; Function Attrs: noredzone
declare dso_local void @input_unregister_device(%struct.input_dev*) #1

; Function Attrs: noredzone
declare dso_local void @free_pages(i64, i32) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noredzone
declare dso_local zeroext i1 @xen_has_pv_devices() #1

; Function Attrs: noredzone
declare dso_local i32 @__xenbus_register_frontend(%struct.xenbus_driver*, %struct.module*, i8*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind willreturn }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { nounwind }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4385, !4386, !4387, !4388}
!llvm.ident = !{!4389}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_ptr_size", scope: !2, file: !3, line: 50, type: !4382, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !163, globals: !247, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/misc/xen-kbdfront.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !114, !122, !128, !140, !145, !152, !157}
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
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 48, baseType: !7, size: 32, elements: !141)
!141 = !{!142, !143, !144}
!142 = !DIEnumerator(name: "KPARAM_X", value: 0, isUnsigned: true)
!143 = !DIEnumerator(name: "KPARAM_Y", value: 1, isUnsigned: true)
!144 = !DIEnumerator(name: "KPARAM_CNT", value: 2, isUnsigned: true)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !146, line: 305, baseType: !7, size: 32, elements: !147)
!146 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!147 = !{!148, !149, !150, !151}
!148 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!149 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!150 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!151 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !153, line: 10, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!154 = !{!155, !156}
!155 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!156 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xen_domain_type", file: !158, line: 5, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/xen/xen.h", directory: "/home/lizy2001/genbc/linux")
!159 = !{!160, !161, !162}
!160 = !DIEnumerator(name: "XEN_NATIVE", value: 0, isUnsigned: true)
!161 = !DIEnumerator(name: "XEN_PV_DOMAIN", value: 1, isUnsigned: true)
!162 = !DIEnumerator(name: "XEN_HVM_DOMAIN", value: 2, isUnsigned: true)
!163 = !{!164, !166, !167, !170, !171, !242, !243, !244}
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !165, line: 148, baseType: !7)
!165 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !169)
!169 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!170 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "xenkbd_in_event", file: !173, line: 499, size: 320, elements: !174)
!173 = !DIFile(filename: "./include/xen/interface/io/kbdif.h", directory: "/home/lizy2001/genbc/linux")
!174 = !{!175, !182, !193, !202, !209, !237}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !172, file: !173, line: 500, baseType: !176, size: 8)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !165, line: 102, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !178, line: 17, baseType: !179)
!178 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !180, line: 21, baseType: !181)
!180 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!181 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "motion", scope: !172, file: !173, line: 501, baseType: !183, size: 128)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenkbd_motion", file: !173, line: 270, size: 128, elements: !184)
!184 = !{!185, !186, !191, !192}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !183, file: !173, line: 271, baseType: !176, size: 8)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "rel_x", scope: !183, file: !173, line: 272, baseType: !187, size: 32, offset: 32)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !165, line: 98, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !178, line: 20, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !180, line: 26, baseType: !190)
!190 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "rel_y", scope: !183, file: !173, line: 273, baseType: !187, size: 32, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "rel_z", scope: !183, file: !173, line: 274, baseType: !187, size: 32, offset: 96)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !172, file: !173, line: 502, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenkbd_key", file: !173, line: 296, size: 64, elements: !195)
!195 = !{!196, !197, !198}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !194, file: !173, line: 297, baseType: !176, size: 8)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "pressed", scope: !194, file: !173, line: 298, baseType: !176, size: 8, offset: 8)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !194, file: !173, line: 299, baseType: !199, size: 32, offset: 32)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !165, line: 104, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !178, line: 21, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !180, line: 27, baseType: !7)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !172, file: !173, line: 503, baseType: !203, size: 128)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenkbd_position", file: !173, line: 326, size: 128, elements: !204)
!204 = !{!205, !206, !207, !208}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !203, file: !173, line: 327, baseType: !176, size: 8)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "abs_x", scope: !203, file: !173, line: 328, baseType: !187, size: 32, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "abs_y", scope: !203, file: !173, line: 329, baseType: !187, size: 32, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "rel_z", scope: !203, file: !173, line: 330, baseType: !187, size: 32, offset: 96)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "mtouch", scope: !172, file: !173, line: 504, baseType: !210, size: 128)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenkbd_mtouch", file: !173, line: 479, size: 128, elements: !211)
!211 = !{!212, !213, !214, !215, !219}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !210, file: !173, line: 480, baseType: !176, size: 8)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "event_type", scope: !210, file: !173, line: 481, baseType: !176, size: 8, offset: 8)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "contact_id", scope: !210, file: !173, line: 482, baseType: !176, size: 8, offset: 16)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !210, file: !173, line: 483, baseType: !216, size: 40, offset: 24)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 40, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 5)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !210, file: !173, line: 494, baseType: !220, size: 64, offset: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !173, line: 484, size: 64, elements: !221)
!221 = !{!222, !227, !232}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !220, file: !173, line: 488, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !220, file: !173, line: 485, size: 64, elements: !224)
!224 = !{!225, !226}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "abs_x", scope: !223, file: !173, line: 486, baseType: !187, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "abs_y", scope: !223, file: !173, line: 487, baseType: !187, size: 32, offset: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !220, file: !173, line: 492, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !220, file: !173, line: 489, size: 64, elements: !229)
!229 = !{!230, !231}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !228, file: !173, line: 490, baseType: !199, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !228, file: !173, line: 491, baseType: !199, size: 32, offset: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !220, file: !173, line: 493, baseType: !233, size: 16)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !165, line: 96, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !178, line: 18, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !180, line: 23, baseType: !236)
!236 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !172, file: !173, line: 505, baseType: !238, size: 320)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 320, elements: !240)
!239 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!240 = !{!241}
!241 = !DISubrange(count: 40)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !246, line: 76, flags: DIFlagFwdDecl)
!246 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!247 = !{!248, !309, !314, !319, !321, !328, !333, !338, !343, !0, !348, !350, !355, !4379}
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(name: "__param_ptr_size", scope: !2, file: !3, line: 50, type: !250, isLocal: true, isDefinition: true, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !252, line: 69, size: 320, elements: !253)
!252 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!253 = !{!254, !257, !258, !277, !282, !286, !287}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !251, file: !252, line: 70, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !251, file: !252, line: 71, baseType: !244, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !251, file: !252, line: 72, baseType: !259, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !252, line: 47, size: 256, elements: !262)
!262 = !{!263, !264, !269, !273}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !261, file: !252, line: 49, baseType: !7, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !261, file: !252, line: 51, baseType: !265, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!190, !255, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !261, file: !252, line: 53, baseType: !270, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!190, !242, !268}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !261, file: !252, line: 55, baseType: !274, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !166}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !251, file: !252, line: 73, baseType: !278, size: 16, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !178, line: 19, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !180, line: 24, baseType: !281)
!281 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !251, file: !252, line: 74, baseType: !283, size: 8, offset: 208)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !178, line: 16, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !180, line: 20, baseType: !285)
!285 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !251, file: !252, line: 75, baseType: !177, size: 8, offset: 216)
!287 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !252, line: 76, baseType: !288, size: 64, offset: 256)
!288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !251, file: !252, line: 76, size: 64, elements: !289)
!289 = !{!290, !291, !298}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !288, file: !252, line: 77, baseType: !166, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !288, file: !252, line: 78, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !252, line: 86, size: 128, elements: !295)
!295 = !{!296, !297}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !294, file: !252, line: 87, baseType: !7, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !294, file: !252, line: 88, baseType: !242, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !288, file: !252, line: 79, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !252, line: 92, size: 256, elements: !302)
!302 = !{!303, !304, !305, !307, !308}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !301, file: !252, line: 94, baseType: !7, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !301, file: !252, line: 95, baseType: !7, size: 32, offset: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !301, file: !252, line: 96, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !301, file: !252, line: 97, baseType: !259, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !301, file: !252, line: 98, baseType: !166, size: 64, offset: 192)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_ptr_sizetype239", scope: !2, file: !3, line: 50, type: !311, isLocal: true, isDefinition: true, align: 8)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 352, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 44)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_ptr_size240", scope: !2, file: !3, line: 51, type: !316, isLocal: true, isDefinition: true, align: 8)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 680, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 85)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xenkbd_init241", scope: !2, file: !3, line: 567, type: !166, isLocal: true, isDefinition: true)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(name: "__exitcall_xenkbd_cleanup", scope: !2, file: !3, line: 568, type: !323, isLocal: true, isDefinition: true)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !324, line: 117, baseType: !325)
!324 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{null}
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description242", scope: !2, file: !3, line: 570, type: !330, isLocal: true, isDefinition: true, align: 8)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 560, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 70)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file243", scope: !2, file: !3, line: 571, type: !335, isLocal: true, isDefinition: true, align: 8)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 400, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 50)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license244", scope: !2, file: !3, line: 571, type: !340, isLocal: true, isDefinition: true, align: 8)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 200, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 25)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias245", scope: !2, file: !3, line: 572, type: !345, isLocal: true, isDefinition: true, align: 8)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 224, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 28)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "__param_arr_ptr_size", scope: !2, file: !3, line: 50, type: !300, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "ptr_size", scope: !2, file: !3, line: 49, type: !352, isLocal: true, isDefinition: true)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 64, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 2)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "xenkbd_driver", scope: !2, file: !3, line: 539, type: !357, isLocal: true, isDefinition: true)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_driver", file: !358, line: 96, size: 1920, elements: !359)
!358 = !DIFile(filename: "./include/xen/xenbus.h", directory: "/home/lizy2001/genbc/linux")
!359 = !{!360, !361, !370, !373, !4358, !4362, !4366, !4367, !4368, !4372, !4373, !4374, !4375}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !357, file: !358, line: 97, baseType: !255, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !357, file: !358, line: 98, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_device_id", file: !358, line: 89, size: 256, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "devicetype", scope: !364, file: !358, line: 92, baseType: !367, size: 256)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 256, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "allow_rebind", scope: !357, file: !358, line: 99, baseType: !371, size: 8, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !165, line: 30, baseType: !372)
!372 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !357, file: !358, line: 100, baseType: !374, size: 64, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!190, !377, !362}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_device", file: !358, line: 71, size: 6784, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !399, !4348, !4349, !4350, !4351}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "devicetype", scope: !378, file: !358, line: 72, baseType: !255, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !378, file: !358, line: 73, baseType: !255, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "otherend", scope: !378, file: !358, line: 74, baseType: !255, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "otherend_id", scope: !378, file: !358, line: 75, baseType: !190, size: 32, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "otherend_watch", scope: !378, file: !358, line: 76, baseType: !385, size: 256, offset: 256)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_watch", file: !358, line: 57, size: 256, elements: !386)
!386 = !{!387, !393, !394}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !385, file: !358, line: 59, baseType: !388, size: 128)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !165, line: 178, size: 128, elements: !389)
!389 = !{!390, !392}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !388, file: !165, line: 179, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !388, file: !165, line: 179, baseType: !391, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !385, file: !358, line: 62, baseType: !255, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !385, file: !358, line: 65, baseType: !395, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !398, !255, !255}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !378, file: !358, line: 77, baseType: !400, size: 5568, offset: 512)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !401)
!401 = !{!402, !3521, !3523, !3526, !3527, !3578, !3669, !3670, !3671, !3672, !3673, !3682, !3787, !3800, !4275, !4276, !4280, !4282, !4283, !4284, !4288, !4294, !4295, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4336, !4337, !4338, !4341, !4344, !4345, !4346, !4347}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !400, file: !73, line: 462, baseType: !403, size: 512)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !404, line: 64, size: 512, elements: !405)
!404 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!405 = !{!406, !407, !408, !410, !469, !3372, !3511, !3516, !3517, !3518, !3519, !3520}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !403, file: !404, line: 65, baseType: !255, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !403, file: !404, line: 66, baseType: !388, size: 128, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !403, file: !404, line: 67, baseType: !409, size: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !403, file: !404, line: 68, baseType: !411, size: 64, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !404, line: 192, size: 704, elements: !413)
!413 = !{!414, !415, !431, !432}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !412, file: !404, line: 193, baseType: !388, size: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !412, file: !404, line: 194, baseType: !416, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !417, line: 83, baseType: !418)
!417 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !417, line: 71, elements: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_member, scope: !418, file: !417, line: 72, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !418, file: !417, line: 72, elements: !422)
!422 = !{!423}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !421, file: !417, line: 73, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !417, line: 20, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !424, file: !417, line: 21, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !428, line: 25, baseType: !429)
!428 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !428, line: 25, elements: !430)
!430 = !{}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !412, file: !404, line: 195, baseType: !403, size: 512, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !412, file: !404, line: 196, baseType: !433, size: 64, offset: 640)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !404, line: 156, size: 192, elements: !436)
!436 = !{!437, !442, !447}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !435, file: !404, line: 157, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!190, !411, !409}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !435, file: !404, line: 158, baseType: !443, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!255, !411, !409}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !435, file: !404, line: 159, baseType: !448, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!190, !411, !409, !452}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !404, line: 148, size: 20736, elements: !454)
!454 = !{!455, !459, !463, !464, !468}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !453, file: !404, line: 149, baseType: !456, size: 192)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 192, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 3)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !453, file: !404, line: 150, baseType: !460, size: 4096, offset: 192)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 4096, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !453, file: !404, line: 151, baseType: !190, size: 32, offset: 4288)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !453, file: !404, line: 152, baseType: !465, size: 16384, offset: 4320)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 16384, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 2048)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !453, file: !404, line: 153, baseType: !190, size: 32, offset: 20704)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !403, file: !404, line: 69, baseType: !470, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !404, line: 138, size: 448, elements: !472)
!472 = !{!473, !477, !504, !506, !3334, !3362, !3366}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !471, file: !404, line: 139, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !409}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !471, file: !404, line: 140, baseType: !478, size: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !481, line: 230, size: 128, elements: !482)
!481 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!482 = !{!483, !497}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !480, file: !481, line: 231, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!487, !409, !491, !242}
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !165, line: 60, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !489, line: 73, baseType: !490)
!489 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !489, line: 15, baseType: !169)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !481, line: 30, size: 128, elements: !493)
!493 = !{!494, !495}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !492, file: !481, line: 31, baseType: !255, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !492, file: !481, line: 32, baseType: !496, size: 16, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !165, line: 19, baseType: !281)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !480, file: !481, line: 232, baseType: !498, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!487, !409, !491, !255, !501}
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !165, line: 55, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !489, line: 72, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !489, line: 16, baseType: !170)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !471, file: !404, line: 141, baseType: !505, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !471, file: !404, line: 142, baseType: !507, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !510)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !481, line: 84, size: 320, elements: !511)
!511 = !{!512, !513, !517, !3331, !3332}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !510, file: !481, line: 85, baseType: !255, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !510, file: !481, line: 86, baseType: !514, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!496, !409, !491, !190}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !510, file: !481, line: 88, baseType: !518, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!496, !409, !521, !190}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !481, line: 168, size: 448, elements: !523)
!523 = !{!524, !525, !526, !527, !3326, !3327}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !522, file: !481, line: 169, baseType: !492, size: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !522, file: !481, line: 170, baseType: !501, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !522, file: !481, line: 171, baseType: !166, size: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !522, file: !481, line: 172, baseType: !528, size: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!487, !531, !409, !521, !242, !700, !501}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !533)
!533 = !{!534, !552, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3309, !3310, !3319, !3320, !3321, !3322, !3323, !3324, !3325}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !532, file: !44, line: 920, baseType: !535, size: 128)
!535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !532, file: !44, line: 917, size: 128, elements: !536)
!536 = !{!537, !543}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !535, file: !44, line: 918, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !539, line: 58, size: 64, elements: !540)
!539 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!540 = !{!541}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !538, file: !539, line: 59, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !535, file: !44, line: 919, baseType: !544, size: 128, align: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !165, line: 216, size: 128, align: 64, elements: !545)
!545 = !{!546, !548}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !544, file: !165, line: 217, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !544, file: !165, line: 218, baseType: !549, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !547}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !532, file: !44, line: 921, baseType: !553, size: 128, offset: 128)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !554, line: 8, size: 128, elements: !555)
!554 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!555 = !{!556, !560}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !553, file: !554, line: 9, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !559, line: 18, flags: DIFlagFwdDecl)
!559 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !553, file: !554, line: 10, baseType: !561, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !559, line: 89, size: 1536, elements: !563)
!563 = !{!564, !565, !575, !583, !584, !602, !3259, !3261, !3273, !3274, !3275, !3276, !3277, !3283, !3284, !3285}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !562, file: !559, line: 91, baseType: !7, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !562, file: !559, line: 92, baseType: !566, size: 32, offset: 32)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !567, line: 277, baseType: !568)
!567 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !567, line: 277, size: 32, elements: !569)
!569 = !{!570}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !568, file: !567, line: 277, baseType: !571, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !567, line: 70, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !567, line: 65, size: 32, elements: !573)
!573 = !{!574}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !572, file: !567, line: 66, baseType: !7, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !562, file: !559, line: 93, baseType: !576, size: 128, offset: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !577, line: 38, size: 128, elements: !578)
!577 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!578 = !{!579, !581}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !576, file: !577, line: 39, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !576, file: !577, line: 39, baseType: !582, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !562, file: !559, line: 94, baseType: !561, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !562, file: !559, line: 95, baseType: !585, size: 128, offset: 256)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !559, line: 47, size: 128, elements: !586)
!586 = !{!587, !599}
!587 = !DIDerivedType(tag: DW_TAG_member, scope: !585, file: !559, line: 48, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !585, file: !559, line: 48, size: 64, elements: !589)
!589 = !{!590, !595}
!590 = !DIDerivedType(tag: DW_TAG_member, scope: !588, file: !559, line: 49, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !588, file: !559, line: 49, size: 64, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !591, file: !559, line: 50, baseType: !200, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !591, file: !559, line: 50, baseType: !200, size: 32, offset: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !588, file: !559, line: 52, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !178, line: 23, baseType: !597)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !180, line: 31, baseType: !598)
!598 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !585, file: !559, line: 54, baseType: !600, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !562, file: !559, line: 96, baseType: !603, size: 64, offset: 384)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !605)
!605 = !{!606, !607, !608, !616, !623, !624, !766, !2970, !2971, !2972, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3235, !3243, !3244, !3245, !3255, !3256, !3257, !3258}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !604, file: !44, line: 611, baseType: !496, size: 16)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !604, file: !44, line: 612, baseType: !281, size: 16, offset: 16)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !604, file: !44, line: 613, baseType: !609, size: 32, offset: 32)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !610, line: 23, baseType: !611)
!610 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !610, line: 21, size: 32, elements: !612)
!612 = !{!613}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !611, file: !610, line: 22, baseType: !614, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !165, line: 32, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !489, line: 49, baseType: !7)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !604, file: !44, line: 614, baseType: !617, size: 32, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !610, line: 28, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !610, line: 26, size: 32, elements: !619)
!619 = !{!620}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !618, file: !610, line: 27, baseType: !621, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !165, line: 33, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !489, line: 50, baseType: !7)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !604, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !604, file: !44, line: 622, baseType: !625, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !628)
!628 = !{!629, !633, !643, !647, !653, !657, !661, !665, !669, !673, !677, !678, !684, !688, !714, !742, !746, !752, !757, !761, !762}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !627, file: !44, line: 1865, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!561, !603, !561, !7}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !627, file: !44, line: 1866, baseType: !634, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!255, !561, !603, !637}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !639, line: 10, size: 128, elements: !640)
!639 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!640 = !{!641, !642}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !638, file: !639, line: 11, baseType: !274, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !638, file: !639, line: 12, baseType: !166, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !627, file: !44, line: 1867, baseType: !644, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!190, !603, !190}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !627, file: !44, line: 1868, baseType: !648, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!651, !603, !190}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !627, file: !44, line: 1870, baseType: !654, size: 64, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!190, !561, !242, !190}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !627, file: !44, line: 1872, baseType: !658, size: 64, offset: 320)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!190, !603, !561, !496, !371}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !627, file: !44, line: 1873, baseType: !662, size: 64, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!190, !561, !603, !561}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !627, file: !44, line: 1874, baseType: !666, size: 64, offset: 448)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!190, !603, !561}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !627, file: !44, line: 1875, baseType: !670, size: 64, offset: 512)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!190, !603, !561, !255}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !627, file: !44, line: 1876, baseType: !674, size: 64, offset: 576)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!190, !603, !561, !496}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !627, file: !44, line: 1877, baseType: !666, size: 64, offset: 640)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !627, file: !44, line: 1878, baseType: !679, size: 64, offset: 704)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!190, !603, !561, !496, !682}
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !165, line: 16, baseType: !683)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !165, line: 13, baseType: !200)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !627, file: !44, line: 1879, baseType: !685, size: 64, offset: 768)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!190, !603, !561, !603, !561, !7}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !627, file: !44, line: 1881, baseType: !689, size: 64, offset: 832)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!190, !561, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !694)
!694 = !{!695, !696, !697, !698, !699, !703, !711, !712, !713}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !693, file: !44, line: 220, baseType: !7, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !693, file: !44, line: 221, baseType: !496, size: 16, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !693, file: !44, line: 222, baseType: !609, size: 32, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !693, file: !44, line: 223, baseType: !617, size: 32, offset: 96)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !693, file: !44, line: 224, baseType: !700, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !165, line: 46, baseType: !701)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !489, line: 88, baseType: !702)
!702 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !693, file: !44, line: 225, baseType: !704, size: 128, offset: 192)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !705, line: 13, size: 128, elements: !706)
!705 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!706 = !{!707, !710}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !704, file: !705, line: 14, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !705, line: 8, baseType: !709)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !180, line: 30, baseType: !702)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !704, file: !705, line: 15, baseType: !169, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !693, file: !44, line: 226, baseType: !704, size: 128, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !693, file: !44, line: 227, baseType: !704, size: 128, offset: 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !693, file: !44, line: 234, baseType: !531, size: 64, offset: 576)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !627, file: !44, line: 1882, baseType: !715, size: 64, offset: 896)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!190, !718, !720, !200, !7}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !722, line: 22, size: 1152, elements: !723)
!722 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!723 = !{!724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !721, file: !722, line: 23, baseType: !200, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !721, file: !722, line: 24, baseType: !496, size: 16, offset: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !721, file: !722, line: 25, baseType: !7, size: 32, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !721, file: !722, line: 26, baseType: !199, size: 32, offset: 96)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !721, file: !722, line: 27, baseType: !596, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !721, file: !722, line: 28, baseType: !596, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !721, file: !722, line: 37, baseType: !596, size: 64, offset: 256)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !721, file: !722, line: 38, baseType: !682, size: 32, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !721, file: !722, line: 39, baseType: !682, size: 32, offset: 352)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !721, file: !722, line: 40, baseType: !609, size: 32, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !721, file: !722, line: 41, baseType: !617, size: 32, offset: 416)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !721, file: !722, line: 42, baseType: !700, size: 64, offset: 448)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !721, file: !722, line: 43, baseType: !704, size: 128, offset: 512)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !721, file: !722, line: 44, baseType: !704, size: 128, offset: 640)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !721, file: !722, line: 45, baseType: !704, size: 128, offset: 768)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !721, file: !722, line: 46, baseType: !704, size: 128, offset: 896)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !721, file: !722, line: 47, baseType: !596, size: 64, offset: 1024)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !721, file: !722, line: 48, baseType: !596, size: 64, offset: 1088)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !627, file: !44, line: 1883, baseType: !743, size: 64, offset: 960)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!487, !561, !242, !501}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !627, file: !44, line: 1884, baseType: !747, size: 64, offset: 1024)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!190, !603, !750, !596, !596}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !627, file: !44, line: 1886, baseType: !753, size: 64, offset: 1088)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!190, !603, !756, !190}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !627, file: !44, line: 1887, baseType: !758, size: 64, offset: 1152)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!190, !603, !561, !531, !7, !496}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !627, file: !44, line: 1890, baseType: !674, size: 64, offset: 1216)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !627, file: !44, line: 1891, baseType: !763, size: 64, offset: 1280)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!190, !603, !651, !190}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !604, file: !44, line: 623, baseType: !767, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !769)
!769 = !{!770, !771, !772, !773, !774, !775, !822, !2579, !2661, !2744, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2760, !2764, !2765, !2768, !2769, !2772, !2773, !2774, !2815, !2841, !2842, !2843, !2844, !2845, !2846, !2849, !2850, !2857, !2858, !2860, !2861, !2862, !2921, !2922, !2937, !2938, !2939, !2940, !2941, !2944, !2945, !2946, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !768, file: !44, line: 1417, baseType: !388, size: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !768, file: !44, line: 1418, baseType: !682, size: 32, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !768, file: !44, line: 1419, baseType: !181, size: 8, offset: 160)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !768, file: !44, line: 1420, baseType: !170, size: 64, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !768, file: !44, line: 1421, baseType: !700, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !768, file: !44, line: 1422, baseType: !776, size: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !778)
!778 = !{!779, !780, !781, !788, !792, !796, !800, !801, !802, !812, !815, !816, !817, !819, !820, !821}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !777, file: !44, line: 2229, baseType: !255, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !777, file: !44, line: 2230, baseType: !190, size: 32, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !777, file: !44, line: 2238, baseType: !782, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!190, !785}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !787, line: 28, flags: DIFlagFwdDecl)
!787 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!788 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !777, file: !44, line: 2239, baseType: !789, size: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !791)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !777, file: !44, line: 2240, baseType: !793, size: 64, offset: 256)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!561, !776, !190, !255, !166}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !777, file: !44, line: 2242, baseType: !797, size: 64, offset: 320)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !767}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !777, file: !44, line: 2243, baseType: !244, size: 64, offset: 384)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !777, file: !44, line: 2244, baseType: !776, size: 64, offset: 448)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !777, file: !44, line: 2245, baseType: !803, size: 64, offset: 512)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !165, line: 182, size: 64, elements: !804)
!804 = !{!805}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !803, file: !165, line: 183, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !165, line: 186, size: 128, elements: !808)
!808 = !{!809, !810}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !807, file: !165, line: 187, baseType: !806, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !807, file: !165, line: 187, baseType: !811, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !777, file: !44, line: 2247, baseType: !813, offset: 576)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !814, line: 187, elements: !430)
!814 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!815 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !777, file: !44, line: 2248, baseType: !813, offset: 576)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !777, file: !44, line: 2249, baseType: !813, offset: 576)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !777, file: !44, line: 2250, baseType: !818, offset: 576)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !813, elements: !457)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !777, file: !44, line: 2252, baseType: !813, offset: 576)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !777, file: !44, line: 2253, baseType: !813, offset: 576)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !777, file: !44, line: 2254, baseType: !813, offset: 576)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !768, file: !44, line: 1423, baseType: !823, size: 64, offset: 384)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !826)
!826 = !{!827, !831, !835, !836, !840, !846, !850, !851, !852, !856, !860, !861, !862, !863, !869, !874, !875, !882, !883, !884, !885, !2563, !2578}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !825, file: !44, line: 1936, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!603, !767}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !825, file: !44, line: 1937, baseType: !832, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !603}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !825, file: !44, line: 1938, baseType: !832, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !825, file: !44, line: 1940, baseType: !837, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !603, !190}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !825, file: !44, line: 1941, baseType: !841, size: 64, offset: 256)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!190, !603, !844}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 289, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !825, file: !44, line: 1942, baseType: !847, size: 64, offset: 320)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!190, !603}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !825, file: !44, line: 1943, baseType: !832, size: 64, offset: 384)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !825, file: !44, line: 1944, baseType: !797, size: 64, offset: 448)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !825, file: !44, line: 1945, baseType: !853, size: 64, offset: 512)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!190, !767, !190}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !825, file: !44, line: 1946, baseType: !857, size: 64, offset: 576)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!190, !767}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !825, file: !44, line: 1947, baseType: !857, size: 64, offset: 640)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !825, file: !44, line: 1948, baseType: !857, size: 64, offset: 704)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !825, file: !44, line: 1949, baseType: !857, size: 64, offset: 768)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !825, file: !44, line: 1950, baseType: !864, size: 64, offset: 832)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!190, !561, !867}
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !825, file: !44, line: 1951, baseType: !870, size: 64, offset: 896)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!190, !767, !873, !242}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !825, file: !44, line: 1952, baseType: !797, size: 64, offset: 960)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !825, file: !44, line: 1954, baseType: !876, size: 64, offset: 1024)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!190, !879, !561}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !881, line: 539, flags: DIFlagFwdDecl)
!881 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!882 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !825, file: !44, line: 1955, baseType: !876, size: 64, offset: 1088)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !825, file: !44, line: 1956, baseType: !876, size: 64, offset: 1152)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !825, file: !44, line: 1957, baseType: !876, size: 64, offset: 1216)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !825, file: !44, line: 1963, baseType: !886, size: 64, offset: 1280)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!190, !767, !889, !164}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !891, line: 68, size: 512, align: 128, elements: !892)
!891 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!892 = !{!893, !894, !2555, !2562}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !890, file: !891, line: 69, baseType: !170, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, scope: !890, file: !891, line: 77, baseType: !895, size: 320, offset: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !890, file: !891, line: 77, size: 320, elements: !896)
!896 = !{!897, !1082, !1087, !1115, !1123, !1129, !2486, !2554}
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !891, line: 78, baseType: !898, size: 320)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !891, line: 78, size: 320, elements: !899)
!899 = !{!900, !901, !1080, !1081}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !898, file: !891, line: 84, baseType: !388, size: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !898, file: !891, line: 86, baseType: !902, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !904)
!904 = !{!905, !906, !913, !914, !919, !934, !950, !951, !952, !953, !1073, !1074, !1077, !1078, !1079}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !903, file: !44, line: 452, baseType: !603, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !903, file: !44, line: 453, baseType: !907, size: 128, offset: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !908, line: 292, size: 128, elements: !909)
!908 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!909 = !{!910, !911, !912}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !907, file: !908, line: 293, baseType: !416)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !907, file: !908, line: 295, baseType: !164, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !907, file: !908, line: 296, baseType: !166, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !903, file: !44, line: 454, baseType: !164, size: 32, offset: 192)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !903, file: !44, line: 455, baseType: !915, size: 32, offset: 224)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !165, line: 168, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !165, line: 166, size: 32, elements: !917)
!917 = !{!918}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !916, file: !165, line: 167, baseType: !190, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !903, file: !44, line: 460, baseType: !920, size: 128, offset: 256)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !921, line: 125, size: 128, elements: !922)
!921 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!922 = !{!923, !933}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !920, file: !921, line: 126, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !921, line: 31, size: 64, elements: !925)
!925 = !{!926}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !924, file: !921, line: 32, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !921, line: 24, size: 192, align: 64, elements: !929)
!929 = !{!930, !931, !932}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !928, file: !921, line: 25, baseType: !170, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !928, file: !921, line: 26, baseType: !927, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !928, file: !921, line: 27, baseType: !927, size: 64, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !920, file: !921, line: 127, baseType: !927, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !903, file: !44, line: 461, baseType: !935, size: 256, offset: 384)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !936, line: 35, size: 256, elements: !937)
!936 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!937 = !{!938, !946, !947, !949}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !935, file: !936, line: 36, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !940, line: 13, baseType: !941)
!940 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !165, line: 175, baseType: !942)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !165, line: 173, size: 64, elements: !943)
!943 = !{!944}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !942, file: !165, line: 174, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !178, line: 22, baseType: !709)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !935, file: !936, line: 42, baseType: !939, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !935, file: !936, line: 46, baseType: !948, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !417, line: 29, baseType: !424)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !935, file: !936, line: 47, baseType: !388, size: 128, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !903, file: !44, line: 462, baseType: !170, size: 64, offset: 640)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !903, file: !44, line: 463, baseType: !170, size: 64, offset: 704)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !903, file: !44, line: 464, baseType: !170, size: 64, offset: 768)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !903, file: !44, line: 465, baseType: !954, size: 64, offset: 832)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !956)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !957)
!957 = !{!958, !962, !966, !970, !974, !978, !984, !990, !994, !999, !1003, !1007, !1011, !1037, !1041, !1047, !1048, !1049, !1053, !1058, !1062, !1069}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !956, file: !44, line: 368, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!190, !889, !844}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !956, file: !44, line: 369, baseType: !963, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!190, !531, !889}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !956, file: !44, line: 372, baseType: !967, size: 64, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!190, !902, !844}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !956, file: !44, line: 375, baseType: !971, size: 64, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!190, !889}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !956, file: !44, line: 381, baseType: !975, size: 64, offset: 256)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!190, !531, !902, !391, !7}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !956, file: !44, line: 383, baseType: !979, size: 64, offset: 320)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{null, !982}
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !956, file: !44, line: 385, baseType: !985, size: 64, offset: 384)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!190, !531, !902, !700, !7, !7, !988, !989}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !956, file: !44, line: 388, baseType: !991, size: 64, offset: 448)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!190, !531, !902, !700, !7, !7, !889, !166}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !956, file: !44, line: 393, baseType: !995, size: 64, offset: 512)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!998, !902, !998}
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !165, line: 125, baseType: !596)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !956, file: !44, line: 394, baseType: !1000, size: 64, offset: 576)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{null, !889, !7, !7}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !956, file: !44, line: 395, baseType: !1004, size: 64, offset: 640)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!190, !889, !164}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !956, file: !44, line: 396, baseType: !1008, size: 64, offset: 704)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{null, !889}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !956, file: !44, line: 397, baseType: !1012, size: 64, offset: 768)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!487, !1015, !1035}
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !1017)
!1017 = !{!1018, !1019, !1020, !1024, !1025, !1026, !1027, !1028}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1016, file: !44, line: 321, baseType: !531, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1016, file: !44, line: 326, baseType: !700, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1016, file: !44, line: 327, baseType: !1021, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{null, !1015, !169, !169}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1016, file: !44, line: 328, baseType: !166, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1016, file: !44, line: 329, baseType: !190, size: 32, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1016, file: !44, line: 330, baseType: !279, size: 16, offset: 288)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1016, file: !44, line: 331, baseType: !279, size: 16, offset: 304)
!1028 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !44, line: 332, baseType: !1029, size: 64, offset: 320)
!1029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1016, file: !44, line: 332, size: 64, elements: !1030)
!1030 = !{!1031, !1032}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1029, file: !44, line: 333, baseType: !7, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1029, file: !44, line: 334, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !956, file: !44, line: 402, baseType: !1038, size: 64, offset: 832)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!190, !902, !889, !889, !5}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !956, file: !44, line: 404, baseType: !1042, size: 64, offset: 896)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!371, !889, !1045}
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1046, line: 305, baseType: !7)
!1046 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !956, file: !44, line: 405, baseType: !1008, size: 64, offset: 960)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !956, file: !44, line: 406, baseType: !971, size: 64, offset: 1024)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !956, file: !44, line: 407, baseType: !1050, size: 64, offset: 1088)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!190, !889, !170, !170}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !956, file: !44, line: 409, baseType: !1054, size: 64, offset: 1152)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !889, !1057, !1057}
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !956, file: !44, line: 410, baseType: !1059, size: 64, offset: 1216)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!190, !902, !889}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !956, file: !44, line: 413, baseType: !1063, size: 64, offset: 1280)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!190, !1066, !531, !1068}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !956, file: !44, line: 415, baseType: !1070, size: 64, offset: 1344)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !531}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !903, file: !44, line: 466, baseType: !170, size: 64, offset: 896)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !903, file: !44, line: 467, baseType: !1075, size: 32, offset: 960)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1076, line: 8, baseType: !200)
!1076 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !903, file: !44, line: 468, baseType: !416, offset: 992)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !903, file: !44, line: 469, baseType: !388, size: 128, offset: 1024)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !903, file: !44, line: 470, baseType: !166, size: 64, offset: 1152)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !898, file: !891, line: 87, baseType: !170, size: 64, offset: 192)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !898, file: !891, line: 94, baseType: !170, size: 64, offset: 256)
!1082 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !891, line: 96, baseType: !1083, size: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !891, line: 96, size: 64, elements: !1084)
!1084 = !{!1085}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1083, file: !891, line: 101, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !165, line: 143, baseType: !596)
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !891, line: 103, baseType: !1088, size: 320)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !891, line: 103, size: 320, elements: !1089)
!1089 = !{!1090, !1100, !1103, !1104}
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !891, line: 104, baseType: !1091, size: 128)
!1091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1088, file: !891, line: 104, size: 128, elements: !1092)
!1092 = !{!1093, !1094}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1091, file: !891, line: 105, baseType: !388, size: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !891, line: 106, baseType: !1095, size: 128)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1091, file: !891, line: 106, size: 128, elements: !1096)
!1096 = !{!1097, !1098, !1099}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1095, file: !891, line: 107, baseType: !889, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1095, file: !891, line: 109, baseType: !190, size: 32, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1095, file: !891, line: 110, baseType: !190, size: 32, offset: 96)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1088, file: !891, line: 117, baseType: !1101, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !891, line: 117, flags: DIFlagFwdDecl)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1088, file: !891, line: 119, baseType: !166, size: 64, offset: 192)
!1104 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !891, line: 120, baseType: !1105, size: 64, offset: 256)
!1105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1088, file: !891, line: 120, size: 64, elements: !1106)
!1106 = !{!1107, !1108, !1109}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1105, file: !891, line: 121, baseType: !166, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1105, file: !891, line: 122, baseType: !170, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, scope: !1105, file: !891, line: 123, baseType: !1110, size: 32)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1105, file: !891, line: 123, size: 32, elements: !1111)
!1111 = !{!1112, !1113, !1114}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1110, file: !891, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1110, file: !891, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1110, file: !891, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1115 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !891, line: 130, baseType: !1116, size: 192)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !891, line: 130, size: 192, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121, !1122}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1116, file: !891, line: 131, baseType: !170, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1116, file: !891, line: 134, baseType: !181, size: 8, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1116, file: !891, line: 135, baseType: !181, size: 8, offset: 72)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1116, file: !891, line: 136, baseType: !915, size: 32, offset: 96)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1116, file: !891, line: 137, baseType: !7, size: 32, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !891, line: 139, baseType: !1124, size: 256)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !891, line: 139, size: 256, elements: !1125)
!1125 = !{!1126, !1127, !1128}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1124, file: !891, line: 140, baseType: !170, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1124, file: !891, line: 141, baseType: !915, size: 32, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1124, file: !891, line: 143, baseType: !388, size: 128, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !891, line: 145, baseType: !1130, size: 256)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !891, line: 145, size: 256, elements: !1131)
!1131 = !{!1132, !1133, !1135, !1136, !2485}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1130, file: !891, line: 146, baseType: !170, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1130, file: !891, line: 147, baseType: !1134, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !881, line: 509, baseType: !889)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1130, file: !891, line: 148, baseType: !170, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, scope: !1130, file: !891, line: 149, baseType: !1137, size: 64, offset: 192)
!1137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1130, file: !891, line: 149, size: 64, elements: !1138)
!1138 = !{!1139, !2484}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1137, file: !891, line: 150, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !891, line: 388, size: 7296, elements: !1142)
!1142 = !{!1143, !2480}
!1143 = !DIDerivedType(tag: DW_TAG_member, scope: !1141, file: !891, line: 389, baseType: !1144, size: 7296)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1141, file: !891, line: 389, size: 7296, elements: !1145)
!1145 = !{!1146, !1264, !1265, !1266, !1270, !1271, !1272, !1273, !1274, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1313, !1321, !1324, !1367, !1368, !2464, !2465, !2468, !2469, !2470, !2473, !2474, !2475, !2478, !2479}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1144, file: !891, line: 390, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !891, line: 305, size: 1472, elements: !1149)
!1149 = !{!1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1164, !1165, !1170, !1171, !1174, !1258, !1259, !1260, !1261, !1262}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1148, file: !891, line: 308, baseType: !170, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1148, file: !891, line: 309, baseType: !170, size: 64, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1148, file: !891, line: 313, baseType: !1147, size: 64, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1148, file: !891, line: 313, baseType: !1147, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1148, file: !891, line: 315, baseType: !928, size: 192, align: 64, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1148, file: !891, line: 323, baseType: !170, size: 64, offset: 448)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1148, file: !891, line: 327, baseType: !1140, size: 64, offset: 512)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1148, file: !891, line: 333, baseType: !1158, size: 64, offset: 576)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !881, line: 284, baseType: !1159)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !881, line: 284, size: 64, elements: !1160)
!1160 = !{!1161}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1159, file: !881, line: 284, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1163, line: 19, baseType: !170)
!1163 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1148, file: !891, line: 334, baseType: !170, size: 64, offset: 640)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1148, file: !891, line: 343, baseType: !1166, size: 256, offset: 704)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1148, file: !891, line: 340, size: 256, elements: !1167)
!1167 = !{!1168, !1169}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1166, file: !891, line: 341, baseType: !928, size: 192, align: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1166, file: !891, line: 342, baseType: !170, size: 64, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1148, file: !891, line: 351, baseType: !388, size: 128, offset: 960)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1148, file: !891, line: 353, baseType: !1172, size: 64, offset: 1088)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !891, line: 353, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1148, file: !891, line: 356, baseType: !1175, size: 64, offset: 1152)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1177)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1178)
!1178 = !{!1179, !1183, !1184, !1188, !1192, !1232, !1236, !1240, !1244, !1245, !1246, !1250, !1254}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1177, file: !14, line: 558, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{null, !1147}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1177, file: !14, line: 559, baseType: !1180, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1177, file: !14, line: 560, baseType: !1185, size: 64, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!190, !1147, !170}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1177, file: !14, line: 561, baseType: !1189, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!190, !1147}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1177, file: !14, line: 562, baseType: !1193, size: 64, offset: 256)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!1196, !1197}
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !891, line: 682, baseType: !7)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1199)
!1199 = !{!1200, !1201, !1202, !1203, !1204, !1205, !1212, !1219, !1225, !1226, !1227, !1229, !1231}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1198, file: !14, line: 509, baseType: !1147, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1198, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1198, file: !14, line: 511, baseType: !164, size: 32, offset: 96)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1198, file: !14, line: 512, baseType: !170, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1198, file: !14, line: 513, baseType: !170, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1198, file: !14, line: 514, baseType: !1206, size: 64, offset: 256)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !881, line: 385, baseType: !1208)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !881, line: 385, size: 64, elements: !1209)
!1209 = !{!1210}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1208, file: !881, line: 385, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1163, line: 15, baseType: !170)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1198, file: !14, line: 516, baseType: !1213, size: 64, offset: 320)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !881, line: 359, baseType: !1215)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !881, line: 359, size: 64, elements: !1216)
!1216 = !{!1217}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1215, file: !881, line: 359, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1163, line: 16, baseType: !170)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1198, file: !14, line: 519, baseType: !1220, size: 64, offset: 384)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1163, line: 21, baseType: !1221)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1163, line: 21, size: 64, elements: !1222)
!1222 = !{!1223}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1221, file: !1163, line: 21, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1163, line: 14, baseType: !170)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1198, file: !14, line: 521, baseType: !889, size: 64, offset: 448)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1198, file: !14, line: 522, baseType: !889, size: 64, offset: 512)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1198, file: !14, line: 528, baseType: !1228, size: 64, offset: 576)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1198, file: !14, line: 532, baseType: !1230, size: 64, offset: 640)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1198, file: !14, line: 536, baseType: !1134, size: 64, offset: 704)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1177, file: !14, line: 563, baseType: !1233, size: 64, offset: 320)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!1196, !1197, !13}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1177, file: !14, line: 565, baseType: !1237, size: 64, offset: 384)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !1197, !170, !170}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1177, file: !14, line: 567, baseType: !1241, size: 64, offset: 448)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!170, !1147}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1177, file: !14, line: 571, baseType: !1193, size: 64, offset: 512)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1177, file: !14, line: 574, baseType: !1193, size: 64, offset: 576)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1177, file: !14, line: 579, baseType: !1247, size: 64, offset: 640)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!190, !1147, !170, !166, !190, !190}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1177, file: !14, line: 585, baseType: !1251, size: 64, offset: 704)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!255, !1147}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1177, file: !14, line: 615, baseType: !1255, size: 64, offset: 768)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!889, !1147, !170}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1148, file: !891, line: 359, baseType: !170, size: 64, offset: 1216)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1148, file: !891, line: 361, baseType: !531, size: 64, offset: 1280)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1148, file: !891, line: 362, baseType: !166, size: 64, offset: 1344)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1148, file: !891, line: 365, baseType: !939, size: 64, offset: 1408)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1148, file: !891, line: 373, baseType: !1263, offset: 1472)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !891, line: 296, elements: !430)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1144, file: !891, line: 391, baseType: !924, size: 64, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1144, file: !891, line: 392, baseType: !596, size: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1144, file: !891, line: 394, baseType: !1267, size: 64, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!170, !531, !170, !170, !170, !170}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1144, file: !891, line: 398, baseType: !170, size: 64, offset: 256)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1144, file: !891, line: 399, baseType: !170, size: 64, offset: 320)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1144, file: !891, line: 405, baseType: !170, size: 64, offset: 384)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1144, file: !891, line: 406, baseType: !170, size: 64, offset: 448)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1144, file: !891, line: 407, baseType: !1275, size: 64, offset: 512)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !881, line: 286, baseType: !1277)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !881, line: 286, size: 64, elements: !1278)
!1278 = !{!1279}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1277, file: !881, line: 286, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1163, line: 18, baseType: !170)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1144, file: !891, line: 416, baseType: !915, size: 32, offset: 576)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1144, file: !891, line: 428, baseType: !915, size: 32, offset: 608)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1144, file: !891, line: 437, baseType: !915, size: 32, offset: 640)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1144, file: !891, line: 447, baseType: !915, size: 32, offset: 672)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1144, file: !891, line: 450, baseType: !939, size: 64, offset: 704)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1144, file: !891, line: 452, baseType: !190, size: 32, offset: 768)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1144, file: !891, line: 454, baseType: !416, offset: 800)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1144, file: !891, line: 457, baseType: !935, size: 256, offset: 832)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1144, file: !891, line: 459, baseType: !388, size: 128, offset: 1088)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1144, file: !891, line: 466, baseType: !170, size: 64, offset: 1216)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1144, file: !891, line: 467, baseType: !170, size: 64, offset: 1280)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1144, file: !891, line: 469, baseType: !170, size: 64, offset: 1344)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1144, file: !891, line: 470, baseType: !170, size: 64, offset: 1408)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1144, file: !891, line: 471, baseType: !941, size: 64, offset: 1472)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1144, file: !891, line: 472, baseType: !170, size: 64, offset: 1536)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1144, file: !891, line: 473, baseType: !170, size: 64, offset: 1600)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1144, file: !891, line: 474, baseType: !170, size: 64, offset: 1664)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1144, file: !891, line: 475, baseType: !170, size: 64, offset: 1728)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1144, file: !891, line: 477, baseType: !416, offset: 1792)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1144, file: !891, line: 478, baseType: !170, size: 64, offset: 1792)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1144, file: !891, line: 478, baseType: !170, size: 64, offset: 1856)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1144, file: !891, line: 478, baseType: !170, size: 64, offset: 1920)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1144, file: !891, line: 478, baseType: !170, size: 64, offset: 1984)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1144, file: !891, line: 479, baseType: !170, size: 64, offset: 2048)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1144, file: !891, line: 479, baseType: !170, size: 64, offset: 2112)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1144, file: !891, line: 479, baseType: !170, size: 64, offset: 2176)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1144, file: !891, line: 480, baseType: !170, size: 64, offset: 2240)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1144, file: !891, line: 480, baseType: !170, size: 64, offset: 2304)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1144, file: !891, line: 480, baseType: !170, size: 64, offset: 2368)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1144, file: !891, line: 480, baseType: !170, size: 64, offset: 2432)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1144, file: !891, line: 482, baseType: !1312, size: 2816, offset: 2496)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 2816, elements: !312)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1144, file: !891, line: 488, baseType: !1314, size: 256, offset: 5312)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1315, line: 60, size: 256, elements: !1316)
!1315 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1316 = !{!1317}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1314, file: !1315, line: 61, baseType: !1318, size: 256)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !939, size: 256, elements: !1319)
!1319 = !{!1320}
!1320 = !DISubrange(count: 4)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1144, file: !891, line: 490, baseType: !1322, size: 64, offset: 5568)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !891, line: 490, flags: DIFlagFwdDecl)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1144, file: !891, line: 493, baseType: !1325, size: 896, offset: 5632)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1326, line: 53, baseType: !1327)
!1326 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1326, line: 13, size: 896, elements: !1328)
!1328 = !{!1329, !1330, !1331, !1332, !1335, !1336, !1343, !1344, !1364, !1365, !1366}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1327, file: !1326, line: 18, baseType: !596, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1327, file: !1326, line: 28, baseType: !941, size: 64, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1327, file: !1326, line: 31, baseType: !935, size: 256, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1327, file: !1326, line: 32, baseType: !1333, size: 64, offset: 384)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1326, line: 32, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1327, file: !1326, line: 37, baseType: !281, size: 16, offset: 448)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1327, file: !1326, line: 40, baseType: !1337, size: 192, offset: 512)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1338, line: 53, size: 192, elements: !1339)
!1338 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1339 = !{!1340, !1341, !1342}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1337, file: !1338, line: 54, baseType: !939, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1337, file: !1338, line: 55, baseType: !416, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1337, file: !1338, line: 59, baseType: !388, size: 128, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1327, file: !1326, line: 41, baseType: !166, size: 64, offset: 704)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1327, file: !1326, line: 42, baseType: !1345, size: 64, offset: 768)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1347)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1348, line: 13, size: 896, elements: !1349)
!1348 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1349 = !{!1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1347, file: !1348, line: 14, baseType: !166, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1347, file: !1348, line: 15, baseType: !170, size: 64, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1347, file: !1348, line: 17, baseType: !170, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1347, file: !1348, line: 17, baseType: !170, size: 64, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1347, file: !1348, line: 19, baseType: !169, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1347, file: !1348, line: 21, baseType: !169, size: 64, offset: 320)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1347, file: !1348, line: 22, baseType: !169, size: 64, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1347, file: !1348, line: 23, baseType: !169, size: 64, offset: 448)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1347, file: !1348, line: 24, baseType: !169, size: 64, offset: 512)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1347, file: !1348, line: 25, baseType: !169, size: 64, offset: 576)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1347, file: !1348, line: 26, baseType: !169, size: 64, offset: 640)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1347, file: !1348, line: 27, baseType: !169, size: 64, offset: 704)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1347, file: !1348, line: 28, baseType: !169, size: 64, offset: 768)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1347, file: !1348, line: 29, baseType: !169, size: 64, offset: 832)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1327, file: !1326, line: 44, baseType: !915, size: 32, offset: 832)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1327, file: !1326, line: 50, baseType: !279, size: 16, offset: 864)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1327, file: !1326, line: 51, baseType: !234, size: 16, offset: 880)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1144, file: !891, line: 495, baseType: !170, size: 64, offset: 6528)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1144, file: !891, line: 497, baseType: !1369, size: 64, offset: 6592)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !891, line: 381, size: 384, elements: !1371)
!1371 = !{!1372, !1373, !2463}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1370, file: !891, line: 382, baseType: !915, size: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1370, file: !891, line: 383, baseType: !1374, size: 128, offset: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !891, line: 376, size: 128, elements: !1375)
!1375 = !{!1376, !2461}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1374, file: !891, line: 377, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1379, line: 640, size: 48640, elements: !1380)
!1379 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1380 = !{!1381, !1387, !1388, !1389, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1406, !1424, !1435, !1518, !1519, !1520, !1531, !1532, !1534, !1535, !1536, !1537, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1614, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1652, !1654, !1655, !1656, !1668, !1669, !1670, !1671, !1672, !1673, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1697, !1702, !1883, !1884, !1885, !1886, !1890, !1893, !1896, !1899, !1902, !1906, !2007, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2051, !2052, !2053, !2054, !2055, !2060, !2061, !2062, !2065, !2066, !2069, !2072, !2075, !2078, !2121, !2124, !2125, !2204, !2205, !2208, !2209, !2212, !2213, !2214, !2218, !2219, !2220, !2233, !2234, !2235, !2245, !2250, !2253, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1378, file: !1379, line: 646, baseType: !1382, size: 128)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1383, line: 56, size: 128, elements: !1384)
!1383 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1384 = !{!1385, !1386}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1382, file: !1383, line: 57, baseType: !170, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1382, file: !1383, line: 58, baseType: !200, size: 32, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1378, file: !1379, line: 649, baseType: !168, size: 64, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1378, file: !1379, line: 657, baseType: !166, size: 64, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1378, file: !1379, line: 658, baseType: !1390, size: 32, offset: 256)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1391, line: 113, baseType: !1392)
!1391 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1391, line: 111, size: 32, elements: !1393)
!1393 = !{!1394}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1392, file: !1391, line: 112, baseType: !915, size: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1378, file: !1379, line: 660, baseType: !7, size: 32, offset: 288)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1378, file: !1379, line: 661, baseType: !7, size: 32, offset: 320)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1378, file: !1379, line: 684, baseType: !190, size: 32, offset: 352)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1378, file: !1379, line: 686, baseType: !190, size: 32, offset: 384)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1378, file: !1379, line: 687, baseType: !190, size: 32, offset: 416)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1378, file: !1379, line: 688, baseType: !190, size: 32, offset: 448)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1378, file: !1379, line: 689, baseType: !7, size: 32, offset: 480)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1378, file: !1379, line: 691, baseType: !1403, size: 64, offset: 512)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1405)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1379, line: 691, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1378, file: !1379, line: 692, baseType: !1407, size: 832, offset: 576)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1379, line: 451, size: 832, elements: !1408)
!1408 = !{!1409, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1407, file: !1379, line: 453, baseType: !1410, size: 128)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1379, line: 325, size: 128, elements: !1411)
!1411 = !{!1412, !1413}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1410, file: !1379, line: 326, baseType: !170, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1410, file: !1379, line: 327, baseType: !200, size: 32, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1407, file: !1379, line: 454, baseType: !928, size: 192, align: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1407, file: !1379, line: 455, baseType: !388, size: 128, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1407, file: !1379, line: 456, baseType: !7, size: 32, offset: 448)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1407, file: !1379, line: 458, baseType: !596, size: 64, offset: 512)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1407, file: !1379, line: 459, baseType: !596, size: 64, offset: 576)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1407, file: !1379, line: 460, baseType: !596, size: 64, offset: 640)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1407, file: !1379, line: 461, baseType: !596, size: 64, offset: 704)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1407, file: !1379, line: 463, baseType: !596, size: 64, offset: 768)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1407, file: !1379, line: 465, baseType: !1423, offset: 832)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1379, line: 415, elements: !430)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1378, file: !1379, line: 693, baseType: !1425, size: 384, offset: 1408)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1379, line: 489, size: 384, elements: !1426)
!1426 = !{!1427, !1428, !1429, !1430, !1431, !1432, !1433}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1425, file: !1379, line: 490, baseType: !388, size: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1425, file: !1379, line: 491, baseType: !170, size: 64, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1425, file: !1379, line: 492, baseType: !170, size: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1425, file: !1379, line: 493, baseType: !7, size: 32, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1425, file: !1379, line: 494, baseType: !281, size: 16, offset: 288)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1425, file: !1379, line: 495, baseType: !281, size: 16, offset: 304)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1425, file: !1379, line: 497, baseType: !1434, size: 64, offset: 320)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1378, file: !1379, line: 697, baseType: !1436, size: 1792, offset: 1792)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1379, line: 507, size: 1792, elements: !1437)
!1437 = !{!1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1515, !1516}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1436, file: !1379, line: 508, baseType: !928, size: 192, align: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1436, file: !1379, line: 515, baseType: !596, size: 64, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1436, file: !1379, line: 516, baseType: !596, size: 64, offset: 256)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1436, file: !1379, line: 517, baseType: !596, size: 64, offset: 320)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1436, file: !1379, line: 518, baseType: !596, size: 64, offset: 384)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1436, file: !1379, line: 519, baseType: !596, size: 64, offset: 448)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1436, file: !1379, line: 526, baseType: !945, size: 64, offset: 512)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1436, file: !1379, line: 527, baseType: !596, size: 64, offset: 576)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1436, file: !1379, line: 528, baseType: !7, size: 32, offset: 640)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1436, file: !1379, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1436, file: !1379, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1436, file: !1379, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1436, file: !1379, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1436, file: !1379, line: 563, baseType: !1452, size: 512, offset: 704)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1453)
!1453 = !{!1454, !1462, !1463, !1468, !1511, !1512, !1513, !1514}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1452, file: !20, line: 119, baseType: !1455, size: 256)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1456, line: 9, size: 256, elements: !1457)
!1456 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1457 = !{!1458, !1459}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1455, file: !1456, line: 10, baseType: !928, size: 192, align: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1455, file: !1456, line: 11, baseType: !1460, size: 64, offset: 192)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1461, line: 29, baseType: !945)
!1461 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1452, file: !20, line: 120, baseType: !1460, size: 64, offset: 256)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1452, file: !20, line: 121, baseType: !1464, size: 64, offset: 320)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!19, !1467}
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1452, file: !20, line: 122, baseType: !1469, size: 64, offset: 384)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1471)
!1471 = !{!1472, !1492, !1493, !1496, !1501, !1502, !1506, !1510}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1470, file: !20, line: 160, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1475)
!1475 = !{!1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1474, file: !20, line: 215, baseType: !948)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1474, file: !20, line: 216, baseType: !7, size: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1474, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1474, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1474, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1474, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1474, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1474, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1474, file: !20, line: 233, baseType: !1460, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1474, file: !20, line: 234, baseType: !1467, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1474, file: !20, line: 235, baseType: !1460, size: 64, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1474, file: !20, line: 236, baseType: !1467, size: 64, offset: 320)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1474, file: !20, line: 237, baseType: !1489, size: 4096, offset: 512)
!1489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1470, size: 4096, elements: !1490)
!1490 = !{!1491}
!1491 = !DISubrange(count: 8)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1470, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1470, file: !20, line: 162, baseType: !1494, size: 32, offset: 96)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !165, line: 27, baseType: !1495)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !489, line: 96, baseType: !190)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1470, file: !20, line: 163, baseType: !1497, size: 32, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !567, line: 276, baseType: !1498)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !567, line: 276, size: 32, elements: !1499)
!1499 = !{!1500}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1498, file: !567, line: 276, baseType: !571, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1470, file: !20, line: 164, baseType: !1467, size: 64, offset: 192)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1470, file: !20, line: 165, baseType: !1503, size: 128, offset: 256)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1456, line: 14, size: 128, elements: !1504)
!1504 = !{!1505}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1503, file: !1456, line: 15, baseType: !920, size: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1470, file: !20, line: 166, baseType: !1507, size: 64, offset: 384)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!1460}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1470, file: !20, line: 167, baseType: !1460, size: 64, offset: 448)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1452, file: !20, line: 123, baseType: !177, size: 8, offset: 448)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1452, file: !20, line: 124, baseType: !177, size: 8, offset: 456)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1452, file: !20, line: 125, baseType: !177, size: 8, offset: 464)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1452, file: !20, line: 126, baseType: !177, size: 8, offset: 472)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1436, file: !1379, line: 572, baseType: !1452, size: 512, offset: 1216)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1436, file: !1379, line: 580, baseType: !1517, size: 64, offset: 1728)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1378, file: !1379, line: 721, baseType: !7, size: 32, offset: 3584)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1378, file: !1379, line: 722, baseType: !190, size: 32, offset: 3616)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1378, file: !1379, line: 723, baseType: !1521, size: 64, offset: 3648)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1523)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1524, line: 17, baseType: !1525)
!1524 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1524, line: 17, size: 64, elements: !1526)
!1526 = !{!1527}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1525, file: !1524, line: 17, baseType: !1528, size: 64)
!1528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 64, elements: !1529)
!1529 = !{!1530}
!1530 = !DISubrange(count: 1)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1378, file: !1379, line: 724, baseType: !1523, size: 64, offset: 3712)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1378, file: !1379, line: 749, baseType: !1533, offset: 3776)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1379, line: 290, elements: !430)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1378, file: !1379, line: 751, baseType: !388, size: 128, offset: 3776)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1378, file: !1379, line: 757, baseType: !1140, size: 64, offset: 3904)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1378, file: !1379, line: 758, baseType: !1140, size: 64, offset: 3968)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1378, file: !1379, line: 761, baseType: !1538, size: 320, offset: 4032)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1315, line: 34, size: 320, elements: !1539)
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1538, file: !1315, line: 35, baseType: !596, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1538, file: !1315, line: 36, baseType: !1542, size: 256, offset: 64)
!1542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1147, size: 256, elements: !1319)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1378, file: !1379, line: 766, baseType: !190, size: 32, offset: 4352)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1378, file: !1379, line: 767, baseType: !190, size: 32, offset: 4384)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1378, file: !1379, line: 768, baseType: !190, size: 32, offset: 4416)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1378, file: !1379, line: 770, baseType: !190, size: 32, offset: 4448)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1378, file: !1379, line: 772, baseType: !170, size: 64, offset: 4480)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1378, file: !1379, line: 775, baseType: !7, size: 32, offset: 4544)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1378, file: !1379, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1378, file: !1379, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1378, file: !1379, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1378, file: !1379, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1378, file: !1379, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1378, file: !1379, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1378, file: !1379, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1378, file: !1379, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1378, file: !1379, line: 831, baseType: !170, size: 64, offset: 4672)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1378, file: !1379, line: 833, baseType: !1559, size: 384, offset: 4736)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1560)
!1560 = !{!1561, !1566}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1559, file: !25, line: 26, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!169, !1565}
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !25, line: 27, baseType: !1567, size: 320, offset: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !25, line: 27, size: 320, elements: !1568)
!1568 = !{!1569, !1579, !1604}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1567, file: !25, line: 36, baseType: !1570, size: 320)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1567, file: !25, line: 29, size: 320, elements: !1571)
!1571 = !{!1572, !1574, !1575, !1576, !1577, !1578}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1570, file: !25, line: 30, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1570, file: !25, line: 31, baseType: !200, size: 32, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1570, file: !25, line: 32, baseType: !200, size: 32, offset: 96)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1570, file: !25, line: 33, baseType: !200, size: 32, offset: 128)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1570, file: !25, line: 34, baseType: !596, size: 64, offset: 192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1570, file: !25, line: 35, baseType: !1573, size: 64, offset: 256)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1567, file: !25, line: 46, baseType: !1580, size: 192)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1567, file: !25, line: 38, size: 192, elements: !1581)
!1581 = !{!1582, !1583, !1584, !1603}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1580, file: !25, line: 39, baseType: !1494, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1580, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, scope: !1580, file: !25, line: 41, baseType: !1585, size: 64, offset: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1580, file: !25, line: 41, size: 64, elements: !1586)
!1586 = !{!1587, !1595}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1585, file: !25, line: 42, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1590, line: 7, size: 128, elements: !1591)
!1590 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1591 = !{!1592, !1594}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1589, file: !1590, line: 8, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !489, line: 93, baseType: !702)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1589, file: !1590, line: 9, baseType: !702, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1585, file: !25, line: 43, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1598, line: 7, size: 64, elements: !1599)
!1598 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1599 = !{!1600, !1602}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1597, file: !1598, line: 8, baseType: !1601, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1598, line: 5, baseType: !188)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1597, file: !1598, line: 9, baseType: !188, size: 32, offset: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1580, file: !25, line: 45, baseType: !596, size: 64, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1567, file: !25, line: 54, baseType: !1605, size: 256)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1567, file: !25, line: 48, size: 256, elements: !1606)
!1606 = !{!1607, !1610, !1611, !1612, !1613}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1605, file: !25, line: 49, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1605, file: !25, line: 50, baseType: !190, size: 32, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1605, file: !25, line: 51, baseType: !190, size: 32, offset: 96)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1605, file: !25, line: 52, baseType: !170, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1605, file: !25, line: 53, baseType: !170, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1378, file: !1379, line: 835, baseType: !1615, size: 32, offset: 5120)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !165, line: 22, baseType: !1616)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !489, line: 28, baseType: !190)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1378, file: !1379, line: 836, baseType: !1615, size: 32, offset: 5152)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1378, file: !1379, line: 840, baseType: !170, size: 64, offset: 5184)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1378, file: !1379, line: 849, baseType: !1377, size: 64, offset: 5248)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1378, file: !1379, line: 852, baseType: !1377, size: 64, offset: 5312)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1378, file: !1379, line: 857, baseType: !388, size: 128, offset: 5376)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1378, file: !1379, line: 858, baseType: !388, size: 128, offset: 5504)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1378, file: !1379, line: 859, baseType: !1377, size: 64, offset: 5632)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1378, file: !1379, line: 867, baseType: !388, size: 128, offset: 5696)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1378, file: !1379, line: 868, baseType: !388, size: 128, offset: 5824)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1378, file: !1379, line: 871, baseType: !1627, size: 64, offset: 5952)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1629)
!1629 = !{!1630, !1631, !1632, !1633, !1635, !1636, !1643, !1644}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1628, file: !53, line: 61, baseType: !1390, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1628, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1628, file: !53, line: 63, baseType: !416, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1628, file: !53, line: 65, baseType: !1634, size: 256, offset: 64)
!1634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 256, elements: !1319)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1628, file: !53, line: 66, baseType: !803, size: 64, offset: 320)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1628, file: !53, line: 68, baseType: !1637, size: 128, offset: 384)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1638, line: 40, baseType: !1639)
!1638 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1638, line: 36, size: 128, elements: !1640)
!1640 = !{!1641, !1642}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1639, file: !1638, line: 37, baseType: !416)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1639, file: !1638, line: 38, baseType: !388, size: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1628, file: !53, line: 69, baseType: !544, size: 128, align: 64, offset: 512)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1628, file: !53, line: 70, baseType: !1645, size: 128, offset: 640)
!1645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1646, size: 128, elements: !1529)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1647)
!1647 = !{!1648, !1649}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1646, file: !53, line: 55, baseType: !190, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1646, file: !53, line: 56, baseType: !1650, size: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1378, file: !1379, line: 872, baseType: !1653, size: 512, offset: 6016)
!1653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 512, elements: !1319)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1378, file: !1379, line: 873, baseType: !388, size: 128, offset: 6528)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1378, file: !1379, line: 874, baseType: !388, size: 128, offset: 6656)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1378, file: !1379, line: 876, baseType: !1657, size: 64, offset: 6784)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1659, line: 26, size: 192, elements: !1660)
!1659 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1660 = !{!1661, !1662}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1658, file: !1659, line: 27, baseType: !7, size: 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1658, file: !1659, line: 28, baseType: !1663, size: 128, offset: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1664, line: 43, size: 128, elements: !1665)
!1664 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1665 = !{!1666, !1667}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1663, file: !1664, line: 44, baseType: !948)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1663, file: !1664, line: 45, baseType: !388, size: 128)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1378, file: !1379, line: 879, baseType: !873, size: 64, offset: 6848)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1378, file: !1379, line: 882, baseType: !873, size: 64, offset: 6912)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1378, file: !1379, line: 884, baseType: !596, size: 64, offset: 6976)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1378, file: !1379, line: 885, baseType: !596, size: 64, offset: 7040)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1378, file: !1379, line: 890, baseType: !596, size: 64, offset: 7104)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1378, file: !1379, line: 891, baseType: !1674, size: 128, offset: 7168)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1379, line: 242, size: 128, elements: !1675)
!1675 = !{!1676, !1677, !1678}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1674, file: !1379, line: 244, baseType: !596, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1674, file: !1379, line: 245, baseType: !596, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1674, file: !1379, line: 246, baseType: !948, offset: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1378, file: !1379, line: 900, baseType: !170, size: 64, offset: 7296)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1378, file: !1379, line: 901, baseType: !170, size: 64, offset: 7360)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1378, file: !1379, line: 904, baseType: !596, size: 64, offset: 7424)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1378, file: !1379, line: 907, baseType: !596, size: 64, offset: 7488)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1378, file: !1379, line: 910, baseType: !170, size: 64, offset: 7552)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1378, file: !1379, line: 911, baseType: !170, size: 64, offset: 7616)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1378, file: !1379, line: 914, baseType: !1686, size: 640, offset: 7680)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1687, line: 123, size: 640, elements: !1688)
!1687 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1688 = !{!1689, !1695, !1696}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1686, file: !1687, line: 124, baseType: !1690, size: 576)
!1690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1691, size: 576, elements: !457)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1687, line: 108, size: 192, elements: !1692)
!1692 = !{!1693, !1694}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1691, file: !1687, line: 109, baseType: !596, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1691, file: !1687, line: 110, baseType: !1503, size: 128, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1686, file: !1687, line: 125, baseType: !7, size: 32, offset: 576)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1686, file: !1687, line: 126, baseType: !7, size: 32, offset: 608)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1378, file: !1379, line: 917, baseType: !1698, size: 192, offset: 8320)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1687, line: 134, size: 192, elements: !1699)
!1699 = !{!1700, !1701}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1698, file: !1687, line: 135, baseType: !544, size: 128, align: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1698, file: !1687, line: 136, baseType: !7, size: 32, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1378, file: !1379, line: 923, baseType: !1703, size: 64, offset: 8512)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1705)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1706, line: 111, size: 1280, elements: !1707)
!1706 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1707 = !{!1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1725, !1726, !1727, !1728, !1729, !1730, !1836, !1837, !1838, !1839, !1865, !1868, !1878}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1705, file: !1706, line: 112, baseType: !915, size: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1705, file: !1706, line: 120, baseType: !609, size: 32, offset: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1705, file: !1706, line: 121, baseType: !617, size: 32, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1705, file: !1706, line: 122, baseType: !609, size: 32, offset: 96)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1705, file: !1706, line: 123, baseType: !617, size: 32, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1705, file: !1706, line: 124, baseType: !609, size: 32, offset: 160)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1705, file: !1706, line: 125, baseType: !617, size: 32, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1705, file: !1706, line: 126, baseType: !609, size: 32, offset: 224)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1705, file: !1706, line: 127, baseType: !617, size: 32, offset: 256)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1705, file: !1706, line: 128, baseType: !7, size: 32, offset: 288)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1705, file: !1706, line: 129, baseType: !1719, size: 64, offset: 320)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1720, line: 26, baseType: !1721)
!1720 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1720, line: 24, size: 64, elements: !1722)
!1722 = !{!1723}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1721, file: !1720, line: 25, baseType: !1724, size: 64)
!1724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 64, elements: !353)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1705, file: !1706, line: 130, baseType: !1719, size: 64, offset: 384)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1705, file: !1706, line: 131, baseType: !1719, size: 64, offset: 448)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1705, file: !1706, line: 132, baseType: !1719, size: 64, offset: 512)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1705, file: !1706, line: 133, baseType: !1719, size: 64, offset: 576)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1705, file: !1706, line: 135, baseType: !181, size: 8, offset: 640)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1705, file: !1706, line: 137, baseType: !1731, size: 64, offset: 704)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1733, line: 189, size: 1664, elements: !1734)
!1733 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1734 = !{!1735, !1736, !1738, !1743, !1744, !1747, !1748, !1753, !1754, !1755, !1756, !1758, !1759, !1760, !1761, !1762, !1800, !1821}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1732, file: !1733, line: 190, baseType: !1390, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1732, file: !1733, line: 191, baseType: !1737, size: 32, offset: 32)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1733, line: 28, baseType: !187)
!1738 = !DIDerivedType(tag: DW_TAG_member, scope: !1732, file: !1733, line: 192, baseType: !1739, size: 192, offset: 64)
!1739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1732, file: !1733, line: 192, size: 192, elements: !1740)
!1740 = !{!1741, !1742}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1739, file: !1733, line: 193, baseType: !388, size: 128)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1739, file: !1733, line: 194, baseType: !928, size: 192, align: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1732, file: !1733, line: 199, baseType: !935, size: 256, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1732, file: !1733, line: 200, baseType: !1745, size: 64, offset: 512)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1733, line: 200, flags: DIFlagFwdDecl)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1732, file: !1733, line: 201, baseType: !166, size: 64, offset: 576)
!1748 = !DIDerivedType(tag: DW_TAG_member, scope: !1732, file: !1733, line: 202, baseType: !1749, size: 64, offset: 640)
!1749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1732, file: !1733, line: 202, size: 64, elements: !1750)
!1750 = !{!1751, !1752}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1749, file: !1733, line: 203, baseType: !708, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1749, file: !1733, line: 204, baseType: !708, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1732, file: !1733, line: 206, baseType: !708, size: 64, offset: 704)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1732, file: !1733, line: 207, baseType: !609, size: 32, offset: 768)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1732, file: !1733, line: 208, baseType: !617, size: 32, offset: 800)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1732, file: !1733, line: 209, baseType: !1757, size: 32, offset: 832)
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1733, line: 31, baseType: !199)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1732, file: !1733, line: 210, baseType: !281, size: 16, offset: 864)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1732, file: !1733, line: 211, baseType: !281, size: 16, offset: 880)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1732, file: !1733, line: 215, baseType: !236, size: 16, offset: 896)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1732, file: !1733, line: 222, baseType: !170, size: 64, offset: 960)
!1762 = !DIDerivedType(tag: DW_TAG_member, scope: !1732, file: !1733, line: 239, baseType: !1763, size: 320, offset: 1024)
!1763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1732, file: !1733, line: 239, size: 320, elements: !1764)
!1764 = !{!1765, !1792}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1763, file: !1733, line: 240, baseType: !1766, size: 320)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1733, line: 108, size: 320, elements: !1767)
!1767 = !{!1768, !1769, !1781, !1784, !1791}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1766, file: !1733, line: 110, baseType: !170, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, scope: !1766, file: !1733, line: 111, baseType: !1770, size: 64, offset: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1766, file: !1733, line: 111, size: 64, elements: !1771)
!1771 = !{!1772, !1780}
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !1733, line: 112, baseType: !1773, size: 64)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1770, file: !1733, line: 112, size: 64, elements: !1774)
!1774 = !{!1775, !1776}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1773, file: !1733, line: 114, baseType: !279, size: 16)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1773, file: !1733, line: 115, baseType: !1777, size: 48, offset: 16)
!1777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 48, elements: !1778)
!1778 = !{!1779}
!1779 = !DISubrange(count: 6)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1770, file: !1733, line: 121, baseType: !170, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1766, file: !1733, line: 123, baseType: !1782, size: 64, offset: 128)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1733, line: 96, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1766, file: !1733, line: 124, baseType: !1785, size: 64, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1733, line: 102, size: 192, elements: !1787)
!1787 = !{!1788, !1789, !1790}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1786, file: !1733, line: 103, baseType: !544, size: 128, align: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1786, file: !1733, line: 104, baseType: !1390, size: 32, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1786, file: !1733, line: 105, baseType: !371, size: 8, offset: 160)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1766, file: !1733, line: 125, baseType: !255, size: 64, offset: 256)
!1792 = !DIDerivedType(tag: DW_TAG_member, scope: !1763, file: !1733, line: 241, baseType: !1793, size: 320)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1763, file: !1733, line: 241, size: 320, elements: !1794)
!1794 = !{!1795, !1796, !1797, !1798, !1799}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1793, file: !1733, line: 242, baseType: !170, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1793, file: !1733, line: 243, baseType: !170, size: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1793, file: !1733, line: 244, baseType: !1782, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1793, file: !1733, line: 245, baseType: !1785, size: 64, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1793, file: !1733, line: 246, baseType: !242, size: 64, offset: 256)
!1800 = !DIDerivedType(tag: DW_TAG_member, scope: !1732, file: !1733, line: 254, baseType: !1801, size: 256, offset: 1344)
!1801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1732, file: !1733, line: 254, size: 256, elements: !1802)
!1802 = !{!1803, !1809}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1801, file: !1733, line: 255, baseType: !1804, size: 256)
!1804 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1733, line: 128, size: 256, elements: !1805)
!1805 = !{!1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1804, file: !1733, line: 129, baseType: !166, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1804, file: !1733, line: 130, baseType: !1808, size: 256)
!1808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 256, elements: !1319)
!1809 = !DIDerivedType(tag: DW_TAG_member, scope: !1801, file: !1733, line: 256, baseType: !1810, size: 256)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1801, file: !1733, line: 256, size: 256, elements: !1811)
!1811 = !{!1812, !1813}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1810, file: !1733, line: 258, baseType: !388, size: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1810, file: !1733, line: 259, baseType: !1814, size: 128, offset: 128)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1815, line: 22, size: 128, elements: !1816)
!1815 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1816 = !{!1817, !1820}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1814, file: !1815, line: 23, baseType: !1818, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1815, line: 23, flags: DIFlagFwdDecl)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1814, file: !1815, line: 24, baseType: !170, size: 64, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1732, file: !1733, line: 274, baseType: !1822, size: 64, offset: 1600)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1733, line: 170, size: 192, elements: !1824)
!1824 = !{!1825, !1834, !1835}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1823, file: !1733, line: 171, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1733, line: 165, baseType: !1827)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!190, !1731, !1830, !1832, !1731}
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1783)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1804)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1823, file: !1733, line: 172, baseType: !1731, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1823, file: !1733, line: 173, baseType: !1782, size: 64, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1705, file: !1706, line: 138, baseType: !1731, size: 64, offset: 768)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1705, file: !1706, line: 139, baseType: !1731, size: 64, offset: 832)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1705, file: !1706, line: 140, baseType: !1731, size: 64, offset: 896)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1705, file: !1706, line: 145, baseType: !1840, size: 64, offset: 960)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1842, line: 13, size: 896, elements: !1843)
!1842 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1843 = !{!1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1841, file: !1842, line: 14, baseType: !1390, size: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1841, file: !1842, line: 15, baseType: !915, size: 32, offset: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1841, file: !1842, line: 16, baseType: !915, size: 32, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1841, file: !1842, line: 21, baseType: !939, size: 64, offset: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1841, file: !1842, line: 27, baseType: !170, size: 64, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1841, file: !1842, line: 28, baseType: !170, size: 64, offset: 256)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1841, file: !1842, line: 29, baseType: !939, size: 64, offset: 320)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1841, file: !1842, line: 32, baseType: !807, size: 128, offset: 384)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1841, file: !1842, line: 33, baseType: !609, size: 32, offset: 512)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1841, file: !1842, line: 37, baseType: !939, size: 64, offset: 576)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1841, file: !1842, line: 44, baseType: !1855, size: 256, offset: 640)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1856, line: 15, size: 256, elements: !1857)
!1856 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1857 = !{!1858, !1859, !1860, !1861, !1862, !1863, !1864}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1855, file: !1856, line: 16, baseType: !948)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1855, file: !1856, line: 18, baseType: !190, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1855, file: !1856, line: 19, baseType: !190, size: 32, offset: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1855, file: !1856, line: 20, baseType: !190, size: 32, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1855, file: !1856, line: 21, baseType: !190, size: 32, offset: 96)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1855, file: !1856, line: 22, baseType: !170, size: 64, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1855, file: !1856, line: 23, baseType: !170, size: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1705, file: !1706, line: 146, baseType: !1866, size: 64, offset: 1024)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !610, line: 18, flags: DIFlagFwdDecl)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1705, file: !1706, line: 147, baseType: !1869, size: 64, offset: 1088)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1706, line: 25, size: 64, elements: !1871)
!1871 = !{!1872, !1873, !1874}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1870, file: !1706, line: 26, baseType: !915, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1870, file: !1706, line: 27, baseType: !190, size: 32, offset: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1870, file: !1706, line: 28, baseType: !1875, offset: 64)
!1875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !617, elements: !1876)
!1876 = !{!1877}
!1877 = !DISubrange(count: 0)
!1878 = !DIDerivedType(tag: DW_TAG_member, scope: !1705, file: !1706, line: 149, baseType: !1879, size: 128, offset: 1152)
!1879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1705, file: !1706, line: 149, size: 128, elements: !1880)
!1880 = !{!1881, !1882}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1879, file: !1706, line: 150, baseType: !190, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1879, file: !1706, line: 151, baseType: !544, size: 128, align: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1378, file: !1379, line: 926, baseType: !1703, size: 64, offset: 8576)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1378, file: !1379, line: 929, baseType: !1703, size: 64, offset: 8640)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1378, file: !1379, line: 933, baseType: !1731, size: 64, offset: 8704)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1378, file: !1379, line: 943, baseType: !1887, size: 128, offset: 8768)
!1887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 128, elements: !1888)
!1888 = !{!1889}
!1889 = !DISubrange(count: 16)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1378, file: !1379, line: 945, baseType: !1891, size: 64, offset: 8896)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1379, line: 49, flags: DIFlagFwdDecl)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1378, file: !1379, line: 956, baseType: !1894, size: 64, offset: 8960)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1379, line: 45, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1378, file: !1379, line: 959, baseType: !1897, size: 64, offset: 9024)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1379, line: 959, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1378, file: !1379, line: 962, baseType: !1900, size: 64, offset: 9088)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1379, line: 66, flags: DIFlagFwdDecl)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1378, file: !1379, line: 966, baseType: !1903, size: 64, offset: 9152)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1905, line: 35, flags: DIFlagFwdDecl)
!1905 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1378, file: !1379, line: 969, baseType: !1907, size: 64, offset: 9216)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1909, line: 82, size: 7296, elements: !1910)
!1909 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1910 = !{!1911, !1912, !1913, !1914, !1915, !1916, !1917, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1946, !1955, !1956, !1958, !1959, !1960, !1963, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1993, !1994, !2001, !2002, !2003, !2004, !2005, !2006}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1908, file: !1909, line: 83, baseType: !1390, size: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1908, file: !1909, line: 84, baseType: !915, size: 32, offset: 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1908, file: !1909, line: 85, baseType: !190, size: 32, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1908, file: !1909, line: 86, baseType: !388, size: 128, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1908, file: !1909, line: 88, baseType: !1637, size: 128, offset: 256)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1908, file: !1909, line: 91, baseType: !1377, size: 64, offset: 384)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1908, file: !1909, line: 94, baseType: !1918, size: 192, offset: 448)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1919, line: 30, size: 192, elements: !1920)
!1919 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1920 = !{!1921, !1922}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1918, file: !1919, line: 31, baseType: !388, size: 128)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1918, file: !1919, line: 32, baseType: !1923, size: 64, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1924, line: 25, baseType: !1925)
!1924 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1924, line: 23, size: 64, elements: !1926)
!1926 = !{!1927}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1925, file: !1924, line: 24, baseType: !1528, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1908, file: !1909, line: 97, baseType: !803, size: 64, offset: 640)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1908, file: !1909, line: 100, baseType: !190, size: 32, offset: 704)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1908, file: !1909, line: 106, baseType: !190, size: 32, offset: 736)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1908, file: !1909, line: 107, baseType: !1377, size: 64, offset: 768)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1908, file: !1909, line: 110, baseType: !190, size: 32, offset: 832)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1908, file: !1909, line: 111, baseType: !7, size: 32, offset: 864)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1908, file: !1909, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1908, file: !1909, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1908, file: !1909, line: 128, baseType: !190, size: 32, offset: 928)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1908, file: !1909, line: 129, baseType: !388, size: 128, offset: 960)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1908, file: !1909, line: 132, baseType: !1452, size: 512, offset: 1088)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1908, file: !1909, line: 133, baseType: !1460, size: 64, offset: 1600)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1908, file: !1909, line: 140, baseType: !1941, size: 256, offset: 1664)
!1941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1942, size: 256, elements: !353)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1909, line: 38, size: 128, elements: !1943)
!1943 = !{!1944, !1945}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1942, file: !1909, line: 39, baseType: !596, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1942, file: !1909, line: 40, baseType: !596, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1908, file: !1909, line: 146, baseType: !1947, size: 192, offset: 1920)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1909, line: 66, size: 192, elements: !1948)
!1948 = !{!1949}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1947, file: !1909, line: 67, baseType: !1950, size: 192)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1909, line: 47, size: 192, elements: !1951)
!1951 = !{!1952, !1953, !1954}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1950, file: !1909, line: 48, baseType: !941, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1950, file: !1909, line: 49, baseType: !941, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1950, file: !1909, line: 50, baseType: !941, size: 64, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1908, file: !1909, line: 150, baseType: !1686, size: 640, offset: 2112)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1908, file: !1909, line: 153, baseType: !1957, size: 256, offset: 2752)
!1957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1627, size: 256, elements: !1319)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1908, file: !1909, line: 159, baseType: !1627, size: 64, offset: 3008)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1908, file: !1909, line: 162, baseType: !190, size: 32, offset: 3072)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1908, file: !1909, line: 164, baseType: !1961, size: 64, offset: 3136)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1909, line: 164, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1908, file: !1909, line: 175, baseType: !1964, size: 32, offset: 3200)
!1964 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !567, line: 805, baseType: !1965)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !567, line: 798, size: 32, elements: !1966)
!1966 = !{!1967, !1968}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1965, file: !567, line: 803, baseType: !566, size: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1965, file: !567, line: 804, baseType: !416, offset: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1908, file: !1909, line: 176, baseType: !596, size: 64, offset: 3264)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1908, file: !1909, line: 176, baseType: !596, size: 64, offset: 3328)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1908, file: !1909, line: 176, baseType: !596, size: 64, offset: 3392)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1908, file: !1909, line: 176, baseType: !596, size: 64, offset: 3456)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1908, file: !1909, line: 177, baseType: !596, size: 64, offset: 3520)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1908, file: !1909, line: 178, baseType: !596, size: 64, offset: 3584)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1908, file: !1909, line: 179, baseType: !1674, size: 128, offset: 3648)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1908, file: !1909, line: 180, baseType: !170, size: 64, offset: 3776)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1908, file: !1909, line: 180, baseType: !170, size: 64, offset: 3840)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1908, file: !1909, line: 180, baseType: !170, size: 64, offset: 3904)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1908, file: !1909, line: 180, baseType: !170, size: 64, offset: 3968)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1908, file: !1909, line: 181, baseType: !170, size: 64, offset: 4032)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1908, file: !1909, line: 181, baseType: !170, size: 64, offset: 4096)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1908, file: !1909, line: 181, baseType: !170, size: 64, offset: 4160)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1908, file: !1909, line: 181, baseType: !170, size: 64, offset: 4224)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1908, file: !1909, line: 182, baseType: !170, size: 64, offset: 4288)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1908, file: !1909, line: 182, baseType: !170, size: 64, offset: 4352)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1908, file: !1909, line: 182, baseType: !170, size: 64, offset: 4416)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1908, file: !1909, line: 182, baseType: !170, size: 64, offset: 4480)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1908, file: !1909, line: 183, baseType: !170, size: 64, offset: 4544)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1908, file: !1909, line: 183, baseType: !170, size: 64, offset: 4608)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1908, file: !1909, line: 184, baseType: !1991, offset: 4672)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1992, line: 12, elements: !430)
!1992 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1908, file: !1909, line: 192, baseType: !598, size: 64, offset: 4672)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1908, file: !1909, line: 203, baseType: !1995, size: 2048, offset: 4736)
!1995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1996, size: 2048, elements: !1888)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1997, line: 43, size: 128, elements: !1998)
!1997 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1998 = !{!1999, !2000}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1996, file: !1997, line: 44, baseType: !503, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1996, file: !1997, line: 45, baseType: !503, size: 64, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1908, file: !1909, line: 220, baseType: !371, size: 8, offset: 6784)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1908, file: !1909, line: 221, baseType: !236, size: 16, offset: 6800)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1908, file: !1909, line: 222, baseType: !236, size: 16, offset: 6816)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1908, file: !1909, line: 224, baseType: !1140, size: 64, offset: 6848)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1908, file: !1909, line: 227, baseType: !1337, size: 192, offset: 6912)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1908, file: !1909, line: 233, baseType: !1337, size: 192, offset: 7104)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1378, file: !1379, line: 970, baseType: !2008, size: 64, offset: 9280)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1909, line: 20, size: 16576, elements: !2010)
!2010 = !{!2011, !2012, !2013, !2014}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2009, file: !1909, line: 21, baseType: !416)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2009, file: !1909, line: 22, baseType: !1390, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2009, file: !1909, line: 23, baseType: !1637, size: 128, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2009, file: !1909, line: 24, baseType: !2015, size: 16384, offset: 192)
!2015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2016, size: 16384, elements: !461)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1919, line: 49, size: 256, elements: !2017)
!2017 = !{!2018}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2016, file: !1919, line: 50, baseType: !2019, size: 256)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1919, line: 35, size: 256, elements: !2020)
!2020 = !{!2021, !2028, !2029, !2033}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2019, file: !1919, line: 37, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2023, line: 19, baseType: !2024)
!2023 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2023, line: 18, baseType: !2026)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{null, !190}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2019, file: !1919, line: 38, baseType: !170, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2019, file: !1919, line: 44, baseType: !2030, size: 64, offset: 128)
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2023, line: 22, baseType: !2031)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2023, line: 21, baseType: !326)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2019, file: !1919, line: 46, baseType: !1923, size: 64, offset: 192)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1378, file: !1379, line: 971, baseType: !1923, size: 64, offset: 9344)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1378, file: !1379, line: 972, baseType: !1923, size: 64, offset: 9408)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1378, file: !1379, line: 974, baseType: !1923, size: 64, offset: 9472)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1378, file: !1379, line: 975, baseType: !1918, size: 192, offset: 9536)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1378, file: !1379, line: 976, baseType: !170, size: 64, offset: 9728)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1378, file: !1379, line: 977, baseType: !501, size: 64, offset: 9792)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1378, file: !1379, line: 978, baseType: !7, size: 32, offset: 9856)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1378, file: !1379, line: 980, baseType: !547, size: 64, offset: 9920)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1378, file: !1379, line: 989, baseType: !2043, size: 128, offset: 9984)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2044, line: 35, size: 128, elements: !2045)
!2044 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2045 = !{!2046, !2047, !2048}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2043, file: !2044, line: 36, baseType: !190, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2043, file: !2044, line: 37, baseType: !915, size: 32, offset: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2043, file: !2044, line: 38, baseType: !2049, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2044, line: 23, flags: DIFlagFwdDecl)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1378, file: !1379, line: 992, baseType: !596, size: 64, offset: 10112)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1378, file: !1379, line: 993, baseType: !596, size: 64, offset: 10176)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1378, file: !1379, line: 996, baseType: !416, offset: 10240)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1378, file: !1379, line: 999, baseType: !948, offset: 10240)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1378, file: !1379, line: 1001, baseType: !2056, size: 64, offset: 10240)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1379, line: 636, size: 64, elements: !2057)
!2057 = !{!2058}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2056, file: !1379, line: 637, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1378, file: !1379, line: 1005, baseType: !920, size: 128, offset: 10304)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1378, file: !1379, line: 1007, baseType: !1377, size: 64, offset: 10432)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1378, file: !1379, line: 1009, baseType: !2063, size: 64, offset: 10496)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1379, line: 1009, flags: DIFlagFwdDecl)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1378, file: !1379, line: 1043, baseType: !166, size: 64, offset: 10560)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1378, file: !1379, line: 1046, baseType: !2067, size: 64, offset: 10624)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1379, line: 41, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1378, file: !1379, line: 1050, baseType: !2070, size: 64, offset: 10688)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1379, line: 42, flags: DIFlagFwdDecl)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1378, file: !1379, line: 1054, baseType: !2073, size: 64, offset: 10752)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1379, line: 55, flags: DIFlagFwdDecl)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1378, file: !1379, line: 1056, baseType: !2076, size: 64, offset: 10816)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1379, line: 40, flags: DIFlagFwdDecl)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1378, file: !1379, line: 1058, baseType: !2079, size: 64, offset: 10880)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2081, line: 99, size: 704, elements: !2082)
!2081 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2082 = !{!2083, !2084, !2085, !2086, !2087, !2088, !2089, !2108, !2109}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2080, file: !2081, line: 100, baseType: !939, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2080, file: !2081, line: 101, baseType: !915, size: 32, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2080, file: !2081, line: 102, baseType: !915, size: 32, offset: 96)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2080, file: !2081, line: 105, baseType: !416, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2080, file: !2081, line: 107, baseType: !281, size: 16, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2080, file: !2081, line: 109, baseType: !907, size: 128, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2080, file: !2081, line: 110, baseType: !2090, size: 64, offset: 320)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2081, line: 73, size: 448, elements: !2092)
!2092 = !{!2093, !2096, !2097, !2102, !2107}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2091, file: !2081, line: 74, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2081, line: 74, flags: DIFlagFwdDecl)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2091, file: !2081, line: 75, baseType: !2079, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, scope: !2091, file: !2081, line: 83, baseType: !2098, size: 128, offset: 128)
!2098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2091, file: !2081, line: 83, size: 128, elements: !2099)
!2099 = !{!2100, !2101}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2098, file: !2081, line: 84, baseType: !388, size: 128)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2098, file: !2081, line: 85, baseType: !1101, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, scope: !2091, file: !2081, line: 87, baseType: !2103, size: 128, offset: 256)
!2103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2091, file: !2081, line: 87, size: 128, elements: !2104)
!2104 = !{!2105, !2106}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2103, file: !2081, line: 88, baseType: !807, size: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2103, file: !2081, line: 89, baseType: !544, size: 128, align: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2091, file: !2081, line: 92, baseType: !7, size: 32, offset: 384)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2080, file: !2081, line: 111, baseType: !803, size: 64, offset: 384)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2080, file: !2081, line: 113, baseType: !2110, size: 256, offset: 448)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2111, line: 102, size: 256, elements: !2112)
!2111 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2112 = !{!2113, !2114, !2115}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2110, file: !2111, line: 103, baseType: !939, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2110, file: !2111, line: 104, baseType: !388, size: 128, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2110, file: !2111, line: 105, baseType: !2116, size: 64, offset: 192)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2111, line: 21, baseType: !2117)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{null, !2120}
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1378, file: !1379, line: 1061, baseType: !2122, size: 64, offset: 10944)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1379, line: 43, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1378, file: !1379, line: 1064, baseType: !170, size: 64, offset: 11008)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1378, file: !1379, line: 1065, baseType: !2126, size: 64, offset: 11072)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1919, line: 14, baseType: !2128)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1919, line: 12, size: 384, elements: !2129)
!2129 = !{!2130}
!2130 = !DIDerivedType(tag: DW_TAG_member, scope: !2128, file: !1919, line: 13, baseType: !2131, size: 384)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2128, file: !1919, line: 13, size: 384, elements: !2132)
!2132 = !{!2133, !2134, !2135, !2136}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2131, file: !1919, line: 13, baseType: !190, size: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2131, file: !1919, line: 13, baseType: !190, size: 32, offset: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2131, file: !1919, line: 13, baseType: !190, size: 32, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2131, file: !1919, line: 13, baseType: !2137, size: 256, offset: 128)
!2137 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2138, line: 32, size: 256, elements: !2139)
!2138 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2139 = !{!2140, !2145, !2158, !2164, !2173, !2193, !2198}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2137, file: !2138, line: 37, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2138, line: 34, size: 64, elements: !2142)
!2142 = !{!2143, !2144}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2141, file: !2138, line: 35, baseType: !1616, size: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2141, file: !2138, line: 36, baseType: !615, size: 32, offset: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2137, file: !2138, line: 45, baseType: !2146, size: 192)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2138, line: 40, size: 192, elements: !2147)
!2147 = !{!2148, !2150, !2151, !2157}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2146, file: !2138, line: 41, baseType: !2149, size: 32)
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !489, line: 95, baseType: !190)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2146, file: !2138, line: 42, baseType: !190, size: 32, offset: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2146, file: !2138, line: 43, baseType: !2152, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2138, line: 11, baseType: !2153)
!2153 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2138, line: 8, size: 64, elements: !2154)
!2154 = !{!2155, !2156}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2153, file: !2138, line: 9, baseType: !190, size: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2153, file: !2138, line: 10, baseType: !166, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2146, file: !2138, line: 44, baseType: !190, size: 32, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2137, file: !2138, line: 52, baseType: !2159, size: 128)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2138, line: 48, size: 128, elements: !2160)
!2160 = !{!2161, !2162, !2163}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2159, file: !2138, line: 49, baseType: !1616, size: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2159, file: !2138, line: 50, baseType: !615, size: 32, offset: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2159, file: !2138, line: 51, baseType: !2152, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2137, file: !2138, line: 61, baseType: !2165, size: 256)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2138, line: 55, size: 256, elements: !2166)
!2166 = !{!2167, !2168, !2169, !2170, !2172}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2165, file: !2138, line: 56, baseType: !1616, size: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2165, file: !2138, line: 57, baseType: !615, size: 32, offset: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2165, file: !2138, line: 58, baseType: !190, size: 32, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2165, file: !2138, line: 59, baseType: !2171, size: 64, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !489, line: 94, baseType: !490)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2165, file: !2138, line: 60, baseType: !2171, size: 64, offset: 192)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2137, file: !2138, line: 95, baseType: !2174, size: 256)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2138, line: 64, size: 256, elements: !2175)
!2175 = !{!2176, !2177}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2174, file: !2138, line: 65, baseType: !166, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, scope: !2174, file: !2138, line: 77, baseType: !2178, size: 192, offset: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2174, file: !2138, line: 77, size: 192, elements: !2179)
!2179 = !{!2180, !2181, !2188}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2178, file: !2138, line: 82, baseType: !236, size: 16)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2178, file: !2138, line: 88, baseType: !2182, size: 192)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !2138, line: 84, size: 192, elements: !2183)
!2183 = !{!2184, !2186, !2187}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2182, file: !2138, line: 85, baseType: !2185, size: 64)
!2185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 64, elements: !1490)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2182, file: !2138, line: 86, baseType: !166, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2182, file: !2138, line: 87, baseType: !166, size: 64, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2178, file: !2138, line: 93, baseType: !2189, size: 96)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !2138, line: 90, size: 96, elements: !2190)
!2190 = !{!2191, !2192}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2189, file: !2138, line: 91, baseType: !2185, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2189, file: !2138, line: 92, baseType: !201, size: 32, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2137, file: !2138, line: 101, baseType: !2194, size: 128)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2138, line: 98, size: 128, elements: !2195)
!2195 = !{!2196, !2197}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2194, file: !2138, line: 99, baseType: !169, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2194, file: !2138, line: 100, baseType: !190, size: 32, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2137, file: !2138, line: 108, baseType: !2199, size: 128)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2137, file: !2138, line: 104, size: 128, elements: !2200)
!2200 = !{!2201, !2202, !2203}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2199, file: !2138, line: 105, baseType: !166, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2199, file: !2138, line: 106, baseType: !190, size: 32, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2199, file: !2138, line: 107, baseType: !7, size: 32, offset: 96)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1378, file: !1379, line: 1067, baseType: !1991, offset: 11136)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1378, file: !1379, line: 1099, baseType: !2206, size: 64, offset: 11136)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1379, line: 56, flags: DIFlagFwdDecl)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1378, file: !1379, line: 1103, baseType: !388, size: 128, offset: 11200)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1378, file: !1379, line: 1104, baseType: !2210, size: 64, offset: 11328)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1379, line: 46, flags: DIFlagFwdDecl)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1378, file: !1379, line: 1105, baseType: !1337, size: 192, offset: 11392)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1378, file: !1379, line: 1106, baseType: !7, size: 32, offset: 11584)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1378, file: !1379, line: 1109, baseType: !2215, size: 128, offset: 11648)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2216, size: 128, elements: !353)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1379, line: 51, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1378, file: !1379, line: 1110, baseType: !1337, size: 192, offset: 11776)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1378, file: !1379, line: 1111, baseType: !388, size: 128, offset: 11968)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1378, file: !1379, line: 1173, baseType: !2221, size: 64, offset: 12096)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2223, line: 62, size: 256, align: 256, elements: !2224)
!2223 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2224 = !{!2225, !2226, !2227, !2232}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2222, file: !2223, line: 75, baseType: !201, size: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2222, file: !2223, line: 90, baseType: !201, size: 32, offset: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2222, file: !2223, line: 124, baseType: !2228, size: 64, offset: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2222, file: !2223, line: 109, size: 64, elements: !2229)
!2229 = !{!2230, !2231}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2228, file: !2223, line: 110, baseType: !597, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2228, file: !2223, line: 112, baseType: !597, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2222, file: !2223, line: 144, baseType: !201, size: 32, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1378, file: !1379, line: 1174, baseType: !200, size: 32, offset: 12160)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1378, file: !1379, line: 1179, baseType: !170, size: 64, offset: 12224)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1378, file: !1379, line: 1182, baseType: !2236, size: 128, offset: 12288)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1315, line: 76, size: 128, elements: !2237)
!2237 = !{!2238, !2243, !2244}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2236, file: !1315, line: 85, baseType: !2239, size: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2240, line: 7, size: 64, elements: !2241)
!2240 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2241 = !{!2242}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2239, file: !2240, line: 12, baseType: !1525, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2236, file: !1315, line: 88, baseType: !371, size: 8, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2236, file: !1315, line: 95, baseType: !371, size: 8, offset: 72)
!2245 = !DIDerivedType(tag: DW_TAG_member, scope: !1378, file: !1379, line: 1184, baseType: !2246, size: 128, offset: 12416)
!2246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1378, file: !1379, line: 1184, size: 128, elements: !2247)
!2247 = !{!2248, !2249}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2246, file: !1379, line: 1185, baseType: !1390, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2246, file: !1379, line: 1186, baseType: !544, size: 128, align: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1378, file: !1379, line: 1190, baseType: !2251, size: 64, offset: 12544)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1379, line: 53, flags: DIFlagFwdDecl)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1378, file: !1379, line: 1192, baseType: !2254, size: 128, offset: 12608)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1315, line: 64, size: 128, elements: !2255)
!2255 = !{!2256, !2257, !2258}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2254, file: !1315, line: 65, baseType: !889, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2254, file: !1315, line: 67, baseType: !201, size: 32, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2254, file: !1315, line: 68, baseType: !201, size: 32, offset: 96)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1378, file: !1379, line: 1206, baseType: !190, size: 32, offset: 12736)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1378, file: !1379, line: 1207, baseType: !190, size: 32, offset: 12768)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1378, file: !1379, line: 1209, baseType: !170, size: 64, offset: 12800)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1378, file: !1379, line: 1219, baseType: !596, size: 64, offset: 12864)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1378, file: !1379, line: 1220, baseType: !596, size: 64, offset: 12928)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1378, file: !1379, line: 1317, baseType: !190, size: 32, offset: 12992)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1378, file: !1379, line: 1319, baseType: !1377, size: 64, offset: 13056)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1378, file: !1379, line: 1322, baseType: !2267, size: 64, offset: 13120)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2269, line: 56, size: 512, elements: !2270)
!2269 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2270 = !{!2271, !2272, !2273, !2274, !2275, !2276, !2277, !2279}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2268, file: !2269, line: 57, baseType: !2267, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2268, file: !2269, line: 58, baseType: !166, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2268, file: !2269, line: 59, baseType: !170, size: 64, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2268, file: !2269, line: 60, baseType: !170, size: 64, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2268, file: !2269, line: 61, baseType: !988, size: 64, offset: 256)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2268, file: !2269, line: 62, baseType: !7, size: 32, offset: 320)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2268, file: !2269, line: 63, baseType: !2278, size: 64, offset: 384)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !165, line: 153, baseType: !596)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2268, file: !2269, line: 64, baseType: !2280, size: 64, offset: 448)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1378, file: !1379, line: 1326, baseType: !1390, size: 32, offset: 13184)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1378, file: !1379, line: 1342, baseType: !166, size: 64, offset: 13248)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1378, file: !1379, line: 1343, baseType: !597, size: 64, offset: 13312)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1378, file: !1379, line: 1344, baseType: !596, size: 64, offset: 13376)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1378, file: !1379, line: 1345, baseType: !597, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1378, file: !1379, line: 1346, baseType: !597, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1378, file: !1379, line: 1347, baseType: !597, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1378, file: !1379, line: 1348, baseType: !544, size: 128, align: 64, offset: 13504)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1378, file: !1379, line: 1358, baseType: !2291, size: 34816, offset: 13824)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2292, line: 485, size: 34816, elements: !2293)
!2292 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2293 = !{!2294, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2323, !2324, !2325, !2326, !2327, !2328, !2331, !2332, !2333}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2291, file: !2292, line: 487, baseType: !2295, size: 192)
!2295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2296, size: 192, elements: !457)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2297, line: 16, size: 64, elements: !2298)
!2297 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2298 = !{!2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2296, file: !2297, line: 17, baseType: !279, size: 16)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2296, file: !2297, line: 18, baseType: !279, size: 16, offset: 16)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2296, file: !2297, line: 19, baseType: !279, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2296, file: !2297, line: 19, baseType: !279, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2296, file: !2297, line: 19, baseType: !279, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2296, file: !2297, line: 19, baseType: !279, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2296, file: !2297, line: 19, baseType: !279, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2296, file: !2297, line: 20, baseType: !279, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2296, file: !2297, line: 20, baseType: !279, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2296, file: !2297, line: 20, baseType: !279, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2296, file: !2297, line: 20, baseType: !279, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2296, file: !2297, line: 20, baseType: !279, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2296, file: !2297, line: 20, baseType: !279, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2291, file: !2292, line: 491, baseType: !170, size: 64, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2291, file: !2292, line: 495, baseType: !281, size: 16, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2291, file: !2292, line: 496, baseType: !281, size: 16, offset: 272)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2291, file: !2292, line: 497, baseType: !281, size: 16, offset: 288)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2291, file: !2292, line: 498, baseType: !281, size: 16, offset: 304)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2291, file: !2292, line: 502, baseType: !170, size: 64, offset: 320)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2291, file: !2292, line: 503, baseType: !170, size: 64, offset: 384)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2291, file: !2292, line: 514, baseType: !2320, size: 256, offset: 448)
!2320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2321, size: 256, elements: !1319)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2292, line: 483, flags: DIFlagFwdDecl)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2291, file: !2292, line: 516, baseType: !170, size: 64, offset: 704)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2291, file: !2292, line: 518, baseType: !170, size: 64, offset: 768)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2291, file: !2292, line: 520, baseType: !170, size: 64, offset: 832)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2291, file: !2292, line: 521, baseType: !170, size: 64, offset: 896)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2291, file: !2292, line: 522, baseType: !170, size: 64, offset: 960)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2291, file: !2292, line: 528, baseType: !2329, size: 64, offset: 1024)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2292, line: 10, flags: DIFlagFwdDecl)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2291, file: !2292, line: 535, baseType: !170, size: 64, offset: 1088)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2291, file: !2292, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2291, file: !2292, line: 540, baseType: !2334, size: 33280, offset: 1536)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2335, line: 317, size: 33280, elements: !2336)
!2335 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2336 = !{!2337, !2338, !2339}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2334, file: !2335, line: 330, baseType: !7, size: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2334, file: !2335, line: 337, baseType: !170, size: 64, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2334, file: !2335, line: 348, baseType: !2340, size: 32768, offset: 512)
!2340 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2335, line: 304, size: 32768, elements: !2341)
!2341 = !{!2342, !2357, !2394, !2444, !2457}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2340, file: !2335, line: 305, baseType: !2343, size: 896)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2335, line: 12, size: 896, elements: !2344)
!2344 = !{!2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2356}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2343, file: !2335, line: 13, baseType: !200, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2343, file: !2335, line: 14, baseType: !200, size: 32, offset: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2343, file: !2335, line: 15, baseType: !200, size: 32, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2343, file: !2335, line: 16, baseType: !200, size: 32, offset: 96)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2343, file: !2335, line: 17, baseType: !200, size: 32, offset: 128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2343, file: !2335, line: 18, baseType: !200, size: 32, offset: 160)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2343, file: !2335, line: 19, baseType: !200, size: 32, offset: 192)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2343, file: !2335, line: 22, baseType: !2353, size: 640, offset: 224)
!2353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 640, elements: !2354)
!2354 = !{!2355}
!2355 = !DISubrange(count: 20)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2343, file: !2335, line: 25, baseType: !200, size: 32, offset: 864)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2340, file: !2335, line: 306, baseType: !2358, size: 4096, align: 128)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2335, line: 34, size: 4096, align: 128, elements: !2359)
!2359 = !{!2360, !2361, !2362, !2363, !2364, !2379, !2380, !2381, !2383, !2385, !2389}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2358, file: !2335, line: 35, baseType: !279, size: 16)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2358, file: !2335, line: 36, baseType: !279, size: 16, offset: 16)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2358, file: !2335, line: 37, baseType: !279, size: 16, offset: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2358, file: !2335, line: 38, baseType: !279, size: 16, offset: 48)
!2364 = !DIDerivedType(tag: DW_TAG_member, scope: !2358, file: !2335, line: 39, baseType: !2365, size: 128, offset: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2358, file: !2335, line: 39, size: 128, elements: !2366)
!2366 = !{!2367, !2372}
!2367 = !DIDerivedType(tag: DW_TAG_member, scope: !2365, file: !2335, line: 40, baseType: !2368, size: 128)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2365, file: !2335, line: 40, size: 128, elements: !2369)
!2369 = !{!2370, !2371}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2368, file: !2335, line: 41, baseType: !596, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2368, file: !2335, line: 42, baseType: !596, size: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, scope: !2365, file: !2335, line: 44, baseType: !2373, size: 128)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2365, file: !2335, line: 44, size: 128, elements: !2374)
!2374 = !{!2375, !2376, !2377, !2378}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2373, file: !2335, line: 45, baseType: !200, size: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2373, file: !2335, line: 46, baseType: !200, size: 32, offset: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2373, file: !2335, line: 47, baseType: !200, size: 32, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2373, file: !2335, line: 48, baseType: !200, size: 32, offset: 96)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2358, file: !2335, line: 51, baseType: !200, size: 32, offset: 192)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2358, file: !2335, line: 52, baseType: !200, size: 32, offset: 224)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2358, file: !2335, line: 55, baseType: !2382, size: 1024, offset: 256)
!2382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 1024, elements: !368)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2358, file: !2335, line: 58, baseType: !2384, size: 2048, offset: 1280)
!2384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 2048, elements: !461)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2358, file: !2335, line: 60, baseType: !2386, size: 384, offset: 3328)
!2386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 384, elements: !2387)
!2387 = !{!2388}
!2388 = !DISubrange(count: 12)
!2389 = !DIDerivedType(tag: DW_TAG_member, scope: !2358, file: !2335, line: 62, baseType: !2390, size: 384, offset: 3712)
!2390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2358, file: !2335, line: 62, size: 384, elements: !2391)
!2391 = !{!2392, !2393}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2390, file: !2335, line: 63, baseType: !2386, size: 384)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2390, file: !2335, line: 64, baseType: !2386, size: 384)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2340, file: !2335, line: 307, baseType: !2395, size: 1088)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2335, line: 79, size: 1088, elements: !2396)
!2396 = !{!2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2443}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2395, file: !2335, line: 80, baseType: !200, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2395, file: !2335, line: 81, baseType: !200, size: 32, offset: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2395, file: !2335, line: 82, baseType: !200, size: 32, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2395, file: !2335, line: 83, baseType: !200, size: 32, offset: 96)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2395, file: !2335, line: 84, baseType: !200, size: 32, offset: 128)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2395, file: !2335, line: 85, baseType: !200, size: 32, offset: 160)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2395, file: !2335, line: 86, baseType: !200, size: 32, offset: 192)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2395, file: !2335, line: 88, baseType: !2353, size: 640, offset: 224)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2395, file: !2335, line: 89, baseType: !177, size: 8, offset: 864)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2395, file: !2335, line: 90, baseType: !177, size: 8, offset: 872)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2395, file: !2335, line: 91, baseType: !177, size: 8, offset: 880)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2395, file: !2335, line: 92, baseType: !177, size: 8, offset: 888)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2395, file: !2335, line: 93, baseType: !177, size: 8, offset: 896)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2395, file: !2335, line: 94, baseType: !177, size: 8, offset: 904)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2395, file: !2335, line: 95, baseType: !2412, size: 64, offset: 960)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2414, line: 11, size: 128, elements: !2415)
!2414 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2415 = !{!2416, !2417}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2413, file: !2414, line: 12, baseType: !169, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2413, file: !2414, line: 13, baseType: !2418, size: 64, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2420, line: 56, size: 1344, elements: !2421)
!2420 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2421 = !{!2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2419, file: !2420, line: 61, baseType: !170, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2419, file: !2420, line: 62, baseType: !170, size: 64, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2419, file: !2420, line: 63, baseType: !170, size: 64, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2419, file: !2420, line: 64, baseType: !170, size: 64, offset: 192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2419, file: !2420, line: 65, baseType: !170, size: 64, offset: 256)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2419, file: !2420, line: 66, baseType: !170, size: 64, offset: 320)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2419, file: !2420, line: 68, baseType: !170, size: 64, offset: 384)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2419, file: !2420, line: 69, baseType: !170, size: 64, offset: 448)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2419, file: !2420, line: 70, baseType: !170, size: 64, offset: 512)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2419, file: !2420, line: 71, baseType: !170, size: 64, offset: 576)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2419, file: !2420, line: 72, baseType: !170, size: 64, offset: 640)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2419, file: !2420, line: 73, baseType: !170, size: 64, offset: 704)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2419, file: !2420, line: 74, baseType: !170, size: 64, offset: 768)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2419, file: !2420, line: 75, baseType: !170, size: 64, offset: 832)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2419, file: !2420, line: 76, baseType: !170, size: 64, offset: 896)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2419, file: !2420, line: 81, baseType: !170, size: 64, offset: 960)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2419, file: !2420, line: 83, baseType: !170, size: 64, offset: 1024)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2419, file: !2420, line: 84, baseType: !170, size: 64, offset: 1088)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2419, file: !2420, line: 85, baseType: !170, size: 64, offset: 1152)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2419, file: !2420, line: 86, baseType: !170, size: 64, offset: 1216)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2419, file: !2420, line: 87, baseType: !170, size: 64, offset: 1280)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2395, file: !2335, line: 96, baseType: !200, size: 32, offset: 1024)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2340, file: !2335, line: 308, baseType: !2445, size: 4608, align: 512)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2335, line: 289, size: 4608, align: 512, elements: !2446)
!2446 = !{!2447, !2448, !2455}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2445, file: !2335, line: 290, baseType: !2358, size: 4096, align: 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2445, file: !2335, line: 291, baseType: !2449, size: 512, offset: 4096)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2335, line: 268, size: 512, elements: !2450)
!2450 = !{!2451, !2452, !2453}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2449, file: !2335, line: 269, baseType: !596, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2449, file: !2335, line: 270, baseType: !596, size: 64, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2449, file: !2335, line: 271, baseType: !2454, size: 384, offset: 128)
!2454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 384, elements: !1778)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2445, file: !2335, line: 292, baseType: !2456, offset: 4608)
!2456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, elements: !1876)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2340, file: !2335, line: 309, baseType: !2458, size: 32768)
!2458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 32768, elements: !2459)
!2459 = !{!2460}
!2460 = !DISubrange(count: 4096)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1374, file: !891, line: 378, baseType: !2462, size: 64, offset: 64)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1370, file: !891, line: 384, baseType: !1658, size: 192, offset: 192)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1144, file: !891, line: 500, baseType: !416, offset: 6656)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1144, file: !891, line: 501, baseType: !2466, size: 64, offset: 6656)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !891, line: 387, flags: DIFlagFwdDecl)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1144, file: !891, line: 516, baseType: !1866, size: 64, offset: 6720)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1144, file: !891, line: 519, baseType: !531, size: 64, offset: 6784)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1144, file: !891, line: 521, baseType: !2471, size: 64, offset: 6848)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !891, line: 521, flags: DIFlagFwdDecl)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1144, file: !891, line: 545, baseType: !915, size: 32, offset: 6912)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1144, file: !891, line: 548, baseType: !371, size: 8, offset: 6944)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1144, file: !891, line: 550, baseType: !2476, offset: 6952)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2477, line: 142, elements: !430)
!2477 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1144, file: !891, line: 554, baseType: !2110, size: 256, offset: 6976)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1144, file: !891, line: 557, baseType: !200, size: 32, offset: 7232)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1141, file: !891, line: 565, baseType: !2481, offset: 7296)
!2481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, elements: !2482)
!2482 = !{!2483}
!2483 = !DISubrange(count: -1)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1137, file: !891, line: 151, baseType: !915, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1130, file: !891, line: 156, baseType: !416, offset: 256)
!2486 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !891, line: 159, baseType: !2487, size: 128)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !891, line: 159, size: 128, elements: !2488)
!2488 = !{!2489, !2553}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2487, file: !891, line: 161, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2492)
!2492 = !{!2493, !2503, !2524, !2525, !2526, !2527, !2528, !2540, !2541, !2542}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2491, file: !31, line: 111, baseType: !2494, size: 384)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2495)
!2495 = !{!2496, !2498, !2499, !2500, !2501, !2502}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2494, file: !31, line: 20, baseType: !2497, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2494, file: !31, line: 21, baseType: !2497, size: 64, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2494, file: !31, line: 22, baseType: !2497, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2494, file: !31, line: 23, baseType: !170, size: 64, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2494, file: !31, line: 24, baseType: !170, size: 64, offset: 256)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2494, file: !31, line: 25, baseType: !170, size: 64, offset: 320)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2491, file: !31, line: 112, baseType: !2504, size: 64, offset: 384)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2506, line: 105, size: 128, elements: !2507)
!2506 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2507 = !{!2508, !2509}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2505, file: !2506, line: 110, baseType: !170, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2505, file: !2506, line: 118, baseType: !2510, size: 64, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2506, line: 95, size: 448, elements: !2512)
!2512 = !{!2513, !2514, !2519, !2520, !2521, !2522, !2523}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2511, file: !2506, line: 96, baseType: !939, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2511, file: !2506, line: 97, baseType: !2515, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2506, line: 60, baseType: !2517)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{null, !2504}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2511, file: !2506, line: 98, baseType: !2515, size: 64, offset: 128)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2511, file: !2506, line: 99, baseType: !371, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2511, file: !2506, line: 100, baseType: !371, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2511, file: !2506, line: 101, baseType: !544, size: 128, align: 64, offset: 256)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2511, file: !2506, line: 102, baseType: !2504, size: 64, offset: 384)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2491, file: !31, line: 113, baseType: !2505, size: 128, offset: 448)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2491, file: !31, line: 114, baseType: !1658, size: 192, offset: 576)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2491, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2491, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2491, file: !31, line: 117, baseType: !2529, size: 64, offset: 832)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2531)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2532)
!2532 = !{!2533, !2534, !2538, !2539}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2531, file: !31, line: 73, baseType: !1008, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2531, file: !31, line: 78, baseType: !2535, size: 64, offset: 64)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{null, !2490}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2531, file: !31, line: 83, baseType: !2535, size: 64, offset: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2531, file: !31, line: 89, baseType: !1193, size: 64, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2491, file: !31, line: 118, baseType: !166, size: 64, offset: 896)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2491, file: !31, line: 119, baseType: !190, size: 32, offset: 960)
!2542 = !DIDerivedType(tag: DW_TAG_member, scope: !2491, file: !31, line: 120, baseType: !2543, size: 128, offset: 1024)
!2543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2491, file: !31, line: 120, size: 128, elements: !2544)
!2544 = !{!2545, !2551}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2543, file: !31, line: 121, baseType: !2546, size: 128)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2547, line: 6, size: 128, elements: !2548)
!2547 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2548 = !{!2549, !2550}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2546, file: !2547, line: 7, baseType: !596, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2546, file: !2547, line: 8, baseType: !596, size: 64, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2543, file: !31, line: 122, baseType: !2552)
!2552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2546, elements: !1876)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2487, file: !891, line: 162, baseType: !166, size: 64, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !895, file: !891, line: 176, baseType: !544, size: 128, align: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, scope: !890, file: !891, line: 179, baseType: !2556, size: 32, offset: 384)
!2556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !890, file: !891, line: 179, size: 32, elements: !2557)
!2557 = !{!2558, !2559, !2560, !2561}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2556, file: !891, line: 184, baseType: !915, size: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2556, file: !891, line: 192, baseType: !7, size: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2556, file: !891, line: 194, baseType: !7, size: 32)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2556, file: !891, line: 195, baseType: !190, size: 32)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !890, file: !891, line: 199, baseType: !915, size: 32, offset: 416)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !825, file: !44, line: 1964, baseType: !2564, size: 64, offset: 1344)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!169, !767, !2567}
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2569, line: 12, size: 256, elements: !2570)
!2569 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2570 = !{!2571, !2572, !2573, !2574, !2575}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2568, file: !2569, line: 13, baseType: !164, size: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2568, file: !2569, line: 16, baseType: !190, size: 32, offset: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2568, file: !2569, line: 23, baseType: !170, size: 64, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2568, file: !2569, line: 30, baseType: !170, size: 64, offset: 128)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2568, file: !2569, line: 33, baseType: !2576, size: 64, offset: 192)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !891, line: 27, flags: DIFlagFwdDecl)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !825, file: !44, line: 1966, baseType: !2564, size: 64, offset: 1408)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !768, file: !44, line: 1424, baseType: !2580, size: 64, offset: 448)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2582)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2583)
!2583 = !{!2584, !2630, !2634, !2638, !2639, !2640, !2641, !2642, !2647, !2652, !2656}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2582, file: !38, line: 323, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!190, !2588}
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2590)
!2590 = !{!2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2615, !2616, !2617}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2589, file: !38, line: 295, baseType: !807, size: 128)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2589, file: !38, line: 296, baseType: !388, size: 128, offset: 128)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2589, file: !38, line: 297, baseType: !388, size: 128, offset: 256)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2589, file: !38, line: 298, baseType: !388, size: 128, offset: 384)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2589, file: !38, line: 299, baseType: !1337, size: 192, offset: 512)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2589, file: !38, line: 300, baseType: !416, offset: 704)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2589, file: !38, line: 301, baseType: !915, size: 32, offset: 704)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2589, file: !38, line: 302, baseType: !767, size: 64, offset: 768)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2589, file: !38, line: 303, baseType: !2600, size: 64, offset: 832)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2601)
!2601 = !{!2602, !2614}
!2602 = !DIDerivedType(tag: DW_TAG_member, scope: !2600, file: !38, line: 69, baseType: !2603, size: 32)
!2603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2600, file: !38, line: 69, size: 32, elements: !2604)
!2604 = !{!2605, !2606, !2607}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2603, file: !38, line: 70, baseType: !609, size: 32)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2603, file: !38, line: 71, baseType: !617, size: 32)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2603, file: !38, line: 72, baseType: !2608, size: 32)
!2608 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2609, line: 24, baseType: !2610)
!2609 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2609, line: 22, size: 32, elements: !2611)
!2611 = !{!2612}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2610, file: !2609, line: 23, baseType: !2613, size: 32)
!2613 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2609, line: 20, baseType: !615)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2600, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2589, file: !38, line: 304, baseType: !700, size: 64, offset: 896)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2589, file: !38, line: 305, baseType: !170, size: 64, offset: 960)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2589, file: !38, line: 306, baseType: !2618, size: 576, offset: 1024)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2619)
!2619 = !{!2620, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2618, file: !38, line: 206, baseType: !2621, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !702)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2618, file: !38, line: 207, baseType: !2621, size: 64, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2618, file: !38, line: 208, baseType: !2621, size: 64, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2618, file: !38, line: 209, baseType: !2621, size: 64, offset: 192)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2618, file: !38, line: 210, baseType: !2621, size: 64, offset: 256)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2618, file: !38, line: 211, baseType: !2621, size: 64, offset: 320)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2618, file: !38, line: 212, baseType: !2621, size: 64, offset: 384)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2618, file: !38, line: 213, baseType: !708, size: 64, offset: 448)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2618, file: !38, line: 214, baseType: !708, size: 64, offset: 512)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2582, file: !38, line: 324, baseType: !2631, size: 64, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!2588, !767, !190}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2582, file: !38, line: 325, baseType: !2635, size: 64, offset: 128)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{null, !2588}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2582, file: !38, line: 326, baseType: !2585, size: 64, offset: 192)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2582, file: !38, line: 327, baseType: !2585, size: 64, offset: 256)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2582, file: !38, line: 328, baseType: !2585, size: 64, offset: 320)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2582, file: !38, line: 329, baseType: !853, size: 64, offset: 384)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2582, file: !38, line: 332, baseType: !2643, size: 64, offset: 448)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!2646, !603}
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2582, file: !38, line: 333, baseType: !2648, size: 64, offset: 512)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!190, !603, !2651}
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2582, file: !38, line: 335, baseType: !2653, size: 64, offset: 576)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!190, !603, !2646}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2582, file: !38, line: 337, baseType: !2657, size: 64, offset: 640)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!190, !767, !2660}
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !768, file: !44, line: 1425, baseType: !2662, size: 64, offset: 512)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2664)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2665)
!2665 = !{!2666, !2670, !2671, !2675, !2676, !2677, !2692, !2715, !2719, !2720, !2743}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2664, file: !38, line: 429, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!190, !767, !190, !190, !718}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2664, file: !38, line: 430, baseType: !853, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2664, file: !38, line: 431, baseType: !2672, size: 64, offset: 128)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!190, !767, !7}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2664, file: !38, line: 432, baseType: !2672, size: 64, offset: 192)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2664, file: !38, line: 433, baseType: !853, size: 64, offset: 256)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2664, file: !38, line: 434, baseType: !2678, size: 64, offset: 320)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!190, !767, !190, !2681}
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2683)
!2683 = !{!2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2682, file: !38, line: 416, baseType: !190, size: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2682, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2682, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2682, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2682, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2682, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2682, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2682, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2664, file: !38, line: 435, baseType: !2693, size: 64, offset: 384)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!190, !767, !2600, !2696}
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2698)
!2698 = !{!2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2697, file: !38, line: 344, baseType: !190, size: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2697, file: !38, line: 345, baseType: !596, size: 64, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2697, file: !38, line: 346, baseType: !596, size: 64, offset: 128)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2697, file: !38, line: 347, baseType: !596, size: 64, offset: 192)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2697, file: !38, line: 348, baseType: !596, size: 64, offset: 256)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2697, file: !38, line: 349, baseType: !596, size: 64, offset: 320)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2697, file: !38, line: 350, baseType: !596, size: 64, offset: 384)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2697, file: !38, line: 351, baseType: !945, size: 64, offset: 448)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2697, file: !38, line: 353, baseType: !945, size: 64, offset: 512)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2697, file: !38, line: 354, baseType: !190, size: 32, offset: 576)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2697, file: !38, line: 355, baseType: !190, size: 32, offset: 608)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2697, file: !38, line: 356, baseType: !596, size: 64, offset: 640)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2697, file: !38, line: 357, baseType: !596, size: 64, offset: 704)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2697, file: !38, line: 358, baseType: !596, size: 64, offset: 768)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2697, file: !38, line: 359, baseType: !945, size: 64, offset: 832)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2697, file: !38, line: 360, baseType: !190, size: 32, offset: 896)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2664, file: !38, line: 436, baseType: !2716, size: 64, offset: 448)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!190, !767, !2660, !2696}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2664, file: !38, line: 438, baseType: !2693, size: 64, offset: 512)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2664, file: !38, line: 439, baseType: !2721, size: 64, offset: 576)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!190, !767, !2724}
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2726)
!2726 = !{!2727, !2728}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2725, file: !38, line: 410, baseType: !7, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2725, file: !38, line: 411, baseType: !2729, size: 1344, offset: 64)
!2729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2730, size: 1344, elements: !457)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2731)
!2731 = !{!2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2742}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2730, file: !38, line: 396, baseType: !7, size: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2730, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2730, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2730, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2730, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2730, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2730, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2730, file: !38, line: 404, baseType: !598, size: 64, offset: 256)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2730, file: !38, line: 405, baseType: !2741, size: 64, offset: 320)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !165, line: 126, baseType: !596)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2730, file: !38, line: 406, baseType: !2741, size: 64, offset: 384)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2664, file: !38, line: 440, baseType: !2672, size: 64, offset: 640)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !768, file: !44, line: 1426, baseType: !2745, size: 64, offset: 576)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2747)
!2747 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !768, file: !44, line: 1427, baseType: !170, size: 64, offset: 640)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !768, file: !44, line: 1428, baseType: !170, size: 64, offset: 704)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !768, file: !44, line: 1429, baseType: !170, size: 64, offset: 768)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !768, file: !44, line: 1430, baseType: !561, size: 64, offset: 832)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !768, file: !44, line: 1431, baseType: !935, size: 256, offset: 896)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !768, file: !44, line: 1432, baseType: !190, size: 32, offset: 1152)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !768, file: !44, line: 1433, baseType: !915, size: 32, offset: 1184)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !768, file: !44, line: 1437, baseType: !2756, size: 64, offset: 1216)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2759)
!2759 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !768, file: !44, line: 1449, baseType: !2761, size: 64, offset: 1280)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !577, line: 34, size: 64, elements: !2762)
!2762 = !{!2763}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2761, file: !577, line: 35, baseType: !580, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !768, file: !44, line: 1450, baseType: !388, size: 128, offset: 1344)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !768, file: !44, line: 1451, baseType: !2766, size: 64, offset: 1472)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !768, file: !44, line: 1452, baseType: !2076, size: 64, offset: 1536)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !768, file: !44, line: 1453, baseType: !2770, size: 64, offset: 1600)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !768, file: !44, line: 1454, baseType: !807, size: 128, offset: 1664)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !768, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !768, file: !44, line: 1456, baseType: !2775, size: 2432, offset: 1856)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2776)
!2776 = !{!2777, !2778, !2779, !2781, !2813}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2775, file: !38, line: 519, baseType: !7, size: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2775, file: !38, line: 520, baseType: !935, size: 256, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2775, file: !38, line: 521, baseType: !2780, size: 192, offset: 320)
!2780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 192, elements: !457)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2775, file: !38, line: 522, baseType: !2782, size: 1728, offset: 512)
!2782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2783, size: 1728, elements: !457)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2784)
!2784 = !{!2785, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2783, file: !38, line: 223, baseType: !2786, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2788)
!2788 = !{!2789, !2790, !2803, !2804}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2787, file: !38, line: 444, baseType: !190, size: 32)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2787, file: !38, line: 445, baseType: !2791, size: 64, offset: 64)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2793)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2794)
!2794 = !{!2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2793, file: !38, line: 311, baseType: !853, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2793, file: !38, line: 312, baseType: !853, size: 64, offset: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2793, file: !38, line: 313, baseType: !853, size: 64, offset: 128)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2793, file: !38, line: 314, baseType: !853, size: 64, offset: 192)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2793, file: !38, line: 315, baseType: !2585, size: 64, offset: 256)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2793, file: !38, line: 316, baseType: !2585, size: 64, offset: 320)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2793, file: !38, line: 317, baseType: !2585, size: 64, offset: 384)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2793, file: !38, line: 318, baseType: !2657, size: 64, offset: 448)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2787, file: !38, line: 446, baseType: !244, size: 64, offset: 128)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2787, file: !38, line: 447, baseType: !2786, size: 64, offset: 192)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2783, file: !38, line: 224, baseType: !190, size: 32, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2783, file: !38, line: 226, baseType: !388, size: 128, offset: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2783, file: !38, line: 227, baseType: !170, size: 64, offset: 256)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2783, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2783, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2783, file: !38, line: 230, baseType: !2621, size: 64, offset: 384)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2783, file: !38, line: 231, baseType: !2621, size: 64, offset: 448)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2783, file: !38, line: 232, baseType: !166, size: 64, offset: 512)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2775, file: !38, line: 523, baseType: !2814, size: 192, offset: 2240)
!2814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2791, size: 192, elements: !457)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !768, file: !44, line: 1458, baseType: !2816, size: 2112, offset: 4288)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2817)
!2817 = !{!2818, !2819, !2820}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2816, file: !44, line: 1411, baseType: !190, size: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2816, file: !44, line: 1412, baseType: !1637, size: 128, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2816, file: !44, line: 1413, baseType: !2821, size: 1920, offset: 192)
!2821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2822, size: 1920, elements: !457)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2823, line: 12, size: 640, elements: !2824)
!2823 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2824 = !{!2825, !2833, !2834, !2839, !2840}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2822, file: !2823, line: 13, baseType: !2826, size: 320)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2827, line: 17, size: 320, elements: !2828)
!2827 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2828 = !{!2829, !2830, !2831, !2832}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2826, file: !2827, line: 18, baseType: !190, size: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2826, file: !2827, line: 19, baseType: !190, size: 32, offset: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2826, file: !2827, line: 20, baseType: !1637, size: 128, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2826, file: !2827, line: 22, baseType: !544, size: 128, align: 64, offset: 192)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2822, file: !2823, line: 14, baseType: !306, size: 64, offset: 320)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2822, file: !2823, line: 15, baseType: !2835, size: 64, offset: 384)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2836, line: 16, size: 64, elements: !2837)
!2836 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2837 = !{!2838}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2835, file: !2836, line: 17, baseType: !1377, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2822, file: !2823, line: 16, baseType: !1637, size: 128, offset: 448)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2822, file: !2823, line: 17, baseType: !915, size: 32, offset: 576)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !768, file: !44, line: 1465, baseType: !166, size: 64, offset: 6400)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !768, file: !44, line: 1468, baseType: !200, size: 32, offset: 6464)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !768, file: !44, line: 1470, baseType: !708, size: 64, offset: 6528)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !768, file: !44, line: 1471, baseType: !708, size: 64, offset: 6592)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !768, file: !44, line: 1473, baseType: !201, size: 32, offset: 6656)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !768, file: !44, line: 1474, baseType: !2847, size: 64, offset: 6720)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !768, file: !44, line: 1477, baseType: !367, size: 256, offset: 6784)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !768, file: !44, line: 1478, baseType: !2851, size: 128, offset: 7040)
!2851 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2852, line: 18, baseType: !2853)
!2852 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2852, line: 16, size: 128, elements: !2854)
!2854 = !{!2855}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2853, file: !2852, line: 17, baseType: !2856, size: 128)
!2856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 128, elements: !1888)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !768, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !768, file: !44, line: 1481, baseType: !2859, size: 32, offset: 7200)
!2859 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !165, line: 150, baseType: !7)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !768, file: !44, line: 1487, baseType: !1337, size: 192, offset: 7232)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !768, file: !44, line: 1493, baseType: !255, size: 64, offset: 7424)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !768, file: !44, line: 1495, baseType: !2863, size: 64, offset: 7488)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2865)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !559, line: 135, size: 1024, align: 512, elements: !2866)
!2866 = !{!2867, !2871, !2872, !2879, !2885, !2889, !2893, !2897, !2898, !2902, !2906, !2911, !2915}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2865, file: !559, line: 136, baseType: !2868, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!190, !561, !7}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2865, file: !559, line: 137, baseType: !2868, size: 64, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2865, file: !559, line: 138, baseType: !2873, size: 64, offset: 128)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!190, !2876, !2878}
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2865, file: !559, line: 139, baseType: !2880, size: 64, offset: 192)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!190, !2876, !7, !255, !2883}
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2865, file: !559, line: 141, baseType: !2886, size: 64, offset: 256)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!190, !2876}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2865, file: !559, line: 142, baseType: !2890, size: 64, offset: 320)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!190, !561}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2865, file: !559, line: 143, baseType: !2894, size: 64, offset: 384)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{null, !561}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2865, file: !559, line: 144, baseType: !2894, size: 64, offset: 448)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2865, file: !559, line: 145, baseType: !2899, size: 64, offset: 512)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{null, !561, !603}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2865, file: !559, line: 146, baseType: !2903, size: 64, offset: 576)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!242, !561, !242, !190}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2865, file: !559, line: 147, baseType: !2907, size: 64, offset: 640)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!557, !2910}
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2865, file: !559, line: 148, baseType: !2912, size: 64, offset: 704)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!190, !718, !371}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2865, file: !559, line: 149, baseType: !2916, size: 64, offset: 768)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!561, !561, !2919}
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !604)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !768, file: !44, line: 1500, baseType: !190, size: 32, offset: 7552)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !768, file: !44, line: 1502, baseType: !2923, size: 448, offset: 7616)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2569, line: 60, size: 448, elements: !2924)
!2924 = !{!2925, !2930, !2931, !2932, !2933, !2934, !2935}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2923, file: !2569, line: 61, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!170, !2929, !2567}
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2923, file: !2569, line: 63, baseType: !2926, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2923, file: !2569, line: 66, baseType: !169, size: 64, offset: 128)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2923, file: !2569, line: 67, baseType: !190, size: 32, offset: 192)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2923, file: !2569, line: 68, baseType: !7, size: 32, offset: 224)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2923, file: !2569, line: 71, baseType: !388, size: 128, offset: 256)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2923, file: !2569, line: 77, baseType: !2936, size: 64, offset: 384)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !768, file: !44, line: 1505, baseType: !939, size: 64, offset: 8064)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !768, file: !44, line: 1508, baseType: !939, size: 64, offset: 8128)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !768, file: !44, line: 1511, baseType: !190, size: 32, offset: 8192)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !768, file: !44, line: 1514, baseType: !1075, size: 32, offset: 8224)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !768, file: !44, line: 1517, baseType: !2942, size: 64, offset: 8256)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2111, line: 18, flags: DIFlagFwdDecl)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !768, file: !44, line: 1518, baseType: !803, size: 64, offset: 8320)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !768, file: !44, line: 1525, baseType: !1866, size: 64, offset: 8384)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !768, file: !44, line: 1532, baseType: !2947, size: 64, offset: 8448)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2948, line: 52, size: 64, elements: !2949)
!2948 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2949 = !{!2950}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2947, file: !2948, line: 53, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2948, line: 40, size: 256, elements: !2953)
!2953 = !{!2954, !2955, !2960}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2952, file: !2948, line: 42, baseType: !416)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2952, file: !2948, line: 44, baseType: !2956, size: 192)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2948, line: 28, size: 192, elements: !2957)
!2957 = !{!2958, !2959}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2956, file: !2948, line: 29, baseType: !388, size: 128)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2956, file: !2948, line: 31, baseType: !169, size: 64, offset: 128)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2952, file: !2948, line: 49, baseType: !169, size: 64, offset: 192)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !768, file: !44, line: 1533, baseType: !2947, size: 64, offset: 8512)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !768, file: !44, line: 1534, baseType: !544, size: 128, align: 64, offset: 8576)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !768, file: !44, line: 1535, baseType: !2110, size: 256, offset: 8704)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !768, file: !44, line: 1537, baseType: !1337, size: 192, offset: 8960)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !768, file: !44, line: 1542, baseType: !190, size: 32, offset: 9152)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !768, file: !44, line: 1545, baseType: !416, offset: 9184)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !768, file: !44, line: 1546, baseType: !388, size: 128, offset: 9216)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !768, file: !44, line: 1548, baseType: !416, offset: 9344)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !768, file: !44, line: 1549, baseType: !388, size: 128, offset: 9344)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !604, file: !44, line: 624, baseType: !902, size: 64, offset: 256)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !604, file: !44, line: 631, baseType: !170, size: 64, offset: 320)
!2972 = !DIDerivedType(tag: DW_TAG_member, scope: !604, file: !44, line: 639, baseType: !2973, size: 32, offset: 384)
!2973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !604, file: !44, line: 639, size: 32, elements: !2974)
!2974 = !{!2975, !2977}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2973, file: !44, line: 640, baseType: !2976, size: 32)
!2976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2973, file: !44, line: 641, baseType: !7, size: 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !604, file: !44, line: 643, baseType: !682, size: 32, offset: 416)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !604, file: !44, line: 644, baseType: !700, size: 64, offset: 448)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !604, file: !44, line: 645, baseType: !704, size: 128, offset: 512)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !604, file: !44, line: 646, baseType: !704, size: 128, offset: 640)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !604, file: !44, line: 647, baseType: !704, size: 128, offset: 768)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !604, file: !44, line: 648, baseType: !416, offset: 896)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !604, file: !44, line: 649, baseType: !281, size: 16, offset: 896)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !604, file: !44, line: 650, baseType: !177, size: 8, offset: 912)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !604, file: !44, line: 651, baseType: !177, size: 8, offset: 920)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !604, file: !44, line: 652, baseType: !2741, size: 64, offset: 960)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !604, file: !44, line: 659, baseType: !170, size: 64, offset: 1024)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !604, file: !44, line: 660, baseType: !935, size: 256, offset: 1088)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !604, file: !44, line: 662, baseType: !170, size: 64, offset: 1344)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !604, file: !44, line: 663, baseType: !170, size: 64, offset: 1408)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !604, file: !44, line: 665, baseType: !807, size: 128, offset: 1472)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !604, file: !44, line: 666, baseType: !388, size: 128, offset: 1600)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !604, file: !44, line: 675, baseType: !388, size: 128, offset: 1728)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !604, file: !44, line: 676, baseType: !388, size: 128, offset: 1856)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !604, file: !44, line: 677, baseType: !388, size: 128, offset: 1984)
!2997 = !DIDerivedType(tag: DW_TAG_member, scope: !604, file: !44, line: 678, baseType: !2998, size: 128, offset: 2112)
!2998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !604, file: !44, line: 678, size: 128, elements: !2999)
!2999 = !{!3000, !3001}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2998, file: !44, line: 679, baseType: !803, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2998, file: !44, line: 680, baseType: !544, size: 128, align: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !604, file: !44, line: 682, baseType: !941, size: 64, offset: 2240)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !604, file: !44, line: 683, baseType: !941, size: 64, offset: 2304)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !604, file: !44, line: 684, baseType: !915, size: 32, offset: 2368)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !604, file: !44, line: 685, baseType: !915, size: 32, offset: 2400)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !604, file: !44, line: 686, baseType: !915, size: 32, offset: 2432)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !604, file: !44, line: 688, baseType: !915, size: 32, offset: 2464)
!3008 = !DIDerivedType(tag: DW_TAG_member, scope: !604, file: !44, line: 690, baseType: !3009, size: 64, offset: 2496)
!3009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !604, file: !44, line: 690, size: 64, elements: !3010)
!3010 = !{!3011, !3234}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3009, file: !44, line: 691, baseType: !3012, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3014)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !3015)
!3015 = !{!3016, !3017, !3021, !3026, !3030, !3031, !3032, !3036, !3049, !3050, !3058, !3062, !3063, !3067, !3068, !3072, !3077, !3078, !3082, !3086, !3194, !3198, !3199, !3203, !3204, !3208, !3212, !3217, !3221, !3225, !3229, !3233}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3014, file: !44, line: 1823, baseType: !244, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3014, file: !44, line: 1824, baseType: !3018, size: 64, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!700, !531, !700, !190}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3014, file: !44, line: 1825, baseType: !3022, size: 64, offset: 128)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!487, !531, !242, !501, !3025}
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3014, file: !44, line: 1826, baseType: !3027, size: 64, offset: 192)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!487, !531, !255, !501, !3025}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3014, file: !44, line: 1827, baseType: !1012, size: 64, offset: 256)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3014, file: !44, line: 1828, baseType: !1012, size: 64, offset: 320)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3014, file: !44, line: 1829, baseType: !3033, size: 64, offset: 384)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!190, !1015, !371}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3014, file: !44, line: 1830, baseType: !3037, size: 64, offset: 448)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!190, !531, !3040}
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !3042)
!3042 = !{!3043, !3048}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3041, file: !44, line: 1777, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !3045)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!190, !3040, !255, !190, !700, !596, !7}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3041, file: !44, line: 1778, baseType: !700, size: 64, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3014, file: !44, line: 1831, baseType: !3037, size: 64, offset: 512)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3014, file: !44, line: 1832, baseType: !3051, size: 64, offset: 576)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!3054, !531, !3056}
!3054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3055, line: 52, baseType: !7)
!3055 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !787, line: 27, flags: DIFlagFwdDecl)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3014, file: !44, line: 1833, baseType: !3059, size: 64, offset: 640)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!169, !531, !7, !170}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3014, file: !44, line: 1834, baseType: !3059, size: 64, offset: 704)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3014, file: !44, line: 1835, baseType: !3064, size: 64, offset: 768)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!190, !531, !1147}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3014, file: !44, line: 1836, baseType: !170, size: 64, offset: 832)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3014, file: !44, line: 1837, baseType: !3069, size: 64, offset: 896)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!190, !603, !531}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3014, file: !44, line: 1838, baseType: !3073, size: 64, offset: 960)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!190, !531, !3076}
!3076 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !166)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3014, file: !44, line: 1839, baseType: !3069, size: 64, offset: 1024)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3014, file: !44, line: 1840, baseType: !3079, size: 64, offset: 1088)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!190, !531, !700, !700, !190}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3014, file: !44, line: 1841, baseType: !3083, size: 64, offset: 1152)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!190, !190, !531, !190}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3014, file: !44, line: 1842, baseType: !3087, size: 64, offset: 1216)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!190, !531, !190, !3090}
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !3092)
!3092 = !{!3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3124, !3125, !3126, !3139, !3170}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3091, file: !44, line: 1063, baseType: !3090, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3091, file: !44, line: 1064, baseType: !388, size: 128, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3091, file: !44, line: 1065, baseType: !807, size: 128, offset: 192)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3091, file: !44, line: 1066, baseType: !388, size: 128, offset: 320)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3091, file: !44, line: 1069, baseType: !388, size: 128, offset: 448)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3091, file: !44, line: 1072, baseType: !3076, size: 64, offset: 576)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3091, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3091, file: !44, line: 1074, baseType: !181, size: 8, offset: 672)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3091, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3091, file: !44, line: 1076, baseType: !190, size: 32, offset: 736)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3091, file: !44, line: 1077, baseType: !1637, size: 128, offset: 768)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3091, file: !44, line: 1078, baseType: !531, size: 64, offset: 896)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3091, file: !44, line: 1079, baseType: !700, size: 64, offset: 960)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3091, file: !44, line: 1080, baseType: !700, size: 64, offset: 1024)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3091, file: !44, line: 1082, baseType: !3108, size: 64, offset: 1088)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !3110)
!3110 = !{!3111, !3119, !3120, !3121, !3122, !3123}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3109, file: !44, line: 1315, baseType: !3112)
!3112 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3113, line: 20, baseType: !3114)
!3113 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3113, line: 11, elements: !3115)
!3115 = !{!3116}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3114, file: !3113, line: 12, baseType: !3117)
!3117 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !428, line: 33, baseType: !3118)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !428, line: 31, elements: !430)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3109, file: !44, line: 1316, baseType: !190, size: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3109, file: !44, line: 1317, baseType: !190, size: 32, offset: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3109, file: !44, line: 1318, baseType: !3108, size: 64, offset: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3109, file: !44, line: 1319, baseType: !531, size: 64, offset: 128)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3109, file: !44, line: 1320, baseType: !544, size: 128, align: 64, offset: 192)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3091, file: !44, line: 1084, baseType: !170, size: 64, offset: 1152)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3091, file: !44, line: 1085, baseType: !170, size: 64, offset: 1216)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3091, file: !44, line: 1087, baseType: !3127, size: 64, offset: 1280)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3129)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3130)
!3130 = !{!3131, !3135}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3129, file: !44, line: 1012, baseType: !3132, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{null, !3090, !3090}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3129, file: !44, line: 1013, baseType: !3136, size: 64, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{null, !3090}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3091, file: !44, line: 1088, baseType: !3140, size: 64, offset: 1344)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3142)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3143)
!3143 = !{!3144, !3148, !3152, !3153, !3157, !3161, !3165, !3169}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3142, file: !44, line: 1017, baseType: !3145, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!3076, !3076}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3142, file: !44, line: 1018, baseType: !3149, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{null, !3076}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3142, file: !44, line: 1019, baseType: !3136, size: 64, offset: 128)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3142, file: !44, line: 1020, baseType: !3154, size: 64, offset: 192)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!190, !3090, !190}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3142, file: !44, line: 1021, baseType: !3158, size: 64, offset: 256)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!371, !3090}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3142, file: !44, line: 1022, baseType: !3162, size: 64, offset: 320)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!190, !3090, !190, !391}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3142, file: !44, line: 1023, baseType: !3166, size: 64, offset: 384)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{null, !3090, !989}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3142, file: !44, line: 1024, baseType: !3158, size: 64, offset: 448)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3091, file: !44, line: 1097, baseType: !3171, size: 256, offset: 1408)
!3171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3091, file: !44, line: 1089, size: 256, elements: !3172)
!3172 = !{!3173, !3182, !3188}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3171, file: !44, line: 1090, baseType: !3174, size: 256)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3175, line: 10, size: 256, elements: !3176)
!3175 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3176 = !{!3177, !3178, !3181}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3174, file: !3175, line: 11, baseType: !200, size: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3174, file: !3175, line: 12, baseType: !3179, size: 64, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3175, line: 5, flags: DIFlagFwdDecl)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3174, file: !3175, line: 13, baseType: !388, size: 128, offset: 128)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3171, file: !44, line: 1091, baseType: !3183, size: 64)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3175, line: 17, size: 64, elements: !3184)
!3184 = !{!3185}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3183, file: !3175, line: 18, baseType: !3186, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3175, line: 16, flags: DIFlagFwdDecl)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3171, file: !44, line: 1096, baseType: !3189, size: 192)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3171, file: !44, line: 1092, size: 192, elements: !3190)
!3190 = !{!3191, !3192, !3193}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3189, file: !44, line: 1093, baseType: !388, size: 128)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3189, file: !44, line: 1094, baseType: !190, size: 32, offset: 128)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3189, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3014, file: !44, line: 1843, baseType: !3195, size: 64, offset: 1280)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!487, !531, !889, !190, !501, !3025, !190}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3014, file: !44, line: 1844, baseType: !1267, size: 64, offset: 1344)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3014, file: !44, line: 1845, baseType: !3200, size: 64, offset: 1408)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!190, !190}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3014, file: !44, line: 1846, baseType: !3087, size: 64, offset: 1472)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3014, file: !44, line: 1847, baseType: !3205, size: 64, offset: 1536)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!487, !2251, !531, !3025, !501, !7}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3014, file: !44, line: 1848, baseType: !3209, size: 64, offset: 1600)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!487, !531, !3025, !2251, !501, !7}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3014, file: !44, line: 1849, baseType: !3213, size: 64, offset: 1664)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!190, !531, !169, !3216, !989}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3014, file: !44, line: 1850, baseType: !3218, size: 64, offset: 1728)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!169, !531, !190, !700, !700}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3014, file: !44, line: 1852, baseType: !3222, size: 64, offset: 1792)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{null, !879, !531}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3014, file: !44, line: 1856, baseType: !3226, size: 64, offset: 1856)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!487, !531, !700, !531, !700, !501, !7}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3014, file: !44, line: 1858, baseType: !3230, size: 64, offset: 1920)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!700, !531, !700, !531, !700, !700, !7}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3014, file: !44, line: 1861, baseType: !3079, size: 64, offset: 1984)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3009, file: !44, line: 692, baseType: !832, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !604, file: !44, line: 694, baseType: !3236, size: 64, offset: 2560)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3238)
!3238 = !{!3239, !3240, !3241, !3242}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3237, file: !44, line: 1101, baseType: !416)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3237, file: !44, line: 1102, baseType: !388, size: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3237, file: !44, line: 1103, baseType: !388, size: 128, offset: 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3237, file: !44, line: 1104, baseType: !388, size: 128, offset: 256)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !604, file: !44, line: 695, baseType: !903, size: 1216, align: 64, offset: 2624)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !604, file: !44, line: 696, baseType: !388, size: 128, offset: 3840)
!3245 = !DIDerivedType(tag: DW_TAG_member, scope: !604, file: !44, line: 697, baseType: !3246, size: 64, offset: 3968)
!3246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !604, file: !44, line: 697, size: 64, elements: !3247)
!3247 = !{!3248, !3249, !3250, !3253, !3254}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3246, file: !44, line: 698, baseType: !2251, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3246, file: !44, line: 699, baseType: !2766, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3246, file: !44, line: 700, baseType: !3251, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3246, file: !44, line: 701, baseType: !242, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3246, file: !44, line: 702, baseType: !7, size: 32)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !604, file: !44, line: 705, baseType: !201, size: 32, offset: 4032)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !604, file: !44, line: 708, baseType: !201, size: 32, offset: 4064)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !604, file: !44, line: 709, baseType: !2847, size: 64, offset: 4096)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !604, file: !44, line: 720, baseType: !166, size: 64, offset: 4160)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !562, file: !559, line: 98, baseType: !3260, size: 256, offset: 448)
!3260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 256, elements: !368)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !562, file: !559, line: 101, baseType: !3262, size: 32, offset: 704)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3263, line: 25, size: 32, elements: !3264)
!3263 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3264 = !{!3265}
!3265 = !DIDerivedType(tag: DW_TAG_member, scope: !3262, file: !3263, line: 26, baseType: !3266, size: 32)
!3266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3262, file: !3263, line: 26, size: 32, elements: !3267)
!3267 = !{!3268}
!3268 = !DIDerivedType(tag: DW_TAG_member, scope: !3266, file: !3263, line: 30, baseType: !3269, size: 32)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3266, file: !3263, line: 30, size: 32, elements: !3270)
!3270 = !{!3271, !3272}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3269, file: !3263, line: 31, baseType: !416)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3269, file: !3263, line: 32, baseType: !190, size: 32)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !562, file: !559, line: 102, baseType: !2863, size: 64, offset: 768)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !562, file: !559, line: 103, baseType: !767, size: 64, offset: 832)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !562, file: !559, line: 104, baseType: !170, size: 64, offset: 896)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !562, file: !559, line: 105, baseType: !166, size: 64, offset: 960)
!3277 = !DIDerivedType(tag: DW_TAG_member, scope: !562, file: !559, line: 107, baseType: !3278, size: 128, offset: 1024)
!3278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !562, file: !559, line: 107, size: 128, elements: !3279)
!3279 = !{!3280, !3281}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3278, file: !559, line: 108, baseType: !388, size: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3278, file: !559, line: 109, baseType: !3282, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !562, file: !559, line: 111, baseType: !388, size: 128, offset: 1152)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !562, file: !559, line: 112, baseType: !388, size: 128, offset: 1280)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !562, file: !559, line: 120, baseType: !3286, size: 128, offset: 1408)
!3286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !562, file: !559, line: 116, size: 128, elements: !3287)
!3287 = !{!3288, !3289, !3290}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3286, file: !559, line: 117, baseType: !807, size: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3286, file: !559, line: 118, baseType: !576, size: 128)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3286, file: !559, line: 119, baseType: !544, size: 128, align: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !532, file: !44, line: 922, baseType: !603, size: 64, offset: 256)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !532, file: !44, line: 923, baseType: !3012, size: 64, offset: 320)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !532, file: !44, line: 929, baseType: !416, offset: 384)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !532, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !532, file: !44, line: 931, baseType: !939, size: 64, offset: 448)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !532, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !532, file: !44, line: 933, baseType: !2859, size: 32, offset: 544)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !532, file: !44, line: 934, baseType: !1337, size: 192, offset: 576)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !532, file: !44, line: 935, baseType: !700, size: 64, offset: 768)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !532, file: !44, line: 936, baseType: !3301, size: 192, offset: 832)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3302)
!3302 = !{!3303, !3304, !3305, !3306, !3307, !3308}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3301, file: !44, line: 886, baseType: !3112)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3301, file: !44, line: 887, baseType: !1627, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3301, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3301, file: !44, line: 889, baseType: !609, size: 32, offset: 96)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3301, file: !44, line: 889, baseType: !609, size: 32, offset: 128)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3301, file: !44, line: 890, baseType: !190, size: 32, offset: 160)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !532, file: !44, line: 937, baseType: !1703, size: 64, offset: 1024)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !532, file: !44, line: 938, baseType: !3311, size: 256, offset: 1088)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3312)
!3312 = !{!3313, !3314, !3315, !3316, !3317, !3318}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3311, file: !44, line: 897, baseType: !170, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3311, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3311, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3311, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3311, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3311, file: !44, line: 904, baseType: !700, size: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !532, file: !44, line: 940, baseType: !596, size: 64, offset: 1344)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !532, file: !44, line: 945, baseType: !166, size: 64, offset: 1408)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !532, file: !44, line: 949, baseType: !388, size: 128, offset: 1472)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !532, file: !44, line: 950, baseType: !388, size: 128, offset: 1600)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !532, file: !44, line: 952, baseType: !902, size: 64, offset: 1728)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !532, file: !44, line: 953, baseType: !1075, size: 32, offset: 1792)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !532, file: !44, line: 954, baseType: !1075, size: 32, offset: 1824)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !522, file: !481, line: 174, baseType: !528, size: 64, offset: 320)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !522, file: !481, line: 176, baseType: !3328, size: 64, offset: 384)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!190, !531, !409, !521, !1147}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !510, file: !481, line: 90, baseType: !505, size: 64, offset: 192)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !510, file: !481, line: 91, baseType: !3333, size: 64, offset: 256)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !471, file: !404, line: 143, baseType: !3335, size: 64, offset: 256)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!3338, !409}
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3340)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3341)
!3341 = !{!3342, !3343, !3347, !3351, !3357, !3361}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3340, file: !61, line: 40, baseType: !60, size: 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3340, file: !61, line: 41, baseType: !3344, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!371}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3340, file: !61, line: 42, baseType: !3348, size: 64, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!166}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3340, file: !61, line: 43, baseType: !3352, size: 64, offset: 192)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!2280, !3355}
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3340, file: !61, line: 44, baseType: !3358, size: 64, offset: 256)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!2280}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3340, file: !61, line: 45, baseType: !274, size: 64, offset: 320)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !471, file: !404, line: 144, baseType: !3363, size: 64, offset: 320)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!2280, !409}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !471, file: !404, line: 145, baseType: !3367, size: 64, offset: 384)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{null, !409, !3370, !3371}
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !403, file: !404, line: 70, baseType: !3373, size: 64, offset: 384)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !787, line: 123, size: 1024, elements: !3375)
!3375 = !{!3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3504, !3505, !3506, !3507, !3508}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3374, file: !787, line: 124, baseType: !915, size: 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3374, file: !787, line: 125, baseType: !915, size: 32, offset: 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3374, file: !787, line: 135, baseType: !3373, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3374, file: !787, line: 136, baseType: !255, size: 64, offset: 128)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3374, file: !787, line: 138, baseType: !928, size: 192, align: 64, offset: 192)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3374, file: !787, line: 140, baseType: !2280, size: 64, offset: 384)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3374, file: !787, line: 141, baseType: !7, size: 32, offset: 448)
!3383 = !DIDerivedType(tag: DW_TAG_member, scope: !3374, file: !787, line: 142, baseType: !3384, size: 256, offset: 512)
!3384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3374, file: !787, line: 142, size: 256, elements: !3385)
!3385 = !{!3386, !3432, !3436}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3384, file: !787, line: 143, baseType: !3387, size: 192)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !787, line: 91, size: 192, elements: !3388)
!3388 = !{!3389, !3390, !3391}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3387, file: !787, line: 92, baseType: !170, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3387, file: !787, line: 94, baseType: !924, size: 64, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3387, file: !787, line: 100, baseType: !3392, size: 64, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !787, line: 180, size: 704, elements: !3394)
!3394 = !{!3395, !3396, !3397, !3404, !3405, !3406, !3430, !3431}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3393, file: !787, line: 182, baseType: !3373, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3393, file: !787, line: 183, baseType: !7, size: 32, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3393, file: !787, line: 186, baseType: !3398, size: 192, offset: 128)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3399, line: 19, size: 192, elements: !3400)
!3399 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3400 = !{!3401, !3402, !3403}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3398, file: !3399, line: 20, baseType: !907, size: 128)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3398, file: !3399, line: 21, baseType: !7, size: 32, offset: 128)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3398, file: !3399, line: 22, baseType: !7, size: 32, offset: 160)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3393, file: !787, line: 187, baseType: !200, size: 32, offset: 320)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3393, file: !787, line: 188, baseType: !200, size: 32, offset: 352)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3393, file: !787, line: 189, baseType: !3407, size: 64, offset: 384)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !787, line: 168, size: 320, elements: !3409)
!3409 = !{!3410, !3414, !3418, !3422, !3426}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3408, file: !787, line: 169, baseType: !3411, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!190, !879, !3392}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3408, file: !787, line: 171, baseType: !3415, size: 64, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!190, !3373, !255, !496}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3408, file: !787, line: 173, baseType: !3419, size: 64, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!190, !3373}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3408, file: !787, line: 174, baseType: !3423, size: 64, offset: 192)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!190, !3373, !3373, !255}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3408, file: !787, line: 176, baseType: !3427, size: 64, offset: 256)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!190, !879, !3373, !3392}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3393, file: !787, line: 192, baseType: !388, size: 128, offset: 448)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3393, file: !787, line: 194, baseType: !1637, size: 128, offset: 576)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3384, file: !787, line: 144, baseType: !3433, size: 64)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !787, line: 103, size: 64, elements: !3434)
!3434 = !{!3435}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3433, file: !787, line: 104, baseType: !3373, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3384, file: !787, line: 145, baseType: !3437, size: 256)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !787, line: 107, size: 256, elements: !3438)
!3438 = !{!3439, !3499, !3502, !3503}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3437, file: !787, line: 108, baseType: !3440, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3442)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !787, line: 217, size: 768, elements: !3443)
!3443 = !{!3444, !3464, !3468, !3472, !3476, !3480, !3484, !3488, !3489, !3490, !3491, !3495}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3442, file: !787, line: 222, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!190, !3448}
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !787, line: 197, size: 1088, elements: !3450)
!3450 = !{!3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3449, file: !787, line: 199, baseType: !3373, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3449, file: !787, line: 200, baseType: !531, size: 64, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3449, file: !787, line: 201, baseType: !879, size: 64, offset: 128)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3449, file: !787, line: 202, baseType: !166, size: 64, offset: 192)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3449, file: !787, line: 205, baseType: !1337, size: 192, offset: 256)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3449, file: !787, line: 206, baseType: !1337, size: 192, offset: 448)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3449, file: !787, line: 207, baseType: !190, size: 32, offset: 640)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3449, file: !787, line: 208, baseType: !388, size: 128, offset: 704)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3449, file: !787, line: 209, baseType: !242, size: 64, offset: 832)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3449, file: !787, line: 211, baseType: !501, size: 64, offset: 896)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3449, file: !787, line: 212, baseType: !371, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3449, file: !787, line: 213, baseType: !371, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3449, file: !787, line: 214, baseType: !1175, size: 64, offset: 1024)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3442, file: !787, line: 223, baseType: !3465, size: 64, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{null, !3448}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3442, file: !787, line: 236, baseType: !3469, size: 64, offset: 128)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!190, !879, !166}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3442, file: !787, line: 238, baseType: !3473, size: 64, offset: 192)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!166, !879, !3025}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3442, file: !787, line: 239, baseType: !3477, size: 64, offset: 256)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!166, !879, !166, !3025}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3442, file: !787, line: 240, baseType: !3481, size: 64, offset: 320)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{null, !879, !166}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3442, file: !787, line: 242, baseType: !3485, size: 64, offset: 384)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!487, !3448, !242, !501, !700}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3442, file: !787, line: 252, baseType: !501, size: 64, offset: 448)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3442, file: !787, line: 259, baseType: !371, size: 8, offset: 512)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3442, file: !787, line: 260, baseType: !3485, size: 64, offset: 576)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3442, file: !787, line: 263, baseType: !3492, size: 64, offset: 640)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!3054, !3448, !3056}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3442, file: !787, line: 266, baseType: !3496, size: 64, offset: 704)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!190, !3448, !1147}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3437, file: !787, line: 109, baseType: !3500, size: 64, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !787, line: 31, flags: DIFlagFwdDecl)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3437, file: !787, line: 110, baseType: !700, size: 64, offset: 128)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3437, file: !787, line: 111, baseType: !3373, size: 64, offset: 192)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3374, file: !787, line: 148, baseType: !166, size: 64, offset: 768)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3374, file: !787, line: 154, baseType: !596, size: 64, offset: 832)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3374, file: !787, line: 156, baseType: !281, size: 16, offset: 896)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3374, file: !787, line: 157, baseType: !496, size: 16, offset: 912)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3374, file: !787, line: 158, baseType: !3509, size: 64, offset: 960)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !787, line: 32, flags: DIFlagFwdDecl)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !403, file: !404, line: 71, baseType: !3512, size: 32, offset: 448)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3513, line: 19, size: 32, elements: !3514)
!3513 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3514 = !{!3515}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3512, file: !3513, line: 20, baseType: !1390, size: 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !403, file: !404, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !403, file: !404, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !403, file: !404, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !403, file: !404, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !403, file: !404, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !400, file: !73, line: 463, baseType: !3522, size: 64, offset: 512)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !400, file: !73, line: 465, baseType: !3524, size: 64, offset: 576)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !400, file: !73, line: 467, baseType: !255, size: 64, offset: 640)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !400, file: !73, line: 468, baseType: !3528, size: 64, offset: 704)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3530)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3531)
!3531 = !{!3532, !3533, !3534, !3538, !3543, !3547}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3530, file: !73, line: 88, baseType: !255, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3530, file: !73, line: 89, baseType: !507, size: 64, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3530, file: !73, line: 90, baseType: !3535, size: 64, offset: 128)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!190, !3522, !452}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3530, file: !73, line: 91, baseType: !3539, size: 64, offset: 192)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!242, !3522, !3542, !3370, !3371}
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3530, file: !73, line: 93, baseType: !3544, size: 64, offset: 256)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{null, !3522}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3530, file: !73, line: 95, baseType: !3548, size: 64, offset: 320)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3550)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3551)
!3551 = !{!3552, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3550, file: !80, line: 279, baseType: !3553, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!190, !3522}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3550, file: !80, line: 280, baseType: !3544, size: 64, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3550, file: !80, line: 281, baseType: !3553, size: 64, offset: 128)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3550, file: !80, line: 282, baseType: !3553, size: 64, offset: 192)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3550, file: !80, line: 283, baseType: !3553, size: 64, offset: 256)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3550, file: !80, line: 284, baseType: !3553, size: 64, offset: 320)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3550, file: !80, line: 285, baseType: !3553, size: 64, offset: 384)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3550, file: !80, line: 286, baseType: !3553, size: 64, offset: 448)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3550, file: !80, line: 287, baseType: !3553, size: 64, offset: 512)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3550, file: !80, line: 288, baseType: !3553, size: 64, offset: 576)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3550, file: !80, line: 289, baseType: !3553, size: 64, offset: 640)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3550, file: !80, line: 290, baseType: !3553, size: 64, offset: 704)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3550, file: !80, line: 291, baseType: !3553, size: 64, offset: 768)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3550, file: !80, line: 292, baseType: !3553, size: 64, offset: 832)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3550, file: !80, line: 293, baseType: !3553, size: 64, offset: 896)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3550, file: !80, line: 294, baseType: !3553, size: 64, offset: 960)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3550, file: !80, line: 295, baseType: !3553, size: 64, offset: 1024)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3550, file: !80, line: 296, baseType: !3553, size: 64, offset: 1088)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3550, file: !80, line: 297, baseType: !3553, size: 64, offset: 1152)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3550, file: !80, line: 298, baseType: !3553, size: 64, offset: 1216)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3550, file: !80, line: 299, baseType: !3553, size: 64, offset: 1280)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3550, file: !80, line: 300, baseType: !3553, size: 64, offset: 1344)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3550, file: !80, line: 301, baseType: !3553, size: 64, offset: 1408)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !400, file: !73, line: 470, baseType: !3579, size: 64, offset: 768)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3581, line: 82, size: 1408, elements: !3582)
!3581 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3582 = !{!3583, !3584, !3585, !3586, !3587, !3588, !3589, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3664, !3667, !3668}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3580, file: !3581, line: 83, baseType: !255, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3580, file: !3581, line: 84, baseType: !255, size: 64, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3580, file: !3581, line: 85, baseType: !3522, size: 64, offset: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3580, file: !3581, line: 86, baseType: !507, size: 64, offset: 192)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3580, file: !3581, line: 87, baseType: !507, size: 64, offset: 256)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3580, file: !3581, line: 88, baseType: !507, size: 64, offset: 320)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3580, file: !3581, line: 90, baseType: !3590, size: 64, offset: 384)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!190, !3522, !3593}
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3595)
!3595 = !{!3596, !3597, !3598, !3599, !3600, !3601, !3602, !3615, !3628, !3629, !3630, !3631, !3632, !3640, !3641, !3642, !3643, !3644, !3645}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3594, file: !67, line: 96, baseType: !255, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3594, file: !67, line: 97, baseType: !3579, size: 64, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3594, file: !67, line: 99, baseType: !244, size: 64, offset: 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3594, file: !67, line: 100, baseType: !255, size: 64, offset: 192)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3594, file: !67, line: 102, baseType: !371, size: 8, offset: 256)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3594, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3594, file: !67, line: 105, baseType: !3603, size: 64, offset: 320)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3605)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3606, line: 262, size: 1600, elements: !3607)
!3606 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3607 = !{!3608, !3609, !3610, !3614}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3605, file: !3606, line: 263, baseType: !367, size: 256)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3605, file: !3606, line: 264, baseType: !367, size: 256, offset: 256)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3605, file: !3606, line: 265, baseType: !3611, size: 1024, offset: 512)
!3611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 1024, elements: !3612)
!3612 = !{!3613}
!3613 = !DISubrange(count: 128)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3605, file: !3606, line: 266, baseType: !2280, size: 64, offset: 1536)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3594, file: !67, line: 106, baseType: !3616, size: 64, offset: 384)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3618)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3606, line: 210, size: 256, elements: !3619)
!3619 = !{!3620, !3624, !3626, !3627}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3618, file: !3606, line: 211, baseType: !3621, size: 72)
!3621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 72, elements: !3622)
!3622 = !{!3623}
!3623 = !DISubrange(count: 9)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3618, file: !3606, line: 212, baseType: !3625, size: 64, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3606, line: 14, baseType: !170)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3618, file: !3606, line: 213, baseType: !201, size: 32, offset: 192)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3618, file: !3606, line: 214, baseType: !201, size: 32, offset: 224)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3594, file: !67, line: 108, baseType: !3553, size: 64, offset: 448)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3594, file: !67, line: 109, baseType: !3544, size: 64, offset: 512)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3594, file: !67, line: 110, baseType: !3553, size: 64, offset: 576)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3594, file: !67, line: 111, baseType: !3544, size: 64, offset: 640)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3594, file: !67, line: 112, baseType: !3633, size: 64, offset: 704)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!190, !3522, !3636}
!3636 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3637)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3638)
!3638 = !{!3639}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3637, file: !80, line: 51, baseType: !190, size: 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3594, file: !67, line: 113, baseType: !3553, size: 64, offset: 768)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3594, file: !67, line: 114, baseType: !507, size: 64, offset: 832)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3594, file: !67, line: 115, baseType: !507, size: 64, offset: 896)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3594, file: !67, line: 117, baseType: !3548, size: 64, offset: 960)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3594, file: !67, line: 118, baseType: !3544, size: 64, offset: 1024)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3594, file: !67, line: 120, baseType: !3646, size: 64, offset: 1088)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3580, file: !3581, line: 91, baseType: !3535, size: 64, offset: 448)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3580, file: !3581, line: 92, baseType: !3553, size: 64, offset: 512)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3580, file: !3581, line: 93, baseType: !3544, size: 64, offset: 576)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3580, file: !3581, line: 94, baseType: !3553, size: 64, offset: 640)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3580, file: !3581, line: 95, baseType: !3544, size: 64, offset: 704)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3580, file: !3581, line: 97, baseType: !3553, size: 64, offset: 768)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3580, file: !3581, line: 98, baseType: !3553, size: 64, offset: 832)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3580, file: !3581, line: 100, baseType: !3633, size: 64, offset: 896)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3580, file: !3581, line: 101, baseType: !3553, size: 64, offset: 960)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3580, file: !3581, line: 103, baseType: !3553, size: 64, offset: 1024)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3580, file: !3581, line: 105, baseType: !3553, size: 64, offset: 1088)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3580, file: !3581, line: 107, baseType: !3548, size: 64, offset: 1152)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3580, file: !3581, line: 109, baseType: !3661, size: 64, offset: 1216)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3663)
!3663 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3581, line: 109, flags: DIFlagFwdDecl)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3580, file: !3581, line: 111, baseType: !3665, size: 64, offset: 1280)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3581, line: 111, flags: DIFlagFwdDecl)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3580, file: !3581, line: 112, baseType: !813, offset: 1344)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3580, file: !3581, line: 114, baseType: !371, size: 8, offset: 1344)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !400, file: !73, line: 471, baseType: !3593, size: 64, offset: 832)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !400, file: !73, line: 473, baseType: !166, size: 64, offset: 896)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !400, file: !73, line: 475, baseType: !166, size: 64, offset: 960)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !400, file: !73, line: 480, baseType: !1337, size: 192, offset: 1024)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !400, file: !73, line: 484, baseType: !3674, size: 576, offset: 1216)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3675)
!3675 = !{!3676, !3677, !3678, !3679, !3680, !3681}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3674, file: !73, line: 362, baseType: !388, size: 128)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3674, file: !73, line: 363, baseType: !388, size: 128, offset: 128)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3674, file: !73, line: 364, baseType: !388, size: 128, offset: 256)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3674, file: !73, line: 365, baseType: !388, size: 128, offset: 384)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3674, file: !73, line: 366, baseType: !371, size: 8, offset: 512)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3674, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !400, file: !73, line: 485, baseType: !3683, size: 2304, offset: 1792)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3684)
!3684 = !{!3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3780, !3784}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3683, file: !80, line: 566, baseType: !3636, size: 32)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3683, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3683, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3683, file: !80, line: 569, baseType: !371, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3683, file: !80, line: 570, baseType: !371, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3683, file: !80, line: 571, baseType: !371, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3683, file: !80, line: 572, baseType: !371, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3683, file: !80, line: 573, baseType: !371, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3683, file: !80, line: 574, baseType: !371, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3683, file: !80, line: 575, baseType: !371, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3683, file: !80, line: 576, baseType: !371, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3683, file: !80, line: 577, baseType: !200, size: 32, offset: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3683, file: !80, line: 578, baseType: !416, offset: 96)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3683, file: !80, line: 580, baseType: !388, size: 128, offset: 128)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3683, file: !80, line: 581, baseType: !1658, size: 192, offset: 256)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3683, file: !80, line: 582, baseType: !3701, size: 64, offset: 448)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3703, line: 43, size: 1472, elements: !3704)
!3703 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3704 = !{!3705, !3706, !3707, !3708, !3709, !3712, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3702, file: !3703, line: 44, baseType: !255, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3702, file: !3703, line: 45, baseType: !190, size: 32, offset: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3702, file: !3703, line: 46, baseType: !388, size: 128, offset: 128)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3702, file: !3703, line: 47, baseType: !416, offset: 256)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3702, file: !3703, line: 48, baseType: !3710, size: 64, offset: 256)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3702, file: !3703, line: 49, baseType: !3713, size: 320, offset: 320)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3714, line: 11, size: 320, elements: !3715)
!3714 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3715 = !{!3716, !3717, !3718, !3723}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3713, file: !3714, line: 16, baseType: !807, size: 128)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3713, file: !3714, line: 17, baseType: !170, size: 64, offset: 128)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3713, file: !3714, line: 18, baseType: !3719, size: 64, offset: 192)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{null, !3722}
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3713, file: !3714, line: 19, baseType: !200, size: 32, offset: 256)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3702, file: !3703, line: 50, baseType: !170, size: 64, offset: 640)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3702, file: !3703, line: 51, baseType: !1460, size: 64, offset: 704)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3702, file: !3703, line: 52, baseType: !1460, size: 64, offset: 768)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3702, file: !3703, line: 53, baseType: !1460, size: 64, offset: 832)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3702, file: !3703, line: 54, baseType: !1460, size: 64, offset: 896)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3702, file: !3703, line: 55, baseType: !1460, size: 64, offset: 960)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3702, file: !3703, line: 56, baseType: !170, size: 64, offset: 1024)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3702, file: !3703, line: 57, baseType: !170, size: 64, offset: 1088)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3702, file: !3703, line: 58, baseType: !170, size: 64, offset: 1152)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3702, file: !3703, line: 59, baseType: !170, size: 64, offset: 1216)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3702, file: !3703, line: 60, baseType: !170, size: 64, offset: 1280)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3702, file: !3703, line: 61, baseType: !3522, size: 64, offset: 1344)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3702, file: !3703, line: 62, baseType: !371, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3702, file: !3703, line: 63, baseType: !371, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3683, file: !80, line: 583, baseType: !371, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3683, file: !80, line: 584, baseType: !371, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3683, file: !80, line: 585, baseType: !371, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3683, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3683, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3683, file: !80, line: 592, baseType: !1452, size: 512, offset: 576)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3683, file: !80, line: 593, baseType: !596, size: 64, offset: 1088)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3683, file: !80, line: 594, baseType: !2110, size: 256, offset: 1152)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3683, file: !80, line: 595, baseType: !1637, size: 128, offset: 1408)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3683, file: !80, line: 596, baseType: !3710, size: 64, offset: 1536)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3683, file: !80, line: 597, baseType: !915, size: 32, offset: 1600)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3683, file: !80, line: 598, baseType: !915, size: 32, offset: 1632)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3683, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3683, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3683, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3683, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3683, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3683, file: !80, line: 604, baseType: !371, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3683, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3683, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3683, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3683, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3683, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3683, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3683, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3683, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3683, file: !80, line: 613, baseType: !190, size: 32, offset: 1792)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3683, file: !80, line: 614, baseType: !190, size: 32, offset: 1824)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3683, file: !80, line: 615, baseType: !596, size: 64, offset: 1856)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3683, file: !80, line: 616, baseType: !596, size: 64, offset: 1920)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3683, file: !80, line: 617, baseType: !596, size: 64, offset: 1984)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3683, file: !80, line: 618, baseType: !596, size: 64, offset: 2048)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3683, file: !80, line: 620, baseType: !3771, size: 64, offset: 2112)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3773)
!3773 = !{!3774, !3775, !3776, !3777}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3772, file: !80, line: 537, baseType: !416)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3772, file: !80, line: 538, baseType: !7, size: 32)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3772, file: !80, line: 540, baseType: !388, size: 128, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3772, file: !80, line: 543, baseType: !3778, size: 64, offset: 192)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3683, file: !80, line: 621, baseType: !3781, size: 64, offset: 2176)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{null, !3522, !188}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3683, file: !80, line: 622, baseType: !3785, size: 64, offset: 2240)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !400, file: !73, line: 486, baseType: !3788, size: 64, offset: 4096)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3790)
!3790 = !{!3791, !3792, !3793, !3797, !3798, !3799}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3789, file: !80, line: 643, baseType: !3550, size: 1472)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3789, file: !80, line: 644, baseType: !3553, size: 64, offset: 1472)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3789, file: !80, line: 645, baseType: !3794, size: 64, offset: 1536)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{null, !3522, !371}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3789, file: !80, line: 646, baseType: !3553, size: 64, offset: 1600)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3789, file: !80, line: 647, baseType: !3544, size: 64, offset: 1664)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3789, file: !80, line: 648, baseType: !3544, size: 64, offset: 1728)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !400, file: !73, line: 493, baseType: !3801, size: 64, offset: 4160)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3803)
!3803 = !{!3804, !3805, !3806, !4136, !4137, !4138, !4139, !4140, !4141, !4267, !4268, !4269, !4270, !4271, !4272, !4273}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3802, file: !94, line: 163, baseType: !388, size: 128)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3802, file: !94, line: 164, baseType: !255, size: 64, offset: 128)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3802, file: !94, line: 165, baseType: !3807, size: 64, offset: 192)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3809)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3810)
!3810 = !{!3811, !3929, !3940, !3945, !3949, !3955, !3959, !3963, !4128, !4132}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3809, file: !94, line: 106, baseType: !3812, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!190, !3801, !3815, !93}
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3817, line: 51, size: 1344, elements: !3818)
!3817 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3818 = !{!3819, !3820, !3822, !3823, !3913, !3922, !3923, !3924, !3925, !3926, !3927, !3928}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3816, file: !3817, line: 52, baseType: !255, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3816, file: !3817, line: 53, baseType: !3821, size: 32, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3817, line: 28, baseType: !200)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3816, file: !3817, line: 54, baseType: !255, size: 64, offset: 128)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3816, file: !3817, line: 55, baseType: !3824, size: 192, offset: 192)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3825, line: 17, size: 192, elements: !3826)
!3825 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3826 = !{!3827, !3829, !3912}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3824, file: !3825, line: 18, baseType: !3828, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3824, file: !3825, line: 19, baseType: !3830, size: 64, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3832)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3825, line: 110, size: 1152, elements: !3833)
!3833 = !{!3834, !3838, !3842, !3848, !3854, !3858, !3862, !3867, !3871, !3872, !3876, !3880, !3884, !3895, !3896, !3897, !3898, !3908}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3832, file: !3825, line: 111, baseType: !3835, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!3828, !3828}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3832, file: !3825, line: 112, baseType: !3839, size: 64, offset: 64)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{null, !3828}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3832, file: !3825, line: 113, baseType: !3843, size: 64, offset: 128)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!371, !3846}
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3824)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3832, file: !3825, line: 114, baseType: !3849, size: 64, offset: 192)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!2280, !3846, !3852}
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3832, file: !3825, line: 116, baseType: !3855, size: 64, offset: 256)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!371, !3846, !255}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3832, file: !3825, line: 118, baseType: !3859, size: 64, offset: 320)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!190, !3846, !255, !7, !166, !501}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3832, file: !3825, line: 123, baseType: !3863, size: 64, offset: 384)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!190, !3846, !255, !3866, !501}
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3832, file: !3825, line: 126, baseType: !3868, size: 64, offset: 448)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!255, !3846}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3832, file: !3825, line: 127, baseType: !3868, size: 64, offset: 512)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3832, file: !3825, line: 128, baseType: !3873, size: 64, offset: 576)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!3828, !3846}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3832, file: !3825, line: 130, baseType: !3877, size: 64, offset: 640)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!3828, !3846, !3828}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3832, file: !3825, line: 133, baseType: !3881, size: 64, offset: 704)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!3828, !3846, !255}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3832, file: !3825, line: 135, baseType: !3885, size: 64, offset: 768)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!190, !3846, !255, !255, !7, !7, !3888}
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3825, line: 43, size: 640, elements: !3890)
!3890 = !{!3891, !3892, !3893}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3889, file: !3825, line: 44, baseType: !3828, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3889, file: !3825, line: 45, baseType: !7, size: 32, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3889, file: !3825, line: 46, baseType: !3894, size: 512, offset: 128)
!3894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 512, elements: !1490)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3832, file: !3825, line: 140, baseType: !3877, size: 64, offset: 832)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3832, file: !3825, line: 143, baseType: !3873, size: 64, offset: 896)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3832, file: !3825, line: 145, baseType: !3835, size: 64, offset: 960)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3832, file: !3825, line: 146, baseType: !3899, size: 64, offset: 1024)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!190, !3846, !3902}
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3825, line: 29, size: 128, elements: !3904)
!3904 = !{!3905, !3906, !3907}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3903, file: !3825, line: 30, baseType: !7, size: 32)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3903, file: !3825, line: 31, baseType: !7, size: 32, offset: 32)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3903, file: !3825, line: 32, baseType: !3846, size: 64, offset: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3832, file: !3825, line: 148, baseType: !3909, size: 64, offset: 1088)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!190, !3846, !3522}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3824, file: !3825, line: 20, baseType: !3522, size: 64, offset: 128)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3816, file: !3817, line: 57, baseType: !3914, size: 64, offset: 384)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3817, line: 31, size: 704, elements: !3916)
!3916 = !{!3917, !3918, !3919, !3920, !3921}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3915, file: !3817, line: 32, baseType: !242, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3915, file: !3817, line: 33, baseType: !190, size: 32, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3915, file: !3817, line: 34, baseType: !166, size: 64, offset: 128)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3915, file: !3817, line: 35, baseType: !3914, size: 64, offset: 192)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3915, file: !3817, line: 43, baseType: !522, size: 448, offset: 256)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3816, file: !3817, line: 58, baseType: !3914, size: 64, offset: 448)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3816, file: !3817, line: 59, baseType: !3815, size: 64, offset: 512)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3816, file: !3817, line: 60, baseType: !3815, size: 64, offset: 576)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3816, file: !3817, line: 61, baseType: !3815, size: 64, offset: 640)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3816, file: !3817, line: 63, baseType: !403, size: 512, offset: 704)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3816, file: !3817, line: 65, baseType: !170, size: 64, offset: 1216)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3816, file: !3817, line: 66, baseType: !166, size: 64, offset: 1280)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3809, file: !94, line: 108, baseType: !3930, size: 64, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!190, !3801, !3933, !93}
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3935)
!3935 = !{!3936, !3937, !3938}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3934, file: !94, line: 64, baseType: !3828, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3934, file: !94, line: 65, baseType: !190, size: 32, offset: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3934, file: !94, line: 66, baseType: !3939, size: 512, offset: 96)
!3939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 512, elements: !1888)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3809, file: !94, line: 110, baseType: !3941, size: 64, offset: 128)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!190, !3801, !7, !3944}
!3944 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !165, line: 164, baseType: !170)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3809, file: !94, line: 111, baseType: !3946, size: 64, offset: 192)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{null, !3801, !7}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3809, file: !94, line: 112, baseType: !3950, size: 64, offset: 256)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!190, !3801, !3815, !3953, !7, !243, !306}
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3809, file: !94, line: 117, baseType: !3956, size: 64, offset: 320)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!190, !3801, !7, !7, !166}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3809, file: !94, line: 119, baseType: !3960, size: 64, offset: 384)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{null, !3801, !7, !7}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3809, file: !94, line: 121, baseType: !3964, size: 64, offset: 448)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!190, !3801, !3967, !371}
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !115, line: 175, size: 448, elements: !3969)
!3969 = !{!3970, !3971, !3972, !3973, !4046, !4125, !4126, !4127}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3968, file: !115, line: 176, baseType: !200, size: 32)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3968, file: !115, line: 177, baseType: !7, size: 32, offset: 32)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !3968, file: !115, line: 178, baseType: !170, size: 64, offset: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !3968, file: !115, line: 179, baseType: !3974, size: 64, offset: 128)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !115, line: 145, size: 256, elements: !3976)
!3976 = !{!3977, !3978, !3979, !4043}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !3975, file: !115, line: 146, baseType: !7, size: 32)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !3975, file: !115, line: 150, baseType: !166, size: 64, offset: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !3975, file: !115, line: 151, baseType: !3980, size: 64, offset: 128)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !3982, line: 85, size: 768, elements: !3983)
!3982 = !DIFile(filename: "./include/linux/msi.h", directory: "/home/lizy2001/genbc/linux")
!3983 = !{!3984, !3985, !3986, !3987, !3988, !3994, !4000, !4004, !4005}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3981, file: !3982, line: 87, baseType: !388, size: 128)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3981, file: !3982, line: 88, baseType: !7, size: 32, offset: 128)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "nvec_used", scope: !3981, file: !3982, line: 89, baseType: !7, size: 32, offset: 160)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3981, file: !3982, line: 90, baseType: !3522, size: 64, offset: 192)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !3981, file: !3982, line: 91, baseType: !3989, size: 96, offset: 256)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !3982, line: 8, size: 96, elements: !3990)
!3990 = !{!3991, !3992, !3993}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "address_lo", scope: !3989, file: !3982, line: 9, baseType: !200, size: 32)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "address_hi", scope: !3989, file: !3982, line: 10, baseType: !200, size: 32, offset: 32)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3989, file: !3982, line: 11, baseType: !200, size: 32, offset: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !3981, file: !3982, line: 92, baseType: !3995, size: 64, offset: 384)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_desc", file: !108, line: 308, size: 128, elements: !3997)
!3997 = !{!3998, !3999}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3996, file: !108, line: 309, baseType: !1525, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !3996, file: !108, line: 310, baseType: !7, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg", scope: !3981, file: !3982, line: 97, baseType: !4001, size: 64, offset: 448)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{null, !3980, !166}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg_data", scope: !3981, file: !3982, line: 98, baseType: !166, size: 64, offset: 512)
!4005 = !DIDerivedType(tag: DW_TAG_member, scope: !3981, file: !3982, line: 100, baseType: !4006, size: 192, offset: 576)
!4006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3981, file: !3982, line: 100, size: 192, elements: !4007)
!4007 = !{!4008, !4028, !4035, !4039}
!4008 = !DIDerivedType(tag: DW_TAG_member, scope: !4006, file: !3982, line: 102, baseType: !4009, size: 192)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4006, file: !3982, line: 102, size: 192, elements: !4010)
!4010 = !{!4011, !4012, !4023}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "masked", scope: !4009, file: !3982, line: 103, baseType: !200, size: 32)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "msi_attrib", scope: !4009, file: !3982, line: 113, baseType: !4013, size: 64, offset: 32)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4009, file: !3982, line: 104, size: 64, elements: !4014)
!4014 = !{!4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "is_msix", scope: !4013, file: !3982, line: 105, baseType: !177, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "multiple", scope: !4013, file: !3982, line: 106, baseType: !177, size: 3, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "multi_cap", scope: !4013, file: !3982, line: 107, baseType: !177, size: 3, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "maskbit", scope: !4013, file: !3982, line: 108, baseType: !177, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "is_64", scope: !4013, file: !3982, line: 109, baseType: !177, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual", scope: !4013, file: !3982, line: 110, baseType: !177, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "entry_nr", scope: !4013, file: !3982, line: 111, baseType: !279, size: 16, offset: 16)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "default_irq", scope: !4013, file: !3982, line: 112, baseType: !7, size: 32, offset: 32)
!4023 = !DIDerivedType(tag: DW_TAG_member, scope: !4009, file: !3982, line: 114, baseType: !4024, size: 64, offset: 128)
!4024 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4009, file: !3982, line: 114, size: 64, elements: !4025)
!4025 = !{!4026, !4027}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "mask_pos", scope: !4024, file: !3982, line: 115, baseType: !177, size: 8)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "mask_base", scope: !4024, file: !3982, line: 116, baseType: !166, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "platform", scope: !4006, file: !3982, line: 127, baseType: !4029, size: 128)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_desc", file: !3982, line: 37, size: 128, elements: !4030)
!4030 = !{!4031, !4034}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "msi_priv_data", scope: !4029, file: !3982, line: 38, baseType: !4032, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_priv_data", file: !3982, line: 19, flags: DIFlagFwdDecl)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !4029, file: !3982, line: 39, baseType: !279, size: 16, offset: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "fsl_mc", scope: !4006, file: !3982, line: 128, baseType: !4036, size: 16)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsl_mc_msi_desc", file: !3982, line: 46, size: 16, elements: !4037)
!4037 = !{!4038}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !4036, file: !3982, line: 47, baseType: !279, size: 16)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "inta", scope: !4006, file: !3982, line: 129, baseType: !4040, size: 16)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ti_sci_inta_msi_desc", file: !3982, line: 54, size: 16, elements: !4041)
!4041 = !{!4042}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "dev_index", scope: !4040, file: !3982, line: 55, baseType: !279, size: 16)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !3975, file: !115, line: 152, baseType: !4044, size: 64, offset: 192)
!4044 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1524, line: 756, baseType: !4045)
!4045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1525, size: 64, elements: !1529)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !3968, file: !115, line: 180, baseType: !4047, size: 64, offset: 192)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !115, line: 503, size: 2304, elements: !4049)
!4049 = !{!4050, !4051, !4052, !4056, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4073, !4077, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4094, !4095, !4096, !4101, !4102, !4106, !4110, !4114, !4118, !4122, !4123, !4124}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !4048, file: !115, line: 504, baseType: !3522, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4048, file: !115, line: 505, baseType: !255, size: 64, offset: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !4048, file: !115, line: 506, baseType: !4053, size: 64, offset: 128)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!7, !3967}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !4048, file: !115, line: 507, baseType: !4057, size: 64, offset: 192)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{null, !3967}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !4048, file: !115, line: 508, baseType: !4057, size: 64, offset: 256)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !4048, file: !115, line: 509, baseType: !4057, size: 64, offset: 320)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !4048, file: !115, line: 511, baseType: !4057, size: 64, offset: 384)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !4048, file: !115, line: 512, baseType: !4057, size: 64, offset: 448)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !4048, file: !115, line: 513, baseType: !4057, size: 64, offset: 512)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !4048, file: !115, line: 514, baseType: !4057, size: 64, offset: 576)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !4048, file: !115, line: 515, baseType: !4057, size: 64, offset: 640)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !4048, file: !115, line: 517, baseType: !4068, size: 64, offset: 704)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!190, !3967, !4071, !371}
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1525)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !4048, file: !115, line: 518, baseType: !4074, size: 64, offset: 768)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!190, !3967}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !4048, file: !115, line: 519, baseType: !4078, size: 64, offset: 832)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!190, !3967, !7}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !4048, file: !115, line: 520, baseType: !4078, size: 64, offset: 896)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !4048, file: !115, line: 522, baseType: !4057, size: 64, offset: 960)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !4048, file: !115, line: 523, baseType: !4057, size: 64, offset: 1024)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !4048, file: !115, line: 525, baseType: !4057, size: 64, offset: 1088)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !4048, file: !115, line: 526, baseType: !4057, size: 64, offset: 1152)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !4048, file: !115, line: 528, baseType: !4057, size: 64, offset: 1216)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !4048, file: !115, line: 529, baseType: !4057, size: 64, offset: 1280)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !4048, file: !115, line: 530, baseType: !4057, size: 64, offset: 1344)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !4048, file: !115, line: 532, baseType: !4057, size: 64, offset: 1408)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !4048, file: !115, line: 534, baseType: !4091, size: 64, offset: 1472)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{null, !3967, !879}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !4048, file: !115, line: 535, baseType: !4074, size: 64, offset: 1536)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !4048, file: !115, line: 536, baseType: !4057, size: 64, offset: 1600)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !4048, file: !115, line: 538, baseType: !4097, size: 64, offset: 1664)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{null, !3967, !4100}
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !4048, file: !115, line: 539, baseType: !4097, size: 64, offset: 1728)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !4048, file: !115, line: 541, baseType: !4103, size: 64, offset: 1792)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!190, !3967, !107, !1057}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !4048, file: !115, line: 542, baseType: !4107, size: 64, offset: 1856)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!190, !3967, !107, !371}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !4048, file: !115, line: 544, baseType: !4111, size: 64, offset: 1920)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!190, !3967, !166}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !4048, file: !115, line: 546, baseType: !4115, size: 64, offset: 1984)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{null, !3967, !7}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !4048, file: !115, line: 547, baseType: !4119, size: 64, offset: 2048)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{null, !3967, !4071}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !4048, file: !115, line: 549, baseType: !4074, size: 64, offset: 2112)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !4048, file: !115, line: 550, baseType: !4057, size: 64, offset: 2176)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4048, file: !115, line: 552, baseType: !170, size: 64, offset: 2240)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3968, file: !115, line: 181, baseType: !3801, size: 64, offset: 256)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !3968, file: !115, line: 183, baseType: !3967, size: 64, offset: 320)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !3968, file: !115, line: 185, baseType: !166, size: 64, offset: 384)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3809, file: !94, line: 122, baseType: !4129, size: 64, offset: 512)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{null, !3801, !3967}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3809, file: !94, line: 123, baseType: !4133, size: 64, offset: 576)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!190, !3801, !3933, !243, !306}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3802, file: !94, line: 166, baseType: !166, size: 64, offset: 256)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3802, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3802, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3802, file: !94, line: 171, baseType: !3828, size: 64, offset: 384)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3802, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3802, file: !94, line: 173, baseType: !4142, size: 64, offset: 512)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !115, line: 1101, size: 192, elements: !4144)
!4144 = !{!4145, !4146, !4147, !4148, !4149, !4150}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !4143, file: !115, line: 1102, baseType: !7, size: 32)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !4143, file: !115, line: 1103, baseType: !7, size: 32, offset: 32)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !4143, file: !115, line: 1104, baseType: !7, size: 32, offset: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !4143, file: !115, line: 1105, baseType: !7, size: 32, offset: 96)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !4143, file: !115, line: 1106, baseType: !114, size: 32, offset: 128)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4143, file: !115, line: 1107, baseType: !4151, offset: 192)
!4151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4152, elements: !2482)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !115, line: 1051, size: 960, elements: !4154)
!4154 = !{!4155, !4156, !4157, !4161, !4165, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4153, file: !115, line: 1052, baseType: !948)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !4153, file: !115, line: 1053, baseType: !166, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !4153, file: !115, line: 1054, baseType: !4158, size: 64, offset: 64)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!200, !166}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !4153, file: !115, line: 1055, baseType: !4162, size: 64, offset: 128)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{null, !200, !166}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4153, file: !115, line: 1056, baseType: !4166, size: 64, offset: 192)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{null, !4152}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4153, file: !115, line: 1057, baseType: !4166, size: 64, offset: 256)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !4153, file: !115, line: 1058, baseType: !7, size: 32, offset: 320)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !4153, file: !115, line: 1059, baseType: !7, size: 32, offset: 352)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !4153, file: !115, line: 1060, baseType: !200, size: 32, offset: 384)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !4153, file: !115, line: 1061, baseType: !200, size: 32, offset: 416)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !4153, file: !115, line: 1062, baseType: !200, size: 32, offset: 448)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !4153, file: !115, line: 1063, baseType: !200, size: 32, offset: 480)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !4153, file: !115, line: 1064, baseType: !200, size: 32, offset: 512)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !4153, file: !115, line: 1065, baseType: !7, size: 32, offset: 544)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4153, file: !115, line: 1066, baseType: !166, size: 64, offset: 576)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !4153, file: !115, line: 1067, baseType: !170, size: 64, offset: 640)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4153, file: !115, line: 1068, baseType: !170, size: 64, offset: 704)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4153, file: !115, line: 1069, baseType: !3801, size: 64, offset: 768)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4153, file: !115, line: 1070, baseType: !388, size: 128, offset: 832)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !4153, file: !115, line: 1071, baseType: !4184, offset: 960)
!4184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4185, elements: !2482)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !115, line: 1009, size: 2944, elements: !4186)
!4186 = !{!4187, !4188, !4198, !4264, !4265, !4266}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !4185, file: !115, line: 1010, baseType: !4048, size: 2304)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4185, file: !115, line: 1011, baseType: !4189, size: 448, offset: 2304)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !115, line: 986, size: 448, elements: !4190)
!4190 = !{!4191, !4192, !4193, !4194, !4195, !4196, !4197}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4189, file: !115, line: 987, baseType: !170, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !4189, file: !115, line: 988, baseType: !170, size: 64, offset: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4189, file: !115, line: 989, baseType: !170, size: 64, offset: 128)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !4189, file: !115, line: 990, baseType: !170, size: 64, offset: 192)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !4189, file: !115, line: 991, baseType: !170, size: 64, offset: 256)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4189, file: !115, line: 992, baseType: !170, size: 64, offset: 320)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !4189, file: !115, line: 993, baseType: !170, size: 64, offset: 384)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4185, file: !115, line: 1012, baseType: !4199, size: 64, offset: 2752)
!4199 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !4200, line: 12, baseType: !4201)
!4200 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{null, !4204}
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !4206, line: 55, size: 2880, elements: !4207)
!4206 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/lizy2001/genbc/linux")
!4207 = !{!4208, !4209, !4210, !4211, !4212, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !4205, file: !4206, line: 56, baseType: !3975, size: 256)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !4205, file: !4206, line: 57, baseType: !3968, size: 448, offset: 256)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !4205, file: !4206, line: 58, baseType: !306, size: 64, offset: 704)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !4205, file: !4206, line: 59, baseType: !4199, size: 64, offset: 768)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4205, file: !4206, line: 60, baseType: !4213, size: 64, offset: 832)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !108, line: 110, size: 768, elements: !4215)
!4215 = !{!4216, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4214, file: !108, line: 111, baseType: !4217, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !108, line: 92, baseType: !4218)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!4221, !190, !166}
!4221 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !123, line: 17, baseType: !122)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !4214, file: !108, line: 112, baseType: !166, size: 64, offset: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !4214, file: !108, line: 113, baseType: !166, size: 64, offset: 128)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4214, file: !108, line: 114, baseType: !4213, size: 64, offset: 192)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !4214, file: !108, line: 115, baseType: !4217, size: 64, offset: 256)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !4214, file: !108, line: 116, baseType: !1377, size: 64, offset: 320)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4214, file: !108, line: 117, baseType: !4213, size: 64, offset: 384)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4214, file: !108, line: 118, baseType: !7, size: 32, offset: 448)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4214, file: !108, line: 119, baseType: !7, size: 32, offset: 480)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !4214, file: !108, line: 120, baseType: !170, size: 64, offset: 512)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !4214, file: !108, line: 121, baseType: !170, size: 64, offset: 576)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4214, file: !108, line: 122, baseType: !255, size: 64, offset: 640)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4214, file: !108, line: 123, baseType: !4234, size: 64, offset: 704)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !108, line: 123, flags: DIFlagFwdDecl)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !4205, file: !4206, line: 61, baseType: !7, size: 32, offset: 896)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !4205, file: !4206, line: 62, baseType: !7, size: 32, offset: 928)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4205, file: !4206, line: 63, baseType: !7, size: 32, offset: 960)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !4205, file: !4206, line: 64, baseType: !7, size: 32, offset: 992)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !4205, file: !4206, line: 65, baseType: !7, size: 32, offset: 1024)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4205, file: !4206, line: 66, baseType: !7, size: 32, offset: 1056)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !4205, file: !4206, line: 67, baseType: !170, size: 64, offset: 1088)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !4205, file: !4206, line: 68, baseType: !7, size: 32, offset: 1152)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !4205, file: !4206, line: 69, baseType: !915, size: 32, offset: 1184)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !4205, file: !4206, line: 70, baseType: !190, size: 32, offset: 1216)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4205, file: !4206, line: 71, baseType: !948, offset: 1248)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !4205, file: !4206, line: 72, baseType: !4248, size: 64, offset: 1280)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !4205, file: !4206, line: 73, baseType: !4071, size: 64, offset: 1344)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !4205, file: !4206, line: 81, baseType: !170, size: 64, offset: 1408)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !4205, file: !4206, line: 82, baseType: !915, size: 32, offset: 1472)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !4205, file: !4206, line: 83, baseType: !1637, size: 128, offset: 1536)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !4205, file: !4206, line: 85, baseType: !7, size: 32, offset: 1664)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !4205, file: !4206, line: 86, baseType: !7, size: 32, offset: 1696)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !4205, file: !4206, line: 87, baseType: !7, size: 32, offset: 1728)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !4205, file: !4206, line: 88, baseType: !7, size: 32, offset: 1760)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4205, file: !4206, line: 91, baseType: !4234, size: 64, offset: 1792)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4205, file: !4206, line: 98, baseType: !544, size: 128, align: 64, offset: 1856)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4205, file: !4206, line: 99, baseType: !403, size: 512, offset: 1984)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !4205, file: !4206, line: 101, baseType: !1337, size: 192, offset: 2496)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !4205, file: !4206, line: 102, baseType: !190, size: 32, offset: 2688)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4205, file: !4206, line: 103, baseType: !244, size: 64, offset: 2752)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4205, file: !4206, line: 104, baseType: !255, size: 64, offset: 2816)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4185, file: !115, line: 1013, baseType: !200, size: 32, offset: 2816)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !4185, file: !115, line: 1014, baseType: !200, size: 32, offset: 2848)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !4185, file: !115, line: 1015, baseType: !1573, size: 64, offset: 2880)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3802, file: !94, line: 175, baseType: !3801, size: 64, offset: 576)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3802, file: !94, line: 182, baseType: !3944, size: 64, offset: 640)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3802, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3802, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3802, file: !94, line: 185, baseType: !907, size: 128, offset: 768)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3802, file: !94, line: 186, baseType: !1337, size: 192, offset: 896)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3802, file: !94, line: 187, baseType: !4274, offset: 1088)
!4274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2482)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !400, file: !73, line: 499, baseType: !388, size: 128, offset: 4224)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !400, file: !73, line: 502, baseType: !4277, size: 64, offset: 4352)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4279)
!4279 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !400, file: !73, line: 504, baseType: !4281, size: 64, offset: 4416)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !400, file: !73, line: 505, baseType: !596, size: 64, offset: 4480)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !400, file: !73, line: 510, baseType: !596, size: 64, offset: 4544)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !400, file: !73, line: 511, baseType: !4285, size: 64, offset: 4608)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4287)
!4287 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !400, file: !73, line: 513, baseType: !4289, size: 64, offset: 4672)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !4291)
!4291 = !{!4292, !4293}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4290, file: !73, line: 293, baseType: !7, size: 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4290, file: !73, line: 294, baseType: !170, size: 64, offset: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !400, file: !73, line: 515, baseType: !388, size: 128, offset: 4736)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !400, file: !73, line: 526, baseType: !4296, offset: 4864)
!4296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4297, line: 5, elements: !430)
!4297 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !400, file: !73, line: 528, baseType: !3815, size: 64, offset: 4864)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !400, file: !73, line: 529, baseType: !3828, size: 64, offset: 4928)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !400, file: !73, line: 534, baseType: !682, size: 32, offset: 4992)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !400, file: !73, line: 535, baseType: !200, size: 32, offset: 5024)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !400, file: !73, line: 537, baseType: !416, offset: 5056)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !400, file: !73, line: 538, baseType: !388, size: 128, offset: 5056)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !400, file: !73, line: 540, baseType: !4305, size: 64, offset: 5184)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4307, line: 54, size: 960, elements: !4308)
!4307 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4308 = !{!4309, !4310, !4311, !4312, !4313, !4314, !4315, !4319, !4323, !4324, !4325, !4326, !4330, !4334, !4335}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4306, file: !4307, line: 55, baseType: !255, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4306, file: !4307, line: 56, baseType: !244, size: 64, offset: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4306, file: !4307, line: 58, baseType: !507, size: 64, offset: 128)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4306, file: !4307, line: 59, baseType: !507, size: 64, offset: 192)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4306, file: !4307, line: 60, baseType: !409, size: 64, offset: 256)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4306, file: !4307, line: 62, baseType: !3535, size: 64, offset: 320)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4306, file: !4307, line: 63, baseType: !4316, size: 64, offset: 384)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!242, !3522, !3542}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4306, file: !4307, line: 65, baseType: !4320, size: 64, offset: 448)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DISubroutineType(types: !4322)
!4322 = !{null, !4305}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4306, file: !4307, line: 66, baseType: !3544, size: 64, offset: 512)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4306, file: !4307, line: 68, baseType: !3553, size: 64, offset: 576)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4306, file: !4307, line: 70, baseType: !3338, size: 64, offset: 640)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4306, file: !4307, line: 71, baseType: !4327, size: 64, offset: 704)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!2280, !3522}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4306, file: !4307, line: 73, baseType: !4331, size: 64, offset: 768)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{null, !3522, !3370, !3371}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4306, file: !4307, line: 75, baseType: !3548, size: 64, offset: 832)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4306, file: !4307, line: 77, baseType: !3665, size: 64, offset: 896)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !400, file: !73, line: 541, baseType: !507, size: 64, offset: 5248)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !400, file: !73, line: 543, baseType: !3544, size: 64, offset: 5312)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !400, file: !73, line: 544, baseType: !4339, size: 64, offset: 5376)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !400, file: !73, line: 545, baseType: !4342, size: 64, offset: 5440)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !400, file: !73, line: 547, baseType: !371, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !400, file: !73, line: 548, baseType: !371, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !400, file: !73, line: 549, baseType: !371, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !400, file: !73, line: 550, baseType: !371, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !378, file: !358, line: 78, baseType: !128, size: 32, offset: 6080)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "down", scope: !378, file: !358, line: 79, baseType: !1658, size: 192, offset: 6144)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !378, file: !358, line: 80, baseType: !2110, size: 256, offset: 6336)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_sem", scope: !378, file: !358, line: 81, baseType: !4352, size: 192, offset: 6592)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "semaphore", file: !4353, line: 15, size: 192, elements: !4354)
!4353 = !DIFile(filename: "./include/linux/semaphore.h", directory: "/home/lizy2001/genbc/linux")
!4354 = !{!4355, !4356, !4357}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4352, file: !4353, line: 16, baseType: !948)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4352, file: !4353, line: 17, baseType: !7, size: 32)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !4352, file: !4353, line: 18, baseType: !388, size: 128, offset: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "otherend_changed", scope: !357, file: !358, line: 102, baseType: !4359, size: 64, offset: 256)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{null, !377, !128}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !357, file: !358, line: 104, baseType: !4363, size: 64, offset: 320)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!190, !377}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !357, file: !358, line: 105, baseType: !4363, size: 64, offset: 384)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !357, file: !358, line: 106, baseType: !4363, size: 64, offset: 448)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !357, file: !358, line: 107, baseType: !4369, size: 64, offset: 512)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{!190, !377, !452}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !357, file: !358, line: 108, baseType: !3594, size: 1152, offset: 576)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "read_otherend_details", scope: !357, file: !358, line: 109, baseType: !4363, size: 64, offset: 1728)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "is_ready", scope: !357, file: !358, line: 110, baseType: !4363, size: 64, offset: 1792)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_memory", scope: !357, file: !358, line: 111, baseType: !4376, size: 64, offset: 1856)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{null, !377}
!4379 = !DIGlobalVariableExpression(var: !4380, expr: !DIExpression())
!4380 = distinct !DIGlobalVariable(name: "xenkbd_ids", scope: !2, file: !3, line: 534, type: !4381, isLocal: true, isDefinition: true)
!4381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 512, elements: !353)
!4382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 176, elements: !4383)
!4383 = !{!4384}
!4384 = !DISubrange(count: 22)
!4385 = !{i32 7, !"Dwarf Version", i32 4}
!4386 = !{i32 2, !"Debug Info Version", i32 3}
!4387 = !{i32 1, !"wchar_size", i32 2}
!4388 = !{i32 1, !"Code Model", i32 2}
!4389 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4390 = distinct !DISubprogram(name: "xenkbd_cleanup", scope: !3, file: !3, line: 562, type: !326, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!4391 = !DILocation(line: 564, column: 2, scope: !4390)
!4392 = !DILocation(line: 565, column: 1, scope: !4390)
!4393 = distinct !DISubprogram(name: "xenkbd_init", scope: !3, file: !3, line: 547, type: !4394, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!190}
!4396 = !DILocation(line: 549, column: 7, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 549, column: 6)
!4398 = !DILocation(line: 549, column: 6, scope: !4393)
!4399 = !DILocation(line: 550, column: 3, scope: !4397)
!4400 = !DILocation(line: 553, column: 6, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 553, column: 6)
!4402 = !DILocation(line: 553, column: 6, scope: !4393)
!4403 = !DILocation(line: 554, column: 3, scope: !4401)
!4404 = !DILocation(line: 556, column: 7, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4393, file: !3, line: 556, column: 6)
!4406 = !DILocation(line: 556, column: 6, scope: !4393)
!4407 = !DILocation(line: 557, column: 3, scope: !4405)
!4408 = !DILocation(line: 559, column: 9, scope: !4393)
!4409 = !DILocation(line: 559, column: 2, scope: !4393)
!4410 = !DILocation(line: 560, column: 1, scope: !4393)
!4411 = distinct !DISubprogram(name: "xenkbd_probe", scope: !3, file: !3, line: 200, type: !375, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!4412 = !DILocalVariable(name: "dev", arg: 1, scope: !4411, file: !3, line: 200, type: !377)
!4413 = !DILocation(line: 200, column: 47, scope: !4411)
!4414 = !DILocalVariable(name: "id", arg: 2, scope: !4411, file: !3, line: 201, type: !362)
!4415 = !DILocation(line: 201, column: 38, scope: !4411)
!4416 = !DILocalVariable(name: "ret", scope: !4411, file: !3, line: 203, type: !190)
!4417 = !DILocation(line: 203, column: 6, scope: !4411)
!4418 = !DILocalVariable(name: "i", scope: !4411, file: !3, line: 203, type: !190)
!4419 = !DILocation(line: 203, column: 11, scope: !4411)
!4420 = !DILocalVariable(name: "with_mtouch", scope: !4411, file: !3, line: 204, type: !371)
!4421 = !DILocation(line: 204, column: 7, scope: !4411)
!4422 = !DILocalVariable(name: "with_kbd", scope: !4411, file: !3, line: 204, type: !371)
!4423 = !DILocation(line: 204, column: 20, scope: !4411)
!4424 = !DILocalVariable(name: "with_ptr", scope: !4411, file: !3, line: 204, type: !371)
!4425 = !DILocation(line: 204, column: 30, scope: !4411)
!4426 = !DILocalVariable(name: "info", scope: !4411, file: !3, line: 205, type: !4427)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenkbd_info", file: !3, line: 35, size: 704, elements: !4429)
!4429 = !{!4430, !4723, !4724, !4725, !4733, !4734, !4735, !4736, !4737}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "kbd", scope: !4428, file: !3, line: 36, baseType: !4431, size: 64)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !4433, line: 131, size: 10432, elements: !4434)
!4433 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4434 = !{!4435, !4436, !4437, !4438, !4446, !4447, !4448, !4450, !4451, !4452, !4453, !4454, !4455, !4457, !4458, !4459, !4460, !4461, !4462, !4476, !4481, !4576, !4579, !4580, !4581, !4582, !4603, !4613, !4614, !4615, !4616, !4617, !4621, !4625, !4629, !4633, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4720, !4721}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4432, file: !4433, line: 132, baseType: !255, size: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4432, file: !4433, line: 133, baseType: !255, size: 64, offset: 64)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !4432, file: !4433, line: 134, baseType: !255, size: 64, offset: 128)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4432, file: !4433, line: 135, baseType: !4439, size: 64, offset: 192)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !4440, line: 59, size: 64, elements: !4441)
!4440 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!4441 = !{!4442, !4443, !4444, !4445}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4439, file: !4440, line: 60, baseType: !280, size: 16)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4439, file: !4440, line: 61, baseType: !280, size: 16, offset: 16)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4439, file: !4440, line: 62, baseType: !280, size: 16, offset: 32)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4439, file: !4440, line: 63, baseType: !280, size: 16, offset: 48)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4432, file: !4433, line: 137, baseType: !1528, size: 64, offset: 256)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4432, file: !4433, line: 139, baseType: !1528, size: 64, offset: 320)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4432, file: !4433, line: 140, baseType: !4449, size: 768, offset: 384)
!4449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 768, elements: !2387)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4432, file: !4433, line: 141, baseType: !1528, size: 64, offset: 1152)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4432, file: !4433, line: 142, baseType: !1528, size: 64, offset: 1216)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4432, file: !4433, line: 143, baseType: !1528, size: 64, offset: 1280)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4432, file: !4433, line: 144, baseType: !1528, size: 64, offset: 1344)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4432, file: !4433, line: 145, baseType: !1528, size: 64, offset: 1408)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4432, file: !4433, line: 146, baseType: !4456, size: 128, offset: 1472)
!4456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 128, elements: !353)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4432, file: !4433, line: 147, baseType: !1528, size: 64, offset: 1600)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !4432, file: !4433, line: 149, baseType: !7, size: 32, offset: 1664)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !4432, file: !4433, line: 151, baseType: !7, size: 32, offset: 1696)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !4432, file: !4433, line: 152, baseType: !7, size: 32, offset: 1728)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4432, file: !4433, line: 153, baseType: !166, size: 64, offset: 1792)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !4432, file: !4433, line: 155, baseType: !4463, size: 64, offset: 1856)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!190, !4431, !4466, !306}
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4468)
!4468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !4440, line: 114, size: 320, elements: !4469)
!4469 = !{!4470, !4471, !4472, !4473, !4474}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4468, file: !4440, line: 116, baseType: !179, size: 8)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4468, file: !4440, line: 117, baseType: !179, size: 8, offset: 8)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4468, file: !4440, line: 118, baseType: !280, size: 16, offset: 16)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !4468, file: !4440, line: 119, baseType: !201, size: 32, offset: 32)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !4468, file: !4440, line: 120, baseType: !4475, size: 256, offset: 64)
!4475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 256, elements: !368)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !4432, file: !4433, line: 158, baseType: !4477, size: 64, offset: 1920)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{!190, !4431, !4480}
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !4432, file: !4433, line: 161, baseType: !4482, size: 64, offset: 1984)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !4433, line: 534, size: 896, elements: !4484)
!4484 = !{!4485, !4552, !4556, !4560, !4564, !4565, !4569, !4570, !4571, !4572, !4573, !4574}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !4483, file: !4433, line: 535, baseType: !4486, size: 64)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DISubroutineType(types: !4488)
!4488 = !{!190, !4431, !4489, !4489}
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !4440, line: 450, size: 384, elements: !4491)
!4491 = !{!4492, !4493, !4494, !4495, !4500, !4505}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4490, file: !4440, line: 451, baseType: !280, size: 16)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4490, file: !4440, line: 452, baseType: !235, size: 16, offset: 16)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !4490, file: !4440, line: 453, baseType: !280, size: 16, offset: 32)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !4490, file: !4440, line: 454, baseType: !4496, size: 32, offset: 48)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !4440, line: 316, size: 32, elements: !4497)
!4497 = !{!4498, !4499}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !4496, file: !4440, line: 317, baseType: !280, size: 16)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4496, file: !4440, line: 318, baseType: !280, size: 16, offset: 16)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !4490, file: !4440, line: 455, baseType: !4501, size: 32, offset: 80)
!4501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !4440, line: 306, size: 32, elements: !4502)
!4502 = !{!4503, !4504}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4501, file: !4440, line: 307, baseType: !280, size: 16)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4501, file: !4440, line: 308, baseType: !280, size: 16, offset: 16)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !4490, file: !4440, line: 463, baseType: !4506, size: 256, offset: 128)
!4506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4490, file: !4440, line: 457, size: 256, elements: !4507)
!4507 = !{!4508, !4519, !4525, !4537, !4547}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !4506, file: !4440, line: 458, baseType: !4509, size: 80)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !4440, line: 345, size: 80, elements: !4510)
!4510 = !{!4511, !4512}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4509, file: !4440, line: 346, baseType: !235, size: 16)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4509, file: !4440, line: 347, baseType: !4513, size: 64, offset: 16)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !4440, line: 333, size: 64, elements: !4514)
!4514 = !{!4515, !4516, !4517, !4518}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !4513, file: !4440, line: 334, baseType: !280, size: 16)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !4513, file: !4440, line: 335, baseType: !280, size: 16, offset: 16)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !4513, file: !4440, line: 336, baseType: !280, size: 16, offset: 32)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !4513, file: !4440, line: 337, baseType: !280, size: 16, offset: 48)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !4506, file: !4440, line: 459, baseType: !4520, size: 96)
!4520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !4440, line: 356, size: 96, elements: !4521)
!4521 = !{!4522, !4523, !4524}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !4520, file: !4440, line: 357, baseType: !235, size: 16)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !4520, file: !4440, line: 358, baseType: !235, size: 16, offset: 16)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4520, file: !4440, line: 359, baseType: !4513, size: 64, offset: 32)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !4506, file: !4440, line: 460, baseType: !4526, size: 256)
!4526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !4440, line: 401, size: 256, elements: !4527)
!4527 = !{!4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !4526, file: !4440, line: 402, baseType: !280, size: 16)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4526, file: !4440, line: 403, baseType: !280, size: 16, offset: 16)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !4526, file: !4440, line: 404, baseType: !235, size: 16, offset: 32)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4526, file: !4440, line: 405, baseType: !235, size: 16, offset: 48)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !4526, file: !4440, line: 406, baseType: !280, size: 16, offset: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !4526, file: !4440, line: 408, baseType: !4513, size: 64, offset: 80)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !4526, file: !4440, line: 410, baseType: !201, size: 32, offset: 160)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !4526, file: !4440, line: 411, baseType: !4536, size: 64, offset: 192)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4506, file: !4440, line: 461, baseType: !4538, size: 192)
!4538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4539, size: 192, elements: !353)
!4539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !4440, line: 372, size: 96, elements: !4540)
!4540 = !{!4541, !4542, !4543, !4544, !4545, !4546}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !4539, file: !4440, line: 373, baseType: !280, size: 16)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !4539, file: !4440, line: 374, baseType: !280, size: 16, offset: 16)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !4539, file: !4440, line: 376, baseType: !235, size: 16, offset: 32)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !4539, file: !4440, line: 377, baseType: !235, size: 16, offset: 48)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !4539, file: !4440, line: 379, baseType: !280, size: 16, offset: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !4539, file: !4440, line: 380, baseType: !235, size: 16, offset: 80)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !4506, file: !4440, line: 462, baseType: !4548, size: 32)
!4548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !4440, line: 422, size: 32, elements: !4549)
!4549 = !{!4550, !4551}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !4548, file: !4440, line: 423, baseType: !280, size: 16)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !4548, file: !4440, line: 424, baseType: !280, size: 16, offset: 16)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !4483, file: !4433, line: 537, baseType: !4553, size: 64, offset: 64)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!190, !4431, !190}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !4483, file: !4433, line: 539, baseType: !4557, size: 64, offset: 128)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!190, !4431, !190, !190}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !4483, file: !4433, line: 540, baseType: !4561, size: 64, offset: 192)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{null, !4431, !279}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !4483, file: !4433, line: 541, baseType: !4561, size: 64, offset: 256)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4483, file: !4433, line: 543, baseType: !4566, size: 64, offset: 320)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{null, !4482}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4483, file: !4433, line: 545, baseType: !166, size: 64, offset: 384)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4483, file: !4433, line: 547, baseType: !4456, size: 128, offset: 448)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4483, file: !4433, line: 549, baseType: !1337, size: 192, offset: 576)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !4483, file: !4433, line: 551, baseType: !190, size: 32, offset: 768)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !4483, file: !4433, line: 552, baseType: !4489, size: 64, offset: 832)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !4483, file: !4433, line: 553, baseType: !4575, offset: 896)
!4575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, elements: !2482)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !4432, file: !4433, line: 163, baseType: !4577, size: 64, offset: 2048)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !4433, line: 24, flags: DIFlagFwdDecl)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !4432, file: !4433, line: 165, baseType: !7, size: 32, offset: 2112)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4432, file: !4433, line: 166, baseType: !3713, size: 320, offset: 2176)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !4432, file: !4433, line: 168, baseType: !352, size: 64, offset: 2496)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !4432, file: !4433, line: 170, baseType: !4583, size: 64, offset: 2560)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !4585, line: 43, size: 256, elements: !4586)
!4585 = !DIFile(filename: "./include/linux/input/mt.h", directory: "/home/lizy2001/genbc/linux")
!4586 = !{!4587, !4588, !4589, !4590, !4591, !4592, !4593}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "trkid", scope: !4584, file: !4585, line: 44, baseType: !190, size: 32)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "num_slots", scope: !4584, file: !4585, line: 45, baseType: !190, size: 32, offset: 32)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4584, file: !4585, line: 46, baseType: !190, size: 32, offset: 64)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4584, file: !4585, line: 47, baseType: !7, size: 32, offset: 96)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !4584, file: !4585, line: 48, baseType: !7, size: 32, offset: 128)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !4584, file: !4585, line: 49, baseType: !873, size: 64, offset: 192)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4584, file: !4585, line: 50, baseType: !4594, offset: 256)
!4594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4595, elements: !2482)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt_slot", file: !4585, line: 27, size: 512, elements: !4596)
!4596 = !{!4597, !4601, !4602}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "abs", scope: !4595, file: !4585, line: 28, baseType: !4598, size: 448)
!4598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 448, elements: !4599)
!4599 = !{!4600}
!4600 = !DISubrange(count: 14)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !4595, file: !4585, line: 29, baseType: !7, size: 32, offset: 448)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4595, file: !4585, line: 30, baseType: !7, size: 32, offset: 480)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !4432, file: !4433, line: 172, baseType: !4604, size: 64, offset: 2624)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !4440, line: 90, size: 192, elements: !4606)
!4606 = !{!4607, !4608, !4609, !4610, !4611, !4612}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4605, file: !4440, line: 91, baseType: !189, size: 32)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4605, file: !4440, line: 92, baseType: !189, size: 32, offset: 32)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4605, file: !4440, line: 93, baseType: !189, size: 32, offset: 64)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4605, file: !4440, line: 94, baseType: !189, size: 32, offset: 96)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4605, file: !4440, line: 95, baseType: !189, size: 32, offset: 128)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4605, file: !4440, line: 96, baseType: !189, size: 32, offset: 160)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4432, file: !4433, line: 174, baseType: !4449, size: 768, offset: 2688)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !4432, file: !4433, line: 175, baseType: !1528, size: 64, offset: 3456)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !4432, file: !4433, line: 176, baseType: !1528, size: 64, offset: 3520)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !4432, file: !4433, line: 177, baseType: !1528, size: 64, offset: 3584)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4432, file: !4433, line: 179, baseType: !4618, size: 64, offset: 3648)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!190, !4431}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4432, file: !4433, line: 180, baseType: !4622, size: 64, offset: 3712)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{null, !4431}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4432, file: !4433, line: 181, baseType: !4626, size: 64, offset: 3776)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{!190, !4431, !531}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4432, file: !4433, line: 182, baseType: !4630, size: 64, offset: 3840)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!190, !4431, !7, !7, !190}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !4432, file: !4433, line: 184, baseType: !4634, size: 64, offset: 3904)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !4433, line: 337, size: 576, elements: !4636)
!4636 = !{!4637, !4638, !4639, !4640, !4641, !4707, !4708}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4635, file: !4433, line: 339, baseType: !166, size: 64)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4635, file: !4433, line: 341, baseType: !190, size: 32, offset: 64)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4635, file: !4433, line: 342, baseType: !255, size: 64, offset: 128)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4635, file: !4433, line: 344, baseType: !4431, size: 64, offset: 192)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4635, file: !4433, line: 345, baseType: !4642, size: 64, offset: 256)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !4433, line: 302, size: 960, elements: !4644)
!4644 = !{!4645, !4646, !4650, !4661, !4665, !4669, !4696, !4700, !4701, !4702, !4703, !4704, !4705, !4706}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4643, file: !4433, line: 304, baseType: !166, size: 64)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4643, file: !4433, line: 306, baseType: !4647, size: 64, offset: 64)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{null, !4634, !7, !7, !190}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4643, file: !4433, line: 307, baseType: !4651, size: 64, offset: 128)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{null, !4634, !4654, !7}
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4656)
!4656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !4433, line: 32, size: 64, elements: !4657)
!4657 = !{!4658, !4659, !4660}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4656, file: !4433, line: 33, baseType: !280, size: 16)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4656, file: !4433, line: 34, baseType: !280, size: 16, offset: 16)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4656, file: !4433, line: 35, baseType: !189, size: 32, offset: 32)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4643, file: !4433, line: 309, baseType: !4662, size: 64, offset: 192)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!371, !4634, !7, !7, !190}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4643, file: !4433, line: 310, baseType: !4666, size: 64, offset: 256)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!371, !4642, !4431}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4643, file: !4433, line: 311, baseType: !4670, size: 64, offset: 320)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!190, !4642, !4431, !4673}
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4675)
!4675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3606, line: 342, size: 1600, elements: !4676)
!4676 = !{!4677, !4678, !4679, !4680, !4681, !4682, !4684, !4686, !4687, !4688, !4689, !4690, !4691, !4693, !4694, !4695}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4675, file: !3606, line: 344, baseType: !3625, size: 64)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4675, file: !3606, line: 346, baseType: !280, size: 16, offset: 64)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4675, file: !3606, line: 347, baseType: !280, size: 16, offset: 80)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4675, file: !3606, line: 348, baseType: !280, size: 16, offset: 96)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4675, file: !3606, line: 349, baseType: !280, size: 16, offset: 112)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4675, file: !3606, line: 351, baseType: !4683, size: 64, offset: 128)
!4683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3625, size: 64, elements: !1529)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4675, file: !3606, line: 352, baseType: !4685, size: 768, offset: 192)
!4685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3625, size: 768, elements: !2387)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4675, file: !3606, line: 353, baseType: !4683, size: 64, offset: 960)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4675, file: !3606, line: 354, baseType: !4683, size: 64, offset: 1024)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4675, file: !3606, line: 355, baseType: !4683, size: 64, offset: 1088)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4675, file: !3606, line: 356, baseType: !4683, size: 64, offset: 1152)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4675, file: !3606, line: 357, baseType: !4683, size: 64, offset: 1216)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4675, file: !3606, line: 358, baseType: !4692, size: 128, offset: 1280)
!4692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3625, size: 128, elements: !353)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4675, file: !3606, line: 359, baseType: !4683, size: 64, offset: 1408)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4675, file: !3606, line: 360, baseType: !4683, size: 64, offset: 1472)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4675, file: !3606, line: 362, baseType: !3625, size: 64, offset: 1536)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4643, file: !4433, line: 312, baseType: !4697, size: 64, offset: 384)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{null, !4634}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4643, file: !4433, line: 313, baseType: !4697, size: 64, offset: 448)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4643, file: !4433, line: 315, baseType: !371, size: 8, offset: 512)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4643, file: !4433, line: 316, baseType: !190, size: 32, offset: 544)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4643, file: !4433, line: 317, baseType: !255, size: 64, offset: 576)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4643, file: !4433, line: 319, baseType: !4673, size: 64, offset: 640)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4643, file: !4433, line: 321, baseType: !388, size: 128, offset: 704)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4643, file: !4433, line: 322, baseType: !388, size: 128, offset: 832)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4635, file: !4433, line: 347, baseType: !388, size: 128, offset: 320)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4635, file: !4433, line: 348, baseType: !388, size: 128, offset: 448)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4432, file: !4433, line: 186, baseType: !416, offset: 3968)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4432, file: !4433, line: 187, baseType: !1337, size: 192, offset: 3968)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4432, file: !4433, line: 189, baseType: !7, size: 32, offset: 4160)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !4432, file: !4433, line: 190, baseType: !371, size: 8, offset: 4192)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4432, file: !4433, line: 192, baseType: !400, size: 5568, offset: 4224)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4432, file: !4433, line: 194, baseType: !388, size: 128, offset: 9792)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4432, file: !4433, line: 195, baseType: !388, size: 128, offset: 9920)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !4432, file: !4433, line: 197, baseType: !7, size: 32, offset: 10048)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !4432, file: !4433, line: 198, baseType: !7, size: 32, offset: 10080)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !4432, file: !4433, line: 199, baseType: !4719, size: 64, offset: 10112)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !4432, file: !4433, line: 201, baseType: !371, size: 8, offset: 10176)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4432, file: !4433, line: 203, baseType: !4722, size: 192, offset: 10240)
!4722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1460, size: 192, elements: !457)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4428, file: !3, line: 37, baseType: !4431, size: 64, offset: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "mtouch", scope: !4428, file: !3, line: 38, baseType: !4431, size: 64, offset: 128)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4428, file: !3, line: 39, baseType: !4726, size: 64, offset: 192)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenkbd_page", file: !173, line: 555, size: 128, elements: !4728)
!4728 = !{!4729, !4730, !4731, !4732}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "in_cons", scope: !4727, file: !173, line: 556, baseType: !199, size: 32)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "in_prod", scope: !4727, file: !173, line: 556, baseType: !199, size: 32, offset: 32)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "out_cons", scope: !4727, file: !173, line: 557, baseType: !199, size: 32, offset: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "out_prod", scope: !4727, file: !173, line: 557, baseType: !199, size: 32, offset: 96)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "gref", scope: !4428, file: !3, line: 40, baseType: !190, size: 32, offset: 256)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4428, file: !3, line: 41, baseType: !190, size: 32, offset: 288)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "xbdev", scope: !4428, file: !3, line: 42, baseType: !377, size: 64, offset: 320)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !4428, file: !3, line: 43, baseType: !367, size: 256, offset: 384)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "mtouch_cur_contact_id", scope: !4428, file: !3, line: 45, baseType: !190, size: 32, offset: 640)
!4738 = !DILocation(line: 205, column: 22, scope: !4411)
!4739 = !DILocalVariable(name: "kbd", scope: !4411, file: !3, line: 206, type: !4431)
!4740 = !DILocation(line: 206, column: 20, scope: !4411)
!4741 = !DILocalVariable(name: "ptr", scope: !4411, file: !3, line: 206, type: !4431)
!4742 = !DILocation(line: 206, column: 26, scope: !4411)
!4743 = !DILocalVariable(name: "mtouch", scope: !4411, file: !3, line: 206, type: !4431)
!4744 = !DILocation(line: 206, column: 32, scope: !4411)
!4745 = !DILocation(line: 208, column: 9, scope: !4411)
!4746 = !DILocation(line: 208, column: 7, scope: !4411)
!4747 = !DILocation(line: 209, column: 7, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 209, column: 6)
!4749 = !DILocation(line: 209, column: 6, scope: !4411)
!4750 = !DILocation(line: 210, column: 20, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 209, column: 13)
!4752 = !DILocation(line: 210, column: 3, scope: !4751)
!4753 = !DILocation(line: 211, column: 3, scope: !4751)
!4754 = !DILocation(line: 213, column: 19, scope: !4411)
!4755 = !DILocation(line: 213, column: 24, scope: !4411)
!4756 = !DILocation(line: 213, column: 29, scope: !4411)
!4757 = !DILocation(line: 213, column: 2, scope: !4411)
!4758 = !DILocation(line: 214, column: 16, scope: !4411)
!4759 = !DILocation(line: 214, column: 2, scope: !4411)
!4760 = !DILocation(line: 214, column: 8, scope: !4411)
!4761 = !DILocation(line: 214, column: 14, scope: !4411)
!4762 = !DILocation(line: 215, column: 2, scope: !4411)
!4763 = !DILocation(line: 215, column: 8, scope: !4411)
!4764 = !DILocation(line: 215, column: 12, scope: !4411)
!4765 = !DILocation(line: 216, column: 2, scope: !4411)
!4766 = !DILocation(line: 216, column: 8, scope: !4411)
!4767 = !DILocation(line: 216, column: 13, scope: !4411)
!4768 = !DILocation(line: 217, column: 11, scope: !4411)
!4769 = !DILocation(line: 217, column: 17, scope: !4411)
!4770 = !DILocation(line: 217, column: 56, scope: !4411)
!4771 = !DILocation(line: 217, column: 61, scope: !4411)
!4772 = !DILocation(line: 217, column: 2, scope: !4411)
!4773 = !DILocation(line: 219, column: 23, scope: !4411)
!4774 = !DILocation(line: 219, column: 15, scope: !4411)
!4775 = !DILocation(line: 219, column: 2, scope: !4411)
!4776 = !DILocation(line: 219, column: 8, scope: !4411)
!4777 = !DILocation(line: 219, column: 13, scope: !4411)
!4778 = !DILocation(line: 220, column: 7, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 220, column: 6)
!4780 = !DILocation(line: 220, column: 13, scope: !4779)
!4781 = !DILocation(line: 220, column: 6, scope: !4411)
!4782 = !DILocation(line: 221, column: 3, scope: !4779)
!4783 = !DILocation(line: 227, column: 35, scope: !4411)
!4784 = !DILocation(line: 227, column: 40, scope: !4411)
!4785 = !DILocation(line: 227, column: 14, scope: !4411)
!4786 = !DILocation(line: 227, column: 13, scope: !4411)
!4787 = !DILocation(line: 227, column: 11, scope: !4411)
!4788 = !DILocation(line: 230, column: 35, scope: !4411)
!4789 = !DILocation(line: 230, column: 40, scope: !4411)
!4790 = !DILocation(line: 230, column: 14, scope: !4411)
!4791 = !DILocation(line: 230, column: 13, scope: !4411)
!4792 = !DILocation(line: 230, column: 11, scope: !4411)
!4793 = !DILocation(line: 234, column: 37, scope: !4411)
!4794 = !DILocation(line: 234, column: 42, scope: !4411)
!4795 = !DILocation(line: 234, column: 16, scope: !4411)
!4796 = !DILocation(line: 234, column: 14, scope: !4411)
!4797 = !DILocation(line: 236, column: 6, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 236, column: 6)
!4799 = !DILocation(line: 236, column: 6, scope: !4411)
!4800 = !DILocation(line: 237, column: 22, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 236, column: 19)
!4802 = !DILocation(line: 237, column: 31, scope: !4801)
!4803 = !DILocation(line: 237, column: 36, scope: !4801)
!4804 = !DILocation(line: 237, column: 9, scope: !4801)
!4805 = !DILocation(line: 237, column: 7, scope: !4801)
!4806 = !DILocation(line: 239, column: 7, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 239, column: 7)
!4808 = !DILocation(line: 239, column: 7, scope: !4801)
!4809 = !DILocation(line: 240, column: 4, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4807, file: !3, line: 239, column: 12)
!4811 = !DILocation(line: 241, column: 16, scope: !4810)
!4812 = !DILocation(line: 242, column: 3, scope: !4810)
!4813 = !DILocation(line: 243, column: 2, scope: !4801)
!4814 = !DILocation(line: 246, column: 6, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 246, column: 6)
!4816 = !DILocation(line: 246, column: 6, scope: !4411)
!4817 = !DILocation(line: 247, column: 9, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 246, column: 16)
!4819 = !DILocation(line: 247, column: 7, scope: !4818)
!4820 = !DILocation(line: 248, column: 8, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 248, column: 7)
!4822 = !DILocation(line: 248, column: 7, scope: !4818)
!4823 = !DILocation(line: 249, column: 4, scope: !4821)
!4824 = !DILocation(line: 250, column: 3, scope: !4818)
!4825 = !DILocation(line: 250, column: 8, scope: !4818)
!4826 = !DILocation(line: 250, column: 13, scope: !4818)
!4827 = !DILocation(line: 251, column: 15, scope: !4818)
!4828 = !DILocation(line: 251, column: 21, scope: !4818)
!4829 = !DILocation(line: 251, column: 3, scope: !4818)
!4830 = !DILocation(line: 251, column: 8, scope: !4818)
!4831 = !DILocation(line: 251, column: 13, scope: !4818)
!4832 = !DILocation(line: 252, column: 3, scope: !4818)
!4833 = !DILocation(line: 252, column: 8, scope: !4818)
!4834 = !DILocation(line: 252, column: 11, scope: !4818)
!4835 = !DILocation(line: 252, column: 19, scope: !4818)
!4836 = !DILocation(line: 253, column: 3, scope: !4818)
!4837 = !DILocation(line: 253, column: 8, scope: !4818)
!4838 = !DILocation(line: 253, column: 11, scope: !4818)
!4839 = !DILocation(line: 253, column: 18, scope: !4818)
!4840 = !DILocation(line: 254, column: 3, scope: !4818)
!4841 = !DILocation(line: 254, column: 8, scope: !4818)
!4842 = !DILocation(line: 254, column: 11, scope: !4818)
!4843 = !DILocation(line: 254, column: 19, scope: !4818)
!4844 = !DILocation(line: 256, column: 21, scope: !4818)
!4845 = !DILocation(line: 256, column: 26, scope: !4818)
!4846 = !DILocation(line: 256, column: 3, scope: !4818)
!4847 = !DILocation(line: 257, column: 10, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 257, column: 3)
!4849 = !DILocation(line: 257, column: 8, scope: !4848)
!4850 = !DILocation(line: 257, column: 21, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 257, column: 3)
!4852 = !DILocation(line: 257, column: 23, scope: !4851)
!4853 = !DILocation(line: 257, column: 3, scope: !4848)
!4854 = !DILocation(line: 258, column: 14, scope: !4851)
!4855 = !DILocation(line: 258, column: 17, scope: !4851)
!4856 = !DILocation(line: 258, column: 22, scope: !4851)
!4857 = !DILocation(line: 258, column: 4, scope: !4851)
!4858 = !DILocation(line: 257, column: 39, scope: !4851)
!4859 = !DILocation(line: 257, column: 3, scope: !4851)
!4860 = distinct !{!4860, !4853, !4861}
!4861 = !DILocation(line: 258, column: 28, scope: !4848)
!4862 = !DILocation(line: 259, column: 10, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 259, column: 3)
!4864 = !DILocation(line: 259, column: 8, scope: !4863)
!4865 = !DILocation(line: 259, column: 20, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 259, column: 3)
!4867 = !DILocation(line: 259, column: 22, scope: !4866)
!4868 = !DILocation(line: 259, column: 3, scope: !4863)
!4869 = !DILocation(line: 260, column: 14, scope: !4866)
!4870 = !DILocation(line: 260, column: 17, scope: !4866)
!4871 = !DILocation(line: 260, column: 22, scope: !4866)
!4872 = !DILocation(line: 260, column: 4, scope: !4866)
!4873 = !DILocation(line: 259, column: 34, scope: !4866)
!4874 = !DILocation(line: 259, column: 3, scope: !4866)
!4875 = distinct !{!4875, !4868, !4876}
!4876 = !DILocation(line: 260, column: 28, scope: !4863)
!4877 = !DILocation(line: 262, column: 31, scope: !4818)
!4878 = !DILocation(line: 262, column: 9, scope: !4818)
!4879 = !DILocation(line: 262, column: 7, scope: !4818)
!4880 = !DILocation(line: 263, column: 7, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 263, column: 7)
!4882 = !DILocation(line: 263, column: 7, scope: !4818)
!4883 = !DILocation(line: 264, column: 22, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 263, column: 12)
!4885 = !DILocation(line: 264, column: 4, scope: !4884)
!4886 = !DILocation(line: 265, column: 21, scope: !4884)
!4887 = !DILocation(line: 265, column: 26, scope: !4884)
!4888 = !DILocation(line: 265, column: 4, scope: !4884)
!4889 = !DILocation(line: 267, column: 4, scope: !4884)
!4890 = !DILocation(line: 269, column: 15, scope: !4818)
!4891 = !DILocation(line: 269, column: 3, scope: !4818)
!4892 = !DILocation(line: 269, column: 9, scope: !4818)
!4893 = !DILocation(line: 269, column: 13, scope: !4818)
!4894 = !DILocation(line: 270, column: 2, scope: !4818)
!4895 = !DILocation(line: 273, column: 6, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 273, column: 6)
!4897 = !DILocation(line: 273, column: 6, scope: !4411)
!4898 = !DILocalVariable(name: "abs", scope: !4899, file: !3, line: 274, type: !7)
!4899 = distinct !DILexicalBlock(scope: !4896, file: !3, line: 273, column: 16)
!4900 = !DILocation(line: 274, column: 16, scope: !4899)
!4901 = !DILocation(line: 277, column: 30, scope: !4899)
!4902 = !DILocation(line: 277, column: 35, scope: !4899)
!4903 = !DILocation(line: 277, column: 9, scope: !4899)
!4904 = !DILocation(line: 277, column: 7, scope: !4899)
!4905 = !DILocation(line: 279, column: 45, scope: !4899)
!4906 = !DILocation(line: 279, column: 50, scope: !4899)
!4907 = !DILocation(line: 281, column: 10, scope: !4899)
!4908 = !DILocation(line: 279, column: 24, scope: !4899)
!4909 = !DILocation(line: 279, column: 22, scope: !4899)
!4910 = !DILocation(line: 282, column: 45, scope: !4899)
!4911 = !DILocation(line: 282, column: 50, scope: !4899)
!4912 = !DILocation(line: 284, column: 10, scope: !4899)
!4913 = !DILocation(line: 282, column: 24, scope: !4899)
!4914 = !DILocation(line: 282, column: 22, scope: !4899)
!4915 = !DILocation(line: 285, column: 7, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 285, column: 7)
!4917 = !DILocation(line: 285, column: 7, scope: !4899)
!4918 = !DILocation(line: 286, column: 23, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 285, column: 12)
!4920 = !DILocation(line: 286, column: 32, scope: !4919)
!4921 = !DILocation(line: 286, column: 37, scope: !4919)
!4922 = !DILocation(line: 286, column: 10, scope: !4919)
!4923 = !DILocation(line: 286, column: 8, scope: !4919)
!4924 = !DILocation(line: 288, column: 8, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4919, file: !3, line: 288, column: 8)
!4926 = !DILocation(line: 288, column: 8, scope: !4919)
!4927 = !DILocation(line: 289, column: 5, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4925, file: !3, line: 288, column: 13)
!4929 = !DILocation(line: 290, column: 9, scope: !4928)
!4930 = !DILocation(line: 291, column: 4, scope: !4928)
!4931 = !DILocation(line: 292, column: 3, scope: !4919)
!4932 = !DILocation(line: 294, column: 9, scope: !4899)
!4933 = !DILocation(line: 294, column: 7, scope: !4899)
!4934 = !DILocation(line: 295, column: 8, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 295, column: 7)
!4936 = !DILocation(line: 295, column: 7, scope: !4899)
!4937 = !DILocation(line: 296, column: 4, scope: !4935)
!4938 = !DILocation(line: 297, column: 3, scope: !4899)
!4939 = !DILocation(line: 297, column: 8, scope: !4899)
!4940 = !DILocation(line: 297, column: 13, scope: !4899)
!4941 = !DILocation(line: 298, column: 15, scope: !4899)
!4942 = !DILocation(line: 298, column: 21, scope: !4899)
!4943 = !DILocation(line: 298, column: 3, scope: !4899)
!4944 = !DILocation(line: 298, column: 8, scope: !4899)
!4945 = !DILocation(line: 298, column: 13, scope: !4899)
!4946 = !DILocation(line: 299, column: 3, scope: !4899)
!4947 = !DILocation(line: 299, column: 8, scope: !4899)
!4948 = !DILocation(line: 299, column: 11, scope: !4899)
!4949 = !DILocation(line: 299, column: 19, scope: !4899)
!4950 = !DILocation(line: 300, column: 3, scope: !4899)
!4951 = !DILocation(line: 300, column: 8, scope: !4899)
!4952 = !DILocation(line: 300, column: 11, scope: !4899)
!4953 = !DILocation(line: 300, column: 18, scope: !4899)
!4954 = !DILocation(line: 301, column: 3, scope: !4899)
!4955 = !DILocation(line: 301, column: 8, scope: !4899)
!4956 = !DILocation(line: 301, column: 11, scope: !4899)
!4957 = !DILocation(line: 301, column: 19, scope: !4899)
!4958 = !DILocation(line: 303, column: 7, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 303, column: 7)
!4960 = !DILocation(line: 303, column: 7, scope: !4899)
!4961 = !DILocation(line: 304, column: 22, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4959, file: !3, line: 303, column: 12)
!4963 = !DILocation(line: 304, column: 27, scope: !4962)
!4964 = !DILocation(line: 304, column: 4, scope: !4962)
!4965 = !DILocation(line: 305, column: 25, scope: !4962)
!4966 = !DILocation(line: 306, column: 11, scope: !4962)
!4967 = !DILocation(line: 305, column: 4, scope: !4962)
!4968 = !DILocation(line: 307, column: 25, scope: !4962)
!4969 = !DILocation(line: 308, column: 11, scope: !4962)
!4970 = !DILocation(line: 307, column: 4, scope: !4962)
!4971 = !DILocation(line: 309, column: 3, scope: !4962)
!4972 = !DILocation(line: 310, column: 25, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4959, file: !3, line: 309, column: 10)
!4974 = !DILocation(line: 310, column: 4, scope: !4973)
!4975 = !DILocation(line: 311, column: 25, scope: !4973)
!4976 = !DILocation(line: 311, column: 4, scope: !4973)
!4977 = !DILocation(line: 313, column: 24, scope: !4899)
!4978 = !DILocation(line: 313, column: 3, scope: !4899)
!4979 = !DILocation(line: 315, column: 21, scope: !4899)
!4980 = !DILocation(line: 315, column: 26, scope: !4899)
!4981 = !DILocation(line: 315, column: 3, scope: !4899)
!4982 = !DILocation(line: 316, column: 10, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 316, column: 3)
!4984 = !DILocation(line: 316, column: 8, scope: !4983)
!4985 = !DILocation(line: 316, column: 22, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 316, column: 3)
!4987 = !DILocation(line: 316, column: 24, scope: !4986)
!4988 = !DILocation(line: 316, column: 3, scope: !4983)
!4989 = !DILocation(line: 317, column: 14, scope: !4986)
!4990 = !DILocation(line: 317, column: 17, scope: !4986)
!4991 = !DILocation(line: 317, column: 22, scope: !4986)
!4992 = !DILocation(line: 317, column: 4, scope: !4986)
!4993 = !DILocation(line: 316, column: 38, scope: !4986)
!4994 = !DILocation(line: 316, column: 3, scope: !4986)
!4995 = distinct !{!4995, !4988, !4996}
!4996 = !DILocation(line: 317, column: 28, scope: !4983)
!4997 = !DILocation(line: 319, column: 31, scope: !4899)
!4998 = !DILocation(line: 319, column: 9, scope: !4899)
!4999 = !DILocation(line: 319, column: 7, scope: !4899)
!5000 = !DILocation(line: 320, column: 7, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 320, column: 7)
!5002 = !DILocation(line: 320, column: 7, scope: !4899)
!5003 = !DILocation(line: 321, column: 22, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !5001, file: !3, line: 320, column: 12)
!5005 = !DILocation(line: 321, column: 4, scope: !5004)
!5006 = !DILocation(line: 322, column: 21, scope: !5004)
!5007 = !DILocation(line: 322, column: 26, scope: !5004)
!5008 = !DILocation(line: 322, column: 4, scope: !5004)
!5009 = !DILocation(line: 324, column: 4, scope: !5004)
!5010 = !DILocation(line: 326, column: 15, scope: !4899)
!5011 = !DILocation(line: 326, column: 3, scope: !4899)
!5012 = !DILocation(line: 326, column: 9, scope: !4899)
!5013 = !DILocation(line: 326, column: 13, scope: !4899)
!5014 = !DILocation(line: 327, column: 2, scope: !4899)
!5015 = !DILocation(line: 330, column: 6, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 330, column: 6)
!5017 = !DILocation(line: 330, column: 6, scope: !4411)
!5018 = !DILocalVariable(name: "num_cont", scope: !5019, file: !3, line: 331, type: !190)
!5019 = distinct !DILexicalBlock(scope: !5016, file: !3, line: 330, column: 19)
!5020 = !DILocation(line: 331, column: 7, scope: !5019)
!5021 = !DILocalVariable(name: "width", scope: !5019, file: !3, line: 331, type: !190)
!5022 = !DILocation(line: 331, column: 17, scope: !5019)
!5023 = !DILocalVariable(name: "height", scope: !5019, file: !3, line: 331, type: !190)
!5024 = !DILocation(line: 331, column: 24, scope: !5019)
!5025 = !DILocation(line: 333, column: 12, scope: !5019)
!5026 = !DILocation(line: 333, column: 10, scope: !5019)
!5027 = !DILocation(line: 334, column: 8, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 334, column: 7)
!5029 = !DILocation(line: 334, column: 7, scope: !5019)
!5030 = !DILocation(line: 335, column: 4, scope: !5028)
!5031 = !DILocation(line: 337, column: 35, scope: !5019)
!5032 = !DILocation(line: 337, column: 41, scope: !5019)
!5033 = !DILocation(line: 337, column: 48, scope: !5019)
!5034 = !DILocation(line: 337, column: 14, scope: !5019)
!5035 = !DILocation(line: 337, column: 12, scope: !5019)
!5036 = !DILocation(line: 340, column: 32, scope: !5019)
!5037 = !DILocation(line: 340, column: 38, scope: !5019)
!5038 = !DILocation(line: 340, column: 45, scope: !5019)
!5039 = !DILocation(line: 340, column: 11, scope: !5019)
!5040 = !DILocation(line: 340, column: 9, scope: !5019)
!5041 = !DILocation(line: 343, column: 33, scope: !5019)
!5042 = !DILocation(line: 343, column: 39, scope: !5019)
!5043 = !DILocation(line: 343, column: 46, scope: !5019)
!5044 = !DILocation(line: 343, column: 12, scope: !5019)
!5045 = !DILocation(line: 343, column: 10, scope: !5019)
!5046 = !DILocation(line: 347, column: 3, scope: !5019)
!5047 = !DILocation(line: 347, column: 11, scope: !5019)
!5048 = !DILocation(line: 347, column: 16, scope: !5019)
!5049 = !DILocation(line: 348, column: 18, scope: !5019)
!5050 = !DILocation(line: 348, column: 24, scope: !5019)
!5051 = !DILocation(line: 348, column: 3, scope: !5019)
!5052 = !DILocation(line: 348, column: 11, scope: !5019)
!5053 = !DILocation(line: 348, column: 16, scope: !5019)
!5054 = !DILocation(line: 349, column: 3, scope: !5019)
!5055 = !DILocation(line: 349, column: 11, scope: !5019)
!5056 = !DILocation(line: 349, column: 14, scope: !5019)
!5057 = !DILocation(line: 349, column: 22, scope: !5019)
!5058 = !DILocation(line: 350, column: 3, scope: !5019)
!5059 = !DILocation(line: 350, column: 11, scope: !5019)
!5060 = !DILocation(line: 350, column: 14, scope: !5019)
!5061 = !DILocation(line: 350, column: 21, scope: !5019)
!5062 = !DILocation(line: 351, column: 3, scope: !5019)
!5063 = !DILocation(line: 351, column: 11, scope: !5019)
!5064 = !DILocation(line: 351, column: 14, scope: !5019)
!5065 = !DILocation(line: 351, column: 22, scope: !5019)
!5066 = !DILocation(line: 353, column: 24, scope: !5019)
!5067 = !DILocation(line: 353, column: 3, scope: !5019)
!5068 = !DILocation(line: 355, column: 24, scope: !5019)
!5069 = !DILocation(line: 356, column: 13, scope: !5019)
!5070 = !DILocation(line: 355, column: 3, scope: !5019)
!5071 = !DILocation(line: 357, column: 24, scope: !5019)
!5072 = !DILocation(line: 358, column: 13, scope: !5019)
!5073 = !DILocation(line: 357, column: 3, scope: !5019)
!5074 = !DILocation(line: 360, column: 29, scope: !5019)
!5075 = !DILocation(line: 360, column: 37, scope: !5019)
!5076 = !DILocation(line: 360, column: 9, scope: !5019)
!5077 = !DILocation(line: 360, column: 7, scope: !5019)
!5078 = !DILocation(line: 361, column: 7, scope: !5079)
!5079 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 361, column: 7)
!5080 = !DILocation(line: 361, column: 7, scope: !5019)
!5081 = !DILocation(line: 362, column: 22, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5079, file: !3, line: 361, column: 12)
!5083 = !DILocation(line: 362, column: 4, scope: !5082)
!5084 = !DILocation(line: 363, column: 21, scope: !5082)
!5085 = !DILocation(line: 363, column: 27, scope: !5082)
!5086 = !DILocation(line: 363, column: 34, scope: !5082)
!5087 = !DILocation(line: 363, column: 4, scope: !5082)
!5088 = !DILocation(line: 365, column: 4, scope: !5082)
!5089 = !DILocation(line: 368, column: 31, scope: !5019)
!5090 = !DILocation(line: 368, column: 9, scope: !5019)
!5091 = !DILocation(line: 368, column: 7, scope: !5019)
!5092 = !DILocation(line: 369, column: 7, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 369, column: 7)
!5094 = !DILocation(line: 369, column: 7, scope: !5019)
!5095 = !DILocation(line: 370, column: 22, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5093, file: !3, line: 369, column: 12)
!5097 = !DILocation(line: 370, column: 4, scope: !5096)
!5098 = !DILocation(line: 371, column: 21, scope: !5096)
!5099 = !DILocation(line: 371, column: 27, scope: !5096)
!5100 = !DILocation(line: 371, column: 34, scope: !5096)
!5101 = !DILocation(line: 371, column: 4, scope: !5096)
!5102 = !DILocation(line: 373, column: 4, scope: !5096)
!5103 = !DILocation(line: 375, column: 3, scope: !5019)
!5104 = !DILocation(line: 375, column: 9, scope: !5019)
!5105 = !DILocation(line: 375, column: 31, scope: !5019)
!5106 = !DILocation(line: 376, column: 18, scope: !5019)
!5107 = !DILocation(line: 376, column: 3, scope: !5019)
!5108 = !DILocation(line: 376, column: 9, scope: !5019)
!5109 = !DILocation(line: 376, column: 16, scope: !5019)
!5110 = !DILocation(line: 377, column: 2, scope: !5019)
!5111 = !DILocation(line: 379, column: 8, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 379, column: 6)
!5113 = !DILocation(line: 379, column: 17, scope: !5112)
!5114 = !DILocation(line: 379, column: 20, scope: !5112)
!5115 = !DILocation(line: 379, column: 29, scope: !5112)
!5116 = !DILocation(line: 379, column: 32, scope: !5112)
!5117 = !DILocation(line: 379, column: 6, scope: !4411)
!5118 = !DILocation(line: 380, column: 7, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 379, column: 46)
!5120 = !DILocation(line: 381, column: 3, scope: !5119)
!5121 = !DILocation(line: 384, column: 31, scope: !4411)
!5122 = !DILocation(line: 384, column: 36, scope: !4411)
!5123 = !DILocation(line: 384, column: 8, scope: !4411)
!5124 = !DILocation(line: 384, column: 6, scope: !4411)
!5125 = !DILocation(line: 385, column: 6, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 385, column: 6)
!5127 = !DILocation(line: 385, column: 10, scope: !5126)
!5128 = !DILocation(line: 385, column: 6, scope: !4411)
!5129 = !DILocation(line: 386, column: 3, scope: !5126)
!5130 = !DILocation(line: 388, column: 2, scope: !4411)
!5131 = !DILabel(scope: !4411, name: "error_nomem", file: !3, line: 390)
!5132 = !DILocation(line: 390, column: 2, scope: !4411)
!5133 = !DILocation(line: 391, column: 6, scope: !4411)
!5134 = !DILocation(line: 392, column: 19, scope: !4411)
!5135 = !DILocation(line: 392, column: 24, scope: !4411)
!5136 = !DILocation(line: 392, column: 2, scope: !4411)
!5137 = !DILabel(scope: !4411, name: "error", file: !3, line: 393)
!5138 = !DILocation(line: 393, column: 2, scope: !4411)
!5139 = !DILocation(line: 394, column: 16, scope: !4411)
!5140 = !DILocation(line: 394, column: 2, scope: !4411)
!5141 = !DILocation(line: 395, column: 9, scope: !4411)
!5142 = !DILocation(line: 395, column: 2, scope: !4411)
!5143 = !DILocation(line: 396, column: 1, scope: !4411)
!5144 = distinct !DISubprogram(name: "xenkbd_backend_changed", scope: !3, file: !3, line: 499, type: !4360, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5145 = !DILocalVariable(name: "dev", arg: 1, scope: !5144, file: !3, line: 499, type: !377)
!5146 = !DILocation(line: 499, column: 58, scope: !5144)
!5147 = !DILocalVariable(name: "backend_state", arg: 2, scope: !5144, file: !3, line: 500, type: !128)
!5148 = !DILocation(line: 500, column: 26, scope: !5144)
!5149 = !DILocation(line: 502, column: 10, scope: !5144)
!5150 = !DILocation(line: 502, column: 2, scope: !5144)
!5151 = !DILocation(line: 508, column: 3, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 502, column: 25)
!5153 = !DILocation(line: 511, column: 23, scope: !5152)
!5154 = !DILocation(line: 511, column: 3, scope: !5152)
!5155 = !DILocation(line: 512, column: 3, scope: !5152)
!5156 = !DILocation(line: 520, column: 7, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 520, column: 7)
!5158 = !DILocation(line: 520, column: 12, scope: !5157)
!5159 = !DILocation(line: 520, column: 18, scope: !5157)
!5160 = !DILocation(line: 520, column: 7, scope: !5152)
!5161 = !DILocation(line: 521, column: 24, scope: !5157)
!5162 = !DILocation(line: 521, column: 4, scope: !5157)
!5163 = !DILocation(line: 522, column: 3, scope: !5152)
!5164 = !DILocation(line: 525, column: 7, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 525, column: 7)
!5166 = !DILocation(line: 525, column: 12, scope: !5165)
!5167 = !DILocation(line: 525, column: 18, scope: !5165)
!5168 = !DILocation(line: 525, column: 7, scope: !5152)
!5169 = !DILocation(line: 526, column: 4, scope: !5165)
!5170 = !DILocation(line: 525, column: 21, scope: !5165)
!5171 = !DILocation(line: 529, column: 26, scope: !5152)
!5172 = !DILocation(line: 529, column: 3, scope: !5152)
!5173 = !DILocation(line: 530, column: 3, scope: !5152)
!5174 = !DILocation(line: 532, column: 1, scope: !5144)
!5175 = distinct !DISubprogram(name: "xenkbd_remove", scope: !3, file: !3, line: 407, type: !4364, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5176 = !DILocalVariable(name: "dev", arg: 1, scope: !5175, file: !3, line: 407, type: !377)
!5177 = !DILocation(line: 407, column: 48, scope: !5175)
!5178 = !DILocalVariable(name: "info", scope: !5175, file: !3, line: 409, type: !4427)
!5179 = !DILocation(line: 409, column: 22, scope: !5175)
!5180 = !DILocation(line: 409, column: 46, scope: !5175)
!5181 = !DILocation(line: 409, column: 51, scope: !5175)
!5182 = !DILocation(line: 409, column: 29, scope: !5175)
!5183 = !DILocation(line: 411, column: 28, scope: !5175)
!5184 = !DILocation(line: 411, column: 2, scope: !5175)
!5185 = !DILocation(line: 412, column: 6, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 412, column: 6)
!5187 = !DILocation(line: 412, column: 12, scope: !5186)
!5188 = !DILocation(line: 412, column: 6, scope: !5175)
!5189 = !DILocation(line: 413, column: 27, scope: !5186)
!5190 = !DILocation(line: 413, column: 33, scope: !5186)
!5191 = !DILocation(line: 413, column: 3, scope: !5186)
!5192 = !DILocation(line: 414, column: 6, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 414, column: 6)
!5194 = !DILocation(line: 414, column: 12, scope: !5193)
!5195 = !DILocation(line: 414, column: 6, scope: !5175)
!5196 = !DILocation(line: 415, column: 27, scope: !5193)
!5197 = !DILocation(line: 415, column: 33, scope: !5193)
!5198 = !DILocation(line: 415, column: 3, scope: !5193)
!5199 = !DILocation(line: 416, column: 6, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 416, column: 6)
!5201 = !DILocation(line: 416, column: 12, scope: !5200)
!5202 = !DILocation(line: 416, column: 6, scope: !5175)
!5203 = !DILocation(line: 417, column: 27, scope: !5200)
!5204 = !DILocation(line: 417, column: 33, scope: !5200)
!5205 = !DILocation(line: 417, column: 3, scope: !5200)
!5206 = !DILocation(line: 418, column: 2, scope: !5175)
!5207 = !DILocation(line: 419, column: 8, scope: !5175)
!5208 = !DILocation(line: 419, column: 2, scope: !5175)
!5209 = !DILocation(line: 420, column: 2, scope: !5175)
!5210 = distinct !DISubprogram(name: "xenkbd_resume", scope: !3, file: !3, line: 398, type: !4364, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5211 = !DILocalVariable(name: "dev", arg: 1, scope: !5210, file: !3, line: 398, type: !377)
!5212 = !DILocation(line: 398, column: 48, scope: !5210)
!5213 = !DILocalVariable(name: "info", scope: !5210, file: !3, line: 400, type: !4427)
!5214 = !DILocation(line: 400, column: 22, scope: !5210)
!5215 = !DILocation(line: 400, column: 46, scope: !5210)
!5216 = !DILocation(line: 400, column: 51, scope: !5210)
!5217 = !DILocation(line: 400, column: 29, scope: !5210)
!5218 = !DILocation(line: 402, column: 28, scope: !5210)
!5219 = !DILocation(line: 402, column: 2, scope: !5210)
!5220 = !DILocation(line: 403, column: 9, scope: !5210)
!5221 = !DILocation(line: 403, column: 15, scope: !5210)
!5222 = !DILocation(line: 403, column: 2, scope: !5210)
!5223 = !DILocation(line: 404, column: 32, scope: !5210)
!5224 = !DILocation(line: 404, column: 37, scope: !5210)
!5225 = !DILocation(line: 404, column: 9, scope: !5210)
!5226 = !DILocation(line: 404, column: 2, scope: !5210)
!5227 = distinct !DISubprogram(name: "kzalloc", scope: !146, file: !146, line: 662, type: !5228, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5228 = !DISubroutineType(types: !5229)
!5229 = !{!166, !501, !164}
!5230 = !DILocalVariable(name: "s", arg: 1, scope: !5231, file: !146, line: 445, type: !1101)
!5231 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !146, file: !146, line: 445, type: !5232, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5232 = !DISubroutineType(types: !5233)
!5233 = !{!166, !1101, !164, !501}
!5234 = !DILocation(line: 445, column: 72, scope: !5231, inlinedAt: !5235)
!5235 = distinct !DILocation(line: 552, column: 10, scope: !5236, inlinedAt: !5239)
!5236 = distinct !DILexicalBlock(scope: !5237, file: !146, line: 540, column: 34)
!5237 = distinct !DILexicalBlock(scope: !5238, file: !146, line: 540, column: 6)
!5238 = distinct !DISubprogram(name: "kmalloc", scope: !146, file: !146, line: 538, type: !5228, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5239 = distinct !DILocation(line: 664, column: 9, scope: !5227)
!5240 = !DILocalVariable(name: "flags", arg: 2, scope: !5231, file: !146, line: 446, type: !164)
!5241 = !DILocation(line: 446, column: 9, scope: !5231, inlinedAt: !5235)
!5242 = !DILocalVariable(name: "size", arg: 3, scope: !5231, file: !146, line: 446, type: !501)
!5243 = !DILocation(line: 446, column: 23, scope: !5231, inlinedAt: !5235)
!5244 = !DILocalVariable(name: "ret", scope: !5231, file: !146, line: 448, type: !166)
!5245 = !DILocation(line: 448, column: 8, scope: !5231, inlinedAt: !5235)
!5246 = !DILocalVariable(name: "flags", arg: 1, scope: !5247, file: !146, line: 318, type: !164)
!5247 = distinct !DISubprogram(name: "kmalloc_type", scope: !146, file: !146, line: 318, type: !5248, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5248 = !DISubroutineType(types: !5249)
!5249 = !{!145, !164}
!5250 = !DILocation(line: 318, column: 67, scope: !5247, inlinedAt: !5251)
!5251 = distinct !DILocation(line: 553, column: 20, scope: !5236, inlinedAt: !5239)
!5252 = !DILocalVariable(name: "size", arg: 1, scope: !5253, file: !146, line: 346, type: !501)
!5253 = distinct !DISubprogram(name: "kmalloc_index", scope: !146, file: !146, line: 346, type: !5254, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5254 = !DISubroutineType(types: !5255)
!5255 = !{!7, !501}
!5256 = !DILocation(line: 346, column: 58, scope: !5253, inlinedAt: !5257)
!5257 = distinct !DILocation(line: 547, column: 11, scope: !5236, inlinedAt: !5239)
!5258 = !DILocalVariable(name: "size", arg: 1, scope: !5259, file: !146, line: 472, type: !501)
!5259 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !146, file: !146, line: 472, type: !5260, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5260 = !DISubroutineType(types: !5261)
!5261 = !{!166, !501, !164, !7}
!5262 = !DILocation(line: 472, column: 28, scope: !5259, inlinedAt: !5263)
!5263 = distinct !DILocation(line: 481, column: 9, scope: !5264, inlinedAt: !5265)
!5264 = distinct !DISubprogram(name: "kmalloc_large", scope: !146, file: !146, line: 478, type: !5228, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5265 = distinct !DILocation(line: 545, column: 11, scope: !5266, inlinedAt: !5239)
!5266 = distinct !DILexicalBlock(scope: !5236, file: !146, line: 544, column: 7)
!5267 = !DILocalVariable(name: "flags", arg: 2, scope: !5259, file: !146, line: 472, type: !164)
!5268 = !DILocation(line: 472, column: 40, scope: !5259, inlinedAt: !5263)
!5269 = !DILocalVariable(name: "order", arg: 3, scope: !5259, file: !146, line: 472, type: !7)
!5270 = !DILocation(line: 472, column: 60, scope: !5259, inlinedAt: !5263)
!5271 = !DILocalVariable(name: "size", arg: 1, scope: !5264, file: !146, line: 478, type: !501)
!5272 = !DILocation(line: 478, column: 51, scope: !5264, inlinedAt: !5265)
!5273 = !DILocalVariable(name: "flags", arg: 2, scope: !5264, file: !146, line: 478, type: !164)
!5274 = !DILocation(line: 478, column: 63, scope: !5264, inlinedAt: !5265)
!5275 = !DILocalVariable(name: "order", scope: !5264, file: !146, line: 480, type: !7)
!5276 = !DILocation(line: 480, column: 15, scope: !5264, inlinedAt: !5265)
!5277 = !DILocalVariable(name: "size", arg: 1, scope: !5238, file: !146, line: 538, type: !501)
!5278 = !DILocation(line: 538, column: 45, scope: !5238, inlinedAt: !5239)
!5279 = !DILocalVariable(name: "flags", arg: 2, scope: !5238, file: !146, line: 538, type: !164)
!5280 = !DILocation(line: 538, column: 57, scope: !5238, inlinedAt: !5239)
!5281 = !DILocalVariable(name: "index", scope: !5236, file: !146, line: 542, type: !7)
!5282 = !DILocation(line: 542, column: 16, scope: !5236, inlinedAt: !5239)
!5283 = !DILocalVariable(name: "size", arg: 1, scope: !5227, file: !146, line: 662, type: !501)
!5284 = !DILocation(line: 662, column: 36, scope: !5227)
!5285 = !DILocalVariable(name: "flags", arg: 2, scope: !5227, file: !146, line: 662, type: !164)
!5286 = !DILocation(line: 662, column: 48, scope: !5227)
!5287 = !DILocation(line: 664, column: 17, scope: !5227)
!5288 = !DILocation(line: 664, column: 23, scope: !5227)
!5289 = !DILocation(line: 664, column: 29, scope: !5227)
!5290 = !DILocation(line: 540, column: 27, scope: !5237, inlinedAt: !5239)
!5291 = !DILocation(line: 540, column: 6, scope: !5237, inlinedAt: !5239)
!5292 = !DILocation(line: 540, column: 6, scope: !5238, inlinedAt: !5239)
!5293 = !DILocation(line: 544, column: 7, scope: !5266, inlinedAt: !5239)
!5294 = !DILocation(line: 544, column: 12, scope: !5266, inlinedAt: !5239)
!5295 = !DILocation(line: 544, column: 7, scope: !5236, inlinedAt: !5239)
!5296 = !DILocation(line: 545, column: 25, scope: !5266, inlinedAt: !5239)
!5297 = !DILocation(line: 545, column: 31, scope: !5266, inlinedAt: !5239)
!5298 = !DILocation(line: 480, column: 33, scope: !5264, inlinedAt: !5265)
!5299 = !DILocation(line: 480, column: 23, scope: !5264, inlinedAt: !5265)
!5300 = !DILocation(line: 481, column: 29, scope: !5264, inlinedAt: !5265)
!5301 = !DILocation(line: 481, column: 35, scope: !5264, inlinedAt: !5265)
!5302 = !DILocation(line: 481, column: 42, scope: !5264, inlinedAt: !5265)
!5303 = !DILocation(line: 474, column: 23, scope: !5259, inlinedAt: !5263)
!5304 = !DILocation(line: 474, column: 29, scope: !5259, inlinedAt: !5263)
!5305 = !DILocation(line: 474, column: 36, scope: !5259, inlinedAt: !5263)
!5306 = !DILocation(line: 474, column: 9, scope: !5259, inlinedAt: !5263)
!5307 = !DILocation(line: 545, column: 4, scope: !5266, inlinedAt: !5239)
!5308 = !DILocation(line: 547, column: 25, scope: !5236, inlinedAt: !5239)
!5309 = !DILocation(line: 348, column: 7, scope: !5310, inlinedAt: !5257)
!5310 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 348, column: 6)
!5311 = !DILocation(line: 348, column: 6, scope: !5253, inlinedAt: !5257)
!5312 = !DILocation(line: 349, column: 3, scope: !5310, inlinedAt: !5257)
!5313 = !DILocation(line: 351, column: 6, scope: !5314, inlinedAt: !5257)
!5314 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 351, column: 6)
!5315 = !DILocation(line: 351, column: 11, scope: !5314, inlinedAt: !5257)
!5316 = !DILocation(line: 351, column: 6, scope: !5253, inlinedAt: !5257)
!5317 = !DILocation(line: 352, column: 3, scope: !5314, inlinedAt: !5257)
!5318 = !DILocation(line: 354, column: 32, scope: !5319, inlinedAt: !5257)
!5319 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 354, column: 6)
!5320 = !DILocation(line: 354, column: 37, scope: !5319, inlinedAt: !5257)
!5321 = !DILocation(line: 354, column: 42, scope: !5319, inlinedAt: !5257)
!5322 = !DILocation(line: 354, column: 45, scope: !5319, inlinedAt: !5257)
!5323 = !DILocation(line: 354, column: 50, scope: !5319, inlinedAt: !5257)
!5324 = !DILocation(line: 354, column: 6, scope: !5253, inlinedAt: !5257)
!5325 = !DILocation(line: 355, column: 3, scope: !5319, inlinedAt: !5257)
!5326 = !DILocation(line: 356, column: 32, scope: !5327, inlinedAt: !5257)
!5327 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 356, column: 6)
!5328 = !DILocation(line: 356, column: 37, scope: !5327, inlinedAt: !5257)
!5329 = !DILocation(line: 356, column: 43, scope: !5327, inlinedAt: !5257)
!5330 = !DILocation(line: 356, column: 46, scope: !5327, inlinedAt: !5257)
!5331 = !DILocation(line: 356, column: 51, scope: !5327, inlinedAt: !5257)
!5332 = !DILocation(line: 356, column: 6, scope: !5253, inlinedAt: !5257)
!5333 = !DILocation(line: 357, column: 3, scope: !5327, inlinedAt: !5257)
!5334 = !DILocation(line: 358, column: 6, scope: !5335, inlinedAt: !5257)
!5335 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 358, column: 6)
!5336 = !DILocation(line: 358, column: 11, scope: !5335, inlinedAt: !5257)
!5337 = !DILocation(line: 358, column: 6, scope: !5253, inlinedAt: !5257)
!5338 = !DILocation(line: 358, column: 26, scope: !5335, inlinedAt: !5257)
!5339 = !DILocation(line: 359, column: 6, scope: !5340, inlinedAt: !5257)
!5340 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 359, column: 6)
!5341 = !DILocation(line: 359, column: 11, scope: !5340, inlinedAt: !5257)
!5342 = !DILocation(line: 359, column: 6, scope: !5253, inlinedAt: !5257)
!5343 = !DILocation(line: 359, column: 26, scope: !5340, inlinedAt: !5257)
!5344 = !DILocation(line: 360, column: 6, scope: !5345, inlinedAt: !5257)
!5345 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 360, column: 6)
!5346 = !DILocation(line: 360, column: 11, scope: !5345, inlinedAt: !5257)
!5347 = !DILocation(line: 360, column: 6, scope: !5253, inlinedAt: !5257)
!5348 = !DILocation(line: 360, column: 26, scope: !5345, inlinedAt: !5257)
!5349 = !DILocation(line: 361, column: 6, scope: !5350, inlinedAt: !5257)
!5350 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 361, column: 6)
!5351 = !DILocation(line: 361, column: 11, scope: !5350, inlinedAt: !5257)
!5352 = !DILocation(line: 361, column: 6, scope: !5253, inlinedAt: !5257)
!5353 = !DILocation(line: 361, column: 26, scope: !5350, inlinedAt: !5257)
!5354 = !DILocation(line: 362, column: 6, scope: !5355, inlinedAt: !5257)
!5355 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 362, column: 6)
!5356 = !DILocation(line: 362, column: 11, scope: !5355, inlinedAt: !5257)
!5357 = !DILocation(line: 362, column: 6, scope: !5253, inlinedAt: !5257)
!5358 = !DILocation(line: 362, column: 26, scope: !5355, inlinedAt: !5257)
!5359 = !DILocation(line: 363, column: 6, scope: !5360, inlinedAt: !5257)
!5360 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 363, column: 6)
!5361 = !DILocation(line: 363, column: 11, scope: !5360, inlinedAt: !5257)
!5362 = !DILocation(line: 363, column: 6, scope: !5253, inlinedAt: !5257)
!5363 = !DILocation(line: 363, column: 26, scope: !5360, inlinedAt: !5257)
!5364 = !DILocation(line: 364, column: 6, scope: !5365, inlinedAt: !5257)
!5365 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 364, column: 6)
!5366 = !DILocation(line: 364, column: 11, scope: !5365, inlinedAt: !5257)
!5367 = !DILocation(line: 364, column: 6, scope: !5253, inlinedAt: !5257)
!5368 = !DILocation(line: 364, column: 26, scope: !5365, inlinedAt: !5257)
!5369 = !DILocation(line: 365, column: 6, scope: !5370, inlinedAt: !5257)
!5370 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 365, column: 6)
!5371 = !DILocation(line: 365, column: 11, scope: !5370, inlinedAt: !5257)
!5372 = !DILocation(line: 365, column: 6, scope: !5253, inlinedAt: !5257)
!5373 = !DILocation(line: 365, column: 26, scope: !5370, inlinedAt: !5257)
!5374 = !DILocation(line: 366, column: 6, scope: !5375, inlinedAt: !5257)
!5375 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 366, column: 6)
!5376 = !DILocation(line: 366, column: 11, scope: !5375, inlinedAt: !5257)
!5377 = !DILocation(line: 366, column: 6, scope: !5253, inlinedAt: !5257)
!5378 = !DILocation(line: 366, column: 26, scope: !5375, inlinedAt: !5257)
!5379 = !DILocation(line: 367, column: 6, scope: !5380, inlinedAt: !5257)
!5380 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 367, column: 6)
!5381 = !DILocation(line: 367, column: 11, scope: !5380, inlinedAt: !5257)
!5382 = !DILocation(line: 367, column: 6, scope: !5253, inlinedAt: !5257)
!5383 = !DILocation(line: 367, column: 26, scope: !5380, inlinedAt: !5257)
!5384 = !DILocation(line: 368, column: 6, scope: !5385, inlinedAt: !5257)
!5385 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 368, column: 6)
!5386 = !DILocation(line: 368, column: 11, scope: !5385, inlinedAt: !5257)
!5387 = !DILocation(line: 368, column: 6, scope: !5253, inlinedAt: !5257)
!5388 = !DILocation(line: 368, column: 26, scope: !5385, inlinedAt: !5257)
!5389 = !DILocation(line: 369, column: 6, scope: !5390, inlinedAt: !5257)
!5390 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 369, column: 6)
!5391 = !DILocation(line: 369, column: 11, scope: !5390, inlinedAt: !5257)
!5392 = !DILocation(line: 369, column: 6, scope: !5253, inlinedAt: !5257)
!5393 = !DILocation(line: 369, column: 26, scope: !5390, inlinedAt: !5257)
!5394 = !DILocation(line: 370, column: 6, scope: !5395, inlinedAt: !5257)
!5395 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 370, column: 6)
!5396 = !DILocation(line: 370, column: 11, scope: !5395, inlinedAt: !5257)
!5397 = !DILocation(line: 370, column: 6, scope: !5253, inlinedAt: !5257)
!5398 = !DILocation(line: 370, column: 26, scope: !5395, inlinedAt: !5257)
!5399 = !DILocation(line: 371, column: 6, scope: !5400, inlinedAt: !5257)
!5400 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 371, column: 6)
!5401 = !DILocation(line: 371, column: 11, scope: !5400, inlinedAt: !5257)
!5402 = !DILocation(line: 371, column: 6, scope: !5253, inlinedAt: !5257)
!5403 = !DILocation(line: 371, column: 26, scope: !5400, inlinedAt: !5257)
!5404 = !DILocation(line: 372, column: 6, scope: !5405, inlinedAt: !5257)
!5405 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 372, column: 6)
!5406 = !DILocation(line: 372, column: 11, scope: !5405, inlinedAt: !5257)
!5407 = !DILocation(line: 372, column: 6, scope: !5253, inlinedAt: !5257)
!5408 = !DILocation(line: 372, column: 26, scope: !5405, inlinedAt: !5257)
!5409 = !DILocation(line: 373, column: 6, scope: !5410, inlinedAt: !5257)
!5410 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 373, column: 6)
!5411 = !DILocation(line: 373, column: 11, scope: !5410, inlinedAt: !5257)
!5412 = !DILocation(line: 373, column: 6, scope: !5253, inlinedAt: !5257)
!5413 = !DILocation(line: 373, column: 26, scope: !5410, inlinedAt: !5257)
!5414 = !DILocation(line: 374, column: 6, scope: !5415, inlinedAt: !5257)
!5415 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 374, column: 6)
!5416 = !DILocation(line: 374, column: 11, scope: !5415, inlinedAt: !5257)
!5417 = !DILocation(line: 374, column: 6, scope: !5253, inlinedAt: !5257)
!5418 = !DILocation(line: 374, column: 26, scope: !5415, inlinedAt: !5257)
!5419 = !DILocation(line: 375, column: 6, scope: !5420, inlinedAt: !5257)
!5420 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 375, column: 6)
!5421 = !DILocation(line: 375, column: 11, scope: !5420, inlinedAt: !5257)
!5422 = !DILocation(line: 375, column: 6, scope: !5253, inlinedAt: !5257)
!5423 = !DILocation(line: 375, column: 27, scope: !5420, inlinedAt: !5257)
!5424 = !DILocation(line: 376, column: 6, scope: !5425, inlinedAt: !5257)
!5425 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 376, column: 6)
!5426 = !DILocation(line: 376, column: 11, scope: !5425, inlinedAt: !5257)
!5427 = !DILocation(line: 376, column: 6, scope: !5253, inlinedAt: !5257)
!5428 = !DILocation(line: 376, column: 32, scope: !5425, inlinedAt: !5257)
!5429 = !DILocation(line: 377, column: 6, scope: !5430, inlinedAt: !5257)
!5430 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 377, column: 6)
!5431 = !DILocation(line: 377, column: 11, scope: !5430, inlinedAt: !5257)
!5432 = !DILocation(line: 377, column: 6, scope: !5253, inlinedAt: !5257)
!5433 = !DILocation(line: 377, column: 32, scope: !5430, inlinedAt: !5257)
!5434 = !DILocation(line: 378, column: 6, scope: !5435, inlinedAt: !5257)
!5435 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 378, column: 6)
!5436 = !DILocation(line: 378, column: 11, scope: !5435, inlinedAt: !5257)
!5437 = !DILocation(line: 378, column: 6, scope: !5253, inlinedAt: !5257)
!5438 = !DILocation(line: 378, column: 32, scope: !5435, inlinedAt: !5257)
!5439 = !DILocation(line: 379, column: 6, scope: !5440, inlinedAt: !5257)
!5440 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 379, column: 6)
!5441 = !DILocation(line: 379, column: 11, scope: !5440, inlinedAt: !5257)
!5442 = !DILocation(line: 379, column: 6, scope: !5253, inlinedAt: !5257)
!5443 = !DILocation(line: 379, column: 33, scope: !5440, inlinedAt: !5257)
!5444 = !DILocation(line: 380, column: 6, scope: !5445, inlinedAt: !5257)
!5445 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 380, column: 6)
!5446 = !DILocation(line: 380, column: 11, scope: !5445, inlinedAt: !5257)
!5447 = !DILocation(line: 380, column: 6, scope: !5253, inlinedAt: !5257)
!5448 = !DILocation(line: 380, column: 33, scope: !5445, inlinedAt: !5257)
!5449 = !DILocation(line: 381, column: 6, scope: !5450, inlinedAt: !5257)
!5450 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 381, column: 6)
!5451 = !DILocation(line: 381, column: 11, scope: !5450, inlinedAt: !5257)
!5452 = !DILocation(line: 381, column: 6, scope: !5253, inlinedAt: !5257)
!5453 = !DILocation(line: 381, column: 33, scope: !5450, inlinedAt: !5257)
!5454 = !DILocation(line: 382, column: 2, scope: !5455, inlinedAt: !5257)
!5455 = distinct !DILexicalBlock(scope: !5456, file: !146, line: 382, column: 2)
!5456 = distinct !DILexicalBlock(scope: !5253, file: !146, line: 382, column: 2)
!5457 = !{i32 -2142803215, i32 -2142803186, i32 -2142803140, i32 -2142803082, i32 -2142803028, i32 -2142802974, i32 -2142802919, i32 -2142802888}
!5458 = !DILocation(line: 382, column: 2, scope: !5459, inlinedAt: !5257)
!5459 = distinct !DILexicalBlock(scope: !5460, file: !146, line: 382, column: 2)
!5460 = distinct !DILexicalBlock(scope: !5456, file: !146, line: 382, column: 2)
!5461 = !{i32 -2142802445, i32 -2142802438, i32 -2142802384, i32 -2142802353, i32 -2142802323}
!5462 = !DILocation(line: 382, column: 2, scope: !5460, inlinedAt: !5257)
!5463 = !DILocation(line: 386, column: 1, scope: !5253, inlinedAt: !5257)
!5464 = !DILocation(line: 547, column: 9, scope: !5236, inlinedAt: !5239)
!5465 = !DILocation(line: 549, column: 8, scope: !5466, inlinedAt: !5239)
!5466 = distinct !DILexicalBlock(scope: !5236, file: !146, line: 549, column: 7)
!5467 = !DILocation(line: 549, column: 7, scope: !5236, inlinedAt: !5239)
!5468 = !DILocation(line: 550, column: 4, scope: !5466, inlinedAt: !5239)
!5469 = !DILocation(line: 553, column: 33, scope: !5236, inlinedAt: !5239)
!5470 = !DILocation(line: 325, column: 6, scope: !5471, inlinedAt: !5251)
!5471 = distinct !DILexicalBlock(scope: !5247, file: !146, line: 325, column: 6)
!5472 = !DILocation(line: 325, column: 6, scope: !5247, inlinedAt: !5251)
!5473 = !DILocation(line: 326, column: 3, scope: !5471, inlinedAt: !5251)
!5474 = !DILocation(line: 332, column: 9, scope: !5247, inlinedAt: !5251)
!5475 = !DILocation(line: 332, column: 15, scope: !5247, inlinedAt: !5251)
!5476 = !DILocation(line: 332, column: 2, scope: !5247, inlinedAt: !5251)
!5477 = !DILocation(line: 336, column: 1, scope: !5247, inlinedAt: !5251)
!5478 = !DILocation(line: 553, column: 5, scope: !5236, inlinedAt: !5239)
!5479 = !DILocation(line: 553, column: 41, scope: !5236, inlinedAt: !5239)
!5480 = !DILocation(line: 554, column: 5, scope: !5236, inlinedAt: !5239)
!5481 = !DILocation(line: 554, column: 12, scope: !5236, inlinedAt: !5239)
!5482 = !DILocation(line: 448, column: 31, scope: !5231, inlinedAt: !5235)
!5483 = !DILocation(line: 448, column: 34, scope: !5231, inlinedAt: !5235)
!5484 = !DILocation(line: 448, column: 14, scope: !5231, inlinedAt: !5235)
!5485 = !DILocation(line: 450, column: 22, scope: !5231, inlinedAt: !5235)
!5486 = !DILocation(line: 450, column: 25, scope: !5231, inlinedAt: !5235)
!5487 = !DILocation(line: 450, column: 30, scope: !5231, inlinedAt: !5235)
!5488 = !DILocation(line: 450, column: 36, scope: !5231, inlinedAt: !5235)
!5489 = !DILocation(line: 450, column: 8, scope: !5231, inlinedAt: !5235)
!5490 = !DILocation(line: 450, column: 6, scope: !5231, inlinedAt: !5235)
!5491 = !DILocation(line: 451, column: 9, scope: !5231, inlinedAt: !5235)
!5492 = !DILocation(line: 552, column: 3, scope: !5236, inlinedAt: !5239)
!5493 = !DILocation(line: 557, column: 19, scope: !5238, inlinedAt: !5239)
!5494 = !DILocation(line: 557, column: 25, scope: !5238, inlinedAt: !5239)
!5495 = !DILocation(line: 557, column: 9, scope: !5238, inlinedAt: !5239)
!5496 = !DILocation(line: 557, column: 2, scope: !5238, inlinedAt: !5239)
!5497 = !DILocation(line: 558, column: 1, scope: !5238, inlinedAt: !5239)
!5498 = !DILocation(line: 664, column: 2, scope: !5227)
!5499 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !5500, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5500 = !DISubroutineType(types: !5501)
!5501 = !{null, !3522, !166}
!5502 = !DILocalVariable(name: "dev", arg: 1, scope: !5499, file: !73, line: 660, type: !3522)
!5503 = !DILocation(line: 660, column: 51, scope: !5499)
!5504 = !DILocalVariable(name: "data", arg: 2, scope: !5499, file: !73, line: 660, type: !166)
!5505 = !DILocation(line: 660, column: 62, scope: !5499)
!5506 = !DILocation(line: 662, column: 21, scope: !5499)
!5507 = !DILocation(line: 662, column: 2, scope: !5499)
!5508 = !DILocation(line: 662, column: 7, scope: !5499)
!5509 = !DILocation(line: 662, column: 19, scope: !5499)
!5510 = !DILocation(line: 663, column: 1, scope: !5499)
!5511 = distinct !DISubprogram(name: "__set_bit", scope: !5512, file: !5512, line: 25, type: !5513, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5512 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5513 = !DISubroutineType(types: !5514)
!5514 = !{null, !169, !5515}
!5515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5516, size: 64)
!5516 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !170)
!5517 = !DILocalVariable(name: "nr", arg: 1, scope: !5518, file: !5519, line: 66, type: !169)
!5518 = distinct !DISubprogram(name: "arch___set_bit", scope: !5519, file: !5519, line: 66, type: !5513, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5519 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5520 = !DILocation(line: 66, column: 21, scope: !5518, inlinedAt: !5521)
!5521 = distinct !DILocation(line: 28, column: 2, scope: !5511)
!5522 = !DILocalVariable(name: "addr", arg: 2, scope: !5518, file: !5519, line: 66, type: !5515)
!5523 = !DILocation(line: 66, column: 49, scope: !5518, inlinedAt: !5521)
!5524 = !DILocalVariable(name: "v", arg: 1, scope: !5525, file: !5526, line: 39, type: !5529)
!5525 = distinct !DISubprogram(name: "instrument_write", scope: !5526, file: !5526, line: 39, type: !5527, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5526 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5527 = !DISubroutineType(types: !5528)
!5528 = !{null, !5529, !501}
!5529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5530, size: 64)
!5530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5531)
!5531 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5532 = !DILocation(line: 39, column: 67, scope: !5525, inlinedAt: !5533)
!5533 = distinct !DILocation(line: 27, column: 2, scope: !5511)
!5534 = !DILocalVariable(name: "size", arg: 2, scope: !5525, file: !5526, line: 39, type: !501)
!5535 = !DILocation(line: 39, column: 77, scope: !5525, inlinedAt: !5533)
!5536 = !DILocalVariable(name: "nr", arg: 1, scope: !5511, file: !5512, line: 25, type: !169)
!5537 = !DILocation(line: 25, column: 35, scope: !5511)
!5538 = !DILocalVariable(name: "addr", arg: 2, scope: !5511, file: !5512, line: 25, type: !5515)
!5539 = !DILocation(line: 25, column: 63, scope: !5511)
!5540 = !DILocation(line: 27, column: 19, scope: !5511)
!5541 = !DILocation(line: 27, column: 26, scope: !5511)
!5542 = !DILocation(line: 27, column: 24, scope: !5511)
!5543 = !DILocation(line: 41, column: 20, scope: !5525, inlinedAt: !5533)
!5544 = !DILocation(line: 41, column: 23, scope: !5525, inlinedAt: !5533)
!5545 = !DILocation(line: 41, column: 2, scope: !5525, inlinedAt: !5533)
!5546 = !DILocation(line: 42, column: 2, scope: !5525, inlinedAt: !5533)
!5547 = !DILocation(line: 28, column: 17, scope: !5511)
!5548 = !DILocation(line: 28, column: 21, scope: !5511)
!5549 = !DILocation(line: 68, column: 44, scope: !5518, inlinedAt: !5521)
!5550 = !DILocation(line: 68, column: 56, scope: !5518, inlinedAt: !5521)
!5551 = !DILocation(line: 68, column: 2, scope: !5518, inlinedAt: !5521)
!5552 = !{i32 -2147198300}
!5553 = !DILocation(line: 29, column: 1, scope: !5511)
!5554 = distinct !DISubprogram(name: "xenkbd_connect_backend", scope: !3, file: !3, line: 423, type: !5555, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5555 = !DISubroutineType(types: !5556)
!5556 = !{!190, !377, !4427}
!5557 = !DILocalVariable(name: "dev", arg: 1, scope: !5554, file: !3, line: 423, type: !377)
!5558 = !DILocation(line: 423, column: 57, scope: !5554)
!5559 = !DILocalVariable(name: "info", arg: 2, scope: !5554, file: !3, line: 424, type: !4427)
!5560 = !DILocation(line: 424, column: 27, scope: !5554)
!5561 = !DILocalVariable(name: "ret", scope: !5554, file: !3, line: 426, type: !190)
!5562 = !DILocation(line: 426, column: 6, scope: !5554)
!5563 = !DILocalVariable(name: "evtchn", scope: !5554, file: !3, line: 426, type: !190)
!5564 = !DILocation(line: 426, column: 11, scope: !5554)
!5565 = !DILocalVariable(name: "xbt", scope: !5554, file: !3, line: 427, type: !5566)
!5566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_transaction", file: !358, line: 133, size: 32, elements: !5567)
!5567 = !{!5568}
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5566, file: !358, line: 135, baseType: !200, size: 32)
!5569 = !DILocation(line: 427, column: 28, scope: !5554)
!5570 = !DILocation(line: 429, column: 36, scope: !5554)
!5571 = !DILocation(line: 429, column: 41, scope: !5554)
!5572 = !DILocation(line: 430, column: 36, scope: !5554)
!5573 = !DILocation(line: 429, column: 8, scope: !5554)
!5574 = !DILocation(line: 429, column: 6, scope: !5554)
!5575 = !DILocation(line: 431, column: 6, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 431, column: 6)
!5577 = !DILocation(line: 431, column: 10, scope: !5576)
!5578 = !DILocation(line: 431, column: 6, scope: !5554)
!5579 = !DILocation(line: 432, column: 10, scope: !5576)
!5580 = !DILocation(line: 432, column: 3, scope: !5576)
!5581 = !DILocation(line: 433, column: 15, scope: !5554)
!5582 = !DILocation(line: 433, column: 2, scope: !5554)
!5583 = !DILocation(line: 433, column: 8, scope: !5554)
!5584 = !DILocation(line: 433, column: 13, scope: !5554)
!5585 = !DILocation(line: 435, column: 28, scope: !5554)
!5586 = !DILocation(line: 435, column: 8, scope: !5554)
!5587 = !DILocation(line: 435, column: 6, scope: !5554)
!5588 = !DILocation(line: 436, column: 6, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 436, column: 6)
!5590 = !DILocation(line: 436, column: 6, scope: !5554)
!5591 = !DILocation(line: 437, column: 3, scope: !5589)
!5592 = !DILocation(line: 438, column: 34, scope: !5554)
!5593 = !DILocation(line: 439, column: 9, scope: !5554)
!5594 = !DILocation(line: 439, column: 14, scope: !5554)
!5595 = !DILocation(line: 439, column: 26, scope: !5554)
!5596 = !DILocation(line: 438, column: 8, scope: !5554)
!5597 = !DILocation(line: 438, column: 6, scope: !5554)
!5598 = !DILocation(line: 440, column: 6, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 440, column: 6)
!5600 = !DILocation(line: 440, column: 10, scope: !5599)
!5601 = !DILocation(line: 440, column: 6, scope: !5554)
!5602 = !DILocation(line: 441, column: 20, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5599, file: !3, line: 440, column: 15)
!5604 = !DILocation(line: 441, column: 25, scope: !5603)
!5605 = !DILocation(line: 441, column: 3, scope: !5603)
!5606 = !DILocation(line: 442, column: 3, scope: !5603)
!5607 = !DILocation(line: 444, column: 14, scope: !5554)
!5608 = !DILocation(line: 444, column: 2, scope: !5554)
!5609 = !DILocation(line: 444, column: 8, scope: !5554)
!5610 = !DILocation(line: 444, column: 12, scope: !5554)
!5611 = !DILabel(scope: !5554, name: "again", file: !3, line: 446)
!5612 = !DILocation(line: 446, column: 2, scope: !5554)
!5613 = !DILocation(line: 447, column: 8, scope: !5554)
!5614 = !DILocation(line: 447, column: 6, scope: !5554)
!5615 = !DILocation(line: 448, column: 6, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 448, column: 6)
!5617 = !DILocation(line: 448, column: 6, scope: !5554)
!5618 = !DILocation(line: 449, column: 20, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5616, file: !3, line: 448, column: 11)
!5620 = !DILocation(line: 449, column: 25, scope: !5619)
!5621 = !DILocation(line: 449, column: 3, scope: !5619)
!5622 = !DILocation(line: 450, column: 3, scope: !5619)
!5623 = !DILocation(line: 452, column: 27, scope: !5554)
!5624 = !DILocation(line: 452, column: 32, scope: !5554)
!5625 = !DILocation(line: 453, column: 8, scope: !5554)
!5626 = !DILocation(line: 452, column: 8, scope: !5554)
!5627 = !DILocation(line: 452, column: 6, scope: !5554)
!5628 = !DILocation(line: 454, column: 6, scope: !5629)
!5629 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 454, column: 6)
!5630 = !DILocation(line: 454, column: 6, scope: !5554)
!5631 = !DILocation(line: 455, column: 3, scope: !5629)
!5632 = !DILocation(line: 456, column: 27, scope: !5554)
!5633 = !DILocation(line: 456, column: 32, scope: !5554)
!5634 = !DILocation(line: 457, column: 14, scope: !5554)
!5635 = !DILocation(line: 457, column: 20, scope: !5554)
!5636 = !DILocation(line: 456, column: 8, scope: !5554)
!5637 = !DILocation(line: 456, column: 6, scope: !5554)
!5638 = !DILocation(line: 458, column: 6, scope: !5639)
!5639 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 458, column: 6)
!5640 = !DILocation(line: 458, column: 6, scope: !5554)
!5641 = !DILocation(line: 459, column: 3, scope: !5639)
!5642 = !DILocation(line: 460, column: 27, scope: !5554)
!5643 = !DILocation(line: 460, column: 32, scope: !5554)
!5644 = !DILocation(line: 461, column: 8, scope: !5554)
!5645 = !DILocation(line: 460, column: 8, scope: !5554)
!5646 = !DILocation(line: 460, column: 6, scope: !5554)
!5647 = !DILocation(line: 462, column: 6, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 462, column: 6)
!5649 = !DILocation(line: 462, column: 6, scope: !5554)
!5650 = !DILocation(line: 463, column: 3, scope: !5648)
!5651 = !DILocation(line: 464, column: 8, scope: !5554)
!5652 = !DILocation(line: 464, column: 6, scope: !5554)
!5653 = !DILocation(line: 465, column: 6, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5554, file: !3, line: 465, column: 6)
!5655 = !DILocation(line: 465, column: 6, scope: !5554)
!5656 = !DILocation(line: 466, column: 7, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5658, file: !3, line: 466, column: 7)
!5658 = distinct !DILexicalBlock(scope: !5654, file: !3, line: 465, column: 11)
!5659 = !DILocation(line: 466, column: 11, scope: !5657)
!5660 = !DILocation(line: 466, column: 7, scope: !5658)
!5661 = !DILocation(line: 467, column: 4, scope: !5657)
!5662 = !DILocation(line: 468, column: 20, scope: !5658)
!5663 = !DILocation(line: 468, column: 25, scope: !5658)
!5664 = !DILocation(line: 468, column: 3, scope: !5658)
!5665 = !DILocation(line: 469, column: 3, scope: !5658)
!5666 = !DILocation(line: 472, column: 22, scope: !5554)
!5667 = !DILocation(line: 472, column: 2, scope: !5554)
!5668 = !DILocation(line: 473, column: 2, scope: !5554)
!5669 = !DILabel(scope: !5554, name: "error_xenbus", file: !3, line: 475)
!5670 = !DILocation(line: 475, column: 2, scope: !5554)
!5671 = !DILocation(line: 476, column: 2, scope: !5554)
!5672 = !DILocation(line: 477, column: 19, scope: !5554)
!5673 = !DILocation(line: 477, column: 24, scope: !5554)
!5674 = !DILocation(line: 477, column: 2, scope: !5554)
!5675 = !DILabel(scope: !5554, name: "error_irqh", file: !3, line: 478)
!5676 = !DILocation(line: 478, column: 2, scope: !5554)
!5677 = !DILocation(line: 479, column: 25, scope: !5554)
!5678 = !DILocation(line: 479, column: 31, scope: !5554)
!5679 = !DILocation(line: 479, column: 36, scope: !5554)
!5680 = !DILocation(line: 479, column: 2, scope: !5554)
!5681 = !DILocation(line: 480, column: 2, scope: !5554)
!5682 = !DILocation(line: 480, column: 8, scope: !5554)
!5683 = !DILocation(line: 480, column: 12, scope: !5554)
!5684 = !DILabel(scope: !5554, name: "error_evtchan", file: !3, line: 481)
!5685 = !DILocation(line: 481, column: 2, scope: !5554)
!5686 = !DILocation(line: 482, column: 21, scope: !5554)
!5687 = !DILocation(line: 482, column: 26, scope: !5554)
!5688 = !DILocation(line: 482, column: 2, scope: !5554)
!5689 = !DILabel(scope: !5554, name: "error_grant", file: !3, line: 483)
!5690 = !DILocation(line: 483, column: 2, scope: !5554)
!5691 = !DILocation(line: 484, column: 28, scope: !5554)
!5692 = !DILocation(line: 484, column: 34, scope: !5554)
!5693 = !DILocation(line: 484, column: 2, scope: !5554)
!5694 = !DILocation(line: 485, column: 2, scope: !5554)
!5695 = !DILocation(line: 485, column: 8, scope: !5554)
!5696 = !DILocation(line: 485, column: 13, scope: !5554)
!5697 = !DILocation(line: 486, column: 9, scope: !5554)
!5698 = !DILocation(line: 486, column: 2, scope: !5554)
!5699 = !DILocation(line: 487, column: 1, scope: !5554)
!5700 = distinct !DISubprogram(name: "get_order", scope: !5701, file: !5701, line: 29, type: !5702, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5701 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5702 = !DISubroutineType(types: !5703)
!5703 = !{!190, !170}
!5704 = !DILocalVariable(name: "x", arg: 1, scope: !5705, file: !5519, line: 366, type: !597)
!5705 = distinct !DISubprogram(name: "fls64", scope: !5519, file: !5519, line: 366, type: !5706, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5706 = !DISubroutineType(types: !5707)
!5707 = !{!190, !597}
!5708 = !DILocation(line: 366, column: 40, scope: !5705, inlinedAt: !5709)
!5709 = distinct !DILocation(line: 46, column: 9, scope: !5700)
!5710 = !DILocalVariable(name: "bitpos", scope: !5705, file: !5519, line: 368, type: !190)
!5711 = !DILocation(line: 368, column: 6, scope: !5705, inlinedAt: !5709)
!5712 = !DILocalVariable(name: "size", arg: 1, scope: !5700, file: !5701, line: 29, type: !170)
!5713 = !DILocation(line: 29, column: 63, scope: !5700)
!5714 = !DILocation(line: 31, column: 27, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5700, file: !5701, line: 31, column: 6)
!5716 = !DILocation(line: 31, column: 6, scope: !5715)
!5717 = !DILocation(line: 31, column: 6, scope: !5700)
!5718 = !DILocation(line: 32, column: 8, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5720, file: !5701, line: 32, column: 7)
!5720 = distinct !DILexicalBlock(scope: !5715, file: !5701, line: 31, column: 34)
!5721 = !DILocation(line: 32, column: 7, scope: !5720)
!5722 = !DILocation(line: 33, column: 4, scope: !5719)
!5723 = !DILocation(line: 35, column: 7, scope: !5724)
!5724 = distinct !DILexicalBlock(scope: !5720, file: !5701, line: 35, column: 7)
!5725 = !DILocation(line: 35, column: 12, scope: !5724)
!5726 = !DILocation(line: 35, column: 7, scope: !5720)
!5727 = !DILocation(line: 36, column: 4, scope: !5724)
!5728 = !DILocation(line: 38, column: 10, scope: !5720)
!5729 = !DILocation(line: 38, column: 28, scope: !5720)
!5730 = !DILocation(line: 38, column: 41, scope: !5720)
!5731 = !DILocation(line: 38, column: 3, scope: !5720)
!5732 = !DILocation(line: 41, column: 6, scope: !5700)
!5733 = !DILocation(line: 42, column: 7, scope: !5700)
!5734 = !DILocation(line: 46, column: 15, scope: !5700)
!5735 = !DILocation(line: 374, column: 2, scope: !5705, inlinedAt: !5709)
!5736 = !DILocation(line: 376, column: 14, scope: !5705, inlinedAt: !5709)
!5737 = !{i32 253285}
!5738 = !DILocation(line: 377, column: 9, scope: !5705, inlinedAt: !5709)
!5739 = !DILocation(line: 377, column: 16, scope: !5705, inlinedAt: !5709)
!5740 = !DILocation(line: 46, column: 2, scope: !5700)
!5741 = !DILocation(line: 48, column: 1, scope: !5700)
!5742 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5743, file: !5743, line: 30, type: !5744, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5743 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5744 = !DISubroutineType(types: !5745)
!5745 = !{!190, !596}
!5746 = !DILocation(line: 366, column: 40, scope: !5705, inlinedAt: !5747)
!5747 = distinct !DILocation(line: 32, column: 9, scope: !5742)
!5748 = !DILocation(line: 368, column: 6, scope: !5705, inlinedAt: !5747)
!5749 = !DILocalVariable(name: "n", arg: 1, scope: !5742, file: !5743, line: 30, type: !596)
!5750 = !DILocation(line: 30, column: 21, scope: !5742)
!5751 = !DILocation(line: 32, column: 15, scope: !5742)
!5752 = !DILocation(line: 374, column: 2, scope: !5705, inlinedAt: !5747)
!5753 = !DILocation(line: 376, column: 14, scope: !5705, inlinedAt: !5747)
!5754 = !DILocation(line: 377, column: 9, scope: !5705, inlinedAt: !5747)
!5755 = !DILocation(line: 377, column: 16, scope: !5705, inlinedAt: !5747)
!5756 = !DILocation(line: 32, column: 18, scope: !5742)
!5757 = !DILocation(line: 32, column: 2, scope: !5742)
!5758 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5759, file: !5759, line: 137, type: !5760, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5759 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5760 = !DISubroutineType(types: !5761)
!5761 = !{!166, !1101, !2280, !501, !164}
!5762 = !DILocalVariable(name: "s", arg: 1, scope: !5758, file: !5759, line: 137, type: !1101)
!5763 = !DILocation(line: 137, column: 54, scope: !5758)
!5764 = !DILocalVariable(name: "object", arg: 2, scope: !5758, file: !5759, line: 137, type: !2280)
!5765 = !DILocation(line: 137, column: 69, scope: !5758)
!5766 = !DILocalVariable(name: "size", arg: 3, scope: !5758, file: !5759, line: 138, type: !501)
!5767 = !DILocation(line: 138, column: 12, scope: !5758)
!5768 = !DILocalVariable(name: "flags", arg: 4, scope: !5758, file: !5759, line: 138, type: !164)
!5769 = !DILocation(line: 138, column: 24, scope: !5758)
!5770 = !DILocation(line: 140, column: 17, scope: !5758)
!5771 = !DILocation(line: 140, column: 2, scope: !5758)
!5772 = distinct !DISubprogram(name: "kasan_check_write", scope: !5773, file: !5773, line: 38, type: !5774, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5773 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5774 = !DISubroutineType(types: !5775)
!5775 = !{!371, !5529, !7}
!5776 = !DILocalVariable(name: "p", arg: 1, scope: !5772, file: !5773, line: 38, type: !5529)
!5777 = !DILocation(line: 38, column: 59, scope: !5772)
!5778 = !DILocalVariable(name: "size", arg: 2, scope: !5772, file: !5773, line: 38, type: !7)
!5779 = !DILocation(line: 38, column: 75, scope: !5772)
!5780 = !DILocation(line: 40, column: 2, scope: !5772)
!5781 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5782, file: !5782, line: 178, type: !5783, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5782 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5783 = !DISubroutineType(types: !5784)
!5784 = !{null, !5529, !501, !190}
!5785 = !DILocalVariable(name: "ptr", arg: 1, scope: !5781, file: !5782, line: 178, type: !5529)
!5786 = !DILocation(line: 178, column: 60, scope: !5781)
!5787 = !DILocalVariable(name: "size", arg: 2, scope: !5781, file: !5782, line: 178, type: !501)
!5788 = !DILocation(line: 178, column: 72, scope: !5781)
!5789 = !DILocalVariable(name: "type", arg: 3, scope: !5781, file: !5782, line: 179, type: !190)
!5790 = !DILocation(line: 179, column: 15, scope: !5781)
!5791 = !DILocation(line: 179, column: 23, scope: !5781)
!5792 = distinct !DISubprogram(name: "pfn_to_gfn", scope: !5793, file: !5793, line: 251, type: !5794, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5793 = !DIFile(filename: "./arch/x86/include/asm/xen/page.h", directory: "/home/lizy2001/genbc/linux")
!5794 = !DISubroutineType(types: !5795)
!5795 = !{!170, !170}
!5796 = !DILocalVariable(name: "pfn", arg: 1, scope: !5792, file: !5793, line: 251, type: !170)
!5797 = !DILocation(line: 251, column: 54, scope: !5792)
!5798 = !DILocation(line: 253, column: 6, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5792, file: !5793, line: 253, column: 6)
!5800 = !DILocation(line: 253, column: 6, scope: !5792)
!5801 = !DILocation(line: 254, column: 10, scope: !5799)
!5802 = !DILocation(line: 254, column: 3, scope: !5799)
!5803 = !DILocation(line: 256, column: 21, scope: !5799)
!5804 = !DILocation(line: 256, column: 10, scope: !5799)
!5805 = !DILocation(line: 256, column: 3, scope: !5799)
!5806 = !DILocation(line: 257, column: 1, scope: !5792)
!5807 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !5808, file: !5808, line: 18, type: !5794, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5808 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/lizy2001/genbc/linux")
!5809 = !DILocalVariable(name: "x", arg: 1, scope: !5807, file: !5808, line: 18, type: !170)
!5810 = !DILocation(line: 18, column: 63, scope: !5807)
!5811 = !DILocalVariable(name: "y", scope: !5807, file: !5808, line: 20, type: !170)
!5812 = !DILocation(line: 20, column: 16, scope: !5807)
!5813 = !DILocation(line: 20, column: 20, scope: !5807)
!5814 = !DILocation(line: 20, column: 22, scope: !5807)
!5815 = !DILocation(line: 23, column: 6, scope: !5807)
!5816 = !DILocation(line: 23, column: 12, scope: !5807)
!5817 = !DILocation(line: 23, column: 16, scope: !5807)
!5818 = !DILocation(line: 23, column: 14, scope: !5807)
!5819 = !DILocation(line: 23, column: 11, scope: !5807)
!5820 = !DILocation(line: 23, column: 21, scope: !5807)
!5821 = !DILocation(line: 23, column: 55, scope: !5807)
!5822 = !DILocation(line: 23, column: 53, scope: !5807)
!5823 = !DILocation(line: 23, column: 8, scope: !5807)
!5824 = !DILocation(line: 23, column: 4, scope: !5807)
!5825 = !DILocation(line: 25, column: 9, scope: !5807)
!5826 = !DILocation(line: 25, column: 2, scope: !5807)
!5827 = distinct !DISubprogram(name: "input_handler", scope: !3, file: !3, line: 181, type: !4219, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5828 = !DILocalVariable(name: "rq", arg: 1, scope: !5827, file: !3, line: 181, type: !190)
!5829 = !DILocation(line: 181, column: 38, scope: !5827)
!5830 = !DILocalVariable(name: "dev_id", arg: 2, scope: !5827, file: !3, line: 181, type: !166)
!5831 = !DILocation(line: 181, column: 48, scope: !5827)
!5832 = !DILocalVariable(name: "info", scope: !5827, file: !3, line: 183, type: !4427)
!5833 = !DILocation(line: 183, column: 22, scope: !5827)
!5834 = !DILocation(line: 183, column: 29, scope: !5827)
!5835 = !DILocalVariable(name: "page", scope: !5827, file: !3, line: 184, type: !4726)
!5836 = !DILocation(line: 184, column: 22, scope: !5827)
!5837 = !DILocation(line: 184, column: 29, scope: !5827)
!5838 = !DILocation(line: 184, column: 35, scope: !5827)
!5839 = !DILocalVariable(name: "cons", scope: !5827, file: !3, line: 185, type: !201)
!5840 = !DILocation(line: 185, column: 8, scope: !5827)
!5841 = !DILocalVariable(name: "prod", scope: !5827, file: !3, line: 185, type: !201)
!5842 = !DILocation(line: 185, column: 14, scope: !5827)
!5843 = !DILocation(line: 187, column: 9, scope: !5827)
!5844 = !DILocation(line: 187, column: 15, scope: !5827)
!5845 = !DILocation(line: 187, column: 7, scope: !5827)
!5846 = !DILocation(line: 188, column: 6, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5827, file: !3, line: 188, column: 6)
!5848 = !DILocation(line: 188, column: 14, scope: !5847)
!5849 = !DILocation(line: 188, column: 20, scope: !5847)
!5850 = !DILocation(line: 188, column: 11, scope: !5847)
!5851 = !DILocation(line: 188, column: 6, scope: !5827)
!5852 = !DILocation(line: 189, column: 3, scope: !5847)
!5853 = !DILocation(line: 190, column: 2, scope: !5827)
!5854 = !{i32 -2141315725}
!5855 = !DILocation(line: 191, column: 14, scope: !5856)
!5856 = distinct !DILexicalBlock(scope: !5827, file: !3, line: 191, column: 2)
!5857 = !DILocation(line: 191, column: 20, scope: !5856)
!5858 = !DILocation(line: 191, column: 12, scope: !5856)
!5859 = !DILocation(line: 191, column: 7, scope: !5856)
!5860 = !DILocation(line: 191, column: 29, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5856, file: !3, line: 191, column: 2)
!5862 = !DILocation(line: 191, column: 37, scope: !5861)
!5863 = !DILocation(line: 191, column: 34, scope: !5861)
!5864 = !DILocation(line: 191, column: 2, scope: !5856)
!5865 = !DILocation(line: 192, column: 23, scope: !5861)
!5866 = !DILocation(line: 192, column: 30, scope: !5861)
!5867 = !DILocation(line: 192, column: 3, scope: !5861)
!5868 = !DILocation(line: 191, column: 47, scope: !5861)
!5869 = !DILocation(line: 191, column: 2, scope: !5861)
!5870 = distinct !{!5870, !5864, !5871}
!5871 = !DILocation(line: 192, column: 60, scope: !5856)
!5872 = !DILocation(line: 193, column: 2, scope: !5827)
!5873 = !{i32 -2141315495}
!5874 = !DILocation(line: 194, column: 18, scope: !5827)
!5875 = !DILocation(line: 194, column: 2, scope: !5827)
!5876 = !DILocation(line: 194, column: 8, scope: !5827)
!5877 = !DILocation(line: 194, column: 16, scope: !5827)
!5878 = !DILocation(line: 195, column: 24, scope: !5827)
!5879 = !DILocation(line: 195, column: 30, scope: !5827)
!5880 = !DILocation(line: 195, column: 2, scope: !5827)
!5881 = !DILocation(line: 197, column: 2, scope: !5827)
!5882 = !DILocation(line: 198, column: 1, scope: !5827)
!5883 = distinct !DISubprogram(name: "xen_feature", scope: !5884, file: !5884, line: 19, type: !3201, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5884 = !DIFile(filename: "./include/xen/features.h", directory: "/home/lizy2001/genbc/linux")
!5885 = !DILocalVariable(name: "flag", arg: 1, scope: !5883, file: !5884, line: 19, type: !190)
!5886 = !DILocation(line: 19, column: 35, scope: !5883)
!5887 = !DILocation(line: 21, column: 22, scope: !5883)
!5888 = !DILocation(line: 21, column: 9, scope: !5883)
!5889 = !DILocation(line: 21, column: 2, scope: !5883)
!5890 = distinct !DISubprogram(name: "pfn_to_mfn", scope: !5793, file: !5793, line: 164, type: !5794, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5891 = !DILocalVariable(name: "pfn", arg: 1, scope: !5890, file: !5793, line: 164, type: !170)
!5892 = !DILocation(line: 164, column: 54, scope: !5890)
!5893 = !DILocalVariable(name: "mfn", scope: !5890, file: !5793, line: 166, type: !170)
!5894 = !DILocation(line: 166, column: 16, scope: !5890)
!5895 = !DILocation(line: 173, column: 6, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5890, file: !5793, line: 173, column: 6)
!5897 = !DILocation(line: 173, column: 6, scope: !5890)
!5898 = !DILocation(line: 174, column: 10, scope: !5896)
!5899 = !DILocation(line: 174, column: 3, scope: !5896)
!5900 = !DILocation(line: 176, column: 21, scope: !5890)
!5901 = !DILocation(line: 176, column: 8, scope: !5890)
!5902 = !DILocation(line: 176, column: 6, scope: !5890)
!5903 = !DILocation(line: 178, column: 6, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5890, file: !5793, line: 178, column: 6)
!5905 = !DILocation(line: 178, column: 10, scope: !5904)
!5906 = !DILocation(line: 178, column: 6, scope: !5890)
!5907 = !DILocation(line: 179, column: 7, scope: !5904)
!5908 = !DILocation(line: 179, column: 3, scope: !5904)
!5909 = !DILocation(line: 181, column: 9, scope: !5890)
!5910 = !DILocation(line: 181, column: 2, scope: !5890)
!5911 = !DILocation(line: 182, column: 1, scope: !5890)
!5912 = distinct !DISubprogram(name: "__pfn_to_mfn", scope: !5793, file: !5793, line: 141, type: !5794, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5913 = !DILocalVariable(name: "pfn", arg: 1, scope: !5912, file: !5793, line: 141, type: !170)
!5914 = !DILocation(line: 141, column: 56, scope: !5912)
!5915 = !DILocalVariable(name: "mfn", scope: !5912, file: !5793, line: 143, type: !170)
!5916 = !DILocation(line: 143, column: 16, scope: !5912)
!5917 = !DILocation(line: 145, column: 6, scope: !5918)
!5918 = distinct !DILexicalBlock(scope: !5912, file: !5793, line: 145, column: 6)
!5919 = !DILocation(line: 145, column: 12, scope: !5918)
!5920 = !DILocation(line: 145, column: 10, scope: !5918)
!5921 = !DILocation(line: 145, column: 6, scope: !5912)
!5922 = !DILocation(line: 146, column: 9, scope: !5918)
!5923 = !DILocation(line: 146, column: 22, scope: !5918)
!5924 = !DILocation(line: 146, column: 7, scope: !5918)
!5925 = !DILocation(line: 146, column: 3, scope: !5918)
!5926 = !DILocation(line: 147, column: 11, scope: !5927)
!5927 = distinct !DILexicalBlock(scope: !5918, file: !5793, line: 147, column: 11)
!5928 = !DILocation(line: 147, column: 11, scope: !5918)
!5929 = !DILocation(line: 148, column: 30, scope: !5927)
!5930 = !DILocation(line: 148, column: 10, scope: !5927)
!5931 = !DILocation(line: 148, column: 3, scope: !5927)
!5932 = !DILocation(line: 150, column: 10, scope: !5927)
!5933 = !DILocation(line: 150, column: 3, scope: !5927)
!5934 = !DILocation(line: 152, column: 6, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5912, file: !5793, line: 152, column: 6)
!5936 = !DILocation(line: 152, column: 6, scope: !5912)
!5937 = !DILocation(line: 153, column: 30, scope: !5935)
!5938 = !DILocation(line: 153, column: 10, scope: !5935)
!5939 = !DILocation(line: 153, column: 3, scope: !5935)
!5940 = !DILocation(line: 155, column: 9, scope: !5912)
!5941 = !DILocation(line: 155, column: 2, scope: !5912)
!5942 = !DILocation(line: 156, column: 1, scope: !5912)
!5943 = distinct !DISubprogram(name: "xenkbd_handle_event", scope: !3, file: !3, line: 159, type: !5944, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5944 = !DISubroutineType(types: !5945)
!5945 = !{null, !4427, !171}
!5946 = !DILocalVariable(name: "info", arg: 1, scope: !5943, file: !3, line: 159, type: !4427)
!5947 = !DILocation(line: 159, column: 53, scope: !5943)
!5948 = !DILocalVariable(name: "event", arg: 2, scope: !5943, file: !3, line: 160, type: !171)
!5949 = !DILocation(line: 160, column: 28, scope: !5943)
!5950 = !DILocation(line: 162, column: 10, scope: !5943)
!5951 = !DILocation(line: 162, column: 17, scope: !5943)
!5952 = !DILocation(line: 162, column: 2, scope: !5943)
!5953 = !DILocation(line: 164, column: 30, scope: !5954)
!5954 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 162, column: 23)
!5955 = !DILocation(line: 164, column: 37, scope: !5954)
!5956 = !DILocation(line: 164, column: 44, scope: !5954)
!5957 = !DILocation(line: 164, column: 3, scope: !5954)
!5958 = !DILocation(line: 165, column: 3, scope: !5954)
!5959 = !DILocation(line: 168, column: 27, scope: !5954)
!5960 = !DILocation(line: 168, column: 34, scope: !5954)
!5961 = !DILocation(line: 168, column: 41, scope: !5954)
!5962 = !DILocation(line: 168, column: 3, scope: !5954)
!5963 = !DILocation(line: 169, column: 3, scope: !5954)
!5964 = !DILocation(line: 172, column: 32, scope: !5954)
!5965 = !DILocation(line: 172, column: 39, scope: !5954)
!5966 = !DILocation(line: 172, column: 46, scope: !5954)
!5967 = !DILocation(line: 172, column: 3, scope: !5954)
!5968 = !DILocation(line: 173, column: 3, scope: !5954)
!5969 = !DILocation(line: 176, column: 26, scope: !5954)
!5970 = !DILocation(line: 176, column: 33, scope: !5954)
!5971 = !DILocation(line: 176, column: 40, scope: !5954)
!5972 = !DILocation(line: 176, column: 3, scope: !5954)
!5973 = !DILocation(line: 177, column: 3, scope: !5954)
!5974 = !DILocation(line: 179, column: 1, scope: !5943)
!5975 = distinct !DISubprogram(name: "xenkbd_handle_motion_event", scope: !3, file: !3, line: 63, type: !5976, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!5976 = !DISubroutineType(types: !5977)
!5977 = !{null, !4427, !5978}
!5978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!5979 = !DILocalVariable(name: "info", arg: 1, scope: !5975, file: !3, line: 63, type: !4427)
!5980 = !DILocation(line: 63, column: 60, scope: !5975)
!5981 = !DILocalVariable(name: "motion", arg: 2, scope: !5975, file: !3, line: 64, type: !5978)
!5982 = !DILocation(line: 64, column: 34, scope: !5975)
!5983 = !DILocation(line: 66, column: 6, scope: !5984)
!5984 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 66, column: 6)
!5985 = !DILocation(line: 66, column: 6, scope: !5975)
!5986 = !DILocation(line: 67, column: 3, scope: !5984)
!5987 = !DILocation(line: 69, column: 19, scope: !5975)
!5988 = !DILocation(line: 69, column: 25, scope: !5975)
!5989 = !DILocation(line: 69, column: 37, scope: !5975)
!5990 = !DILocation(line: 69, column: 45, scope: !5975)
!5991 = !DILocation(line: 69, column: 2, scope: !5975)
!5992 = !DILocation(line: 70, column: 19, scope: !5975)
!5993 = !DILocation(line: 70, column: 25, scope: !5975)
!5994 = !DILocation(line: 70, column: 37, scope: !5975)
!5995 = !DILocation(line: 70, column: 45, scope: !5975)
!5996 = !DILocation(line: 70, column: 2, scope: !5975)
!5997 = !DILocation(line: 71, column: 6, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5975, file: !3, line: 71, column: 6)
!5999 = !DILocation(line: 71, column: 14, scope: !5998)
!6000 = !DILocation(line: 71, column: 6, scope: !5975)
!6001 = !DILocation(line: 72, column: 20, scope: !5998)
!6002 = !DILocation(line: 72, column: 26, scope: !5998)
!6003 = !DILocation(line: 72, column: 43, scope: !5998)
!6004 = !DILocation(line: 72, column: 51, scope: !5998)
!6005 = !DILocation(line: 72, column: 42, scope: !5998)
!6006 = !DILocation(line: 72, column: 3, scope: !5998)
!6007 = !DILocation(line: 73, column: 13, scope: !5975)
!6008 = !DILocation(line: 73, column: 19, scope: !5975)
!6009 = !DILocation(line: 73, column: 2, scope: !5975)
!6010 = !DILocation(line: 74, column: 1, scope: !5975)
!6011 = distinct !DISubprogram(name: "xenkbd_handle_key_event", scope: !3, file: !3, line: 89, type: !6012, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!6012 = !DISubroutineType(types: !6013)
!6013 = !{null, !4427, !6014}
!6014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!6015 = !DILocalVariable(name: "info", arg: 1, scope: !6011, file: !3, line: 89, type: !4427)
!6016 = !DILocation(line: 89, column: 57, scope: !6011)
!6017 = !DILocalVariable(name: "key", arg: 2, scope: !6011, file: !3, line: 90, type: !6014)
!6018 = !DILocation(line: 90, column: 28, scope: !6011)
!6019 = !DILocalVariable(name: "dev", scope: !6011, file: !3, line: 92, type: !4431)
!6020 = !DILocation(line: 92, column: 20, scope: !6011)
!6021 = !DILocalVariable(name: "value", scope: !6011, file: !3, line: 93, type: !190)
!6022 = !DILocation(line: 93, column: 6, scope: !6011)
!6023 = !DILocation(line: 93, column: 14, scope: !6011)
!6024 = !DILocation(line: 93, column: 19, scope: !6011)
!6025 = !DILocation(line: 95, column: 15, scope: !6026)
!6026 = distinct !DILexicalBlock(scope: !6011, file: !3, line: 95, column: 6)
!6027 = !DILocation(line: 95, column: 20, scope: !6026)
!6028 = !DILocation(line: 95, column: 29, scope: !6026)
!6029 = !DILocation(line: 95, column: 35, scope: !6026)
!6030 = !DILocation(line: 95, column: 40, scope: !6026)
!6031 = !DILocation(line: 95, column: 6, scope: !6026)
!6032 = !DILocation(line: 95, column: 6, scope: !6011)
!6033 = !DILocation(line: 96, column: 9, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !6026, file: !3, line: 95, column: 49)
!6035 = !DILocation(line: 96, column: 15, scope: !6034)
!6036 = !DILocation(line: 96, column: 7, scope: !6034)
!6037 = !DILocation(line: 97, column: 2, scope: !6034)
!6038 = !DILocation(line: 97, column: 22, scope: !6039)
!6039 = distinct !DILexicalBlock(scope: !6026, file: !3, line: 97, column: 13)
!6040 = !DILocation(line: 97, column: 27, scope: !6039)
!6041 = !DILocation(line: 97, column: 36, scope: !6039)
!6042 = !DILocation(line: 97, column: 42, scope: !6039)
!6043 = !DILocation(line: 97, column: 47, scope: !6039)
!6044 = !DILocation(line: 97, column: 13, scope: !6039)
!6045 = !DILocation(line: 97, column: 13, scope: !6026)
!6046 = !DILocation(line: 98, column: 9, scope: !6047)
!6047 = distinct !DILexicalBlock(scope: !6039, file: !3, line: 97, column: 56)
!6048 = !DILocation(line: 98, column: 15, scope: !6047)
!6049 = !DILocation(line: 98, column: 7, scope: !6047)
!6050 = !DILocation(line: 99, column: 7, scope: !6051)
!6051 = distinct !DILexicalBlock(scope: !6047, file: !3, line: 99, column: 7)
!6052 = !DILocation(line: 99, column: 12, scope: !6051)
!6053 = !DILocation(line: 99, column: 20, scope: !6051)
!6054 = !DILocation(line: 99, column: 32, scope: !6051)
!6055 = !DILocation(line: 99, column: 37, scope: !6051)
!6056 = !DILocation(line: 99, column: 46, scope: !6051)
!6057 = !DILocation(line: 99, column: 52, scope: !6051)
!6058 = !DILocation(line: 99, column: 57, scope: !6051)
!6059 = !DILocation(line: 99, column: 23, scope: !6051)
!6060 = !DILocation(line: 99, column: 7, scope: !6047)
!6061 = !DILocation(line: 100, column: 10, scope: !6051)
!6062 = !DILocation(line: 100, column: 4, scope: !6051)
!6063 = !DILocation(line: 101, column: 2, scope: !6047)
!6064 = !DILocation(line: 102, column: 3, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6039, file: !3, line: 101, column: 9)
!6066 = !DILocation(line: 103, column: 3, scope: !6065)
!6067 = !DILocation(line: 106, column: 6, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6011, file: !3, line: 106, column: 6)
!6069 = !DILocation(line: 106, column: 6, scope: !6011)
!6070 = !DILocation(line: 107, column: 3, scope: !6068)
!6071 = !DILocation(line: 109, column: 14, scope: !6011)
!6072 = !DILocation(line: 109, column: 27, scope: !6011)
!6073 = !DILocation(line: 109, column: 32, scope: !6011)
!6074 = !DILocation(line: 109, column: 41, scope: !6011)
!6075 = !DILocation(line: 109, column: 2, scope: !6011)
!6076 = !DILocation(line: 110, column: 13, scope: !6011)
!6077 = !DILocation(line: 110, column: 2, scope: !6011)
!6078 = !DILocation(line: 111, column: 1, scope: !6011)
!6079 = distinct !DISubprogram(name: "xenkbd_handle_position_event", scope: !3, file: !3, line: 76, type: !6080, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!6080 = !DISubroutineType(types: !6081)
!6081 = !{null, !4427, !6082}
!6082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!6083 = !DILocalVariable(name: "info", arg: 1, scope: !6079, file: !3, line: 76, type: !4427)
!6084 = !DILocation(line: 76, column: 62, scope: !6079)
!6085 = !DILocalVariable(name: "pos", arg: 2, scope: !6079, file: !3, line: 77, type: !6082)
!6086 = !DILocation(line: 77, column: 31, scope: !6079)
!6087 = !DILocation(line: 79, column: 6, scope: !6088)
!6088 = distinct !DILexicalBlock(scope: !6079, file: !3, line: 79, column: 6)
!6089 = !DILocation(line: 79, column: 6, scope: !6079)
!6090 = !DILocation(line: 80, column: 3, scope: !6088)
!6091 = !DILocation(line: 82, column: 19, scope: !6079)
!6092 = !DILocation(line: 82, column: 25, scope: !6079)
!6093 = !DILocation(line: 82, column: 37, scope: !6079)
!6094 = !DILocation(line: 82, column: 42, scope: !6079)
!6095 = !DILocation(line: 82, column: 2, scope: !6079)
!6096 = !DILocation(line: 83, column: 19, scope: !6079)
!6097 = !DILocation(line: 83, column: 25, scope: !6079)
!6098 = !DILocation(line: 83, column: 37, scope: !6079)
!6099 = !DILocation(line: 83, column: 42, scope: !6079)
!6100 = !DILocation(line: 83, column: 2, scope: !6079)
!6101 = !DILocation(line: 84, column: 6, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !6079, file: !3, line: 84, column: 6)
!6103 = !DILocation(line: 84, column: 11, scope: !6102)
!6104 = !DILocation(line: 84, column: 6, scope: !6079)
!6105 = !DILocation(line: 85, column: 20, scope: !6102)
!6106 = !DILocation(line: 85, column: 26, scope: !6102)
!6107 = !DILocation(line: 85, column: 43, scope: !6102)
!6108 = !DILocation(line: 85, column: 48, scope: !6102)
!6109 = !DILocation(line: 85, column: 42, scope: !6102)
!6110 = !DILocation(line: 85, column: 3, scope: !6102)
!6111 = !DILocation(line: 86, column: 13, scope: !6079)
!6112 = !DILocation(line: 86, column: 19, scope: !6079)
!6113 = !DILocation(line: 86, column: 2, scope: !6079)
!6114 = !DILocation(line: 87, column: 1, scope: !6079)
!6115 = distinct !DISubprogram(name: "xenkbd_handle_mt_event", scope: !3, file: !3, line: 113, type: !6116, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!6116 = !DISubroutineType(types: !6117)
!6117 = !{null, !4427, !6118}
!6118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!6119 = !DILocalVariable(name: "info", arg: 1, scope: !6115, file: !3, line: 113, type: !4427)
!6120 = !DILocation(line: 113, column: 56, scope: !6115)
!6121 = !DILocalVariable(name: "mtouch", arg: 2, scope: !6115, file: !3, line: 114, type: !6118)
!6122 = !DILocation(line: 114, column: 30, scope: !6115)
!6123 = !DILocation(line: 116, column: 6, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !6115, file: !3, line: 116, column: 6)
!6125 = !DILocation(line: 116, column: 6, scope: !6115)
!6126 = !DILocation(line: 117, column: 3, scope: !6124)
!6127 = !DILocation(line: 119, column: 6, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6115, file: !3, line: 119, column: 6)
!6129 = !DILocation(line: 119, column: 14, scope: !6128)
!6130 = !DILocation(line: 119, column: 28, scope: !6128)
!6131 = !DILocation(line: 119, column: 34, scope: !6128)
!6132 = !DILocation(line: 119, column: 25, scope: !6128)
!6133 = !DILocation(line: 119, column: 6, scope: !6115)
!6134 = !DILocation(line: 120, column: 33, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !6128, file: !3, line: 119, column: 57)
!6136 = !DILocation(line: 120, column: 41, scope: !6135)
!6137 = !DILocation(line: 120, column: 3, scope: !6135)
!6138 = !DILocation(line: 120, column: 9, scope: !6135)
!6139 = !DILocation(line: 120, column: 31, scope: !6135)
!6140 = !DILocation(line: 121, column: 17, scope: !6135)
!6141 = !DILocation(line: 121, column: 23, scope: !6135)
!6142 = !DILocation(line: 121, column: 31, scope: !6135)
!6143 = !DILocation(line: 121, column: 39, scope: !6135)
!6144 = !DILocation(line: 121, column: 3, scope: !6135)
!6145 = !DILocation(line: 122, column: 2, scope: !6135)
!6146 = !DILocation(line: 124, column: 10, scope: !6115)
!6147 = !DILocation(line: 124, column: 18, scope: !6115)
!6148 = !DILocation(line: 124, column: 2, scope: !6115)
!6149 = !DILocation(line: 126, column: 30, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6115, file: !3, line: 124, column: 30)
!6151 = !DILocation(line: 126, column: 36, scope: !6150)
!6152 = !DILocation(line: 126, column: 3, scope: !6150)
!6153 = !DILocation(line: 130, column: 20, scope: !6150)
!6154 = !DILocation(line: 130, column: 26, scope: !6150)
!6155 = !DILocation(line: 131, column: 6, scope: !6150)
!6156 = !DILocation(line: 131, column: 14, scope: !6150)
!6157 = !DILocation(line: 131, column: 16, scope: !6150)
!6158 = !DILocation(line: 131, column: 20, scope: !6150)
!6159 = !DILocation(line: 130, column: 3, scope: !6150)
!6160 = !DILocation(line: 132, column: 20, scope: !6150)
!6161 = !DILocation(line: 132, column: 26, scope: !6150)
!6162 = !DILocation(line: 133, column: 6, scope: !6150)
!6163 = !DILocation(line: 133, column: 14, scope: !6150)
!6164 = !DILocation(line: 133, column: 16, scope: !6150)
!6165 = !DILocation(line: 133, column: 20, scope: !6150)
!6166 = !DILocation(line: 132, column: 3, scope: !6150)
!6167 = !DILocation(line: 134, column: 3, scope: !6150)
!6168 = !DILocation(line: 137, column: 20, scope: !6150)
!6169 = !DILocation(line: 137, column: 26, scope: !6150)
!6170 = !DILocation(line: 138, column: 6, scope: !6150)
!6171 = !DILocation(line: 138, column: 14, scope: !6150)
!6172 = !DILocation(line: 138, column: 16, scope: !6150)
!6173 = !DILocation(line: 138, column: 22, scope: !6150)
!6174 = !DILocation(line: 137, column: 3, scope: !6150)
!6175 = !DILocation(line: 139, column: 20, scope: !6150)
!6176 = !DILocation(line: 139, column: 26, scope: !6150)
!6177 = !DILocation(line: 140, column: 6, scope: !6150)
!6178 = !DILocation(line: 140, column: 14, scope: !6150)
!6179 = !DILocation(line: 140, column: 16, scope: !6150)
!6180 = !DILocation(line: 140, column: 22, scope: !6150)
!6181 = !DILocation(line: 139, column: 3, scope: !6150)
!6182 = !DILocation(line: 141, column: 3, scope: !6150)
!6183 = !DILocation(line: 144, column: 20, scope: !6150)
!6184 = !DILocation(line: 144, column: 26, scope: !6150)
!6185 = !DILocation(line: 145, column: 6, scope: !6150)
!6186 = !DILocation(line: 145, column: 14, scope: !6150)
!6187 = !DILocation(line: 145, column: 16, scope: !6150)
!6188 = !DILocation(line: 144, column: 3, scope: !6150)
!6189 = !DILocation(line: 146, column: 3, scope: !6150)
!6190 = !DILocation(line: 149, column: 33, scope: !6150)
!6191 = !DILocation(line: 149, column: 39, scope: !6150)
!6192 = !DILocation(line: 149, column: 3, scope: !6150)
!6193 = !DILocation(line: 150, column: 3, scope: !6150)
!6194 = !DILocation(line: 153, column: 23, scope: !6150)
!6195 = !DILocation(line: 153, column: 29, scope: !6150)
!6196 = !DILocation(line: 153, column: 3, scope: !6150)
!6197 = !DILocation(line: 154, column: 14, scope: !6150)
!6198 = !DILocation(line: 154, column: 20, scope: !6150)
!6199 = !DILocation(line: 154, column: 3, scope: !6150)
!6200 = !DILocation(line: 155, column: 3, scope: !6150)
!6201 = !DILocation(line: 157, column: 1, scope: !6115)
!6202 = distinct !DISubprogram(name: "input_report_rel", scope: !4433, file: !4433, line: 420, type: !6203, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!6203 = !DISubroutineType(types: !6204)
!6204 = !{null, !4431, !7, !190}
!6205 = !DILocalVariable(name: "dev", arg: 1, scope: !6202, file: !4433, line: 420, type: !4431)
!6206 = !DILocation(line: 420, column: 55, scope: !6202)
!6207 = !DILocalVariable(name: "code", arg: 2, scope: !6202, file: !4433, line: 420, type: !7)
!6208 = !DILocation(line: 420, column: 73, scope: !6202)
!6209 = !DILocalVariable(name: "value", arg: 3, scope: !6202, file: !4433, line: 420, type: !190)
!6210 = !DILocation(line: 420, column: 83, scope: !6202)
!6211 = !DILocation(line: 422, column: 14, scope: !6202)
!6212 = !DILocation(line: 422, column: 27, scope: !6202)
!6213 = !DILocation(line: 422, column: 33, scope: !6202)
!6214 = !DILocation(line: 422, column: 2, scope: !6202)
!6215 = !DILocation(line: 423, column: 1, scope: !6202)
!6216 = distinct !DISubprogram(name: "input_sync", scope: !4433, file: !4433, line: 440, type: !4623, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!6217 = !DILocalVariable(name: "dev", arg: 1, scope: !6216, file: !4433, line: 440, type: !4431)
!6218 = !DILocation(line: 440, column: 49, scope: !6216)
!6219 = !DILocation(line: 442, column: 14, scope: !6216)
!6220 = !DILocation(line: 442, column: 2, scope: !6216)
!6221 = !DILocation(line: 443, column: 1, scope: !6216)
!6222 = distinct !DISubprogram(name: "test_bit", scope: !5512, file: !5512, line: 132, type: !6223, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!6223 = !DISubroutineType(types: !6224)
!6224 = !{!371, !169, !6225}
!6225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6226, size: 64)
!6226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5516)
!6227 = !DILocalVariable(name: "nr", arg: 1, scope: !6228, file: !5519, line: 210, type: !169)
!6228 = distinct !DISubprogram(name: "variable_test_bit", scope: !5519, file: !5519, line: 210, type: !6223, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!6229 = !DILocation(line: 210, column: 52, scope: !6228, inlinedAt: !6230)
!6230 = distinct !DILocation(line: 135, column: 9, scope: !6222)
!6231 = !DILocalVariable(name: "addr", arg: 2, scope: !6228, file: !5519, line: 210, type: !6225)
!6232 = !DILocation(line: 210, column: 86, scope: !6228, inlinedAt: !6230)
!6233 = !DILocalVariable(name: "oldbit", scope: !6228, file: !5519, line: 212, type: !371)
!6234 = !DILocation(line: 212, column: 7, scope: !6228, inlinedAt: !6230)
!6235 = !DILocalVariable(name: "nr", arg: 1, scope: !6236, file: !5519, line: 204, type: !169)
!6236 = distinct !DISubprogram(name: "constant_test_bit", scope: !5519, file: !5519, line: 204, type: !6223, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!6237 = !DILocation(line: 204, column: 52, scope: !6236, inlinedAt: !6238)
!6238 = distinct !DILocation(line: 135, column: 9, scope: !6222)
!6239 = !DILocalVariable(name: "addr", arg: 2, scope: !6236, file: !5519, line: 204, type: !6225)
!6240 = !DILocation(line: 204, column: 86, scope: !6236, inlinedAt: !6238)
!6241 = !DILocalVariable(name: "v", arg: 1, scope: !6242, file: !5526, line: 69, type: !5529)
!6242 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5526, file: !5526, line: 69, type: !5527, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!6243 = !DILocation(line: 69, column: 73, scope: !6242, inlinedAt: !6244)
!6244 = distinct !DILocation(line: 134, column: 2, scope: !6222)
!6245 = !DILocalVariable(name: "size", arg: 2, scope: !6242, file: !5526, line: 69, type: !501)
!6246 = !DILocation(line: 69, column: 83, scope: !6242, inlinedAt: !6244)
!6247 = !DILocalVariable(name: "nr", arg: 1, scope: !6222, file: !5512, line: 132, type: !169)
!6248 = !DILocation(line: 132, column: 34, scope: !6222)
!6249 = !DILocalVariable(name: "addr", arg: 2, scope: !6222, file: !5512, line: 132, type: !6225)
!6250 = !DILocation(line: 132, column: 68, scope: !6222)
!6251 = !DILocation(line: 134, column: 25, scope: !6222)
!6252 = !DILocation(line: 134, column: 32, scope: !6222)
!6253 = !DILocation(line: 134, column: 30, scope: !6222)
!6254 = !DILocation(line: 71, column: 19, scope: !6242, inlinedAt: !6244)
!6255 = !DILocation(line: 71, column: 22, scope: !6242, inlinedAt: !6244)
!6256 = !DILocation(line: 71, column: 2, scope: !6242, inlinedAt: !6244)
!6257 = !DILocation(line: 72, column: 2, scope: !6242, inlinedAt: !6244)
!6258 = !DILocation(line: 135, column: 9, scope: !6222)
!6259 = !DILocation(line: 206, column: 19, scope: !6236, inlinedAt: !6238)
!6260 = !DILocation(line: 206, column: 22, scope: !6236, inlinedAt: !6238)
!6261 = !DILocation(line: 206, column: 15, scope: !6236, inlinedAt: !6238)
!6262 = !DILocation(line: 207, column: 4, scope: !6236, inlinedAt: !6238)
!6263 = !DILocation(line: 207, column: 9, scope: !6236, inlinedAt: !6238)
!6264 = !DILocation(line: 207, column: 12, scope: !6236, inlinedAt: !6238)
!6265 = !DILocation(line: 206, column: 44, scope: !6236, inlinedAt: !6238)
!6266 = !DILocation(line: 207, column: 37, scope: !6236, inlinedAt: !6238)
!6267 = !DILocation(line: 217, column: 33, scope: !6228, inlinedAt: !6230)
!6268 = !DILocation(line: 217, column: 46, scope: !6228, inlinedAt: !6230)
!6269 = !DILocation(line: 214, column: 2, scope: !6228, inlinedAt: !6230)
!6270 = !{i32 -2147189688, i32 -2147189628}
!6271 = !DILocation(line: 219, column: 9, scope: !6228, inlinedAt: !6230)
!6272 = !DILocation(line: 135, column: 2, scope: !6222)
!6273 = distinct !DISubprogram(name: "kasan_check_read", scope: !5773, file: !5773, line: 34, type: !5774, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!6274 = !DILocalVariable(name: "p", arg: 1, scope: !6273, file: !5773, line: 34, type: !5529)
!6275 = !DILocation(line: 34, column: 58, scope: !6273)
!6276 = !DILocalVariable(name: "size", arg: 2, scope: !6273, file: !5773, line: 34, type: !7)
!6277 = !DILocation(line: 34, column: 74, scope: !6273)
!6278 = !DILocation(line: 36, column: 2, scope: !6273)
!6279 = distinct !DISubprogram(name: "input_report_abs", scope: !4433, file: !4433, line: 425, type: !6203, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!6280 = !DILocalVariable(name: "dev", arg: 1, scope: !6279, file: !4433, line: 425, type: !4431)
!6281 = !DILocation(line: 425, column: 55, scope: !6279)
!6282 = !DILocalVariable(name: "code", arg: 2, scope: !6279, file: !4433, line: 425, type: !7)
!6283 = !DILocation(line: 425, column: 73, scope: !6279)
!6284 = !DILocalVariable(name: "value", arg: 3, scope: !6279, file: !4433, line: 425, type: !190)
!6285 = !DILocation(line: 425, column: 83, scope: !6279)
!6286 = !DILocation(line: 427, column: 14, scope: !6279)
!6287 = !DILocation(line: 427, column: 27, scope: !6279)
!6288 = !DILocation(line: 427, column: 33, scope: !6279)
!6289 = !DILocation(line: 427, column: 2, scope: !6279)
!6290 = !DILocation(line: 428, column: 1, scope: !6279)
!6291 = distinct !DISubprogram(name: "input_mt_slot", scope: !4585, file: !4585, line: 85, type: !6292, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!6292 = !DISubroutineType(types: !6293)
!6293 = !{null, !4431, !190}
!6294 = !DILocalVariable(name: "dev", arg: 1, scope: !6291, file: !4585, line: 85, type: !4431)
!6295 = !DILocation(line: 85, column: 52, scope: !6291)
!6296 = !DILocalVariable(name: "slot", arg: 2, scope: !6291, file: !4585, line: 85, type: !190)
!6297 = !DILocation(line: 85, column: 61, scope: !6291)
!6298 = !DILocation(line: 87, column: 14, scope: !6291)
!6299 = !DILocation(line: 87, column: 40, scope: !6291)
!6300 = !DILocation(line: 87, column: 2, scope: !6291)
!6301 = !DILocation(line: 88, column: 1, scope: !6291)
!6302 = distinct !DISubprogram(name: "input_mt_report_slot_inactive", scope: !4585, file: !4585, line: 103, type: !4623, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!6303 = !DILocalVariable(name: "dev", arg: 1, scope: !6302, file: !4585, line: 103, type: !4431)
!6304 = !DILocation(line: 103, column: 68, scope: !6302)
!6305 = !DILocation(line: 105, column: 29, scope: !6302)
!6306 = !DILocation(line: 105, column: 2, scope: !6302)
!6307 = !DILocation(line: 106, column: 1, scope: !6302)
!6308 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !6309, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!6309 = !DISubroutineType(types: !6310)
!6310 = !{!166, !3852}
!6311 = !DILocalVariable(name: "dev", arg: 1, scope: !6308, file: !73, line: 655, type: !3852)
!6312 = !DILocation(line: 655, column: 58, scope: !6308)
!6313 = !DILocation(line: 657, column: 9, scope: !6308)
!6314 = !DILocation(line: 657, column: 14, scope: !6308)
!6315 = !DILocation(line: 657, column: 2, scope: !6308)
!6316 = distinct !DISubprogram(name: "xenkbd_disconnect_backend", scope: !3, file: !3, line: 489, type: !6317, scopeLine: 490, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !430)
!6317 = !DISubroutineType(types: !6318)
!6318 = !{null, !4427}
!6319 = !DILocalVariable(name: "info", arg: 1, scope: !6316, file: !3, line: 489, type: !4427)
!6320 = !DILocation(line: 489, column: 59, scope: !6316)
!6321 = !DILocation(line: 491, column: 6, scope: !6322)
!6322 = distinct !DILexicalBlock(scope: !6316, file: !3, line: 491, column: 6)
!6323 = !DILocation(line: 491, column: 12, scope: !6322)
!6324 = !DILocation(line: 491, column: 16, scope: !6322)
!6325 = !DILocation(line: 491, column: 6, scope: !6316)
!6326 = !DILocation(line: 492, column: 26, scope: !6322)
!6327 = !DILocation(line: 492, column: 32, scope: !6322)
!6328 = !DILocation(line: 492, column: 37, scope: !6322)
!6329 = !DILocation(line: 492, column: 3, scope: !6322)
!6330 = !DILocation(line: 493, column: 2, scope: !6316)
!6331 = !DILocation(line: 493, column: 8, scope: !6316)
!6332 = !DILocation(line: 493, column: 12, scope: !6316)
!6333 = !DILocation(line: 494, column: 6, scope: !6334)
!6334 = distinct !DILexicalBlock(scope: !6316, file: !3, line: 494, column: 6)
!6335 = !DILocation(line: 494, column: 12, scope: !6334)
!6336 = !DILocation(line: 494, column: 17, scope: !6334)
!6337 = !DILocation(line: 494, column: 6, scope: !6316)
!6338 = !DILocation(line: 495, column: 29, scope: !6334)
!6339 = !DILocation(line: 495, column: 35, scope: !6334)
!6340 = !DILocation(line: 495, column: 3, scope: !6334)
!6341 = !DILocation(line: 496, column: 2, scope: !6316)
!6342 = !DILocation(line: 496, column: 8, scope: !6316)
!6343 = !DILocation(line: 496, column: 13, scope: !6316)
!6344 = !DILocation(line: 497, column: 1, scope: !6316)
