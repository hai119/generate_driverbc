; ModuleID = '../bcout/drivers/video/fbdev/gxt4500.llvm.bc'
source_filename = "drivers/video/fbdev/gxt4500.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_gxt4500_init6:\09\09\09"
module asm ".long\09gxt4500_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.65, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.proc_dir_entry = type opaque
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
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
%struct.pid_namespace = type { %struct.kref, %struct.idr, %struct.callback_head, i32, %struct.task_struct*, %struct.kmem_cache*, i32, %struct.pid_namespace*, %struct.user_namespace*, %struct.ucounts*, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.kmem_cache = type opaque
%struct.ucounts = type opaque
%struct.ns_common = type { %struct.atomic64_t, %struct.proc_ns_operations*, i32 }
%struct.proc_ns_operations = type opaque
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
%struct.nsproxy = type { %struct.atomic_t, %struct.uts_namespace*, %struct.ipc_namespace*, %struct.mnt_namespace*, %struct.pid_namespace*, %struct.net*, %struct.time_namespace*, %struct.time_namespace*, %struct.cgroup_namespace* }
%struct.uts_namespace = type opaque
%struct.ipc_namespace = type opaque
%struct.mnt_namespace = type opaque
%struct.net = type opaque
%struct.time_namespace = type opaque
%struct.cgroup_namespace = type opaque
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
%struct.seq_file = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_dma_parameters = type { i32, i64 }
%struct.pcie_link_state = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
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
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.pci_vpd = type opaque
%union.anon.65 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon.66 }
%union.anon.66 = type { i8* }
%struct.cardinfo = type { i32, i8* }
%struct.fb_fix_screeninfo = type { [16 x i8], i64, i32, i32, i32, i32, i16, i16, i16, i32, i64, i32, i32, i16, [2 x i16] }
%struct.fb_ops = type { %struct.module*, i32 (%struct.fb_info*, i32)*, i32 (%struct.fb_info*, i32)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (i32, i32, i32, i32, i32, %struct.fb_info*)*, i32 (%struct.fb_cmap*, %struct.fb_info*)*, i32 (i32, %struct.fb_info*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, void (%struct.fb_info*, %struct.fb_fillrect*)*, void (%struct.fb_info*, %struct.fb_copyarea*)*, void (%struct.fb_info*, %struct.fb_image*)*, i32 (%struct.fb_info*, %struct.fb_cursor*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, %struct.vm_area_struct*)*, void (%struct.fb_info*, %struct.fb_blit_caps*, %struct.fb_var_screeninfo*)*, void (%struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)* }
%struct.fb_info = type { %struct.atomic_t, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, %struct.fb_videomode*, %struct.backlight_device*, %struct.mutex, [128 x i8], %struct.delayed_work, %struct.fb_deferred_io*, %struct.fb_ops*, %struct.device*, %struct.device*, i32, %struct.fb_tile_ops*, %union.anon.67, i64, i8*, i32, i8*, i8*, %struct.apertures_struct*, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_monspecs = type { %struct.fb_chroma, %struct.fb_videomode*, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct.fb_info*, i8*, i8*, i32)*, void (%struct.fb_info*, i8*, i8*, i32)* }
%struct.fb_cmap = type { i32, i32, i16*, i16*, i16*, i16* }
%struct.fb_videomode = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, %struct.backlight_ops*, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_ops = type { i32, i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*)*, i32 (%struct.backlight_device*, %struct.fb_info*)* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.fb_deferred_io = type { i64, %struct.mutex, %struct.list_head, void (%struct.fb_info*)*, void (%struct.fb_info*, %struct.list_head*)* }
%struct.fb_tile_ops = type { void (%struct.fb_info*, %struct.fb_tilemap*)*, void (%struct.fb_info*, %struct.fb_tilearea*)*, void (%struct.fb_info*, %struct.fb_tilerect*)*, void (%struct.fb_info*, %struct.fb_tileblit*)*, void (%struct.fb_info*, %struct.fb_tilecursor*)*, i32 (%struct.fb_info*)* }
%struct.fb_tilemap = type { i32, i32, i32, i32, i8* }
%struct.fb_tilearea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_tilerect = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_tileblit = type { i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.fb_tilecursor = type { i32, i32, i32, i32, i32, i32 }
%union.anon.67 = type { i8* }
%struct.apertures_struct = type { i32, [0 x %struct.aperture] }
%struct.aperture = type { i64, i64 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, i8*, %struct.fb_cmap }
%struct.fb_cursor = type { i16, i16, i16, i8*, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }
%struct.fb_blit_caps = type { i32, i32, i32, i32 }
%struct.gxt4500_par = type { i8*, i32, i32, i32, i32, i32, i32, i32, [16 x i32] }

@__UNIQUE_ID___addressable_gxt4500_init244 = internal global i8* bitcast (i32 ()* @gxt4500_init to i8*), section ".discard.addressable", align 8, !dbg !0
@gxt4500_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([5 x %struct.pci_device_id], [5 x %struct.pci_device_id]* @gxt4500_pci_tbl, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @gxt4500_probe, void (%struct.pci_dev*)* @gxt4500_remove, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !266
@__exitcall_gxt4500_exit = internal global void ()* @gxt4500_exit, section ".exitcall.exit", align 8, !dbg !161
@__UNIQUE_ID_author245 = internal constant [49 x i8] c"gxt4500.author=Paul Mackerras <paulus@samba.org>\00", section ".modinfo", align 1, !dbg !168
@__UNIQUE_ID_description246 = internal constant [75 x i8] c"gxt4500.description=FBDev driver for IBM GXT4500P/6500P and GXT4000P/6000P\00", section ".modinfo", align 1, !dbg !175
@__UNIQUE_ID_file247 = internal constant [41 x i8] c"gxt4500.file=drivers/video/fbdev/gxt4500\00", section ".modinfo", align 1, !dbg !180
@__UNIQUE_ID_license248 = internal constant [20 x i8] c"gxt4500.license=GPL\00", section ".modinfo", align 1, !dbg !185
@__param_str_mode_option = internal constant [20 x i8] c"gxt4500.mode_option\00", align 16, !dbg !4782
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 8
@mode_option = internal global i8* null, align 8, !dbg !264
@__param_mode_option = internal constant %struct.kernel_param { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__param_str_mode_option, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.66 { i8* bitcast (i8** @mode_option to i8*) } }, section "__param", align 8, !dbg !190
@__UNIQUE_ID_mode_optiontype249 = internal constant [35 x i8] c"gxt4500.parmtype=mode_option:charp\00", section ".modinfo", align 1, !dbg !254
@__UNIQUE_ID_mode_option250 = internal constant [83 x i8] c"gxt4500.parm=mode_option:Specify resolution as \22<xres>x<yres>[-<bpp>][@<refresh>]\22\00", section ".modinfo", align 1, !dbg !259
@.str = private unnamed_addr constant [8 x i8] c"gxt4500\00", align 1
@gxt4500_pci_tbl = internal constant [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 4116, i32 540, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id { i32 4116, i32 539, i32 -1, i32 -1, i32 0, i32 0, i64 1 }, %struct.pci_device_id { i32 4116, i32 366, i32 -1, i32 -1, i32 0, i32 0, i64 2 }, %struct.pci_device_id { i32 4116, i32 368, i32 -1, i32 -1, i32 0, i32 0, i64 3 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4281
@.str.1 = private unnamed_addr constant [39 x i8] c"gxt4500: cannot enable PCI device: %d\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"gxt4500 regs\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"gxt4500: cannot get registers\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"gxt4500 FB\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"gxt4500: cannot get framebuffer\0A\00", align 1
@cardinfo = internal constant [4 x %struct.cardinfo] [%struct.cardinfo { i32 9259, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0) }, %struct.cardinfo { i32 9259, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0) }, %struct.cardinfo { i32 40000, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0) }, %struct.cardinfo { i32 40000, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0) }], align 16, !dbg !4286
@gxt4500_fix = internal constant %struct.fb_fix_screeninfo { [16 x i8] c"IBM GXT4500P\00\00\00\00", i64 0, i32 0, i32 0, i32 0, i32 3, i16 8, i16 1, i16 0, i32 0, i64 0, i32 131072, i32 0, i16 0, [2 x i16] zeroinitializer }, align 8, !dbg !4294
@.str.6 = private unnamed_addr constant [31 x i8] c"gxt4500: cannot map registers\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"gxt4500: cannot map framebuffer\0A\00", align 1
@gxt4500_ops = internal constant %struct.fb_ops { %struct.module* null, i32 (%struct.fb_info*, i32)* null, i32 (%struct.fb_info*, i32)* null, i64 (%struct.fb_info*, i8*, i64, i64*)* null, i64 (%struct.fb_info*, i8*, i64, i64*)* null, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @gxt4500_check_var, i32 (%struct.fb_info*)* @gxt4500_set_par, i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @gxt4500_setcolreg, i32 (%struct.fb_cmap*, %struct.fb_info*)* null, i32 (i32, %struct.fb_info*)* @gxt4500_blank, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @gxt4500_pan_display, void (%struct.fb_info*, %struct.fb_fillrect*)* @cfb_fillrect, void (%struct.fb_info*, %struct.fb_copyarea*)* @cfb_copyarea, void (%struct.fb_info*, %struct.fb_image*)* @cfb_imageblit, i32 (%struct.fb_info*, %struct.fb_cursor*)* null, i32 (%struct.fb_info*)* null, i32 (%struct.fb_info*, i32, i64)* null, i32 (%struct.fb_info*, i32, i64)* null, i32 (%struct.fb_info*, %struct.vm_area_struct*)* null, void (%struct.fb_info*, %struct.fb_blit_caps*, %struct.fb_var_screeninfo*)* null, void (%struct.fb_info*)* null, i32 (%struct.fb_info*)* null, i32 (%struct.fb_info*)* null }, align 8, !dbg !4315
@.str.8 = private unnamed_addr constant [31 x i8] c"gxt4500: cannot allocate cmap\0A\00", align 1
@defaultmode = internal constant %struct.fb_videomode { i8* null, i32 60, i32 1280, i32 1024, i32 9295, i32 248, i32 48, i32 38, i32 1, i32 112, i32 3, i32 0, i32 0, i32 0 }, align 8, !dbg !4769
@.str.9 = private unnamed_addr constant [39 x i8] c"gxt4500: cannot find valid video mode\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"\013gxt4500: cannot set video mode\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"gxt4500: cannot register framebuffer\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"\016fb%d: %s frame buffer device\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"IBM GXT4500P\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"IBM GXT6500P\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"IBM GXT4000P\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"IBM GXT6000P\00", align 1
@pixsize = internal constant [6 x i8] c"\01\02\02\02\04\04", align 1, !dbg !4761
@eightbits = internal constant %struct.fb_bitfield { i32 0, i32 8, i32 0 }, align 4, !dbg !4764
@nobits = internal constant %struct.fb_bitfield zeroinitializer, align 4, !dbg !4767
@mdivtab = internal constant [64 x i8] c"?\00 \10(\14*\15\0A%2\19\0C&\13\09\04\22\11\08$\12)4\1A-6\1B\0D\06#18\1C.\17\0B\05\02!0\18,\16+5:\1D\0E'39<\1E/7;=>\1F\0F\07\03\01", align 16, !dbg !4772
@ndivtab = internal constant [159 x i8] c"\00\80\C0\E0\F0x\BC^/\17\0B\85\C2\E1p8\9CN\A7\D3\E9\F4\FA\FD\FE\7F\BF\DF\EFw;\1D\8E\C7\E3q\B8\DCn\B7[-\16\8B\C5\E2\F1\F8\FC~?\9F\CFg\B3\D9l\B6\DBm6\9BM&\13\89\C4b\B1\D8\EC\F6\FB}\BE_\AFW+\95J%\92I\A4R)\94\CAe\B2Y,\96\CB\E5\F2y<\1E\0F\07\83A \90H$\12\09\84B\A1P(\14\8AE\A2\D1\E8t\BA\DD\EE\F7{=\9EO'\93\C9\E4r9\1C\0E\87\C3a0\18\8C\C6c1\98\CC\E6s\B9\\.\97K\A5\D2i", align 16, !dbg !4775
@watfmt = internal constant [6 x i8] c"\0A\01\02\00\00\03", align 1, !dbg !4780
@llvm.used = appending global [10 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_gxt4500_init244 to i8*), i8* bitcast (void ()* @gxt4500_exit to i8*), i8* bitcast (void ()** @__exitcall_gxt4500_exit to i8*), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_author245, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__UNIQUE_ID_description246, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__UNIQUE_ID_file247, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license248, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_mode_option to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_mode_optiontype249, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @__UNIQUE_ID_mode_option250, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gxt4500_init() #0 !dbg !4789 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 @fb_get_options(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** @mode_option) #6, !dbg !4792
  %tobool = icmp ne i32 %call, 0, !dbg !4792
  br i1 %tobool, label %if.then, label %if.end, !dbg !4794

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4795
  br label %return, !dbg !4795

if.end:                                           ; preds = %entry
  %call1 = call i32 @__pci_register_driver(%struct.pci_driver* @gxt4500_driver, %struct.module* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #6, !dbg !4796
  store i32 %call1, i32* %retval, align 4, !dbg !4797
  br label %return, !dbg !4797

return:                                           ; preds = %if.end, %if.then
  %0 = load i32, i32* %retval, align 4, !dbg !4798
  ret i32 %0, !dbg !4798
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @gxt4500_exit() #1 section ".exit.text" !dbg !4799 {
entry:
  call void @pci_unregister_driver(%struct.pci_driver* @gxt4500_driver) #6, !dbg !4800
  ret void, !dbg !4801
}

; Function Attrs: noredzone
declare dso_local void @pci_unregister_driver(%struct.pci_driver*) #2

; Function Attrs: noredzone
declare dso_local i32 @fb_get_options(i8*, i8**) #2

; Function Attrs: noredzone
declare dso_local i32 @__pci_register_driver(%struct.pci_driver*, %struct.module*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gxt4500_probe(%struct.pci_dev* %pdev, %struct.pci_device_id* %ent) #0 !dbg !4802 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %ent.addr = alloca %struct.pci_device_id*, align 8
  %err = alloca i32, align 4
  %reg_phys = alloca i64, align 8
  %fb_phys = alloca i64, align 8
  %par = alloca %struct.gxt4500_par*, align 8
  %info = alloca %struct.fb_info*, align 8
  %var = alloca %struct.fb_var_screeninfo, align 4
  %cardtype = alloca i32, align 4
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4803, metadata !DIExpression()), !dbg !4804
  store %struct.pci_device_id* %ent, %struct.pci_device_id** %ent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %ent.addr, metadata !4805, metadata !DIExpression()), !dbg !4806
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4807, metadata !DIExpression()), !dbg !4808
  call void @llvm.dbg.declare(metadata i64* %reg_phys, metadata !4809, metadata !DIExpression()), !dbg !4810
  call void @llvm.dbg.declare(metadata i64* %fb_phys, metadata !4811, metadata !DIExpression()), !dbg !4812
  call void @llvm.dbg.declare(metadata %struct.gxt4500_par** %par, metadata !4813, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info, metadata !4815, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo* %var, metadata !4817, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.declare(metadata i32* %cardtype, metadata !4819, metadata !DIExpression()), !dbg !4820
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4821
  %call = call i32 @pci_enable_device(%struct.pci_dev* %0) #6, !dbg !4822
  store i32 %call, i32* %err, align 4, !dbg !4823
  %1 = load i32, i32* %err, align 4, !dbg !4824
  %tobool = icmp ne i32 %1, 0, !dbg !4824
  br i1 %tobool, label %if.then, label %if.end, !dbg !4826

if.then:                                          ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4827
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 41, !dbg !4827
  %3 = load i32, i32* %err, align 4, !dbg !4827
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %3) #7, !dbg !4827
  %4 = load i32, i32* %err, align 4, !dbg !4829
  store i32 %4, i32* %retval, align 4, !dbg !4830
  br label %return, !dbg !4830

if.end:                                           ; preds = %entry
  %5 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4831
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 44, !dbg !4831
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !4831
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !4831
  %6 = load i64, i64* %start, align 8, !dbg !4831
  store i64 %6, i64* %reg_phys, align 8, !dbg !4832
  %7 = load i64, i64* %reg_phys, align 8, !dbg !4833
  %8 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4833
  %resource1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 44, !dbg !4833
  %arrayidx2 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource1, i64 0, i64 0, !dbg !4833
  %start3 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx2, i32 0, i32 0, !dbg !4833
  %9 = load i64, i64* %start3, align 8, !dbg !4833
  %cmp = icmp eq i64 %9, 0, !dbg !4833
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !4833

land.lhs.true:                                    ; preds = %if.end
  %10 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4833
  %resource4 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 44, !dbg !4833
  %arrayidx5 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource4, i64 0, i64 0, !dbg !4833
  %end = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx5, i32 0, i32 1, !dbg !4833
  %11 = load i64, i64* %end, align 8, !dbg !4833
  %12 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4833
  %resource6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 44, !dbg !4833
  %arrayidx7 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource6, i64 0, i64 0, !dbg !4833
  %start8 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx7, i32 0, i32 0, !dbg !4833
  %13 = load i64, i64* %start8, align 8, !dbg !4833
  %cmp9 = icmp eq i64 %11, %13, !dbg !4833
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !4833

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end, !dbg !4833

cond.false:                                       ; preds = %land.lhs.true, %if.end
  %14 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4833
  %resource10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 44, !dbg !4833
  %arrayidx11 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource10, i64 0, i64 0, !dbg !4833
  %end12 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx11, i32 0, i32 1, !dbg !4833
  %15 = load i64, i64* %end12, align 8, !dbg !4833
  %16 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4833
  %resource13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 44, !dbg !4833
  %arrayidx14 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource13, i64 0, i64 0, !dbg !4833
  %start15 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx14, i32 0, i32 0, !dbg !4833
  %17 = load i64, i64* %start15, align 8, !dbg !4833
  %sub = sub i64 %15, %17, !dbg !4833
  %add = add i64 %sub, 1, !dbg !4833
  br label %cond.end, !dbg !4833

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %add, %cond.false ], !dbg !4833
  %call16 = call %struct.resource* @__request_region(%struct.resource* @iomem_resource, i64 %7, i64 %cond, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 0) #6, !dbg !4833
  %tobool17 = icmp ne %struct.resource* %call16, null, !dbg !4833
  br i1 %tobool17, label %if.end20, label %if.then18, !dbg !4835

if.then18:                                        ; preds = %cond.end
  %18 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4836
  %dev19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 41, !dbg !4836
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !4836
  br label %err_nodev, !dbg !4838

if.end20:                                         ; preds = %cond.end
  %19 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4839
  %resource21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 44, !dbg !4839
  %arrayidx22 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource21, i64 0, i64 1, !dbg !4839
  %start23 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx22, i32 0, i32 0, !dbg !4839
  %20 = load i64, i64* %start23, align 8, !dbg !4839
  store i64 %20, i64* %fb_phys, align 8, !dbg !4840
  %21 = load i64, i64* %fb_phys, align 8, !dbg !4841
  %22 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4841
  %resource24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 44, !dbg !4841
  %arrayidx25 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource24, i64 0, i64 1, !dbg !4841
  %start26 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx25, i32 0, i32 0, !dbg !4841
  %23 = load i64, i64* %start26, align 8, !dbg !4841
  %cmp27 = icmp eq i64 %23, 0, !dbg !4841
  br i1 %cmp27, label %land.lhs.true28, label %cond.false37, !dbg !4841

land.lhs.true28:                                  ; preds = %if.end20
  %24 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4841
  %resource29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 44, !dbg !4841
  %arrayidx30 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource29, i64 0, i64 1, !dbg !4841
  %end31 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx30, i32 0, i32 1, !dbg !4841
  %25 = load i64, i64* %end31, align 8, !dbg !4841
  %26 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4841
  %resource32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 44, !dbg !4841
  %arrayidx33 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource32, i64 0, i64 1, !dbg !4841
  %start34 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx33, i32 0, i32 0, !dbg !4841
  %27 = load i64, i64* %start34, align 8, !dbg !4841
  %cmp35 = icmp eq i64 %25, %27, !dbg !4841
  br i1 %cmp35, label %cond.true36, label %cond.false37, !dbg !4841

cond.true36:                                      ; preds = %land.lhs.true28
  br label %cond.end46, !dbg !4841

cond.false37:                                     ; preds = %land.lhs.true28, %if.end20
  %28 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4841
  %resource38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 44, !dbg !4841
  %arrayidx39 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource38, i64 0, i64 1, !dbg !4841
  %end40 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx39, i32 0, i32 1, !dbg !4841
  %29 = load i64, i64* %end40, align 8, !dbg !4841
  %30 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4841
  %resource41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 44, !dbg !4841
  %arrayidx42 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource41, i64 0, i64 1, !dbg !4841
  %start43 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx42, i32 0, i32 0, !dbg !4841
  %31 = load i64, i64* %start43, align 8, !dbg !4841
  %sub44 = sub i64 %29, %31, !dbg !4841
  %add45 = add i64 %sub44, 1, !dbg !4841
  br label %cond.end46, !dbg !4841

cond.end46:                                       ; preds = %cond.false37, %cond.true36
  %cond47 = phi i64 [ 0, %cond.true36 ], [ %add45, %cond.false37 ], !dbg !4841
  %call48 = call %struct.resource* @__request_region(%struct.resource* @iomem_resource, i64 %21, i64 %cond47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 0) #6, !dbg !4841
  %tobool49 = icmp ne %struct.resource* %call48, null, !dbg !4841
  br i1 %tobool49, label %if.end52, label %if.then50, !dbg !4843

if.then50:                                        ; preds = %cond.end46
  %32 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4844
  %dev51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 41, !dbg !4844
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !4844
  br label %err_free_regs, !dbg !4846

if.end52:                                         ; preds = %cond.end46
  %33 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4847
  %dev53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 41, !dbg !4848
  %call54 = call %struct.fb_info* @framebuffer_alloc(i64 104, %struct.device* %dev53) #6, !dbg !4849
  store %struct.fb_info* %call54, %struct.fb_info** %info, align 8, !dbg !4850
  %34 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4851
  %tobool55 = icmp ne %struct.fb_info* %34, null, !dbg !4851
  br i1 %tobool55, label %if.end57, label %if.then56, !dbg !4853

if.then56:                                        ; preds = %if.end52
  br label %err_free_fb, !dbg !4854

if.end57:                                         ; preds = %if.end52
  %35 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4855
  %par58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 30, !dbg !4856
  %36 = load i8*, i8** %par58, align 8, !dbg !4856
  %37 = bitcast i8* %36 to %struct.gxt4500_par*, !dbg !4855
  store %struct.gxt4500_par* %37, %struct.gxt4500_par** %par, align 8, !dbg !4857
  %38 = load %struct.pci_device_id*, %struct.pci_device_id** %ent.addr, align 8, !dbg !4858
  %driver_data = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %38, i32 0, i32 6, !dbg !4859
  %39 = load i64, i64* %driver_data, align 8, !dbg !4859
  %conv = trunc i64 %39 to i32, !dbg !4858
  store i32 %conv, i32* %cardtype, align 4, !dbg !4860
  %40 = load i32, i32* %cardtype, align 4, !dbg !4861
  %idxprom = zext i32 %40 to i64, !dbg !4862
  %arrayidx59 = getelementptr [4 x %struct.cardinfo], [4 x %struct.cardinfo]* @cardinfo, i64 0, i64 %idxprom, !dbg !4862
  %refclk_ps = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %arrayidx59, i32 0, i32 0, !dbg !4863
  %41 = load i32, i32* %refclk_ps, align 16, !dbg !4863
  %42 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !4864
  %refclk_ps60 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %42, i32 0, i32 3, !dbg !4865
  store i32 %41, i32* %refclk_ps60, align 8, !dbg !4866
  %43 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4867
  %fix = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 7, !dbg !4868
  %44 = bitcast %struct.fb_fix_screeninfo* %fix to i8*, !dbg !4869
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @gxt4500_fix, i32 0, i32 0, i32 0), i64 80, i1 false), !dbg !4869
  %45 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4870
  %fix61 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %45, i32 0, i32 7, !dbg !4871
  %id = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix61, i32 0, i32 0, !dbg !4872
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %id, i64 0, i64 0, !dbg !4870
  %46 = load i32, i32* %cardtype, align 4, !dbg !4873
  %idxprom62 = zext i32 %46 to i64, !dbg !4874
  %arrayidx63 = getelementptr [4 x %struct.cardinfo], [4 x %struct.cardinfo]* @cardinfo, i64 0, i64 %idxprom62, !dbg !4874
  %cardname = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %arrayidx63, i32 0, i32 1, !dbg !4875
  %47 = load i8*, i8** %cardname, align 8, !dbg !4875
  %call64 = call i64 @strlcpy(i8* %arraydecay, i8* %47, i64 16) #6, !dbg !4876
  %48 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !4877
  %pseudo_palette = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %48, i32 0, i32 8, !dbg !4878
  %arraydecay65 = getelementptr inbounds [16 x i32], [16 x i32]* %pseudo_palette, i64 0, i64 0, !dbg !4877
  %49 = bitcast i32* %arraydecay65 to i8*, !dbg !4877
  %50 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4879
  %pseudo_palette66 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %50, i32 0, i32 27, !dbg !4880
  store i8* %49, i8** %pseudo_palette66, align 8, !dbg !4881
  %51 = load i64, i64* %reg_phys, align 8, !dbg !4882
  %52 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4883
  %fix67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 7, !dbg !4884
  %mmio_start = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix67, i32 0, i32 10, !dbg !4885
  store i64 %51, i64* %mmio_start, align 8, !dbg !4886
  %53 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4887
  %call68 = call i8* @pci_ioremap_bar(%struct.pci_dev* %53, i32 0) #6, !dbg !4888
  %54 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !4889
  %regs = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %54, i32 0, i32 0, !dbg !4890
  store i8* %call68, i8** %regs, align 8, !dbg !4891
  %55 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !4892
  %regs69 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %55, i32 0, i32 0, !dbg !4894
  %56 = load i8*, i8** %regs69, align 8, !dbg !4894
  %tobool70 = icmp ne i8* %56, null, !dbg !4892
  br i1 %tobool70, label %if.end73, label %if.then71, !dbg !4895

if.then71:                                        ; preds = %if.end57
  %57 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4896
  %dev72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 41, !dbg !4896
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !4896
  br label %err_free_all, !dbg !4898

if.end73:                                         ; preds = %if.end57
  %58 = load i64, i64* %fb_phys, align 8, !dbg !4899
  %59 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4900
  %fix74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %59, i32 0, i32 7, !dbg !4901
  %smem_start = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix74, i32 0, i32 1, !dbg !4902
  store i64 %58, i64* %smem_start, align 8, !dbg !4903
  %60 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4904
  %resource75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 44, !dbg !4904
  %arrayidx76 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource75, i64 0, i64 1, !dbg !4904
  %start77 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx76, i32 0, i32 0, !dbg !4904
  %61 = load i64, i64* %start77, align 8, !dbg !4904
  %cmp78 = icmp eq i64 %61, 0, !dbg !4904
  br i1 %cmp78, label %land.lhs.true80, label %cond.false90, !dbg !4904

land.lhs.true80:                                  ; preds = %if.end73
  %62 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4904
  %resource81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 44, !dbg !4904
  %arrayidx82 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource81, i64 0, i64 1, !dbg !4904
  %end83 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx82, i32 0, i32 1, !dbg !4904
  %63 = load i64, i64* %end83, align 8, !dbg !4904
  %64 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4904
  %resource84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 44, !dbg !4904
  %arrayidx85 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource84, i64 0, i64 1, !dbg !4904
  %start86 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx85, i32 0, i32 0, !dbg !4904
  %65 = load i64, i64* %start86, align 8, !dbg !4904
  %cmp87 = icmp eq i64 %63, %65, !dbg !4904
  br i1 %cmp87, label %cond.true89, label %cond.false90, !dbg !4904

cond.true89:                                      ; preds = %land.lhs.true80
  br label %cond.end99, !dbg !4904

cond.false90:                                     ; preds = %land.lhs.true80, %if.end73
  %66 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4904
  %resource91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 44, !dbg !4904
  %arrayidx92 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource91, i64 0, i64 1, !dbg !4904
  %end93 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx92, i32 0, i32 1, !dbg !4904
  %67 = load i64, i64* %end93, align 8, !dbg !4904
  %68 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4904
  %resource94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 44, !dbg !4904
  %arrayidx95 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource94, i64 0, i64 1, !dbg !4904
  %start96 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx95, i32 0, i32 0, !dbg !4904
  %69 = load i64, i64* %start96, align 8, !dbg !4904
  %sub97 = sub i64 %67, %69, !dbg !4904
  %add98 = add i64 %sub97, 1, !dbg !4904
  br label %cond.end99, !dbg !4904

cond.end99:                                       ; preds = %cond.false90, %cond.true89
  %cond100 = phi i64 [ 0, %cond.true89 ], [ %add98, %cond.false90 ], !dbg !4904
  %conv101 = trunc i64 %cond100 to i32, !dbg !4904
  %70 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4905
  %fix102 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 7, !dbg !4906
  %smem_len = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix102, i32 0, i32 2, !dbg !4907
  store i32 %conv101, i32* %smem_len, align 8, !dbg !4908
  %71 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4909
  %call103 = call i8* @pci_ioremap_wc_bar(%struct.pci_dev* %71, i32 1) #6, !dbg !4910
  %72 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4911
  %73 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %72, i32 0, i32 25, !dbg !4912
  %screen_base = bitcast %union.anon.67* %73 to i8**, !dbg !4912
  store i8* %call103, i8** %screen_base, align 8, !dbg !4913
  %74 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4914
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 25, !dbg !4916
  %screen_base104 = bitcast %union.anon.67* %75 to i8**, !dbg !4916
  %76 = load i8*, i8** %screen_base104, align 8, !dbg !4916
  %tobool105 = icmp ne i8* %76, null, !dbg !4914
  br i1 %tobool105, label %if.end108, label %if.then106, !dbg !4917

if.then106:                                       ; preds = %cond.end99
  %77 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4918
  %dev107 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 41, !dbg !4918
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !4918
  br label %err_unmap_regs, !dbg !4920

if.end108:                                        ; preds = %cond.end99
  %78 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4921
  %79 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4922
  %80 = bitcast %struct.fb_info* %79 to i8*, !dbg !4922
  call void @pci_set_drvdata(%struct.pci_dev* %78, i8* %80) #6, !dbg !4923
  %81 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4924
  %fix109 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 7, !dbg !4925
  %smem_start110 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix109, i32 0, i32 1, !dbg !4926
  %82 = load i64, i64* %smem_start110, align 8, !dbg !4926
  %83 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4927
  %fix111 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %83, i32 0, i32 7, !dbg !4928
  %smem_len112 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix111, i32 0, i32 2, !dbg !4929
  %84 = load i32, i32* %smem_len112, align 8, !dbg !4929
  %conv113 = zext i32 %84 to i64, !dbg !4927
  %call114 = call i32 @arch_phys_wc_add(i64 %82, i64 %conv113) #6, !dbg !4930
  %85 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !4931
  %wc_cookie = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %85, i32 0, i32 1, !dbg !4932
  store i32 %call114, i32* %wc_cookie, align 8, !dbg !4933
  %86 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4934
  %call115 = call i32 @pci_write_config_dword(%struct.pci_dev* %86, i32 64, i32 8960) #6, !dbg !4935
  %87 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4936
  %call116 = call i32 @pci_write_config_dword(%struct.pci_dev* %87, i32 72, i32 -1739390976) #6, !dbg !4937
  %88 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4938
  %fbops = getelementptr inbounds %struct.fb_info, %struct.fb_info* %88, i32 0, i32 20, !dbg !4939
  store %struct.fb_ops* @gxt4500_ops, %struct.fb_ops** %fbops, align 8, !dbg !4940
  %89 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4941
  %flags = getelementptr inbounds %struct.fb_info, %struct.fb_info* %89, i32 0, i32 2, !dbg !4942
  store i32 12288, i32* %flags, align 8, !dbg !4943
  %90 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4944
  %cmap = getelementptr inbounds %struct.fb_info, %struct.fb_info* %90, i32 0, i32 12, !dbg !4945
  %call117 = call i32 @fb_alloc_cmap(%struct.fb_cmap* %cmap, i32 256, i32 0) #6, !dbg !4946
  store i32 %call117, i32* %err, align 4, !dbg !4947
  %91 = load i32, i32* %err, align 4, !dbg !4948
  %tobool118 = icmp ne i32 %91, 0, !dbg !4948
  br i1 %tobool118, label %if.then119, label %if.end121, !dbg !4950

if.then119:                                       ; preds = %if.end108
  %92 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4951
  %dev120 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 41, !dbg !4951
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev120, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !4951
  br label %err_unmap_all, !dbg !4953

if.end121:                                        ; preds = %if.end108
  %93 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4954
  %call122 = call i32 @gxt4500_blank(i32 0, %struct.fb_info* %93) #6, !dbg !4955
  %94 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4956
  %95 = load i8*, i8** @mode_option, align 8, !dbg !4958
  %call123 = call i32 @fb_find_mode(%struct.fb_var_screeninfo* %var, %struct.fb_info* %94, i8* %95, %struct.fb_videomode* null, i32 0, %struct.fb_videomode* @defaultmode, i32 8) #6, !dbg !4959
  %tobool124 = icmp ne i32 %call123, 0, !dbg !4959
  br i1 %tobool124, label %if.end127, label %if.then125, !dbg !4960

if.then125:                                       ; preds = %if.end121
  %96 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4961
  %dev126 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %96, i32 0, i32 41, !dbg !4961
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev126, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !4961
  br label %err_free_cmap, !dbg !4963

if.end127:                                        ; preds = %if.end121
  %97 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4964
  %var128 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %97, i32 0, i32 6, !dbg !4965
  %98 = bitcast %struct.fb_var_screeninfo* %var128 to i8*, !dbg !4966
  %99 = bitcast %struct.fb_var_screeninfo* %var to i8*, !dbg !4966
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 4 %99, i64 160, i1 false), !dbg !4966
  %100 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4967
  %call129 = call i32 @gxt4500_set_par(%struct.fb_info* %100) #6, !dbg !4969
  %tobool130 = icmp ne i32 %call129, 0, !dbg !4969
  br i1 %tobool130, label %if.then131, label %if.end133, !dbg !4970

if.then131:                                       ; preds = %if.end127
  %call132 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !4971
  br label %err_free_cmap, !dbg !4973

if.end133:                                        ; preds = %if.end127
  %101 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4974
  %call134 = call i32 @register_framebuffer(%struct.fb_info* %101) #6, !dbg !4976
  %cmp135 = icmp slt i32 %call134, 0, !dbg !4977
  br i1 %cmp135, label %if.then137, label %if.end139, !dbg !4978

if.then137:                                       ; preds = %if.end133
  %102 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4979
  %dev138 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %102, i32 0, i32 41, !dbg !4979
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev138, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !4979
  br label %err_free_cmap, !dbg !4981

if.end139:                                        ; preds = %if.end133
  %103 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4982
  %node = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 1, !dbg !4982
  %104 = load i32, i32* %node, align 4, !dbg !4982
  %105 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4982
  %fix140 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %105, i32 0, i32 7, !dbg !4982
  %id141 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix140, i32 0, i32 0, !dbg !4982
  %arraydecay142 = getelementptr inbounds [16 x i8], [16 x i8]* %id141, i64 0, i64 0, !dbg !4982
  %call143 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %104, i8* %arraydecay142) #7, !dbg !4982
  store i32 0, i32* %retval, align 4, !dbg !4983
  br label %return, !dbg !4983

err_free_cmap:                                    ; preds = %if.then137, %if.then131, %if.then125
  call void @llvm.dbg.label(metadata !4984), !dbg !4985
  %106 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4986
  %cmap144 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %106, i32 0, i32 12, !dbg !4987
  call void @fb_dealloc_cmap(%struct.fb_cmap* %cmap144) #6, !dbg !4988
  br label %err_unmap_all, !dbg !4988

err_unmap_all:                                    ; preds = %err_free_cmap, %if.then119
  call void @llvm.dbg.label(metadata !4989), !dbg !4990
  %107 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4991
  %108 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %107, i32 0, i32 25, !dbg !4992
  %screen_base145 = bitcast %union.anon.67* %108 to i8**, !dbg !4992
  %109 = load i8*, i8** %screen_base145, align 8, !dbg !4992
  call void @iounmap(i8* %109) #6, !dbg !4993
  br label %err_unmap_regs, !dbg !4993

err_unmap_regs:                                   ; preds = %err_unmap_all, %if.then106
  call void @llvm.dbg.label(metadata !4994), !dbg !4995
  %110 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !4996
  %regs146 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %110, i32 0, i32 0, !dbg !4997
  %111 = load i8*, i8** %regs146, align 8, !dbg !4997
  call void @iounmap(i8* %111) #6, !dbg !4998
  br label %err_free_all, !dbg !4998

err_free_all:                                     ; preds = %err_unmap_regs, %if.then71
  call void @llvm.dbg.label(metadata !4999), !dbg !5000
  %112 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5001
  call void @framebuffer_release(%struct.fb_info* %112) #6, !dbg !5002
  br label %err_free_fb, !dbg !5002

err_free_fb:                                      ; preds = %err_free_all, %if.then56
  call void @llvm.dbg.label(metadata !5003), !dbg !5004
  %113 = load i64, i64* %fb_phys, align 8, !dbg !5005
  %114 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5005
  %resource147 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %114, i32 0, i32 44, !dbg !5005
  %arrayidx148 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource147, i64 0, i64 1, !dbg !5005
  %start149 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx148, i32 0, i32 0, !dbg !5005
  %115 = load i64, i64* %start149, align 8, !dbg !5005
  %cmp150 = icmp eq i64 %115, 0, !dbg !5005
  br i1 %cmp150, label %land.lhs.true152, label %cond.false162, !dbg !5005

land.lhs.true152:                                 ; preds = %err_free_fb
  %116 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5005
  %resource153 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %116, i32 0, i32 44, !dbg !5005
  %arrayidx154 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource153, i64 0, i64 1, !dbg !5005
  %end155 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx154, i32 0, i32 1, !dbg !5005
  %117 = load i64, i64* %end155, align 8, !dbg !5005
  %118 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5005
  %resource156 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %118, i32 0, i32 44, !dbg !5005
  %arrayidx157 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource156, i64 0, i64 1, !dbg !5005
  %start158 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx157, i32 0, i32 0, !dbg !5005
  %119 = load i64, i64* %start158, align 8, !dbg !5005
  %cmp159 = icmp eq i64 %117, %119, !dbg !5005
  br i1 %cmp159, label %cond.true161, label %cond.false162, !dbg !5005

cond.true161:                                     ; preds = %land.lhs.true152
  br label %cond.end171, !dbg !5005

cond.false162:                                    ; preds = %land.lhs.true152, %err_free_fb
  %120 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5005
  %resource163 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %120, i32 0, i32 44, !dbg !5005
  %arrayidx164 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource163, i64 0, i64 1, !dbg !5005
  %end165 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx164, i32 0, i32 1, !dbg !5005
  %121 = load i64, i64* %end165, align 8, !dbg !5005
  %122 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5005
  %resource166 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %122, i32 0, i32 44, !dbg !5005
  %arrayidx167 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource166, i64 0, i64 1, !dbg !5005
  %start168 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx167, i32 0, i32 0, !dbg !5005
  %123 = load i64, i64* %start168, align 8, !dbg !5005
  %sub169 = sub i64 %121, %123, !dbg !5005
  %add170 = add i64 %sub169, 1, !dbg !5005
  br label %cond.end171, !dbg !5005

cond.end171:                                      ; preds = %cond.false162, %cond.true161
  %cond172 = phi i64 [ 0, %cond.true161 ], [ %add170, %cond.false162 ], !dbg !5005
  call void @__release_region(%struct.resource* @iomem_resource, i64 %113, i64 %cond172) #6, !dbg !5005
  br label %err_free_regs, !dbg !5005

err_free_regs:                                    ; preds = %cond.end171, %if.then50
  call void @llvm.dbg.label(metadata !5006), !dbg !5007
  %124 = load i64, i64* %reg_phys, align 8, !dbg !5008
  %125 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5008
  %resource173 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %125, i32 0, i32 44, !dbg !5008
  %arrayidx174 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource173, i64 0, i64 0, !dbg !5008
  %start175 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx174, i32 0, i32 0, !dbg !5008
  %126 = load i64, i64* %start175, align 8, !dbg !5008
  %cmp176 = icmp eq i64 %126, 0, !dbg !5008
  br i1 %cmp176, label %land.lhs.true178, label %cond.false188, !dbg !5008

land.lhs.true178:                                 ; preds = %err_free_regs
  %127 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5008
  %resource179 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %127, i32 0, i32 44, !dbg !5008
  %arrayidx180 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource179, i64 0, i64 0, !dbg !5008
  %end181 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx180, i32 0, i32 1, !dbg !5008
  %128 = load i64, i64* %end181, align 8, !dbg !5008
  %129 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5008
  %resource182 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %129, i32 0, i32 44, !dbg !5008
  %arrayidx183 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource182, i64 0, i64 0, !dbg !5008
  %start184 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx183, i32 0, i32 0, !dbg !5008
  %130 = load i64, i64* %start184, align 8, !dbg !5008
  %cmp185 = icmp eq i64 %128, %130, !dbg !5008
  br i1 %cmp185, label %cond.true187, label %cond.false188, !dbg !5008

cond.true187:                                     ; preds = %land.lhs.true178
  br label %cond.end197, !dbg !5008

cond.false188:                                    ; preds = %land.lhs.true178, %err_free_regs
  %131 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5008
  %resource189 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %131, i32 0, i32 44, !dbg !5008
  %arrayidx190 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource189, i64 0, i64 0, !dbg !5008
  %end191 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx190, i32 0, i32 1, !dbg !5008
  %132 = load i64, i64* %end191, align 8, !dbg !5008
  %133 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5008
  %resource192 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %133, i32 0, i32 44, !dbg !5008
  %arrayidx193 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource192, i64 0, i64 0, !dbg !5008
  %start194 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx193, i32 0, i32 0, !dbg !5008
  %134 = load i64, i64* %start194, align 8, !dbg !5008
  %sub195 = sub i64 %132, %134, !dbg !5008
  %add196 = add i64 %sub195, 1, !dbg !5008
  br label %cond.end197, !dbg !5008

cond.end197:                                      ; preds = %cond.false188, %cond.true187
  %cond198 = phi i64 [ 0, %cond.true187 ], [ %add196, %cond.false188 ], !dbg !5008
  call void @__release_region(%struct.resource* @iomem_resource, i64 %124, i64 %cond198) #6, !dbg !5008
  br label %err_nodev, !dbg !5008

err_nodev:                                        ; preds = %cond.end197, %if.then18
  call void @llvm.dbg.label(metadata !5009), !dbg !5010
  store i32 -19, i32* %retval, align 4, !dbg !5011
  br label %return, !dbg !5011

return:                                           ; preds = %err_nodev, %if.end139, %if.then
  %135 = load i32, i32* %retval, align 4, !dbg !5012
  ret i32 %135, !dbg !5012
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gxt4500_remove(%struct.pci_dev* %pdev) #0 !dbg !5013 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %info = alloca %struct.fb_info*, align 8
  %par = alloca %struct.gxt4500_par*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5014, metadata !DIExpression()), !dbg !5015
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info, metadata !5016, metadata !DIExpression()), !dbg !5017
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5018
  %call = call i8* @pci_get_drvdata(%struct.pci_dev* %0) #6, !dbg !5019
  %1 = bitcast i8* %call to %struct.fb_info*, !dbg !5019
  store %struct.fb_info* %1, %struct.fb_info** %info, align 8, !dbg !5017
  call void @llvm.dbg.declare(metadata %struct.gxt4500_par** %par, metadata !5020, metadata !DIExpression()), !dbg !5021
  %2 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5022
  %tobool = icmp ne %struct.fb_info* %2, null, !dbg !5022
  br i1 %tobool, label %if.end, label %if.then, !dbg !5024

if.then:                                          ; preds = %entry
  br label %return, !dbg !5025

if.end:                                           ; preds = %entry
  %3 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5026
  %par1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 30, !dbg !5027
  %4 = load i8*, i8** %par1, align 8, !dbg !5027
  %5 = bitcast i8* %4 to %struct.gxt4500_par*, !dbg !5026
  store %struct.gxt4500_par* %5, %struct.gxt4500_par** %par, align 8, !dbg !5028
  %6 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5029
  call void @unregister_framebuffer(%struct.fb_info* %6) #6, !dbg !5030
  %7 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5031
  %wc_cookie = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %7, i32 0, i32 1, !dbg !5032
  %8 = load i32, i32* %wc_cookie, align 8, !dbg !5032
  call void @arch_phys_wc_del(i32 %8) #6, !dbg !5033
  %9 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5034
  %cmap = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 12, !dbg !5035
  call void @fb_dealloc_cmap(%struct.fb_cmap* %cmap) #6, !dbg !5036
  %10 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5037
  %regs = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %10, i32 0, i32 0, !dbg !5038
  %11 = load i8*, i8** %regs, align 8, !dbg !5038
  call void @iounmap(i8* %11) #6, !dbg !5039
  %12 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5040
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 25, !dbg !5041
  %screen_base = bitcast %union.anon.67* %13 to i8**, !dbg !5041
  %14 = load i8*, i8** %screen_base, align 8, !dbg !5041
  call void @iounmap(i8* %14) #6, !dbg !5042
  %15 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5043
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 44, !dbg !5043
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !5043
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !5043
  %16 = load i64, i64* %start, align 8, !dbg !5043
  %17 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5043
  %resource2 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 44, !dbg !5043
  %arrayidx3 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource2, i64 0, i64 0, !dbg !5043
  %start4 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx3, i32 0, i32 0, !dbg !5043
  %18 = load i64, i64* %start4, align 8, !dbg !5043
  %cmp = icmp eq i64 %18, 0, !dbg !5043
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !5043

land.lhs.true:                                    ; preds = %if.end
  %19 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5043
  %resource5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 44, !dbg !5043
  %arrayidx6 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource5, i64 0, i64 0, !dbg !5043
  %end = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx6, i32 0, i32 1, !dbg !5043
  %20 = load i64, i64* %end, align 8, !dbg !5043
  %21 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5043
  %resource7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 44, !dbg !5043
  %arrayidx8 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource7, i64 0, i64 0, !dbg !5043
  %start9 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx8, i32 0, i32 0, !dbg !5043
  %22 = load i64, i64* %start9, align 8, !dbg !5043
  %cmp10 = icmp eq i64 %20, %22, !dbg !5043
  br i1 %cmp10, label %cond.true, label %cond.false, !dbg !5043

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end, !dbg !5043

cond.false:                                       ; preds = %land.lhs.true, %if.end
  %23 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5043
  %resource11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 44, !dbg !5043
  %arrayidx12 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource11, i64 0, i64 0, !dbg !5043
  %end13 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx12, i32 0, i32 1, !dbg !5043
  %24 = load i64, i64* %end13, align 8, !dbg !5043
  %25 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5043
  %resource14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 44, !dbg !5043
  %arrayidx15 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource14, i64 0, i64 0, !dbg !5043
  %start16 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx15, i32 0, i32 0, !dbg !5043
  %26 = load i64, i64* %start16, align 8, !dbg !5043
  %sub = sub i64 %24, %26, !dbg !5043
  %add = add i64 %sub, 1, !dbg !5043
  br label %cond.end, !dbg !5043

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %add, %cond.false ], !dbg !5043
  call void @__release_region(%struct.resource* @iomem_resource, i64 %16, i64 %cond) #6, !dbg !5043
  %27 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5044
  %resource17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 44, !dbg !5044
  %arrayidx18 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource17, i64 0, i64 1, !dbg !5044
  %start19 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx18, i32 0, i32 0, !dbg !5044
  %28 = load i64, i64* %start19, align 8, !dbg !5044
  %29 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5044
  %resource20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 44, !dbg !5044
  %arrayidx21 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource20, i64 0, i64 1, !dbg !5044
  %start22 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx21, i32 0, i32 0, !dbg !5044
  %30 = load i64, i64* %start22, align 8, !dbg !5044
  %cmp23 = icmp eq i64 %30, 0, !dbg !5044
  br i1 %cmp23, label %land.lhs.true24, label %cond.false33, !dbg !5044

land.lhs.true24:                                  ; preds = %cond.end
  %31 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5044
  %resource25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 44, !dbg !5044
  %arrayidx26 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource25, i64 0, i64 1, !dbg !5044
  %end27 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx26, i32 0, i32 1, !dbg !5044
  %32 = load i64, i64* %end27, align 8, !dbg !5044
  %33 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5044
  %resource28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 44, !dbg !5044
  %arrayidx29 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource28, i64 0, i64 1, !dbg !5044
  %start30 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx29, i32 0, i32 0, !dbg !5044
  %34 = load i64, i64* %start30, align 8, !dbg !5044
  %cmp31 = icmp eq i64 %32, %34, !dbg !5044
  br i1 %cmp31, label %cond.true32, label %cond.false33, !dbg !5044

cond.true32:                                      ; preds = %land.lhs.true24
  br label %cond.end42, !dbg !5044

cond.false33:                                     ; preds = %land.lhs.true24, %cond.end
  %35 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5044
  %resource34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 44, !dbg !5044
  %arrayidx35 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource34, i64 0, i64 1, !dbg !5044
  %end36 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx35, i32 0, i32 1, !dbg !5044
  %36 = load i64, i64* %end36, align 8, !dbg !5044
  %37 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5044
  %resource37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 44, !dbg !5044
  %arrayidx38 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource37, i64 0, i64 1, !dbg !5044
  %start39 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx38, i32 0, i32 0, !dbg !5044
  %38 = load i64, i64* %start39, align 8, !dbg !5044
  %sub40 = sub i64 %36, %38, !dbg !5044
  %add41 = add i64 %sub40, 1, !dbg !5044
  br label %cond.end42, !dbg !5044

cond.end42:                                       ; preds = %cond.false33, %cond.true32
  %cond43 = phi i64 [ 0, %cond.true32 ], [ %add41, %cond.false33 ], !dbg !5044
  call void @__release_region(%struct.resource* @iomem_resource, i64 %28, i64 %cond43) #6, !dbg !5044
  %39 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5045
  call void @framebuffer_release(%struct.fb_info* %39) #6, !dbg !5046
  br label %return, !dbg !5047

return:                                           ; preds = %cond.end42, %if.then
  ret void, !dbg !5047
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local %struct.resource* @__request_region(%struct.resource*, i64, i64, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.fb_info* @framebuffer_alloc(i64, %struct.device*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone
declare dso_local i64 @strlcpy(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i8* @pci_ioremap_bar(%struct.pci_dev*, i32) #2

; Function Attrs: noredzone
declare dso_local i8* @pci_ioremap_wc_bar(%struct.pci_dev*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci_set_drvdata(%struct.pci_dev* %pdev, i8* %data) #0 !dbg !5048 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5051, metadata !DIExpression()), !dbg !5052
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5053, metadata !DIExpression()), !dbg !5054
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5055
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !5056
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5057
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #6, !dbg !5058
  ret void, !dbg !5059
}

; Function Attrs: noredzone
declare dso_local i32 @arch_phys_wc_add(i64, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @fb_alloc_cmap(%struct.fb_cmap*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gxt4500_blank(i32 %blank, %struct.fb_info* %info) #0 !dbg !5060 {
entry:
  %blank.addr = alloca i32, align 4
  %info.addr = alloca %struct.fb_info*, align 8
  %par = alloca %struct.gxt4500_par*, align 8
  %ctrl = alloca i32, align 4
  %dctl = alloca i32, align 4
  store i32 %blank, i32* %blank.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %blank.addr, metadata !5061, metadata !DIExpression()), !dbg !5062
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5063, metadata !DIExpression()), !dbg !5064
  call void @llvm.dbg.declare(metadata %struct.gxt4500_par** %par, metadata !5065, metadata !DIExpression()), !dbg !5066
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5067
  %par1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 30, !dbg !5068
  %1 = load i8*, i8** %par1, align 8, !dbg !5068
  %2 = bitcast i8* %1 to %struct.gxt4500_par*, !dbg !5067
  store %struct.gxt4500_par* %2, %struct.gxt4500_par** %par, align 8, !dbg !5066
  call void @llvm.dbg.declare(metadata i32* %ctrl, metadata !5069, metadata !DIExpression()), !dbg !5070
  call void @llvm.dbg.declare(metadata i32* %dctl, metadata !5071, metadata !DIExpression()), !dbg !5072
  %3 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5073
  %regs = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %3, i32 0, i32 0, !dbg !5073
  %4 = load i8*, i8** %regs, align 8, !dbg !5073
  %add.ptr = getelementptr i8, i8* %4, i64 16436, !dbg !5073
  %call = call i32 @readl(i8* %add.ptr) #6, !dbg !5073
  store i32 %call, i32* %ctrl, align 4, !dbg !5074
  %5 = load i32, i32* %ctrl, align 4, !dbg !5075
  %and = and i32 %5, -99, !dbg !5075
  store i32 %and, i32* %ctrl, align 4, !dbg !5075
  %6 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5076
  %regs2 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %6, i32 0, i32 0, !dbg !5076
  %7 = load i8*, i8** %regs2, align 8, !dbg !5076
  %add.ptr3 = getelementptr i8, i8* %7, i64 16428, !dbg !5076
  %call4 = call i32 @readl(i8* %add.ptr3) #6, !dbg !5076
  store i32 %call4, i32* %dctl, align 4, !dbg !5077
  %8 = load i32, i32* %dctl, align 4, !dbg !5078
  %or = or i32 %8, 2, !dbg !5078
  store i32 %or, i32* %dctl, align 4, !dbg !5078
  %9 = load i32, i32* %blank.addr, align 4, !dbg !5079
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 4, label %sw.bb6
    i32 3, label %sw.bb8
    i32 2, label %sw.bb10
  ], !dbg !5080

sw.bb:                                            ; preds = %entry
  %10 = load i32, i32* %dctl, align 4, !dbg !5081
  %and5 = and i32 %10, -3, !dbg !5081
  store i32 %and5, i32* %dctl, align 4, !dbg !5081
  br label %sw.epilog, !dbg !5083

sw.bb6:                                           ; preds = %entry
  %11 = load i32, i32* %ctrl, align 4, !dbg !5084
  %or7 = or i32 %11, 2, !dbg !5084
  store i32 %or7, i32* %ctrl, align 4, !dbg !5084
  br label %sw.epilog, !dbg !5085

sw.bb8:                                           ; preds = %entry
  %12 = load i32, i32* %ctrl, align 4, !dbg !5086
  %or9 = or i32 %12, 32, !dbg !5086
  store i32 %or9, i32* %ctrl, align 4, !dbg !5086
  br label %sw.epilog, !dbg !5087

sw.bb10:                                          ; preds = %entry
  %13 = load i32, i32* %ctrl, align 4, !dbg !5088
  %or11 = or i32 %13, 64, !dbg !5088
  store i32 %or11, i32* %ctrl, align 4, !dbg !5088
  br label %sw.epilog, !dbg !5089

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !5090

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb
  %14 = load i32, i32* %ctrl, align 4, !dbg !5091
  %15 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5091
  %regs12 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %15, i32 0, i32 0, !dbg !5091
  %16 = load i8*, i8** %regs12, align 8, !dbg !5091
  %add.ptr13 = getelementptr i8, i8* %16, i64 16436, !dbg !5091
  call void @writel(i32 %14, i8* %add.ptr13) #6, !dbg !5091
  %17 = load i32, i32* %dctl, align 4, !dbg !5092
  %18 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5092
  %regs14 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %18, i32 0, i32 0, !dbg !5092
  %19 = load i8*, i8** %regs14, align 8, !dbg !5092
  %add.ptr15 = getelementptr i8, i8* %19, i64 16428, !dbg !5092
  call void @writel(i32 %17, i8* %add.ptr15) #6, !dbg !5092
  ret i32 0, !dbg !5093
}

; Function Attrs: noredzone
declare dso_local i32 @fb_find_mode(%struct.fb_var_screeninfo*, %struct.fb_info*, i8*, %struct.fb_videomode*, i32, %struct.fb_videomode*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gxt4500_set_par(%struct.fb_info* %info) #0 !dbg !5094 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.fb_info*, align 8
  %par = alloca %struct.gxt4500_par*, align 8
  %var = alloca %struct.fb_var_screeninfo*, align 8
  %err = alloca i32, align 4
  %ctrlreg = alloca i32, align 4
  %tmp = alloca i32, align 4
  %dfa_ctl = alloca i32, align 4
  %pixfmt = alloca i32, align 4
  %stride = alloca i32, align 4
  %wid_tiles = alloca i32, align 4
  %i = alloca i32, align 4
  %prefetch_pix = alloca i32, align 4
  %htot = alloca i32, align 4
  %save_par = alloca %struct.gxt4500_par, align 8
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5095, metadata !DIExpression()), !dbg !5096
  call void @llvm.dbg.declare(metadata %struct.gxt4500_par** %par, metadata !5097, metadata !DIExpression()), !dbg !5098
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5099
  %par1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 30, !dbg !5100
  %1 = load i8*, i8** %par1, align 8, !dbg !5100
  %2 = bitcast i8* %1 to %struct.gxt4500_par*, !dbg !5099
  store %struct.gxt4500_par* %2, %struct.gxt4500_par** %par, align 8, !dbg !5098
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo** %var, metadata !5101, metadata !DIExpression()), !dbg !5102
  %3 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5103
  %var2 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 6, !dbg !5104
  store %struct.fb_var_screeninfo* %var2, %struct.fb_var_screeninfo** %var, align 8, !dbg !5102
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5105, metadata !DIExpression()), !dbg !5106
  call void @llvm.dbg.declare(metadata i32* %ctrlreg, metadata !5107, metadata !DIExpression()), !dbg !5108
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !5109, metadata !DIExpression()), !dbg !5110
  call void @llvm.dbg.declare(metadata i32* %dfa_ctl, metadata !5111, metadata !DIExpression()), !dbg !5112
  call void @llvm.dbg.declare(metadata i32* %pixfmt, metadata !5113, metadata !DIExpression()), !dbg !5114
  call void @llvm.dbg.declare(metadata i32* %stride, metadata !5115, metadata !DIExpression()), !dbg !5116
  call void @llvm.dbg.declare(metadata i32* %wid_tiles, metadata !5117, metadata !DIExpression()), !dbg !5118
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5119, metadata !DIExpression()), !dbg !5120
  call void @llvm.dbg.declare(metadata i32* %prefetch_pix, metadata !5121, metadata !DIExpression()), !dbg !5122
  call void @llvm.dbg.declare(metadata i32* %htot, metadata !5123, metadata !DIExpression()), !dbg !5124
  call void @llvm.dbg.declare(metadata %struct.gxt4500_par* %save_par, metadata !5125, metadata !DIExpression()), !dbg !5126
  %4 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5127
  %5 = bitcast %struct.gxt4500_par* %save_par to i8*, !dbg !5128
  %6 = bitcast %struct.gxt4500_par* %4 to i8*, !dbg !5128
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 104, i1 false), !dbg !5128
  %7 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5129
  %8 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5130
  %call = call i32 @gxt4500_var_to_par(%struct.fb_var_screeninfo* %7, %struct.gxt4500_par* %8) #6, !dbg !5131
  store i32 %call, i32* %err, align 4, !dbg !5132
  %9 = load i32, i32* %err, align 4, !dbg !5133
  %tobool = icmp ne i32 %9, 0, !dbg !5133
  br i1 %tobool, label %if.then, label %if.end, !dbg !5135

if.then:                                          ; preds = %entry
  %10 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5136
  %11 = bitcast %struct.gxt4500_par* %10 to i8*, !dbg !5138
  %12 = bitcast %struct.gxt4500_par* %save_par to i8*, !dbg !5138
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 104, i1 false), !dbg !5138
  %13 = load i32, i32* %err, align 4, !dbg !5139
  store i32 %13, i32* %retval, align 4, !dbg !5140
  br label %return, !dbg !5140

if.end:                                           ; preds = %entry
  %14 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5141
  %regs = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %14, i32 0, i32 0, !dbg !5141
  %15 = load i8*, i8** %regs, align 8, !dbg !5141
  %add.ptr = getelementptr i8, i8* %15, i64 6400, !dbg !5141
  %call3 = call i32 @readl(i8* %add.ptr) #6, !dbg !5141
  store i32 %call3, i32* %ctrlreg, align 4, !dbg !5142
  %16 = load i32, i32* %ctrlreg, align 4, !dbg !5143
  %and = and i32 %16, -4, !dbg !5143
  store i32 %and, i32* %ctrlreg, align 4, !dbg !5143
  %17 = load i32, i32* %ctrlreg, align 4, !dbg !5144
  %18 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5144
  %regs4 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %18, i32 0, i32 0, !dbg !5144
  %19 = load i8*, i8** %regs4, align 8, !dbg !5144
  %add.ptr5 = getelementptr i8, i8* %19, i64 6400, !dbg !5144
  call void @writel(i32 %17, i8* %add.ptr5) #6, !dbg !5144
  %20 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5145
  %regs6 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %20, i32 0, i32 0, !dbg !5145
  %21 = load i8*, i8** %regs6, align 8, !dbg !5145
  %add.ptr7 = getelementptr i8, i8* %21, i64 16460, !dbg !5145
  %call8 = call i32 @readl(i8* %add.ptr7) #6, !dbg !5145
  %and9 = and i32 %call8, -128, !dbg !5146
  store i32 %and9, i32* %tmp, align 4, !dbg !5147
  %22 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5148
  %pll_n = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %22, i32 0, i32 5, !dbg !5150
  %23 = load i32, i32* %pll_n, align 8, !dbg !5150
  %cmp = icmp slt i32 %23, 38, !dbg !5151
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !5152

if.then10:                                        ; preds = %if.end
  %24 = load i32, i32* %tmp, align 4, !dbg !5153
  %or = or i32 %24, 41, !dbg !5153
  store i32 %or, i32* %tmp, align 4, !dbg !5153
  br label %if.end11, !dbg !5154

if.end11:                                         ; preds = %if.then10, %if.end
  %25 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5155
  %pll_n12 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %25, i32 0, i32 5, !dbg !5157
  %26 = load i32, i32* %pll_n12, align 8, !dbg !5157
  %cmp13 = icmp slt i32 %26, 69, !dbg !5158
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !5159

if.then14:                                        ; preds = %if.end11
  %27 = load i32, i32* %tmp, align 4, !dbg !5160
  %or15 = or i32 %27, 53, !dbg !5160
  store i32 %or15, i32* %tmp, align 4, !dbg !5160
  br label %if.end23, !dbg !5161

if.else:                                          ; preds = %if.end11
  %28 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5162
  %pll_n16 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %28, i32 0, i32 5, !dbg !5164
  %29 = load i32, i32* %pll_n16, align 8, !dbg !5164
  %cmp17 = icmp slt i32 %29, 100, !dbg !5165
  br i1 %cmp17, label %if.then18, label %if.else20, !dbg !5166

if.then18:                                        ; preds = %if.else
  %30 = load i32, i32* %tmp, align 4, !dbg !5167
  %or19 = or i32 %30, 118, !dbg !5167
  store i32 %or19, i32* %tmp, align 4, !dbg !5167
  br label %if.end22, !dbg !5168

if.else20:                                        ; preds = %if.else
  %31 = load i32, i32* %tmp, align 4, !dbg !5169
  %or21 = or i32 %31, 126, !dbg !5169
  store i32 %or21, i32* %tmp, align 4, !dbg !5169
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.then18
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then14
  %32 = load i32, i32* %tmp, align 4, !dbg !5170
  %33 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5170
  %regs24 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %33, i32 0, i32 0, !dbg !5170
  %34 = load i8*, i8** %regs24, align 8, !dbg !5170
  %add.ptr25 = getelementptr i8, i8* %34, i64 16460, !dbg !5170
  call void @writel(i32 %32, i8* %add.ptr25) #6, !dbg !5170
  %35 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5171
  %pll_m = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %35, i32 0, i32 4, !dbg !5171
  %36 = load i32, i32* %pll_m, align 4, !dbg !5171
  %sub = sub i32 %36, 1, !dbg !5171
  %idxprom = sext i32 %sub to i64, !dbg !5171
  %arrayidx = getelementptr [64 x i8], [64 x i8]* @mdivtab, i64 0, i64 %idxprom, !dbg !5171
  %37 = load i8, i8* %arrayidx, align 1, !dbg !5171
  %conv = zext i8 %37 to i32, !dbg !5171
  %38 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5171
  %regs26 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %38, i32 0, i32 0, !dbg !5171
  %39 = load i8*, i8** %regs26, align 8, !dbg !5171
  %add.ptr27 = getelementptr i8, i8* %39, i64 16448, !dbg !5171
  call void @writel(i32 %conv, i8* %add.ptr27) #6, !dbg !5171
  %40 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5172
  %pll_n28 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %40, i32 0, i32 5, !dbg !5172
  %41 = load i32, i32* %pll_n28, align 8, !dbg !5172
  %sub29 = sub i32 %41, 2, !dbg !5172
  %idxprom30 = sext i32 %sub29 to i64, !dbg !5172
  %arrayidx31 = getelementptr [159 x i8], [159 x i8]* @ndivtab, i64 0, i64 %idxprom30, !dbg !5172
  %42 = load i8, i8* %arrayidx31, align 1, !dbg !5172
  %conv32 = zext i8 %42 to i32, !dbg !5172
  %43 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5172
  %regs33 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %43, i32 0, i32 0, !dbg !5172
  %44 = load i8*, i8** %regs33, align 8, !dbg !5172
  %add.ptr34 = getelementptr i8, i8* %44, i64 16452, !dbg !5172
  call void @writel(i32 %conv32, i8* %add.ptr34) #6, !dbg !5172
  %45 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5173
  %pll_pd2 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %45, i32 0, i32 7, !dbg !5174
  %46 = load i32, i32* %pll_pd2, align 8, !dbg !5174
  %sub35 = sub i32 8, %46, !dbg !5175
  %shl = shl i32 %sub35, 3, !dbg !5176
  %47 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5177
  %pll_pd1 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %47, i32 0, i32 6, !dbg !5178
  %48 = load i32, i32* %pll_pd1, align 4, !dbg !5178
  %sub36 = sub i32 8, %48, !dbg !5179
  %or37 = or i32 %shl, %sub36, !dbg !5180
  store i32 %or37, i32* %tmp, align 4, !dbg !5181
  %49 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5182
  %pll_pd138 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %49, i32 0, i32 6, !dbg !5184
  %50 = load i32, i32* %pll_pd138, align 4, !dbg !5184
  %cmp39 = icmp eq i32 %50, 8, !dbg !5185
  br i1 %cmp39, label %if.then44, label %lor.lhs.false, !dbg !5186

lor.lhs.false:                                    ; preds = %if.end23
  %51 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5187
  %pll_pd241 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %51, i32 0, i32 7, !dbg !5188
  %52 = load i32, i32* %pll_pd241, align 8, !dbg !5188
  %cmp42 = icmp eq i32 %52, 8, !dbg !5189
  br i1 %cmp42, label %if.then44, label %if.end48, !dbg !5190

if.then44:                                        ; preds = %lor.lhs.false, %if.end23
  %53 = load i32, i32* %tmp, align 4, !dbg !5191
  %or45 = or i32 %53, 9, !dbg !5191
  %54 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5191
  %regs46 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %54, i32 0, i32 0, !dbg !5191
  %55 = load i8*, i8** %regs46, align 8, !dbg !5191
  %add.ptr47 = getelementptr i8, i8* %55, i64 16456, !dbg !5191
  call void @writel(i32 %or45, i8* %add.ptr47) #6, !dbg !5191
  call void @__const_udelay(i64 4295) #6, !dbg !5193
  br label %if.end48, !dbg !5198

if.end48:                                         ; preds = %if.then44, %lor.lhs.false
  %56 = load i32, i32* %tmp, align 4, !dbg !5199
  %57 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5199
  %regs49 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %57, i32 0, i32 0, !dbg !5199
  %58 = load i8*, i8** %regs49, align 8, !dbg !5199
  %add.ptr50 = getelementptr i8, i8* %58, i64 16456, !dbg !5199
  call void @writel(i32 %56, i8* %add.ptr50) #6, !dbg !5199
  call void @msleep(i32 20) #6, !dbg !5200
  %59 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5201
  %regs51 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %59, i32 0, i32 0, !dbg !5201
  %60 = load i8*, i8** %regs51, align 8, !dbg !5201
  %add.ptr52 = getelementptr i8, i8* %60, i64 16516, !dbg !5201
  call void @writel(i32 0, i8* %add.ptr52) #6, !dbg !5201
  %61 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5202
  %regs53 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %61, i32 0, i32 0, !dbg !5202
  %62 = load i8*, i8** %regs53, align 8, !dbg !5202
  %add.ptr54 = getelementptr i8, i8* %62, i64 4100, !dbg !5202
  call void @writel(i32 524296, i8* %add.ptr54) #6, !dbg !5202
  call void @__const_udelay(i64 42950) #6, !dbg !5203
  %63 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5208
  %regs55 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %63, i32 0, i32 0, !dbg !5208
  %64 = load i8*, i8** %regs55, align 8, !dbg !5208
  %add.ptr56 = getelementptr i8, i8* %64, i64 4100, !dbg !5208
  call void @writel(i32 524288, i8* %add.ptr56) #6, !dbg !5208
  %65 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5209
  %xres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %65, i32 0, i32 0, !dbg !5210
  %66 = load i32, i32* %xres, align 4, !dbg !5210
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5211
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %67, i32 0, i32 18, !dbg !5212
  %68 = load i32, i32* %left_margin, align 4, !dbg !5212
  %add = add i32 %66, %68, !dbg !5213
  %69 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5214
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %69, i32 0, i32 19, !dbg !5215
  %70 = load i32, i32* %right_margin, align 4, !dbg !5215
  %add57 = add i32 %add, %70, !dbg !5216
  %71 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5217
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %71, i32 0, i32 22, !dbg !5218
  %72 = load i32, i32* %hsync_len, align 4, !dbg !5218
  %add58 = add i32 %add57, %72, !dbg !5219
  store i32 %add58, i32* %htot, align 4, !dbg !5220
  %73 = load i32, i32* %htot, align 4, !dbg !5221
  %sub59 = sub i32 %73, 1, !dbg !5221
  %74 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5221
  %regs60 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %74, i32 0, i32 0, !dbg !5221
  %75 = load i8*, i8** %regs60, align 8, !dbg !5221
  %add.ptr61 = getelementptr i8, i8* %75, i64 6404, !dbg !5221
  call void @writel(i32 %sub59, i8* %add.ptr61) #6, !dbg !5221
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5222
  %xres62 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %76, i32 0, i32 0, !dbg !5222
  %77 = load i32, i32* %xres62, align 4, !dbg !5222
  %sub63 = sub i32 %77, 1, !dbg !5222
  %78 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5222
  %regs64 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %78, i32 0, i32 0, !dbg !5222
  %79 = load i8*, i8** %regs64, align 8, !dbg !5222
  %add.ptr65 = getelementptr i8, i8* %79, i64 6408, !dbg !5222
  call void @writel(i32 %sub63, i8* %add.ptr65) #6, !dbg !5222
  %80 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5223
  %xres66 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %80, i32 0, i32 0, !dbg !5223
  %81 = load i32, i32* %xres66, align 4, !dbg !5223
  %82 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5223
  %right_margin67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %82, i32 0, i32 19, !dbg !5223
  %83 = load i32, i32* %right_margin67, align 4, !dbg !5223
  %add68 = add i32 %81, %83, !dbg !5223
  %sub69 = sub i32 %add68, 1, !dbg !5223
  %84 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5223
  %regs70 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %84, i32 0, i32 0, !dbg !5223
  %85 = load i8*, i8** %regs70, align 8, !dbg !5223
  %add.ptr71 = getelementptr i8, i8* %85, i64 6412, !dbg !5223
  call void @writel(i32 %sub69, i8* %add.ptr71) #6, !dbg !5223
  %86 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5224
  %xres72 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %86, i32 0, i32 0, !dbg !5224
  %87 = load i32, i32* %xres72, align 4, !dbg !5224
  %88 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5224
  %right_margin73 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %88, i32 0, i32 19, !dbg !5224
  %89 = load i32, i32* %right_margin73, align 4, !dbg !5224
  %add74 = add i32 %87, %89, !dbg !5224
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5224
  %hsync_len75 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 22, !dbg !5224
  %91 = load i32, i32* %hsync_len75, align 4, !dbg !5224
  %add76 = add i32 %add74, %91, !dbg !5224
  %sub77 = sub i32 %add76, 1, !dbg !5224
  %92 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5224
  %regs78 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %92, i32 0, i32 0, !dbg !5224
  %93 = load i8*, i8** %regs78, align 8, !dbg !5224
  %add.ptr79 = getelementptr i8, i8* %93, i64 6416, !dbg !5224
  call void @writel(i32 %sub77, i8* %add.ptr79) #6, !dbg !5224
  %94 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5225
  %xres80 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %94, i32 0, i32 0, !dbg !5225
  %95 = load i32, i32* %xres80, align 4, !dbg !5225
  %96 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5225
  %right_margin81 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %96, i32 0, i32 19, !dbg !5225
  %97 = load i32, i32* %right_margin81, align 4, !dbg !5225
  %add82 = add i32 %95, %97, !dbg !5225
  %98 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5225
  %hsync_len83 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %98, i32 0, i32 22, !dbg !5225
  %99 = load i32, i32* %hsync_len83, align 4, !dbg !5225
  %add84 = add i32 %add82, %99, !dbg !5225
  %sub85 = sub i32 %add84, 1, !dbg !5225
  %100 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5225
  %regs86 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %100, i32 0, i32 0, !dbg !5225
  %101 = load i8*, i8** %regs86, align 8, !dbg !5225
  %add.ptr87 = getelementptr i8, i8* %101, i64 6420, !dbg !5225
  call void @writel(i32 %sub85, i8* %add.ptr87) #6, !dbg !5225
  %102 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5226
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %102, i32 0, i32 1, !dbg !5226
  %103 = load i32, i32* %yres, align 4, !dbg !5226
  %104 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5226
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %104, i32 0, i32 20, !dbg !5226
  %105 = load i32, i32* %upper_margin, align 4, !dbg !5226
  %add88 = add i32 %103, %105, !dbg !5226
  %106 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5226
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %106, i32 0, i32 21, !dbg !5226
  %107 = load i32, i32* %lower_margin, align 4, !dbg !5226
  %add89 = add i32 %add88, %107, !dbg !5226
  %108 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5226
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %108, i32 0, i32 23, !dbg !5226
  %109 = load i32, i32* %vsync_len, align 4, !dbg !5226
  %add90 = add i32 %add89, %109, !dbg !5226
  %sub91 = sub i32 %add90, 1, !dbg !5226
  %110 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5226
  %regs92 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %110, i32 0, i32 0, !dbg !5226
  %111 = load i8*, i8** %regs92, align 8, !dbg !5226
  %add.ptr93 = getelementptr i8, i8* %111, i64 6424, !dbg !5226
  call void @writel(i32 %sub91, i8* %add.ptr93) #6, !dbg !5226
  %112 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5227
  %yres94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %112, i32 0, i32 1, !dbg !5227
  %113 = load i32, i32* %yres94, align 4, !dbg !5227
  %sub95 = sub i32 %113, 1, !dbg !5227
  %114 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5227
  %regs96 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %114, i32 0, i32 0, !dbg !5227
  %115 = load i8*, i8** %regs96, align 8, !dbg !5227
  %add.ptr97 = getelementptr i8, i8* %115, i64 6428, !dbg !5227
  call void @writel(i32 %sub95, i8* %add.ptr97) #6, !dbg !5227
  %116 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5228
  %yres98 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %116, i32 0, i32 1, !dbg !5228
  %117 = load i32, i32* %yres98, align 4, !dbg !5228
  %118 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5228
  %lower_margin99 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %118, i32 0, i32 21, !dbg !5228
  %119 = load i32, i32* %lower_margin99, align 4, !dbg !5228
  %add100 = add i32 %117, %119, !dbg !5228
  %sub101 = sub i32 %add100, 1, !dbg !5228
  %120 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5228
  %regs102 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %120, i32 0, i32 0, !dbg !5228
  %121 = load i8*, i8** %regs102, align 8, !dbg !5228
  %add.ptr103 = getelementptr i8, i8* %121, i64 6432, !dbg !5228
  call void @writel(i32 %sub101, i8* %add.ptr103) #6, !dbg !5228
  %122 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5229
  %yres104 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %122, i32 0, i32 1, !dbg !5229
  %123 = load i32, i32* %yres104, align 4, !dbg !5229
  %124 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5229
  %lower_margin105 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %124, i32 0, i32 21, !dbg !5229
  %125 = load i32, i32* %lower_margin105, align 4, !dbg !5229
  %add106 = add i32 %123, %125, !dbg !5229
  %126 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5229
  %vsync_len107 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %126, i32 0, i32 23, !dbg !5229
  %127 = load i32, i32* %vsync_len107, align 4, !dbg !5229
  %add108 = add i32 %add106, %127, !dbg !5229
  %sub109 = sub i32 %add108, 1, !dbg !5229
  %128 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5229
  %regs110 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %128, i32 0, i32 0, !dbg !5229
  %129 = load i8*, i8** %regs110, align 8, !dbg !5229
  %add.ptr111 = getelementptr i8, i8* %129, i64 6436, !dbg !5229
  call void @writel(i32 %sub109, i8* %add.ptr111) #6, !dbg !5229
  %130 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5230
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %130, i32 0, i32 17, !dbg !5231
  %131 = load i32, i32* %pixclock, align 4, !dbg !5231
  %div = udiv i32 3300000, %131, !dbg !5232
  store i32 %div, i32* %prefetch_pix, align 4, !dbg !5233
  %132 = load i32, i32* %prefetch_pix, align 4, !dbg !5234
  %133 = load i32, i32* %htot, align 4, !dbg !5236
  %cmp112 = icmp uge i32 %132, %133, !dbg !5237
  br i1 %cmp112, label %if.then114, label %if.end116, !dbg !5238

if.then114:                                       ; preds = %if.end48
  %134 = load i32, i32* %htot, align 4, !dbg !5239
  %sub115 = sub i32 %134, 1, !dbg !5240
  store i32 %sub115, i32* %prefetch_pix, align 4, !dbg !5241
  br label %if.end116, !dbg !5242

if.end116:                                        ; preds = %if.then114, %if.end48
  %135 = load i32, i32* %htot, align 4, !dbg !5243
  %136 = load i32, i32* %prefetch_pix, align 4, !dbg !5243
  %sub117 = sub i32 %135, %136, !dbg !5243
  %sub118 = sub i32 %sub117, 1, !dbg !5243
  %137 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5243
  %regs119 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %137, i32 0, i32 0, !dbg !5243
  %138 = load i8*, i8** %regs119, align 8, !dbg !5243
  %add.ptr120 = getelementptr i8, i8* %138, i64 6440, !dbg !5243
  call void @writel(i32 %sub118, i8* %add.ptr120) #6, !dbg !5243
  %139 = load i32, i32* %ctrlreg, align 4, !dbg !5244
  %or121 = or i32 %139, 3, !dbg !5244
  store i32 %or121, i32* %ctrlreg, align 4, !dbg !5244
  %140 = load i32, i32* %ctrlreg, align 4, !dbg !5245
  %141 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5245
  %regs122 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %141, i32 0, i32 0, !dbg !5245
  %142 = load i8*, i8** %regs122, align 8, !dbg !5245
  %add.ptr123 = getelementptr i8, i8* %142, i64 6400, !dbg !5245
  call void @writel(i32 %140, i8* %add.ptr123) #6, !dbg !5245
  %143 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5246
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %143, i32 0, i32 2, !dbg !5248
  %144 = load i32, i32* %xres_virtual, align 4, !dbg !5248
  %cmp124 = icmp ugt i32 %144, 2048, !dbg !5249
  br i1 %cmp124, label %if.then126, label %if.else127, !dbg !5250

if.then126:                                       ; preds = %if.end116
  store i32 4096, i32* %stride, align 4, !dbg !5251
  store i32 32, i32* %dfa_ctl, align 4, !dbg !5253
  br label %if.end134, !dbg !5254

if.else127:                                       ; preds = %if.end116
  %145 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5255
  %xres_virtual128 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %145, i32 0, i32 2, !dbg !5257
  %146 = load i32, i32* %xres_virtual128, align 4, !dbg !5257
  %cmp129 = icmp ugt i32 %146, 1024, !dbg !5258
  br i1 %cmp129, label %if.then131, label %if.else132, !dbg !5259

if.then131:                                       ; preds = %if.else127
  store i32 2048, i32* %stride, align 4, !dbg !5260
  store i32 16, i32* %dfa_ctl, align 4, !dbg !5262
  br label %if.end133, !dbg !5263

if.else132:                                       ; preds = %if.else127
  store i32 1024, i32* %stride, align 4, !dbg !5264
  store i32 0, i32* %dfa_ctl, align 4, !dbg !5266
  br label %if.end133

if.end133:                                        ; preds = %if.else132, %if.then131
  br label %if.end134

if.end134:                                        ; preds = %if.end133, %if.then126
  %147 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5267
  %xres_virtual135 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %147, i32 0, i32 2, !dbg !5268
  %148 = load i32, i32* %xres_virtual135, align 4, !dbg !5268
  %add136 = add i32 %148, 63, !dbg !5269
  %shr = lshr i32 %add136, 6, !dbg !5270
  store i32 %shr, i32* %wid_tiles, align 4, !dbg !5271
  %149 = load i32, i32* %wid_tiles, align 4, !dbg !5272
  %shl137 = shl i32 %149, 16, !dbg !5272
  %or138 = or i32 -2147483648, %shl137, !dbg !5272
  %150 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5272
  %regs139 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %150, i32 0, i32 0, !dbg !5272
  %151 = load i8*, i8** %regs139, align 8, !dbg !5272
  %add.ptr140 = getelementptr i8, i8* %151, i64 4352, !dbg !5272
  call void @writel(i32 %or138, i8* %add.ptr140) #6, !dbg !5272
  %152 = load i32, i32* %wid_tiles, align 4, !dbg !5273
  %shl141 = shl i32 %152, 16, !dbg !5273
  %or142 = or i32 -2147483648, %shl141, !dbg !5273
  %153 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5273
  %regs143 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %153, i32 0, i32 0, !dbg !5273
  %154 = load i8*, i8** %regs143, align 8, !dbg !5273
  %add.ptr144 = getelementptr i8, i8* %154, i64 4372, !dbg !5273
  call void @writel(i32 %or142, i8* %add.ptr144) #6, !dbg !5273
  %155 = load i32, i32* %wid_tiles, align 4, !dbg !5274
  %shl145 = shl i32 %155, 16, !dbg !5274
  %or146 = or i32 -2147483648, %shl145, !dbg !5274
  %156 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5274
  %regs147 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %156, i32 0, i32 0, !dbg !5274
  %157 = load i8*, i8** %regs147, align 8, !dbg !5274
  %add.ptr148 = getelementptr i8, i8* %157, i64 4356, !dbg !5274
  call void @writel(i32 %or146, i8* %add.ptr148) #6, !dbg !5274
  %158 = load i32, i32* %wid_tiles, align 4, !dbg !5275
  %shl149 = shl i32 %158, 16, !dbg !5275
  %or150 = or i32 -2147483648, %shl149, !dbg !5275
  %159 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5275
  %regs151 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %159, i32 0, i32 0, !dbg !5275
  %160 = load i8*, i8** %regs151, align 8, !dbg !5275
  %add.ptr152 = getelementptr i8, i8* %160, i64 4376, !dbg !5275
  call void @writel(i32 %or150, i8* %add.ptr152) #6, !dbg !5275
  %161 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5276
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %161, i32 0, i32 4, !dbg !5276
  %162 = load i32, i32* %xoffset, align 4, !dbg !5276
  %shl153 = shl i32 %162, 16, !dbg !5276
  %163 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5276
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %163, i32 0, i32 5, !dbg !5276
  %164 = load i32, i32* %yoffset, align 4, !dbg !5276
  %or154 = or i32 %shl153, %164, !dbg !5276
  %165 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5276
  %regs155 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %165, i32 0, i32 0, !dbg !5276
  %166 = load i8*, i8** %regs155, align 8, !dbg !5276
  %add.ptr156 = getelementptr i8, i8* %166, i64 4248, !dbg !5276
  call void @writel(i32 %or154, i8* %add.ptr156) #6, !dbg !5276
  %167 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5277
  %xres157 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %167, i32 0, i32 0, !dbg !5277
  %168 = load i32, i32* %xres157, align 4, !dbg !5277
  %shl158 = shl i32 %168, 16, !dbg !5277
  %169 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5277
  %yres159 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %169, i32 0, i32 1, !dbg !5277
  %170 = load i32, i32* %yres159, align 4, !dbg !5277
  %or160 = or i32 %shl158, %170, !dbg !5277
  %171 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5277
  %regs161 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %171, i32 0, i32 0, !dbg !5277
  %172 = load i8*, i8** %regs161, align 8, !dbg !5277
  %add.ptr162 = getelementptr i8, i8* %172, i64 4252, !dbg !5277
  call void @writel(i32 %or160, i8* %add.ptr162) #6, !dbg !5277
  %173 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5278
  %pixfmt163 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %173, i32 0, i32 2, !dbg !5279
  %174 = load i32, i32* %pixfmt163, align 4, !dbg !5279
  store i32 %174, i32* %pixfmt, align 4, !dbg !5280
  %175 = load i32, i32* %pixfmt, align 4, !dbg !5281
  %or164 = or i32 -2147483648, %175, !dbg !5282
  %176 = load i32, i32* %dfa_ctl, align 4, !dbg !5283
  %or165 = or i32 %176, %or164, !dbg !5283
  store i32 %or165, i32* %dfa_ctl, align 4, !dbg !5283
  %177 = load i32, i32* %dfa_ctl, align 4, !dbg !5284
  %178 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5284
  %regs166 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %178, i32 0, i32 0, !dbg !5284
  %179 = load i8*, i8** %regs166, align 8, !dbg !5284
  %add.ptr167 = getelementptr i8, i8* %179, i64 4576, !dbg !5284
  call void @writel(i32 %177, i8* %add.ptr167) #6, !dbg !5284
  store i32 0, i32* %i, align 4, !dbg !5285
  br label %for.cond, !dbg !5287

for.cond:                                         ; preds = %for.inc, %if.end134
  %180 = load i32, i32* %i, align 4, !dbg !5288
  %cmp168 = icmp ult i32 %180, 32, !dbg !5290
  br i1 %cmp168, label %for.body, label %for.end, !dbg !5291

for.body:                                         ; preds = %for.cond
  %181 = load i32, i32* %pixfmt, align 4, !dbg !5292
  %idxprom170 = zext i32 %181 to i64, !dbg !5292
  %arrayidx171 = getelementptr [6 x i8], [6 x i8]* @watfmt, i64 0, i64 %idxprom170, !dbg !5292
  %182 = load i8, i8* %arrayidx171, align 1, !dbg !5292
  %conv172 = zext i8 %182 to i32, !dbg !5292
  %183 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5292
  %regs173 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %183, i32 0, i32 0, !dbg !5292
  %184 = load i8*, i8** %regs173, align 8, !dbg !5292
  %185 = load i32, i32* %i, align 4, !dbg !5292
  %shl174 = shl i32 %185, 4, !dbg !5292
  %add175 = add i32 16640, %shl174, !dbg !5292
  %idx.ext = zext i32 %add175 to i64, !dbg !5292
  %add.ptr176 = getelementptr i8, i8* %184, i64 %idx.ext, !dbg !5292
  call void @writel(i32 %conv172, i8* %add.ptr176) #6, !dbg !5292
  %186 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5294
  %regs177 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %186, i32 0, i32 0, !dbg !5294
  %187 = load i8*, i8** %regs177, align 8, !dbg !5294
  %188 = load i32, i32* %i, align 4, !dbg !5294
  %shl178 = shl i32 %188, 4, !dbg !5294
  %add179 = add i32 16644, %shl178, !dbg !5294
  %idx.ext180 = zext i32 %add179 to i64, !dbg !5294
  %add.ptr181 = getelementptr i8, i8* %187, i64 %idx.ext180, !dbg !5294
  call void @writel(i32 0, i8* %add.ptr181) #6, !dbg !5294
  %189 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5295
  %regs182 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %189, i32 0, i32 0, !dbg !5295
  %190 = load i8*, i8** %regs182, align 8, !dbg !5295
  %191 = load i32, i32* %i, align 4, !dbg !5295
  %shl183 = shl i32 %191, 4, !dbg !5295
  %add184 = add i32 16648, %shl183, !dbg !5295
  %idx.ext185 = zext i32 %add184 to i64, !dbg !5295
  %add.ptr186 = getelementptr i8, i8* %190, i64 %idx.ext185, !dbg !5295
  call void @writel(i32 0, i8* %add.ptr186) #6, !dbg !5295
  %192 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5296
  %regs187 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %192, i32 0, i32 0, !dbg !5296
  %193 = load i8*, i8** %regs187, align 8, !dbg !5296
  %194 = load i32, i32* %i, align 4, !dbg !5296
  %shl188 = shl i32 %194, 4, !dbg !5296
  %add189 = add i32 16652, %shl188, !dbg !5296
  %idx.ext190 = zext i32 %add189 to i64, !dbg !5296
  %add.ptr191 = getelementptr i8, i8* %193, i64 %idx.ext190, !dbg !5296
  call void @writel(i32 1, i8* %add.ptr191) #6, !dbg !5296
  br label %for.inc, !dbg !5297

for.inc:                                          ; preds = %for.body
  %195 = load i32, i32* %i, align 4, !dbg !5298
  %inc = add i32 %195, 1, !dbg !5298
  store i32 %inc, i32* %i, align 4, !dbg !5298
  br label %for.cond, !dbg !5299, !llvm.loop !5300

for.end:                                          ; preds = %for.cond
  %196 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5302
  %regs192 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %196, i32 0, i32 0, !dbg !5302
  %197 = load i8*, i8** %regs192, align 8, !dbg !5302
  %add.ptr193 = getelementptr i8, i8* %197, i64 16436, !dbg !5302
  %call194 = call i32 @readl(i8* %add.ptr193) #6, !dbg !5302
  %and195 = and i32 %call194, -26, !dbg !5303
  store i32 %and195, i32* %ctrlreg, align 4, !dbg !5304
  %198 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5305
  %sync = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %198, i32 0, i32 24, !dbg !5307
  %199 = load i32, i32* %sync, align 4, !dbg !5307
  %and196 = and i32 %199, 32, !dbg !5308
  %tobool197 = icmp ne i32 %and196, 0, !dbg !5308
  br i1 %tobool197, label %if.then198, label %if.end200, !dbg !5309

if.then198:                                       ; preds = %for.end
  %200 = load i32, i32* %ctrlreg, align 4, !dbg !5310
  %or199 = or i32 %200, 1, !dbg !5310
  store i32 %or199, i32* %ctrlreg, align 4, !dbg !5310
  br label %if.end200, !dbg !5311

if.end200:                                        ; preds = %if.then198, %for.end
  %201 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5312
  %sync201 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %201, i32 0, i32 24, !dbg !5314
  %202 = load i32, i32* %sync201, align 4, !dbg !5314
  %and202 = and i32 %202, 1, !dbg !5315
  %tobool203 = icmp ne i32 %and202, 0, !dbg !5315
  br i1 %tobool203, label %if.end206, label %if.then204, !dbg !5316

if.then204:                                       ; preds = %if.end200
  %203 = load i32, i32* %ctrlreg, align 4, !dbg !5317
  %or205 = or i32 %203, 8, !dbg !5317
  store i32 %or205, i32* %ctrlreg, align 4, !dbg !5317
  br label %if.end206, !dbg !5318

if.end206:                                        ; preds = %if.then204, %if.end200
  %204 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var, align 8, !dbg !5319
  %sync207 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %204, i32 0, i32 24, !dbg !5321
  %205 = load i32, i32* %sync207, align 4, !dbg !5321
  %and208 = and i32 %205, 2, !dbg !5322
  %tobool209 = icmp ne i32 %and208, 0, !dbg !5322
  br i1 %tobool209, label %if.end212, label %if.then210, !dbg !5323

if.then210:                                       ; preds = %if.end206
  %206 = load i32, i32* %ctrlreg, align 4, !dbg !5324
  %or211 = or i32 %206, 16, !dbg !5324
  store i32 %or211, i32* %ctrlreg, align 4, !dbg !5324
  br label %if.end212, !dbg !5325

if.end212:                                        ; preds = %if.then210, %if.end206
  %207 = load i32, i32* %ctrlreg, align 4, !dbg !5326
  %208 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5326
  %regs213 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %208, i32 0, i32 0, !dbg !5326
  %209 = load i8*, i8** %regs213, align 8, !dbg !5326
  %add.ptr214 = getelementptr i8, i8* %209, i64 16436, !dbg !5326
  call void @writel(i32 %207, i8* %add.ptr214) #6, !dbg !5326
  %210 = load i32, i32* %stride, align 4, !dbg !5327
  %211 = load i32, i32* %pixfmt, align 4, !dbg !5328
  %idxprom215 = zext i32 %211 to i64, !dbg !5329
  %arrayidx216 = getelementptr [6 x i8], [6 x i8]* @pixsize, i64 0, i64 %idxprom215, !dbg !5329
  %212 = load i8, i8* %arrayidx216, align 1, !dbg !5329
  %conv217 = zext i8 %212 to i32, !dbg !5329
  %mul = mul i32 %210, %conv217, !dbg !5330
  %213 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5331
  %fix = getelementptr inbounds %struct.fb_info, %struct.fb_info* %213, i32 0, i32 7, !dbg !5332
  %line_length = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix, i32 0, i32 9, !dbg !5333
  store i32 %mul, i32* %line_length, align 8, !dbg !5334
  %214 = load i32, i32* %pixfmt, align 4, !dbg !5335
  %cmp218 = icmp eq i32 %214, 0, !dbg !5336
  %215 = zext i1 %cmp218 to i64, !dbg !5337
  %cond = select i1 %cmp218, i32 3, i32 4, !dbg !5337
  %216 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5338
  %fix220 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %216, i32 0, i32 7, !dbg !5339
  %visual = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix220, i32 0, i32 5, !dbg !5340
  store i32 %cond, i32* %visual, align 4, !dbg !5341
  store i32 0, i32* %retval, align 4, !dbg !5342
  br label %return, !dbg !5342

return:                                           ; preds = %if.end212, %if.then
  %217 = load i32, i32* %retval, align 4, !dbg !5343
  ret i32 %217, !dbg !5343
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @register_framebuffer(%struct.fb_info*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @fb_dealloc_cmap(%struct.fb_cmap*) #2

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #2

; Function Attrs: noredzone
declare dso_local void @framebuffer_release(%struct.fb_info*) #2

; Function Attrs: noredzone
declare dso_local void @__release_region(%struct.resource*, i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !5344 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5347, metadata !DIExpression()), !dbg !5348
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5349, metadata !DIExpression()), !dbg !5350
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5351
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5352
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5353
  store i8* %0, i8** %driver_data, align 8, !dbg !5354
  ret void, !dbg !5355
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gxt4500_check_var(%struct.fb_var_screeninfo* %var, %struct.fb_info* %info) #0 !dbg !5356 {
entry:
  %var.addr = alloca %struct.fb_var_screeninfo*, align 8
  %info.addr = alloca %struct.fb_info*, align 8
  %par = alloca %struct.gxt4500_par, align 8
  %err = alloca i32, align 4
  store %struct.fb_var_screeninfo* %var, %struct.fb_var_screeninfo** %var.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo** %var.addr, metadata !5357, metadata !DIExpression()), !dbg !5358
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5359, metadata !DIExpression()), !dbg !5360
  call void @llvm.dbg.declare(metadata %struct.gxt4500_par* %par, metadata !5361, metadata !DIExpression()), !dbg !5362
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5363, metadata !DIExpression()), !dbg !5364
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5365
  %par1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 30, !dbg !5366
  %1 = load i8*, i8** %par1, align 8, !dbg !5366
  %2 = bitcast i8* %1 to %struct.gxt4500_par*, !dbg !5367
  %3 = bitcast %struct.gxt4500_par* %par to i8*, !dbg !5368
  %4 = bitcast %struct.gxt4500_par* %2 to i8*, !dbg !5368
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 104, i1 false), !dbg !5368
  %5 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5369
  %call = call i32 @gxt4500_var_to_par(%struct.fb_var_screeninfo* %5, %struct.gxt4500_par* %par) #6, !dbg !5370
  store i32 %call, i32* %err, align 4, !dbg !5371
  %6 = load i32, i32* %err, align 4, !dbg !5372
  %tobool = icmp ne i32 %6, 0, !dbg !5372
  br i1 %tobool, label %if.end, label %if.then, !dbg !5374

if.then:                                          ; preds = %entry
  %call2 = call i32 @calc_pixclock(%struct.gxt4500_par* %par) #6, !dbg !5375
  %7 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5377
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %7, i32 0, i32 17, !dbg !5378
  store i32 %call2, i32* %pixclock, align 4, !dbg !5379
  %8 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5380
  %pixfmt = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %par, i32 0, i32 2, !dbg !5381
  %9 = load i32, i32* %pixfmt, align 4, !dbg !5381
  call void @gxt4500_unpack_pixfmt(%struct.fb_var_screeninfo* %8, i32 %9) #6, !dbg !5382
  br label %if.end, !dbg !5383

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %err, align 4, !dbg !5384
  ret i32 %10, !dbg !5385
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gxt4500_setcolreg(i32 %reg, i32 %red, i32 %green, i32 %blue, i32 %transp, %struct.fb_info* %info) #0 !dbg !5386 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %red.addr = alloca i32, align 4
  %green.addr = alloca i32, align 4
  %blue.addr = alloca i32, align 4
  %transp.addr = alloca i32, align 4
  %info.addr = alloca %struct.fb_info*, align 8
  %cmap_entry = alloca i32, align 4
  %par = alloca %struct.gxt4500_par*, align 8
  %pal = alloca i32*, align 8
  %val = alloca i32, align 4
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !5387, metadata !DIExpression()), !dbg !5388
  store i32 %red, i32* %red.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %red.addr, metadata !5389, metadata !DIExpression()), !dbg !5390
  store i32 %green, i32* %green.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %green.addr, metadata !5391, metadata !DIExpression()), !dbg !5392
  store i32 %blue, i32* %blue.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %blue.addr, metadata !5393, metadata !DIExpression()), !dbg !5394
  store i32 %transp, i32* %transp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %transp.addr, metadata !5395, metadata !DIExpression()), !dbg !5396
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5397, metadata !DIExpression()), !dbg !5398
  call void @llvm.dbg.declare(metadata i32* %cmap_entry, metadata !5399, metadata !DIExpression()), !dbg !5400
  call void @llvm.dbg.declare(metadata %struct.gxt4500_par** %par, metadata !5401, metadata !DIExpression()), !dbg !5402
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5403
  %par1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 30, !dbg !5404
  %1 = load i8*, i8** %par1, align 8, !dbg !5404
  %2 = bitcast i8* %1 to %struct.gxt4500_par*, !dbg !5403
  store %struct.gxt4500_par* %2, %struct.gxt4500_par** %par, align 8, !dbg !5402
  %3 = load i32, i32* %reg.addr, align 4, !dbg !5405
  %cmp = icmp ugt i32 %3, 1023, !dbg !5407
  br i1 %cmp, label %if.then, label %if.end, !dbg !5408

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !5409
  br label %return, !dbg !5409

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %transp.addr, align 4, !dbg !5410
  %and = and i32 %4, 65280, !dbg !5411
  %shl = shl i32 %and, 16, !dbg !5412
  %5 = load i32, i32* %red.addr, align 4, !dbg !5413
  %and2 = and i32 %5, 65280, !dbg !5414
  %shl3 = shl i32 %and2, 8, !dbg !5415
  %or = or i32 %shl, %shl3, !dbg !5416
  %6 = load i32, i32* %green.addr, align 4, !dbg !5417
  %and4 = and i32 %6, 65280, !dbg !5418
  %or5 = or i32 %or, %and4, !dbg !5419
  %7 = load i32, i32* %blue.addr, align 4, !dbg !5420
  %shr = lshr i32 %7, 8, !dbg !5421
  %or6 = or i32 %or5, %shr, !dbg !5422
  store i32 %or6, i32* %cmap_entry, align 4, !dbg !5423
  %8 = load i32, i32* %cmap_entry, align 4, !dbg !5424
  %9 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5424
  %regs = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %9, i32 0, i32 0, !dbg !5424
  %10 = load i8*, i8** %regs, align 8, !dbg !5424
  %11 = load i32, i32* %reg.addr, align 4, !dbg !5424
  %mul = mul i32 %11, 4, !dbg !5424
  %add = add i32 24576, %mul, !dbg !5424
  %idx.ext = zext i32 %add to i64, !dbg !5424
  %add.ptr = getelementptr i8, i8* %10, i64 %idx.ext, !dbg !5424
  call void @writel(i32 %8, i8* %add.ptr) #6, !dbg !5424
  %12 = load i32, i32* %reg.addr, align 4, !dbg !5425
  %cmp7 = icmp ult i32 %12, 16, !dbg !5427
  br i1 %cmp7, label %land.lhs.true, label %if.end28, !dbg !5428

land.lhs.true:                                    ; preds = %if.end
  %13 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5429
  %pixfmt = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %13, i32 0, i32 2, !dbg !5430
  %14 = load i32, i32* %pixfmt, align 4, !dbg !5430
  %cmp8 = icmp ne i32 %14, 0, !dbg !5431
  br i1 %cmp8, label %if.then9, label %if.end28, !dbg !5432

if.then9:                                         ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i32** %pal, metadata !5433, metadata !DIExpression()), !dbg !5435
  %15 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5436
  %pseudo_palette = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 27, !dbg !5437
  %16 = load i8*, i8** %pseudo_palette, align 8, !dbg !5437
  %17 = bitcast i8* %16 to i32*, !dbg !5436
  store i32* %17, i32** %pal, align 8, !dbg !5435
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5438, metadata !DIExpression()), !dbg !5439
  %18 = load i32, i32* %reg.addr, align 4, !dbg !5440
  store i32 %18, i32* %val, align 4, !dbg !5439
  %19 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5441
  %pixfmt10 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %19, i32 0, i32 2, !dbg !5442
  %20 = load i32, i32* %pixfmt10, align 4, !dbg !5442
  switch i32 %20, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb15
    i32 5, label %sw.bb20
    i32 4, label %sw.bb23
  ], !dbg !5443

sw.bb:                                            ; preds = %if.then9
  %21 = load i32, i32* %reg.addr, align 4, !dbg !5444
  %shl11 = shl i32 %21, 11, !dbg !5446
  %22 = load i32, i32* %reg.addr, align 4, !dbg !5447
  %shl12 = shl i32 %22, 5, !dbg !5448
  %or13 = or i32 %shl11, %shl12, !dbg !5449
  %23 = load i32, i32* %val, align 4, !dbg !5450
  %or14 = or i32 %23, %or13, !dbg !5450
  store i32 %or14, i32* %val, align 4, !dbg !5450
  br label %sw.epilog, !dbg !5451

sw.bb15:                                          ; preds = %if.then9
  %24 = load i32, i32* %reg.addr, align 4, !dbg !5452
  %shl16 = shl i32 %24, 10, !dbg !5453
  %25 = load i32, i32* %reg.addr, align 4, !dbg !5454
  %shl17 = shl i32 %25, 5, !dbg !5455
  %or18 = or i32 %shl16, %shl17, !dbg !5456
  %26 = load i32, i32* %val, align 4, !dbg !5457
  %or19 = or i32 %26, %or18, !dbg !5457
  store i32 %or19, i32* %val, align 4, !dbg !5457
  br label %sw.epilog, !dbg !5458

sw.bb20:                                          ; preds = %if.then9
  %27 = load i32, i32* %reg.addr, align 4, !dbg !5459
  %shl21 = shl i32 %27, 24, !dbg !5460
  %28 = load i32, i32* %val, align 4, !dbg !5461
  %or22 = or i32 %28, %shl21, !dbg !5461
  store i32 %or22, i32* %val, align 4, !dbg !5461
  br label %sw.bb23, !dbg !5462

sw.bb23:                                          ; preds = %if.then9, %sw.bb20
  %29 = load i32, i32* %reg.addr, align 4, !dbg !5463
  %shl24 = shl i32 %29, 16, !dbg !5464
  %30 = load i32, i32* %reg.addr, align 4, !dbg !5465
  %shl25 = shl i32 %30, 8, !dbg !5466
  %or26 = or i32 %shl24, %shl25, !dbg !5467
  %31 = load i32, i32* %val, align 4, !dbg !5468
  %or27 = or i32 %31, %or26, !dbg !5468
  store i32 %or27, i32* %val, align 4, !dbg !5468
  br label %sw.epilog, !dbg !5469

sw.epilog:                                        ; preds = %if.then9, %sw.bb23, %sw.bb15, %sw.bb
  %32 = load i32, i32* %val, align 4, !dbg !5470
  %33 = load i32*, i32** %pal, align 8, !dbg !5471
  %34 = load i32, i32* %reg.addr, align 4, !dbg !5472
  %idxprom = zext i32 %34 to i64, !dbg !5471
  %arrayidx = getelementptr i32, i32* %33, i64 %idxprom, !dbg !5471
  store i32 %32, i32* %arrayidx, align 4, !dbg !5473
  br label %if.end28, !dbg !5474

if.end28:                                         ; preds = %sw.epilog, %land.lhs.true, %if.end
  store i32 0, i32* %retval, align 4, !dbg !5475
  br label %return, !dbg !5475

return:                                           ; preds = %if.end28, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !5476
  ret i32 %35, !dbg !5476
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gxt4500_pan_display(%struct.fb_var_screeninfo* %var, %struct.fb_info* %info) #0 !dbg !5477 {
entry:
  %retval = alloca i32, align 4
  %var.addr = alloca %struct.fb_var_screeninfo*, align 8
  %info.addr = alloca %struct.fb_info*, align 8
  %par = alloca %struct.gxt4500_par*, align 8
  store %struct.fb_var_screeninfo* %var, %struct.fb_var_screeninfo** %var.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo** %var.addr, metadata !5478, metadata !DIExpression()), !dbg !5479
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5480, metadata !DIExpression()), !dbg !5481
  call void @llvm.dbg.declare(metadata %struct.gxt4500_par** %par, metadata !5482, metadata !DIExpression()), !dbg !5483
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5484
  %par1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 30, !dbg !5485
  %1 = load i8*, i8** %par1, align 8, !dbg !5485
  %2 = bitcast i8* %1 to %struct.gxt4500_par*, !dbg !5484
  store %struct.gxt4500_par* %2, %struct.gxt4500_par** %par, align 8, !dbg !5483
  %3 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5486
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %3, i32 0, i32 4, !dbg !5488
  %4 = load i32, i32* %xoffset, align 4, !dbg !5488
  %and = and i32 %4, 7, !dbg !5489
  %tobool = icmp ne i32 %and, 0, !dbg !5489
  br i1 %tobool, label %if.then, label %if.end, !dbg !5490

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5491
  br label %return, !dbg !5491

if.end:                                           ; preds = %entry
  %5 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5492
  %xoffset2 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %5, i32 0, i32 4, !dbg !5494
  %6 = load i32, i32* %xoffset2, align 4, !dbg !5494
  %7 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5495
  %var3 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 6, !dbg !5496
  %xres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var3, i32 0, i32 0, !dbg !5497
  %8 = load i32, i32* %xres, align 8, !dbg !5497
  %add = add i32 %6, %8, !dbg !5498
  %9 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5499
  %var4 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 6, !dbg !5500
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var4, i32 0, i32 2, !dbg !5501
  %10 = load i32, i32* %xres_virtual, align 8, !dbg !5501
  %cmp = icmp ugt i32 %add, %10, !dbg !5502
  br i1 %cmp, label %if.then9, label %lor.lhs.false, !dbg !5503

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5504
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 5, !dbg !5505
  %12 = load i32, i32* %yoffset, align 4, !dbg !5505
  %13 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5506
  %var5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 6, !dbg !5507
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var5, i32 0, i32 1, !dbg !5508
  %14 = load i32, i32* %yres, align 4, !dbg !5508
  %add6 = add i32 %12, %14, !dbg !5509
  %15 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5510
  %var7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 6, !dbg !5511
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var7, i32 0, i32 3, !dbg !5512
  %16 = load i32, i32* %yres_virtual, align 4, !dbg !5512
  %cmp8 = icmp ugt i32 %add6, %16, !dbg !5513
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !5514

if.then9:                                         ; preds = %lor.lhs.false, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5515
  br label %return, !dbg !5515

if.end10:                                         ; preds = %lor.lhs.false
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5516
  %xoffset11 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 4, !dbg !5516
  %18 = load i32, i32* %xoffset11, align 4, !dbg !5516
  %shl = shl i32 %18, 16, !dbg !5516
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5516
  %yoffset12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 5, !dbg !5516
  %20 = load i32, i32* %yoffset12, align 4, !dbg !5516
  %or = or i32 %shl, %20, !dbg !5516
  %21 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par, align 8, !dbg !5516
  %regs = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %21, i32 0, i32 0, !dbg !5516
  %22 = load i8*, i8** %regs, align 8, !dbg !5516
  %add.ptr = getelementptr i8, i8* %22, i64 4248, !dbg !5516
  call void @writel(i32 %or, i8* %add.ptr) #6, !dbg !5516
  store i32 0, i32* %retval, align 4, !dbg !5517
  br label %return, !dbg !5517

return:                                           ; preds = %if.end10, %if.then9, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !5518
  ret i32 %23, !dbg !5518
}

; Function Attrs: noredzone
declare dso_local void @cfb_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #2

; Function Attrs: noredzone
declare dso_local void @cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #2

; Function Attrs: noredzone
declare dso_local void @cfb_imageblit(%struct.fb_info*, %struct.fb_image*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gxt4500_var_to_par(%struct.fb_var_screeninfo* %var, %struct.gxt4500_par* %par) #0 !dbg !5519 {
entry:
  %retval = alloca i32, align 4
  %var.addr = alloca %struct.fb_var_screeninfo*, align 8
  %par.addr = alloca %struct.gxt4500_par*, align 8
  store %struct.fb_var_screeninfo* %var, %struct.fb_var_screeninfo** %var.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo** %var.addr, metadata !5522, metadata !DIExpression()), !dbg !5523
  store %struct.gxt4500_par* %par, %struct.gxt4500_par** %par.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gxt4500_par** %par.addr, metadata !5524, metadata !DIExpression()), !dbg !5525
  %0 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5526
  %xres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %0, i32 0, i32 0, !dbg !5528
  %1 = load i32, i32* %xres, align 4, !dbg !5528
  %2 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5529
  %xoffset = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %2, i32 0, i32 4, !dbg !5530
  %3 = load i32, i32* %xoffset, align 4, !dbg !5530
  %add = add i32 %1, %3, !dbg !5531
  %4 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5532
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %4, i32 0, i32 2, !dbg !5533
  %5 = load i32, i32* %xres_virtual, align 4, !dbg !5533
  %cmp = icmp ugt i32 %add, %5, !dbg !5534
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5535

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5536
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 1, !dbg !5537
  %7 = load i32, i32* %yres, align 4, !dbg !5537
  %8 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5538
  %yoffset = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %8, i32 0, i32 5, !dbg !5539
  %9 = load i32, i32* %yoffset, align 4, !dbg !5539
  %add1 = add i32 %7, %9, !dbg !5540
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5541
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 3, !dbg !5542
  %11 = load i32, i32* %yres_virtual, align 4, !dbg !5542
  %cmp2 = icmp ugt i32 %add1, %11, !dbg !5543
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !5544

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5545
  %xres_virtual4 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 2, !dbg !5546
  %13 = load i32, i32* %xres_virtual4, align 4, !dbg !5546
  %cmp5 = icmp ugt i32 %13, 4096, !dbg !5547
  br i1 %cmp5, label %if.then, label %if.end, !dbg !5548

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !5549
  br label %return, !dbg !5549

if.end:                                           ; preds = %lor.lhs.false3
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5550
  %vmode = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 25, !dbg !5552
  %15 = load i32, i32* %vmode, align 4, !dbg !5552
  %and = and i32 %15, 255, !dbg !5553
  %cmp6 = icmp ne i32 %and, 0, !dbg !5554
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !5555

if.then7:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5556
  br label %return, !dbg !5556

if.end8:                                          ; preds = %if.end
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5557
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 17, !dbg !5559
  %17 = load i32, i32* %pixclock, align 4, !dbg !5559
  %18 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par.addr, align 8, !dbg !5560
  %call = call i32 @calc_pll(i32 %17, %struct.gxt4500_par* %18) #6, !dbg !5561
  %cmp9 = icmp slt i32 %call, 0, !dbg !5562
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5563

if.then10:                                        ; preds = %if.end8
  store i32 -22, i32* %retval, align 4, !dbg !5564
  br label %return, !dbg !5564

if.end11:                                         ; preds = %if.end8
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5565
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 6, !dbg !5566
  %20 = load i32, i32* %bits_per_pixel, align 4, !dbg !5566
  switch i32 %20, label %sw.default [
    i32 32, label %sw.bb
    i32 24, label %sw.bb15
    i32 16, label %sw.bb17
    i32 8, label %sw.bb25
  ], !dbg !5567

sw.bb:                                            ; preds = %if.end11
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5568
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 11, !dbg !5571
  %length = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %transp, i32 0, i32 1, !dbg !5572
  %22 = load i32, i32* %length, align 4, !dbg !5572
  %tobool = icmp ne i32 %22, 0, !dbg !5568
  br i1 %tobool, label %if.then12, label %if.else, !dbg !5573

if.then12:                                        ; preds = %sw.bb
  %23 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par.addr, align 8, !dbg !5574
  %pixfmt = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %23, i32 0, i32 2, !dbg !5575
  store i32 5, i32* %pixfmt, align 4, !dbg !5576
  br label %if.end14, !dbg !5574

if.else:                                          ; preds = %sw.bb
  %24 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par.addr, align 8, !dbg !5577
  %pixfmt13 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %24, i32 0, i32 2, !dbg !5578
  store i32 4, i32* %pixfmt13, align 4, !dbg !5579
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  br label %sw.epilog, !dbg !5580

sw.bb15:                                          ; preds = %if.end11
  %25 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par.addr, align 8, !dbg !5581
  %pixfmt16 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %25, i32 0, i32 2, !dbg !5582
  store i32 4, i32* %pixfmt16, align 4, !dbg !5583
  br label %sw.epilog, !dbg !5584

sw.bb17:                                          ; preds = %if.end11
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5585
  %green = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 9, !dbg !5587
  %length18 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green, i32 0, i32 1, !dbg !5588
  %27 = load i32, i32* %length18, align 4, !dbg !5588
  %cmp19 = icmp eq i32 %27, 5, !dbg !5589
  br i1 %cmp19, label %if.then20, label %if.else22, !dbg !5590

if.then20:                                        ; preds = %sw.bb17
  %28 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par.addr, align 8, !dbg !5591
  %pixfmt21 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %28, i32 0, i32 2, !dbg !5592
  store i32 2, i32* %pixfmt21, align 4, !dbg !5593
  br label %if.end24, !dbg !5591

if.else22:                                        ; preds = %sw.bb17
  %29 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par.addr, align 8, !dbg !5594
  %pixfmt23 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %29, i32 0, i32 2, !dbg !5595
  store i32 1, i32* %pixfmt23, align 4, !dbg !5596
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then20
  br label %sw.epilog, !dbg !5597

sw.bb25:                                          ; preds = %if.end11
  %30 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par.addr, align 8, !dbg !5598
  %pixfmt26 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %30, i32 0, i32 2, !dbg !5599
  store i32 0, i32* %pixfmt26, align 4, !dbg !5600
  br label %sw.epilog, !dbg !5601

sw.default:                                       ; preds = %if.end11
  store i32 -22, i32* %retval, align 4, !dbg !5602
  br label %return, !dbg !5602

sw.epilog:                                        ; preds = %sw.bb25, %if.end24, %sw.bb15, %if.end14
  store i32 0, i32* %retval, align 4, !dbg !5603
  br label %return, !dbg !5603

return:                                           ; preds = %sw.epilog, %sw.default, %if.then10, %if.then7, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !5604
  ret i32 %31, !dbg !5604
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @calc_pixclock(%struct.gxt4500_par* %par) #0 !dbg !5605 {
entry:
  %par.addr = alloca %struct.gxt4500_par*, align 8
  store %struct.gxt4500_par* %par, %struct.gxt4500_par** %par.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gxt4500_par** %par.addr, metadata !5608, metadata !DIExpression()), !dbg !5609
  %0 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par.addr, align 8, !dbg !5610
  %refclk_ps = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %0, i32 0, i32 3, !dbg !5611
  %1 = load i32, i32* %refclk_ps, align 8, !dbg !5611
  %2 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par.addr, align 8, !dbg !5612
  %pll_m = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %2, i32 0, i32 4, !dbg !5613
  %3 = load i32, i32* %pll_m, align 4, !dbg !5613
  %mul = mul i32 %1, %3, !dbg !5614
  %4 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par.addr, align 8, !dbg !5615
  %pll_pd1 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %4, i32 0, i32 6, !dbg !5616
  %5 = load i32, i32* %pll_pd1, align 4, !dbg !5616
  %mul1 = mul i32 %mul, %5, !dbg !5617
  %6 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par.addr, align 8, !dbg !5618
  %pll_pd2 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %6, i32 0, i32 7, !dbg !5619
  %7 = load i32, i32* %pll_pd2, align 8, !dbg !5619
  %mul2 = mul i32 %mul1, %7, !dbg !5620
  %8 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par.addr, align 8, !dbg !5621
  %pll_n = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %8, i32 0, i32 5, !dbg !5622
  %9 = load i32, i32* %pll_n, align 8, !dbg !5622
  %div = sdiv i32 %mul2, %9, !dbg !5623
  ret i32 %div, !dbg !5624
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gxt4500_unpack_pixfmt(%struct.fb_var_screeninfo* %var, i32 %pixfmt) #0 !dbg !5625 {
entry:
  %var.addr = alloca %struct.fb_var_screeninfo*, align 8
  %pixfmt.addr = alloca i32, align 4
  store %struct.fb_var_screeninfo* %var, %struct.fb_var_screeninfo** %var.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo** %var.addr, metadata !5628, metadata !DIExpression()), !dbg !5629
  store i32 %pixfmt, i32* %pixfmt.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pixfmt.addr, metadata !5630, metadata !DIExpression()), !dbg !5631
  %0 = load i32, i32* %pixfmt.addr, align 4, !dbg !5632
  %idxprom = sext i32 %0 to i64, !dbg !5633
  %arrayidx = getelementptr [6 x i8], [6 x i8]* @pixsize, i64 0, i64 %idxprom, !dbg !5633
  %1 = load i8, i8* %arrayidx, align 1, !dbg !5633
  %conv = zext i8 %1 to i32, !dbg !5633
  %mul = mul i32 %conv, 8, !dbg !5634
  %2 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5635
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %2, i32 0, i32 6, !dbg !5636
  store i32 %mul, i32* %bits_per_pixel, align 4, !dbg !5637
  %3 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5638
  %red = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %3, i32 0, i32 8, !dbg !5639
  %4 = bitcast %struct.fb_bitfield* %red to i8*, !dbg !5640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.fb_bitfield* @eightbits to i8*), i64 12, i1 false), !dbg !5640
  %5 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5641
  %green = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %5, i32 0, i32 9, !dbg !5642
  %6 = bitcast %struct.fb_bitfield* %green to i8*, !dbg !5643
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.fb_bitfield* @eightbits to i8*), i64 12, i1 false), !dbg !5643
  %7 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5644
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %7, i32 0, i32 10, !dbg !5645
  %8 = bitcast %struct.fb_bitfield* %blue to i8*, !dbg !5646
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.fb_bitfield* @eightbits to i8*), i64 12, i1 false), !dbg !5646
  %9 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5647
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %9, i32 0, i32 11, !dbg !5648
  %10 = bitcast %struct.fb_bitfield* %transp to i8*, !dbg !5649
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.fb_bitfield* @nobits to i8*), i64 12, i1 false), !dbg !5649
  %11 = load i32, i32* %pixfmt.addr, align 4, !dbg !5650
  switch i32 %11, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 5, label %sw.bb15
  ], !dbg !5651

sw.bb:                                            ; preds = %entry
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5652
  %red1 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 8, !dbg !5654
  %length = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red1, i32 0, i32 1, !dbg !5655
  store i32 5, i32* %length, align 4, !dbg !5656
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5657
  %green2 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 9, !dbg !5658
  %length3 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green2, i32 0, i32 1, !dbg !5659
  store i32 6, i32* %length3, align 4, !dbg !5660
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5661
  %blue4 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 10, !dbg !5662
  %length5 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %blue4, i32 0, i32 1, !dbg !5663
  store i32 5, i32* %length5, align 4, !dbg !5664
  br label %sw.epilog, !dbg !5665

sw.bb6:                                           ; preds = %entry
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5666
  %red7 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 8, !dbg !5667
  %length8 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red7, i32 0, i32 1, !dbg !5668
  store i32 5, i32* %length8, align 4, !dbg !5669
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5670
  %green9 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 9, !dbg !5671
  %length10 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green9, i32 0, i32 1, !dbg !5672
  store i32 5, i32* %length10, align 4, !dbg !5673
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5674
  %blue11 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 10, !dbg !5675
  %length12 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %blue11, i32 0, i32 1, !dbg !5676
  store i32 5, i32* %length12, align 4, !dbg !5677
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5678
  %transp13 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 11, !dbg !5679
  %length14 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %transp13, i32 0, i32 1, !dbg !5680
  store i32 1, i32* %length14, align 4, !dbg !5681
  br label %sw.epilog, !dbg !5682

sw.bb15:                                          ; preds = %entry
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5683
  %transp16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 11, !dbg !5684
  %length17 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %transp16, i32 0, i32 1, !dbg !5685
  store i32 8, i32* %length17, align 4, !dbg !5686
  br label %sw.epilog, !dbg !5687

sw.epilog:                                        ; preds = %entry, %sw.bb15, %sw.bb6, %sw.bb
  %20 = load i32, i32* %pixfmt.addr, align 4, !dbg !5688
  %cmp = icmp ne i32 %20, 0, !dbg !5690
  br i1 %cmp, label %if.then, label %if.end40, !dbg !5691

if.then:                                          ; preds = %sw.epilog
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5692
  %blue19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 10, !dbg !5694
  %offset = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %blue19, i32 0, i32 0, !dbg !5695
  store i32 0, i32* %offset, align 4, !dbg !5696
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5697
  %blue20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 10, !dbg !5698
  %length21 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %blue20, i32 0, i32 1, !dbg !5699
  %23 = load i32, i32* %length21, align 4, !dbg !5699
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5700
  %green22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %24, i32 0, i32 9, !dbg !5701
  %offset23 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green22, i32 0, i32 0, !dbg !5702
  store i32 %23, i32* %offset23, align 4, !dbg !5703
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5704
  %green24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 9, !dbg !5705
  %offset25 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green24, i32 0, i32 0, !dbg !5706
  %26 = load i32, i32* %offset25, align 4, !dbg !5706
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5707
  %green26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 9, !dbg !5708
  %length27 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green26, i32 0, i32 1, !dbg !5709
  %28 = load i32, i32* %length27, align 4, !dbg !5709
  %add = add i32 %26, %28, !dbg !5710
  %29 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5711
  %red28 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %29, i32 0, i32 8, !dbg !5712
  %offset29 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red28, i32 0, i32 0, !dbg !5713
  store i32 %add, i32* %offset29, align 4, !dbg !5714
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5715
  %transp30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 11, !dbg !5717
  %length31 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %transp30, i32 0, i32 1, !dbg !5718
  %31 = load i32, i32* %length31, align 4, !dbg !5718
  %tobool = icmp ne i32 %31, 0, !dbg !5715
  br i1 %tobool, label %if.then32, label %if.end, !dbg !5719

if.then32:                                        ; preds = %if.then
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5720
  %red33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 8, !dbg !5721
  %offset34 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red33, i32 0, i32 0, !dbg !5722
  %33 = load i32, i32* %offset34, align 4, !dbg !5722
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5723
  %red35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 8, !dbg !5724
  %length36 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red35, i32 0, i32 1, !dbg !5725
  %35 = load i32, i32* %length36, align 4, !dbg !5725
  %add37 = add i32 %33, %35, !dbg !5726
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5727
  %transp38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %36, i32 0, i32 11, !dbg !5728
  %offset39 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %transp38, i32 0, i32 0, !dbg !5729
  store i32 %add37, i32* %offset39, align 4, !dbg !5730
  br label %if.end, !dbg !5727

if.end:                                           ; preds = %if.then32, %if.then
  br label %if.end40, !dbg !5731

if.end40:                                         ; preds = %if.end, %sw.epilog
  ret void, !dbg !5732
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @calc_pll(i32 %period_ps, %struct.gxt4500_par* %par) #0 !dbg !5733 {
entry:
  %retval = alloca i32, align 4
  %period_ps.addr = alloca i32, align 4
  %par.addr = alloca %struct.gxt4500_par*, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %pdiv1 = alloca i32, align 4
  %pdiv2 = alloca i32, align 4
  %postdiv = alloca i32, align 4
  %pll_period = alloca i32, align 4
  %best_error = alloca i32, align 4
  %t = alloca i32, align 4
  %intf = alloca i32, align 4
  store i32 %period_ps, i32* %period_ps.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %period_ps.addr, metadata !5736, metadata !DIExpression()), !dbg !5737
  store %struct.gxt4500_par* %par, %struct.gxt4500_par** %par.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gxt4500_par** %par.addr, metadata !5738, metadata !DIExpression()), !dbg !5739
  call void @llvm.dbg.declare(metadata i32* %m, metadata !5740, metadata !DIExpression()), !dbg !5741
  call void @llvm.dbg.declare(metadata i32* %n, metadata !5742, metadata !DIExpression()), !dbg !5743
  call void @llvm.dbg.declare(metadata i32* %pdiv1, metadata !5744, metadata !DIExpression()), !dbg !5745
  call void @llvm.dbg.declare(metadata i32* %pdiv2, metadata !5746, metadata !DIExpression()), !dbg !5747
  call void @llvm.dbg.declare(metadata i32* %postdiv, metadata !5748, metadata !DIExpression()), !dbg !5749
  call void @llvm.dbg.declare(metadata i32* %pll_period, metadata !5750, metadata !DIExpression()), !dbg !5751
  call void @llvm.dbg.declare(metadata i32* %best_error, metadata !5752, metadata !DIExpression()), !dbg !5753
  call void @llvm.dbg.declare(metadata i32* %t, metadata !5754, metadata !DIExpression()), !dbg !5755
  call void @llvm.dbg.declare(metadata i32* %intf, metadata !5756, metadata !DIExpression()), !dbg !5757
  %0 = load i32, i32* %period_ps.addr, align 4, !dbg !5758
  %cmp = icmp slt i32 %0, 3333, !dbg !5760
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5761

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %period_ps.addr, align 4, !dbg !5762
  %cmp1 = icmp sgt i32 %1, 200000, !dbg !5763
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5764

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4, !dbg !5765
  br label %return, !dbg !5765

if.end:                                           ; preds = %lor.lhs.false
  store i32 1000000, i32* %best_error, align 4, !dbg !5766
  store i32 1, i32* %pdiv1, align 4, !dbg !5767
  br label %for.cond, !dbg !5769

for.cond:                                         ; preds = %for.inc37, %if.end
  %2 = load i32, i32* %pdiv1, align 4, !dbg !5770
  %cmp2 = icmp sle i32 %2, 8, !dbg !5772
  br i1 %cmp2, label %for.body, label %for.end39, !dbg !5773

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %pdiv2, align 4, !dbg !5774
  br label %for.cond3, !dbg !5777

for.cond3:                                        ; preds = %for.inc34, %for.body
  %3 = load i32, i32* %pdiv2, align 4, !dbg !5778
  %4 = load i32, i32* %pdiv1, align 4, !dbg !5780
  %cmp4 = icmp sle i32 %3, %4, !dbg !5781
  br i1 %cmp4, label %for.body5, label %for.end36, !dbg !5782

for.body5:                                        ; preds = %for.cond3
  %5 = load i32, i32* %pdiv1, align 4, !dbg !5783
  %6 = load i32, i32* %pdiv2, align 4, !dbg !5785
  %mul = mul i32 %5, %6, !dbg !5786
  store i32 %mul, i32* %postdiv, align 4, !dbg !5787
  %7 = load i32, i32* %period_ps.addr, align 4, !dbg !5788
  %8 = load i32, i32* %postdiv, align 4, !dbg !5788
  %add = add i32 %7, %8, !dbg !5788
  %sub = sub i32 %add, 1, !dbg !5788
  %9 = load i32, i32* %postdiv, align 4, !dbg !5788
  %div = sdiv i32 %sub, %9, !dbg !5788
  store i32 %div, i32* %pll_period, align 4, !dbg !5789
  %10 = load i32, i32* %pll_period, align 4, !dbg !5790
  %cmp6 = icmp slt i32 %10, 1666, !dbg !5792
  br i1 %cmp6, label %if.then9, label %lor.lhs.false7, !dbg !5793

lor.lhs.false7:                                   ; preds = %for.body5
  %11 = load i32, i32* %pll_period, align 4, !dbg !5794
  %cmp8 = icmp sgt i32 %11, 2857, !dbg !5795
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !5796

if.then9:                                         ; preds = %lor.lhs.false7, %for.body5
  br label %for.inc34, !dbg !5797

if.end10:                                         ; preds = %lor.lhs.false7
  store i32 1, i32* %m, align 4, !dbg !5798
  br label %for.cond11, !dbg !5800

for.cond11:                                       ; preds = %for.inc, %if.end10
  %12 = load i32, i32* %m, align 4, !dbg !5801
  %cmp12 = icmp sle i32 %12, 64, !dbg !5803
  br i1 %cmp12, label %for.body13, label %for.end, !dbg !5804

for.body13:                                       ; preds = %for.cond11
  %13 = load i32, i32* %m, align 4, !dbg !5805
  %14 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par.addr, align 8, !dbg !5807
  %refclk_ps = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %14, i32 0, i32 3, !dbg !5808
  %15 = load i32, i32* %refclk_ps, align 8, !dbg !5808
  %mul14 = mul i32 %13, %15, !dbg !5809
  store i32 %mul14, i32* %intf, align 4, !dbg !5810
  %16 = load i32, i32* %intf, align 4, !dbg !5811
  %cmp15 = icmp sgt i32 %16, 500000, !dbg !5813
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5814

if.then16:                                        ; preds = %for.body13
  br label %for.end, !dbg !5815

if.end17:                                         ; preds = %for.body13
  %17 = load i32, i32* %intf, align 4, !dbg !5816
  %18 = load i32, i32* %postdiv, align 4, !dbg !5817
  %mul18 = mul i32 %17, %18, !dbg !5818
  %19 = load i32, i32* %period_ps.addr, align 4, !dbg !5819
  %div19 = sdiv i32 %mul18, %19, !dbg !5820
  store i32 %div19, i32* %n, align 4, !dbg !5821
  %20 = load i32, i32* %n, align 4, !dbg !5822
  %cmp20 = icmp slt i32 %20, 3, !dbg !5824
  br i1 %cmp20, label %if.then23, label %lor.lhs.false21, !dbg !5825

lor.lhs.false21:                                  ; preds = %if.end17
  %21 = load i32, i32* %n, align 4, !dbg !5826
  %cmp22 = icmp sgt i32 %21, 160, !dbg !5827
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !5828

if.then23:                                        ; preds = %lor.lhs.false21, %if.end17
  br label %for.inc, !dbg !5829

if.end24:                                         ; preds = %lor.lhs.false21
  %22 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par.addr, align 8, !dbg !5830
  %refclk_ps25 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %22, i32 0, i32 3, !dbg !5831
  %23 = load i32, i32* %refclk_ps25, align 8, !dbg !5831
  %24 = load i32, i32* %m, align 4, !dbg !5832
  %mul26 = mul i32 %23, %24, !dbg !5833
  %25 = load i32, i32* %postdiv, align 4, !dbg !5834
  %mul27 = mul i32 %mul26, %25, !dbg !5835
  %26 = load i32, i32* %n, align 4, !dbg !5836
  %div28 = sdiv i32 %mul27, %26, !dbg !5837
  store i32 %div28, i32* %t, align 4, !dbg !5838
  %27 = load i32, i32* %period_ps.addr, align 4, !dbg !5839
  %28 = load i32, i32* %t, align 4, !dbg !5840
  %sub29 = sub i32 %28, %27, !dbg !5840
  store i32 %sub29, i32* %t, align 4, !dbg !5840
  %29 = load i32, i32* %t, align 4, !dbg !5841
  %cmp30 = icmp sge i32 %29, 0, !dbg !5843
  br i1 %cmp30, label %land.lhs.true, label %if.end33, !dbg !5844

land.lhs.true:                                    ; preds = %if.end24
  %30 = load i32, i32* %t, align 4, !dbg !5845
  %31 = load i32, i32* %best_error, align 4, !dbg !5846
  %cmp31 = icmp slt i32 %30, %31, !dbg !5847
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !5848

if.then32:                                        ; preds = %land.lhs.true
  %32 = load i32, i32* %m, align 4, !dbg !5849
  %33 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par.addr, align 8, !dbg !5851
  %pll_m = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %33, i32 0, i32 4, !dbg !5852
  store i32 %32, i32* %pll_m, align 4, !dbg !5853
  %34 = load i32, i32* %n, align 4, !dbg !5854
  %35 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par.addr, align 8, !dbg !5855
  %pll_n = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %35, i32 0, i32 5, !dbg !5856
  store i32 %34, i32* %pll_n, align 8, !dbg !5857
  %36 = load i32, i32* %pdiv1, align 4, !dbg !5858
  %37 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par.addr, align 8, !dbg !5859
  %pll_pd1 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %37, i32 0, i32 6, !dbg !5860
  store i32 %36, i32* %pll_pd1, align 4, !dbg !5861
  %38 = load i32, i32* %pdiv2, align 4, !dbg !5862
  %39 = load %struct.gxt4500_par*, %struct.gxt4500_par** %par.addr, align 8, !dbg !5863
  %pll_pd2 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %39, i32 0, i32 7, !dbg !5864
  store i32 %38, i32* %pll_pd2, align 8, !dbg !5865
  %40 = load i32, i32* %t, align 4, !dbg !5866
  store i32 %40, i32* %best_error, align 4, !dbg !5867
  br label %if.end33, !dbg !5868

if.end33:                                         ; preds = %if.then32, %land.lhs.true, %if.end24
  br label %for.inc, !dbg !5869

for.inc:                                          ; preds = %if.end33, %if.then23
  %41 = load i32, i32* %m, align 4, !dbg !5870
  %inc = add i32 %41, 1, !dbg !5870
  store i32 %inc, i32* %m, align 4, !dbg !5870
  br label %for.cond11, !dbg !5871, !llvm.loop !5872

for.end:                                          ; preds = %if.then16, %for.cond11
  br label %for.inc34, !dbg !5874

for.inc34:                                        ; preds = %for.end, %if.then9
  %42 = load i32, i32* %pdiv2, align 4, !dbg !5875
  %inc35 = add i32 %42, 1, !dbg !5875
  store i32 %inc35, i32* %pdiv2, align 4, !dbg !5875
  br label %for.cond3, !dbg !5876, !llvm.loop !5877

for.end36:                                        ; preds = %for.cond3
  br label %for.inc37, !dbg !5879

for.inc37:                                        ; preds = %for.end36
  %43 = load i32, i32* %pdiv1, align 4, !dbg !5880
  %inc38 = add i32 %43, 1, !dbg !5880
  store i32 %inc38, i32* %pdiv1, align 4, !dbg !5880
  br label %for.cond, !dbg !5881, !llvm.loop !5882

for.end39:                                        ; preds = %for.cond
  %44 = load i32, i32* %best_error, align 4, !dbg !5884
  %cmp40 = icmp eq i32 %44, 1000000, !dbg !5886
  br i1 %cmp40, label %if.then41, label %if.end42, !dbg !5887

if.then41:                                        ; preds = %for.end39
  store i32 -1, i32* %retval, align 4, !dbg !5888
  br label %return, !dbg !5888

if.end42:                                         ; preds = %for.end39
  store i32 0, i32* %retval, align 4, !dbg !5889
  br label %return, !dbg !5889

return:                                           ; preds = %if.end42, %if.then41, %if.then
  %45 = load i32, i32* %retval, align 4, !dbg !5890
  ret i32 %45, !dbg !5890
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #0 !dbg !5891 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5897, metadata !DIExpression()), !dbg !5898
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5899, metadata !DIExpression()), !dbg !5898
  %0 = load i32, i32* %val.addr, align 4, !dbg !5898
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !5898
  %2 = bitcast i8* %1 to i32*, !dbg !5898
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #8, !dbg !5898, !srcloc !5900
  ret void, !dbg !5898
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #0 !dbg !5901 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5906, metadata !DIExpression()), !dbg !5907
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5908, metadata !DIExpression()), !dbg !5907
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5907
  %1 = bitcast i8* %0 to i32*, !dbg !5907
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #8, !dbg !5907, !srcloc !5909
  store i32 %2, i32* %ret, align 4, !dbg !5907
  %3 = load i32, i32* %ret, align 4, !dbg !5907
  ret i32 %3, !dbg !5907
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #2

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_get_drvdata(%struct.pci_dev* %pdev) #0 !dbg !5910 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5913, metadata !DIExpression()), !dbg !5914
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5915
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !5916
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #6, !dbg !5917
  ret i8* %call, !dbg !5918
}

; Function Attrs: noredzone
declare dso_local void @unregister_framebuffer(%struct.fb_info*) #2

; Function Attrs: noredzone
declare dso_local void @arch_phys_wc_del(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !5919 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5922, metadata !DIExpression()), !dbg !5923
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5924
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5925
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5925
  ret i8* %1, !dbg !5926
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4784, !4785, !4786, !4787}
!llvm.ident = !{!4788}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gxt4500_init244", scope: !2, file: !3, line: 784, type: !141, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !133, globals: !160, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/video/fbdev/gxt4500.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !114, !119, !125}
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "backlight_type", file: !108, line: 40, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/backlight.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112, !113}
!110 = !DIEnumerator(name: "BACKLIGHT_RAW", value: 1, isUnsigned: true)
!111 = !DIEnumerator(name: "BACKLIGHT_PLATFORM", value: 2, isUnsigned: true)
!112 = !DIEnumerator(name: "BACKLIGHT_FIRMWARE", value: 3, isUnsigned: true)
!113 = !DIEnumerator(name: "BACKLIGHT_TYPE_MAX", value: 4, isUnsigned: true)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "backlight_scale", file: !108, line: 90, baseType: !7, size: 32, elements: !115)
!115 = !{!116, !117, !118}
!116 = !DIEnumerator(name: "BACKLIGHT_SCALE_UNKNOWN", value: 0, isUnsigned: true)
!117 = !DIEnumerator(name: "BACKLIGHT_SCALE_LINEAR", value: 1, isUnsigned: true)
!118 = !DIEnumerator(name: "BACKLIGHT_SCALE_NON_LINEAR", value: 2, isUnsigned: true)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gxt_cards", file: !3, line: 178, baseType: !7, size: 32, elements: !120)
!120 = !{!121, !122, !123, !124}
!121 = !DIEnumerator(name: "GXT4500P", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "GXT6500P", value: 1, isUnsigned: true)
!123 = !DIEnumerator(name: "GXT4000P", value: 2, isUnsigned: true)
!124 = !DIEnumerator(name: "GXT6000P", value: 3, isUnsigned: true)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !126, line: 303, baseType: !7, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/uapi/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!127 = !{!128, !129, !130, !131, !132}
!128 = !DIEnumerator(name: "FB_BLANK_UNBLANK", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "FB_BLANK_NORMAL", value: 1, isUnsigned: true)
!130 = !DIEnumerator(name: "FB_BLANK_VSYNC_SUSPEND", value: 2, isUnsigned: true)
!131 = !DIEnumerator(name: "FB_BLANK_HSYNC_SUSPEND", value: 3, isUnsigned: true)
!132 = !DIEnumerator(name: "FB_BLANK_POWERDOWN", value: 4, isUnsigned: true)
!133 = !{!134, !137, !158}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !136, line: 76, flags: DIFlagFwdDecl)
!136 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gxt4500_par", file: !3, line: 144, size: 832, elements: !139)
!139 = !{!140, !142, !144, !145, !146, !147, !148, !149, !150}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !138, file: !3, line: 145, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "wc_cookie", scope: !138, file: !3, line: 146, baseType: !143, size: 32, offset: 64)
!143 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "pixfmt", scope: !138, file: !3, line: 147, baseType: !143, size: 32, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "refclk_ps", scope: !138, file: !3, line: 150, baseType: !143, size: 32, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "pll_m", scope: !138, file: !3, line: 151, baseType: !143, size: 32, offset: 160)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "pll_n", scope: !138, file: !3, line: 152, baseType: !143, size: 32, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "pll_pd1", scope: !138, file: !3, line: 153, baseType: !143, size: 32, offset: 224)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "pll_pd2", scope: !138, file: !3, line: 154, baseType: !143, size: 32, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "pseudo_palette", scope: !138, file: !3, line: 156, baseType: !151, size: 512, offset: 288)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 512, elements: !156)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !153, line: 21, baseType: !154)
!153 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !155, line: 27, baseType: !7)
!155 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!156 = !{!157}
!157 = !DISubrange(count: 16)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!160 = !{!0, !161, !168, !175, !180, !185, !190, !254, !259, !264, !266, !4281, !4286, !4294, !4315, !4761, !4764, !4767, !4769, !4772, !4775, !4780, !4782}
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "__exitcall_gxt4500_exit", scope: !2, file: !3, line: 790, type: !163, isLocal: true, isDefinition: true)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !164, line: 117, baseType: !165)
!164 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{null}
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author245", scope: !2, file: !3, line: 792, type: !170, isLocal: true, isDefinition: true, align: 8)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 392, elements: !173)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!172 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!173 = !{!174}
!174 = !DISubrange(count: 49)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description246", scope: !2, file: !3, line: 793, type: !177, isLocal: true, isDefinition: true, align: 8)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 600, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 75)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file247", scope: !2, file: !3, line: 794, type: !182, isLocal: true, isDefinition: true, align: 8)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 328, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 41)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license248", scope: !2, file: !3, line: 794, type: !187, isLocal: true, isDefinition: true, align: 8)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 160, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 20)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "__param_mode_option", scope: !2, file: !3, line: 795, type: !192, isLocal: true, isDefinition: true, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !194, line: 69, size: 320, elements: !195)
!194 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!195 = !{!196, !198, !199, !219, !224, !228, !232}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !194, line: 70, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !193, file: !194, line: 71, baseType: !134, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !193, file: !194, line: 72, baseType: !200, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !194, line: 47, size: 256, elements: !203)
!203 = !{!204, !205, !210, !215}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !202, file: !194, line: 49, baseType: !7, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !202, file: !194, line: 51, baseType: !206, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!143, !197, !209}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !202, file: !194, line: 53, baseType: !211, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!143, !214, !209}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !202, file: !194, line: 55, baseType: !216, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !141}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !193, file: !194, line: 73, baseType: !220, size: 16, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !153, line: 19, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !155, line: 24, baseType: !223)
!223 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !193, file: !194, line: 74, baseType: !225, size: 8, offset: 208)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !153, line: 16, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !155, line: 20, baseType: !227)
!227 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !193, file: !194, line: 75, baseType: !229, size: 8, offset: 216)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !153, line: 17, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !155, line: 21, baseType: !231)
!231 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!232 = !DIDerivedType(tag: DW_TAG_member, scope: !193, file: !194, line: 76, baseType: !233, size: 64, offset: 256)
!233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !194, line: 76, size: 64, elements: !234)
!234 = !{!235, !236, !243}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !233, file: !194, line: 77, baseType: !141, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !233, file: !194, line: 78, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !194, line: 86, size: 128, elements: !240)
!240 = !{!241, !242}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !239, file: !194, line: 87, baseType: !7, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !239, file: !194, line: 88, baseType: !214, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !233, file: !194, line: 79, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !194, line: 92, size: 256, elements: !247)
!247 = !{!248, !249, !250, !252, !253}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !246, file: !194, line: 94, baseType: !7, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !246, file: !194, line: 95, baseType: !7, size: 32, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !246, file: !194, line: 96, baseType: !251, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !246, file: !194, line: 97, baseType: !200, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !246, file: !194, line: 98, baseType: !141, size: 64, offset: 192)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_mode_optiontype249", scope: !2, file: !3, line: 795, type: !256, isLocal: true, isDefinition: true, align: 8)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 280, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 35)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_mode_option250", scope: !2, file: !3, line: 796, type: !261, isLocal: true, isDefinition: true, align: 8)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 664, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 83)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "mode_option", scope: !2, file: !3, line: 160, type: !214, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "gxt4500_driver", scope: !2, file: !3, line: 768, type: !268, isLocal: true, isDefinition: true)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !269, line: 858, size: 2048, elements: !270)
!269 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!270 = !{!271, !278, !279, !294, !4239, !4243, !4247, !4251, !4252, !4256, !4274, !4275, !4276}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !268, file: !269, line: 859, baseType: !272, size: 128)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !273, line: 178, size: 128, elements: !274)
!273 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!274 = !{!275, !277}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !272, file: !273, line: 179, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !272, file: !273, line: 179, baseType: !276, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !268, file: !269, line: 860, baseType: !197, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !268, file: !269, line: 861, baseType: !280, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !283, line: 38, size: 256, elements: !284)
!283 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!284 = !{!285, !286, !287, !288, !289, !290, !291}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !282, file: !283, line: 39, baseType: !154, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !282, file: !283, line: 39, baseType: !154, size: 32, offset: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !282, file: !283, line: 40, baseType: !154, size: 32, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !282, file: !283, line: 40, baseType: !154, size: 32, offset: 96)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !282, file: !283, line: 41, baseType: !154, size: 32, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !282, file: !283, line: 41, baseType: !154, size: 32, offset: 160)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !282, file: !283, line: 42, baseType: !292, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !283, line: 14, baseType: !293)
!293 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !268, file: !269, line: 862, baseType: !295, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!143, !298, !280}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !269, line: 309, size: 19264, elements: !300)
!300 = !{!301, !302, !4104, !4105, !4106, !4107, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4136, !4137, !4138, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4162, !4163, !4164, !4165, !4167, !4168, !4169, !4170, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4213, !4214, !4215, !4216, !4217, !4218, !4220, !4221, !4222, !4225, !4232, !4233, !4234, !4235, !4236, !4237, !4238}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !299, file: !269, line: 310, baseType: !272, size: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !299, file: !269, line: 311, baseType: !303, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !269, line: 605, size: 8064, elements: !305)
!305 = !{!306, !307, !308, !309, !310, !311, !312, !333, !334, !335, !360, !363, !364, !368, !369, !370, !371, !372, !376, !377, !379, !4100, !4101, !4102, !4103}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !304, file: !269, line: 606, baseType: !272, size: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !304, file: !269, line: 607, baseType: !303, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !304, file: !269, line: 608, baseType: !272, size: 128, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !304, file: !269, line: 609, baseType: !272, size: 128, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !304, file: !269, line: 610, baseType: !298, size: 64, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !304, file: !269, line: 611, baseType: !272, size: 128, offset: 512)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !304, file: !269, line: 613, baseType: !313, size: 256, offset: 640)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 256, elements: !331)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !316, line: 20, size: 512, elements: !317)
!316 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!317 = !{!318, !324, !325, !326, !327, !328, !329, !330}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !315, file: !316, line: 21, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !273, line: 158, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !273, line: 153, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !153, line: 23, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !155, line: 31, baseType: !323)
!323 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !315, file: !316, line: 22, baseType: !319, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !316, line: 23, baseType: !197, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !315, file: !316, line: 24, baseType: !293, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !315, file: !316, line: 25, baseType: !293, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !315, file: !316, line: 26, baseType: !314, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !315, file: !316, line: 26, baseType: !314, size: 64, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !315, file: !316, line: 26, baseType: !314, size: 64, offset: 448)
!331 = !{!332}
!332 = !DISubrange(count: 4)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !304, file: !269, line: 614, baseType: !272, size: 128, offset: 896)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !304, file: !269, line: 615, baseType: !315, size: 512, offset: 1024)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !304, file: !269, line: 617, baseType: !336, size: 64, offset: 1536)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !269, line: 731, size: 320, elements: !338)
!338 = !{!339, !343, !347, !351, !356}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !337, file: !269, line: 732, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!143, !303}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !337, file: !269, line: 733, baseType: !344, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !303}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !337, file: !269, line: 734, baseType: !348, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!141, !303, !7, !143}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !337, file: !269, line: 735, baseType: !352, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!143, !303, !7, !143, !143, !355}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !337, file: !269, line: 736, baseType: !357, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!143, !303, !7, !143, !143, !152}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !304, file: !269, line: 618, baseType: !361, size: 64, offset: 1600)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !269, line: 537, flags: DIFlagFwdDecl)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !304, file: !269, line: 619, baseType: !141, size: 64, offset: 1664)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !304, file: !269, line: 620, baseType: !365, size: 64, offset: 1728)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !367, line: 84, flags: DIFlagFwdDecl)
!367 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!368 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !304, file: !269, line: 622, baseType: !231, size: 8, offset: 1792)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !304, file: !269, line: 623, baseType: !231, size: 8, offset: 1800)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !304, file: !269, line: 624, baseType: !231, size: 8, offset: 1808)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !304, file: !269, line: 625, baseType: !231, size: 8, offset: 1816)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !304, file: !269, line: 630, baseType: !373, size: 384, offset: 1824)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 384, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 48)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !304, file: !269, line: 632, baseType: !223, size: 16, offset: 2208)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !304, file: !269, line: 633, baseType: !378, size: 16, offset: 2224)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !269, line: 237, baseType: !223)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !304, file: !269, line: 634, baseType: !380, size: 64, offset: 2240)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !382)
!382 = !{!383, !3557, !3558, !3561, !3562, !3613, !3702, !3703, !3704, !3705, !3706, !3715, !3820, !3833, !4027, !4028, !4032, !4034, !4035, !4036, !4040, !4046, !4047, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4088, !4089, !4090, !4093, !4096, !4097, !4098, !4099}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !381, file: !73, line: 462, baseType: !384, size: 512)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !385, line: 64, size: 512, elements: !386)
!385 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!386 = !{!387, !388, !389, !391, !450, !3418, !3551, !3552, !3553, !3554, !3555, !3556}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !384, file: !385, line: 65, baseType: !197, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !384, file: !385, line: 66, baseType: !272, size: 128, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !384, file: !385, line: 67, baseType: !390, size: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !384, file: !385, line: 68, baseType: !392, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !385, line: 192, size: 704, elements: !394)
!394 = !{!395, !396, !412, !413}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !393, file: !385, line: 193, baseType: !272, size: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !393, file: !385, line: 194, baseType: !397, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !398, line: 83, baseType: !399)
!398 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !398, line: 71, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !398, line: 72, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !398, line: 72, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !402, file: !398, line: 73, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !398, line: 20, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !405, file: !398, line: 21, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !409, line: 25, baseType: !410)
!409 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 25, elements: !411)
!411 = !{}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !393, file: !385, line: 195, baseType: !384, size: 512, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !393, file: !385, line: 196, baseType: !414, size: 64, offset: 640)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !385, line: 156, size: 192, elements: !417)
!417 = !{!418, !423, !428}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !416, file: !385, line: 157, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!143, !392, !390}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !416, file: !385, line: 158, baseType: !424, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!197, !392, !390}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !416, file: !385, line: 159, baseType: !429, size: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!143, !392, !390, !433}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !385, line: 148, size: 20736, elements: !435)
!435 = !{!436, !440, !444, !445, !449}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !434, file: !385, line: 149, baseType: !437, size: 192)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 192, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 3)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !434, file: !385, line: 150, baseType: !441, size: 4096, offset: 192)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 4096, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !434, file: !385, line: 151, baseType: !143, size: 32, offset: 4288)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !434, file: !385, line: 152, baseType: !446, size: 16384, offset: 4320)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 16384, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 2048)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !434, file: !385, line: 153, baseType: !143, size: 32, offset: 20704)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !384, file: !385, line: 69, baseType: !451, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !385, line: 138, size: 448, elements: !453)
!453 = !{!454, !458, !486, !488, !3380, !3408, !3412}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !452, file: !385, line: 139, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !390}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !452, file: !385, line: 140, baseType: !459, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !462, line: 230, size: 128, elements: !463)
!462 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!463 = !{!464, !479}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !461, file: !462, line: 231, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!468, !390, !473, !214}
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !273, line: 60, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !470, line: 73, baseType: !471)
!470 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !470, line: 15, baseType: !472)
!472 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !462, line: 30, size: 128, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !474, file: !462, line: 31, baseType: !197, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !474, file: !462, line: 32, baseType: !478, size: 16, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !273, line: 19, baseType: !223)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !461, file: !462, line: 232, baseType: !480, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!468, !390, !473, !197, !483}
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !273, line: 55, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !470, line: 72, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !470, line: 16, baseType: !293)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !452, file: !385, line: 141, baseType: !487, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !452, file: !385, line: 142, baseType: !489, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !462, line: 84, size: 320, elements: !493)
!493 = !{!494, !495, !499, !3377, !3378}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !492, file: !462, line: 85, baseType: !197, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !492, file: !462, line: 86, baseType: !496, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!478, !390, !473, !143}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !492, file: !462, line: 88, baseType: !500, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!478, !390, !503, !143}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !462, line: 168, size: 448, elements: !505)
!505 = !{!506, !507, !508, !509, !3372, !3373}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !504, file: !462, line: 169, baseType: !474, size: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !504, file: !462, line: 170, baseType: !483, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !504, file: !462, line: 171, baseType: !141, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !504, file: !462, line: 172, baseType: !510, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!468, !513, !390, !503, !214, !681, !483}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !515)
!515 = !{!516, !534, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3355, !3356, !3365, !3366, !3367, !3368, !3369, !3370, !3371}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !514, file: !44, line: 920, baseType: !517, size: 128)
!517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !514, file: !44, line: 917, size: 128, elements: !518)
!518 = !{!519, !525}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !517, file: !44, line: 918, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !521, line: 58, size: 64, elements: !522)
!521 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!522 = !{!523}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !520, file: !521, line: 59, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !517, file: !44, line: 919, baseType: !526, size: 128, align: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !273, line: 216, size: 128, align: 64, elements: !527)
!527 = !{!528, !530}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !526, file: !273, line: 217, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !526, file: !273, line: 218, baseType: !531, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !529}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !514, file: !44, line: 921, baseType: !535, size: 128, offset: 128)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !536, line: 8, size: 128, elements: !537)
!536 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!537 = !{!538, !542}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !535, file: !536, line: 9, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !541, line: 18, flags: DIFlagFwdDecl)
!541 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!542 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !535, file: !536, line: 10, baseType: !543, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !541, line: 89, size: 1536, elements: !545)
!545 = !{!546, !547, !557, !565, !566, !581, !3305, !3307, !3319, !3320, !3321, !3322, !3323, !3329, !3330, !3331}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !544, file: !541, line: 91, baseType: !7, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !544, file: !541, line: 92, baseType: !548, size: 32, offset: 32)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !549, line: 277, baseType: !550)
!549 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !549, line: 277, size: 32, elements: !551)
!551 = !{!552}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !550, file: !549, line: 277, baseType: !553, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !549, line: 70, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !549, line: 65, size: 32, elements: !555)
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !554, file: !549, line: 66, baseType: !7, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !544, file: !541, line: 93, baseType: !558, size: 128, offset: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !559, line: 38, size: 128, elements: !560)
!559 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!560 = !{!561, !563}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !558, file: !559, line: 39, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !558, file: !559, line: 39, baseType: !564, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !544, file: !541, line: 94, baseType: !543, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !544, file: !541, line: 95, baseType: !567, size: 128, offset: 256)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !541, line: 47, size: 128, elements: !568)
!568 = !{!569, !578}
!569 = !DIDerivedType(tag: DW_TAG_member, scope: !567, file: !541, line: 48, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !567, file: !541, line: 48, size: 64, elements: !571)
!571 = !{!572, !577}
!572 = !DIDerivedType(tag: DW_TAG_member, scope: !570, file: !541, line: 49, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !570, file: !541, line: 49, size: 64, elements: !574)
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !573, file: !541, line: 50, baseType: !152, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !573, file: !541, line: 50, baseType: !152, size: 32, offset: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !570, file: !541, line: 52, baseType: !321, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !567, file: !541, line: 54, baseType: !579, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !544, file: !541, line: 96, baseType: !582, size: 64, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !584)
!584 = !{!585, !586, !587, !595, !602, !603, !748, !3016, !3017, !3018, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3281, !3289, !3290, !3291, !3301, !3302, !3303, !3304}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !583, file: !44, line: 611, baseType: !478, size: 16)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !583, file: !44, line: 612, baseType: !223, size: 16, offset: 16)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !583, file: !44, line: 613, baseType: !588, size: 32, offset: 32)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !589, line: 23, baseType: !590)
!589 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !589, line: 21, size: 32, elements: !591)
!591 = !{!592}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !590, file: !589, line: 22, baseType: !593, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !273, line: 32, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !470, line: 49, baseType: !7)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !583, file: !44, line: 614, baseType: !596, size: 32, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !589, line: 28, baseType: !597)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !589, line: 26, size: 32, elements: !598)
!598 = !{!599}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !597, file: !589, line: 27, baseType: !600, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !273, line: 33, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !470, line: 50, baseType: !7)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !583, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !583, file: !44, line: 622, baseType: !604, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !607)
!607 = !{!608, !612, !622, !626, !632, !636, !642, !646, !650, !654, !658, !659, !665, !669, !695, !724, !728, !734, !739, !743, !744}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !606, file: !44, line: 1865, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!543, !582, !543, !7}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !606, file: !44, line: 1866, baseType: !613, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!197, !543, !582, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !618, line: 10, size: 128, elements: !619)
!618 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !617, file: !618, line: 11, baseType: !216, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !617, file: !618, line: 12, baseType: !141, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !606, file: !44, line: 1867, baseType: !623, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!143, !582, !143}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !606, file: !44, line: 1868, baseType: !627, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!630, !582, !143}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !606, file: !44, line: 1870, baseType: !633, size: 64, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!143, !543, !214, !143}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !606, file: !44, line: 1872, baseType: !637, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!143, !582, !543, !478, !640}
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !273, line: 30, baseType: !641)
!641 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !606, file: !44, line: 1873, baseType: !643, size: 64, offset: 384)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!143, !543, !582, !543}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !606, file: !44, line: 1874, baseType: !647, size: 64, offset: 448)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!143, !582, !543}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !606, file: !44, line: 1875, baseType: !651, size: 64, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!143, !582, !543, !197}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !606, file: !44, line: 1876, baseType: !655, size: 64, offset: 576)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!143, !582, !543, !478}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !606, file: !44, line: 1877, baseType: !647, size: 64, offset: 640)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !606, file: !44, line: 1878, baseType: !660, size: 64, offset: 704)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!143, !582, !543, !478, !663}
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !273, line: 16, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !273, line: 13, baseType: !152)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !606, file: !44, line: 1879, baseType: !666, size: 64, offset: 768)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!143, !582, !543, !582, !543, !7}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !606, file: !44, line: 1881, baseType: !670, size: 64, offset: 832)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!143, !543, !673}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !675)
!675 = !{!676, !677, !678, !679, !680, !684, !692, !693, !694}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !674, file: !44, line: 220, baseType: !7, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !674, file: !44, line: 221, baseType: !478, size: 16, offset: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !674, file: !44, line: 222, baseType: !588, size: 32, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !674, file: !44, line: 223, baseType: !596, size: 32, offset: 96)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !674, file: !44, line: 224, baseType: !681, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !273, line: 46, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !470, line: 88, baseType: !683)
!683 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !674, file: !44, line: 225, baseType: !685, size: 128, offset: 192)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !686, line: 13, size: 128, elements: !687)
!686 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!687 = !{!688, !691}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !685, file: !686, line: 14, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !686, line: 8, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !155, line: 30, baseType: !683)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !685, file: !686, line: 15, baseType: !472, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !674, file: !44, line: 226, baseType: !685, size: 128, offset: 320)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !674, file: !44, line: 227, baseType: !685, size: 128, offset: 448)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !674, file: !44, line: 234, baseType: !513, size: 64, offset: 576)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !606, file: !44, line: 1882, baseType: !696, size: 64, offset: 896)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!143, !699, !701, !152, !7}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !703, line: 22, size: 1152, elements: !704)
!703 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!704 = !{!705, !706, !707, !708, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !702, file: !703, line: 23, baseType: !152, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !702, file: !703, line: 24, baseType: !478, size: 16, offset: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !702, file: !703, line: 25, baseType: !7, size: 32, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !702, file: !703, line: 26, baseType: !709, size: 32, offset: 96)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !273, line: 104, baseType: !152)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !702, file: !703, line: 27, baseType: !321, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !702, file: !703, line: 28, baseType: !321, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !702, file: !703, line: 37, baseType: !321, size: 64, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !702, file: !703, line: 38, baseType: !663, size: 32, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !702, file: !703, line: 39, baseType: !663, size: 32, offset: 352)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !702, file: !703, line: 40, baseType: !588, size: 32, offset: 384)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !702, file: !703, line: 41, baseType: !596, size: 32, offset: 416)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !702, file: !703, line: 42, baseType: !681, size: 64, offset: 448)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !702, file: !703, line: 43, baseType: !685, size: 128, offset: 512)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !702, file: !703, line: 44, baseType: !685, size: 128, offset: 640)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !702, file: !703, line: 45, baseType: !685, size: 128, offset: 768)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !702, file: !703, line: 46, baseType: !685, size: 128, offset: 896)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !702, file: !703, line: 47, baseType: !321, size: 64, offset: 1024)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !702, file: !703, line: 48, baseType: !321, size: 64, offset: 1088)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !606, file: !44, line: 1883, baseType: !725, size: 64, offset: 960)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!468, !543, !214, !483}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !606, file: !44, line: 1884, baseType: !729, size: 64, offset: 1024)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!143, !582, !732, !321, !321}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !606, file: !44, line: 1886, baseType: !735, size: 64, offset: 1088)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!143, !582, !738, !143}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !606, file: !44, line: 1887, baseType: !740, size: 64, offset: 1152)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!143, !582, !543, !513, !7, !478}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !606, file: !44, line: 1890, baseType: !655, size: 64, offset: 1216)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !606, file: !44, line: 1891, baseType: !745, size: 64, offset: 1280)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!143, !582, !630, !143}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !583, file: !44, line: 623, baseType: !749, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !751)
!751 = !{!752, !753, !754, !755, !756, !757, !804, !2624, !2706, !2789, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2805, !2809, !2810, !2813, !2814, !2817, !2818, !2819, !2860, !2886, !2887, !2888, !2889, !2890, !2891, !2894, !2896, !2903, !2904, !2906, !2907, !2908, !2967, !2968, !2983, !2984, !2985, !2986, !2987, !2990, !2991, !2992, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !750, file: !44, line: 1417, baseType: !272, size: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !750, file: !44, line: 1418, baseType: !663, size: 32, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !750, file: !44, line: 1419, baseType: !231, size: 8, offset: 160)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !750, file: !44, line: 1420, baseType: !293, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !750, file: !44, line: 1421, baseType: !681, size: 64, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !750, file: !44, line: 1422, baseType: !758, size: 64, offset: 320)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !760)
!760 = !{!761, !762, !763, !770, !774, !778, !782, !783, !784, !794, !797, !798, !799, !801, !802, !803}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !759, file: !44, line: 2229, baseType: !197, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !759, file: !44, line: 2230, baseType: !143, size: 32, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !759, file: !44, line: 2238, baseType: !764, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!143, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !769, line: 28, flags: DIFlagFwdDecl)
!769 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!770 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !759, file: !44, line: 2239, baseType: !771, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!773 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !759, file: !44, line: 2240, baseType: !775, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!543, !758, !143, !197, !141}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !759, file: !44, line: 2242, baseType: !779, size: 64, offset: 320)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !749}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !759, file: !44, line: 2243, baseType: !134, size: 64, offset: 384)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !759, file: !44, line: 2244, baseType: !758, size: 64, offset: 448)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !759, file: !44, line: 2245, baseType: !785, size: 64, offset: 512)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !273, line: 182, size: 64, elements: !786)
!786 = !{!787}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !785, file: !273, line: 183, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !273, line: 186, size: 128, elements: !790)
!790 = !{!791, !792}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !789, file: !273, line: 187, baseType: !788, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !789, file: !273, line: 187, baseType: !793, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !759, file: !44, line: 2247, baseType: !795, offset: 576)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !796, line: 187, elements: !411)
!796 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!797 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !759, file: !44, line: 2248, baseType: !795, offset: 576)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !759, file: !44, line: 2249, baseType: !795, offset: 576)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !759, file: !44, line: 2250, baseType: !800, offset: 576)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, elements: !438)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !759, file: !44, line: 2252, baseType: !795, offset: 576)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !759, file: !44, line: 2253, baseType: !795, offset: 576)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !759, file: !44, line: 2254, baseType: !795, offset: 576)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !750, file: !44, line: 1423, baseType: !805, size: 64, offset: 384)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !808)
!808 = !{!809, !813, !817, !818, !822, !828, !832, !833, !834, !838, !842, !843, !844, !845, !851, !856, !857, !864, !865, !866, !867, !2608, !2623}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !807, file: !44, line: 1936, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!582, !749}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !807, file: !44, line: 1937, baseType: !814, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !582}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !807, file: !44, line: 1938, baseType: !814, size: 64, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !807, file: !44, line: 1940, baseType: !819, size: 64, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{null, !582, !143}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !807, file: !44, line: 1941, baseType: !823, size: 64, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!143, !582, !826}
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !807, file: !44, line: 1942, baseType: !829, size: 64, offset: 320)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!143, !582}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !807, file: !44, line: 1943, baseType: !814, size: 64, offset: 384)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !807, file: !44, line: 1944, baseType: !779, size: 64, offset: 448)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !807, file: !44, line: 1945, baseType: !835, size: 64, offset: 512)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!143, !749, !143}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !807, file: !44, line: 1946, baseType: !839, size: 64, offset: 576)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!143, !749}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !807, file: !44, line: 1947, baseType: !839, size: 64, offset: 640)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !807, file: !44, line: 1948, baseType: !839, size: 64, offset: 704)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !807, file: !44, line: 1949, baseType: !839, size: 64, offset: 768)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !807, file: !44, line: 1950, baseType: !846, size: 64, offset: 832)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!143, !543, !849}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !807, file: !44, line: 1951, baseType: !852, size: 64, offset: 896)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!143, !749, !855, !214}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !807, file: !44, line: 1952, baseType: !779, size: 64, offset: 960)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !807, file: !44, line: 1954, baseType: !858, size: 64, offset: 1024)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!143, !861, !543}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !863, line: 539, flags: DIFlagFwdDecl)
!863 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!864 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !807, file: !44, line: 1955, baseType: !858, size: 64, offset: 1088)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !807, file: !44, line: 1956, baseType: !858, size: 64, offset: 1152)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !807, file: !44, line: 1957, baseType: !858, size: 64, offset: 1216)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !807, file: !44, line: 1963, baseType: !868, size: 64, offset: 1280)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!143, !749, !871, !894}
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !873, line: 68, size: 512, align: 128, elements: !874)
!873 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!874 = !{!875, !876, !2600, !2607}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !872, file: !873, line: 69, baseType: !293, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, scope: !872, file: !873, line: 77, baseType: !877, size: 320, offset: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !872, file: !873, line: 77, size: 320, elements: !878)
!878 = !{!879, !1065, !1070, !1098, !1106, !1112, !2531, !2599}
!879 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !873, line: 78, baseType: !880, size: 320)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !877, file: !873, line: 78, size: 320, elements: !881)
!881 = !{!882, !883, !1063, !1064}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !880, file: !873, line: 84, baseType: !272, size: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !880, file: !873, line: 86, baseType: !884, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !886)
!886 = !{!887, !888, !896, !897, !902, !917, !933, !934, !935, !936, !1056, !1057, !1060, !1061, !1062}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !885, file: !44, line: 452, baseType: !582, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !885, file: !44, line: 453, baseType: !889, size: 128, offset: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !890, line: 292, size: 128, elements: !891)
!890 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!891 = !{!892, !893, !895}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !889, file: !890, line: 293, baseType: !397)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !889, file: !890, line: 295, baseType: !894, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !273, line: 148, baseType: !7)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !889, file: !890, line: 296, baseType: !141, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !885, file: !44, line: 454, baseType: !894, size: 32, offset: 192)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !885, file: !44, line: 455, baseType: !898, size: 32, offset: 224)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !273, line: 168, baseType: !899)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !273, line: 166, size: 32, elements: !900)
!900 = !{!901}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !899, file: !273, line: 167, baseType: !143, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !885, file: !44, line: 460, baseType: !903, size: 128, offset: 256)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !904, line: 125, size: 128, elements: !905)
!904 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!905 = !{!906, !916}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !903, file: !904, line: 126, baseType: !907, size: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !904, line: 31, size: 64, elements: !908)
!908 = !{!909}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !907, file: !904, line: 32, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !904, line: 24, size: 192, align: 64, elements: !912)
!912 = !{!913, !914, !915}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !911, file: !904, line: 25, baseType: !293, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !911, file: !904, line: 26, baseType: !910, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !911, file: !904, line: 27, baseType: !910, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !903, file: !904, line: 127, baseType: !910, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !885, file: !44, line: 461, baseType: !918, size: 256, offset: 384)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !919, line: 35, size: 256, elements: !920)
!919 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!920 = !{!921, !929, !930, !932}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !918, file: !919, line: 36, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !923, line: 13, baseType: !924)
!923 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !273, line: 175, baseType: !925)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !273, line: 173, size: 64, elements: !926)
!926 = !{!927}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !925, file: !273, line: 174, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !153, line: 22, baseType: !690)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !918, file: !919, line: 42, baseType: !922, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !918, file: !919, line: 46, baseType: !931, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !398, line: 29, baseType: !405)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !918, file: !919, line: 47, baseType: !272, size: 128, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !885, file: !44, line: 462, baseType: !293, size: 64, offset: 640)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !885, file: !44, line: 463, baseType: !293, size: 64, offset: 704)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !885, file: !44, line: 464, baseType: !293, size: 64, offset: 768)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !885, file: !44, line: 465, baseType: !937, size: 64, offset: 832)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !940)
!940 = !{!941, !945, !949, !953, !957, !961, !967, !973, !977, !982, !986, !990, !994, !1020, !1024, !1030, !1031, !1032, !1036, !1041, !1045, !1052}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !939, file: !44, line: 368, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!143, !871, !826}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !939, file: !44, line: 369, baseType: !946, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!143, !513, !871}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !939, file: !44, line: 372, baseType: !950, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!143, !884, !826}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !939, file: !44, line: 375, baseType: !954, size: 64, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!143, !871}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !939, file: !44, line: 381, baseType: !958, size: 64, offset: 256)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!143, !513, !884, !276, !7}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !939, file: !44, line: 383, baseType: !962, size: 64, offset: 320)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{null, !965}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !939, file: !44, line: 385, baseType: !968, size: 64, offset: 384)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!143, !513, !884, !681, !7, !7, !971, !972}
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !939, file: !44, line: 388, baseType: !974, size: 64, offset: 448)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!143, !513, !884, !681, !7, !7, !871, !141}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !939, file: !44, line: 393, baseType: !978, size: 64, offset: 512)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!981, !884, !981}
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !273, line: 125, baseType: !321)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !939, file: !44, line: 394, baseType: !983, size: 64, offset: 576)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !871, !7, !7}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !939, file: !44, line: 395, baseType: !987, size: 64, offset: 640)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!143, !871, !894}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !939, file: !44, line: 396, baseType: !991, size: 64, offset: 704)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{null, !871}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !939, file: !44, line: 397, baseType: !995, size: 64, offset: 768)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!468, !998, !1018}
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !1000)
!1000 = !{!1001, !1002, !1003, !1007, !1008, !1009, !1010, !1011}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !999, file: !44, line: 321, baseType: !513, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !999, file: !44, line: 326, baseType: !681, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !999, file: !44, line: 327, baseType: !1004, size: 64, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{null, !998, !472, !472}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !999, file: !44, line: 328, baseType: !141, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !999, file: !44, line: 329, baseType: !143, size: 32, offset: 256)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !999, file: !44, line: 330, baseType: !221, size: 16, offset: 288)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !999, file: !44, line: 331, baseType: !221, size: 16, offset: 304)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !999, file: !44, line: 332, baseType: !1012, size: 64, offset: 320)
!1012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !999, file: !44, line: 332, size: 64, elements: !1013)
!1013 = !{!1014, !1015}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1012, file: !44, line: 333, baseType: !7, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1012, file: !44, line: 334, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !939, file: !44, line: 402, baseType: !1021, size: 64, offset: 832)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!143, !884, !871, !871, !5}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !939, file: !44, line: 404, baseType: !1025, size: 64, offset: 896)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!640, !871, !1028}
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1029, line: 305, baseType: !7)
!1029 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !939, file: !44, line: 405, baseType: !991, size: 64, offset: 960)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !939, file: !44, line: 406, baseType: !954, size: 64, offset: 1024)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !939, file: !44, line: 407, baseType: !1033, size: 64, offset: 1088)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!143, !871, !293, !293}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !939, file: !44, line: 409, baseType: !1037, size: 64, offset: 1152)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{null, !871, !1040, !1040}
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !939, file: !44, line: 410, baseType: !1042, size: 64, offset: 1216)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!143, !884, !871}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !939, file: !44, line: 413, baseType: !1046, size: 64, offset: 1280)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!143, !1049, !513, !1051}
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !939, file: !44, line: 415, baseType: !1053, size: 64, offset: 1344)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{null, !513}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !885, file: !44, line: 466, baseType: !293, size: 64, offset: 896)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !885, file: !44, line: 467, baseType: !1058, size: 32, offset: 960)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1059, line: 8, baseType: !152)
!1059 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !885, file: !44, line: 468, baseType: !397, offset: 992)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !885, file: !44, line: 469, baseType: !272, size: 128, offset: 1024)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !885, file: !44, line: 470, baseType: !141, size: 64, offset: 1152)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !880, file: !873, line: 87, baseType: !293, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !880, file: !873, line: 94, baseType: !293, size: 64, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !873, line: 96, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !877, file: !873, line: 96, size: 64, elements: !1067)
!1067 = !{!1068}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1066, file: !873, line: 101, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !273, line: 143, baseType: !321)
!1070 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !873, line: 103, baseType: !1071, size: 320)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !877, file: !873, line: 103, size: 320, elements: !1072)
!1072 = !{!1073, !1083, !1086, !1087}
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !1071, file: !873, line: 104, baseType: !1074, size: 128)
!1074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1071, file: !873, line: 104, size: 128, elements: !1075)
!1075 = !{!1076, !1077}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1074, file: !873, line: 105, baseType: !272, size: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !873, line: 106, baseType: !1078, size: 128)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1074, file: !873, line: 106, size: 128, elements: !1079)
!1079 = !{!1080, !1081, !1082}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1078, file: !873, line: 107, baseType: !871, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1078, file: !873, line: 109, baseType: !143, size: 32, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1078, file: !873, line: 110, baseType: !143, size: 32, offset: 96)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1071, file: !873, line: 117, baseType: !1084, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !873, line: 117, flags: DIFlagFwdDecl)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1071, file: !873, line: 119, baseType: !141, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1071, file: !873, line: 120, baseType: !1088, size: 64, offset: 256)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1071, file: !873, line: 120, size: 64, elements: !1089)
!1089 = !{!1090, !1091, !1092}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1088, file: !873, line: 121, baseType: !141, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1088, file: !873, line: 122, baseType: !293, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !873, line: 123, baseType: !1093, size: 32)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !873, line: 123, size: 32, elements: !1094)
!1094 = !{!1095, !1096, !1097}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1093, file: !873, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1093, file: !873, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1093, file: !873, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1098 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !873, line: 130, baseType: !1099, size: 192)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !877, file: !873, line: 130, size: 192, elements: !1100)
!1100 = !{!1101, !1102, !1103, !1104, !1105}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1099, file: !873, line: 131, baseType: !293, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1099, file: !873, line: 134, baseType: !231, size: 8, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1099, file: !873, line: 135, baseType: !231, size: 8, offset: 72)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1099, file: !873, line: 136, baseType: !898, size: 32, offset: 96)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1099, file: !873, line: 137, baseType: !7, size: 32, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !873, line: 139, baseType: !1107, size: 256)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !877, file: !873, line: 139, size: 256, elements: !1108)
!1108 = !{!1109, !1110, !1111}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1107, file: !873, line: 140, baseType: !293, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1107, file: !873, line: 141, baseType: !898, size: 32, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1107, file: !873, line: 143, baseType: !272, size: 128, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !873, line: 145, baseType: !1113, size: 256)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !877, file: !873, line: 145, size: 256, elements: !1114)
!1114 = !{!1115, !1116, !1118, !1119, !2530}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1113, file: !873, line: 146, baseType: !293, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1113, file: !873, line: 147, baseType: !1117, size: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !863, line: 509, baseType: !871)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1113, file: !873, line: 148, baseType: !293, size: 64, offset: 128)
!1119 = !DIDerivedType(tag: DW_TAG_member, scope: !1113, file: !873, line: 149, baseType: !1120, size: 64, offset: 192)
!1120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1113, file: !873, line: 149, size: 64, elements: !1121)
!1121 = !{!1122, !2529}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1120, file: !873, line: 150, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !873, line: 388, size: 7296, elements: !1125)
!1125 = !{!1126, !2525}
!1126 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !873, line: 389, baseType: !1127, size: 7296)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1124, file: !873, line: 389, size: 7296, elements: !1128)
!1128 = !{!1129, !1247, !1248, !1249, !1253, !1254, !1255, !1256, !1257, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1298, !1304, !1307, !1353, !1354, !2509, !2510, !2513, !2514, !2515, !2518, !2519, !2520, !2523, !2524}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1127, file: !873, line: 390, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !873, line: 305, size: 1472, elements: !1132)
!1132 = !{!1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1147, !1148, !1153, !1154, !1157, !1241, !1242, !1243, !1244, !1245}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1131, file: !873, line: 308, baseType: !293, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1131, file: !873, line: 309, baseType: !293, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1131, file: !873, line: 313, baseType: !1130, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1131, file: !873, line: 313, baseType: !1130, size: 64, offset: 192)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1131, file: !873, line: 315, baseType: !911, size: 192, align: 64, offset: 256)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1131, file: !873, line: 323, baseType: !293, size: 64, offset: 448)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1131, file: !873, line: 327, baseType: !1123, size: 64, offset: 512)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1131, file: !873, line: 333, baseType: !1141, size: 64, offset: 576)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !863, line: 284, baseType: !1142)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !863, line: 284, size: 64, elements: !1143)
!1143 = !{!1144}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1142, file: !863, line: 284, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1146, line: 19, baseType: !293)
!1146 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1131, file: !873, line: 334, baseType: !293, size: 64, offset: 640)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1131, file: !873, line: 343, baseType: !1149, size: 256, offset: 704)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1131, file: !873, line: 340, size: 256, elements: !1150)
!1150 = !{!1151, !1152}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1149, file: !873, line: 341, baseType: !911, size: 192, align: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1149, file: !873, line: 342, baseType: !293, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1131, file: !873, line: 351, baseType: !272, size: 128, offset: 960)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1131, file: !873, line: 353, baseType: !1155, size: 64, offset: 1088)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !873, line: 353, flags: DIFlagFwdDecl)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1131, file: !873, line: 356, baseType: !1158, size: 64, offset: 1152)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1160)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1161)
!1161 = !{!1162, !1166, !1167, !1171, !1175, !1215, !1219, !1223, !1227, !1228, !1229, !1233, !1237}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1160, file: !14, line: 558, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{null, !1130}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1160, file: !14, line: 559, baseType: !1163, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1160, file: !14, line: 560, baseType: !1168, size: 64, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!143, !1130, !293}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1160, file: !14, line: 561, baseType: !1172, size: 64, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!143, !1130}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1160, file: !14, line: 562, baseType: !1176, size: 64, offset: 256)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!1179, !1180}
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !873, line: 682, baseType: !7)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1182)
!1182 = !{!1183, !1184, !1185, !1186, !1187, !1188, !1195, !1202, !1208, !1209, !1210, !1212, !1214}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1181, file: !14, line: 509, baseType: !1130, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1181, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1181, file: !14, line: 511, baseType: !894, size: 32, offset: 96)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1181, file: !14, line: 512, baseType: !293, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1181, file: !14, line: 513, baseType: !293, size: 64, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1181, file: !14, line: 514, baseType: !1189, size: 64, offset: 256)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !863, line: 385, baseType: !1191)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !863, line: 385, size: 64, elements: !1192)
!1192 = !{!1193}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1191, file: !863, line: 385, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1146, line: 15, baseType: !293)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1181, file: !14, line: 516, baseType: !1196, size: 64, offset: 320)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !863, line: 359, baseType: !1198)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !863, line: 359, size: 64, elements: !1199)
!1199 = !{!1200}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1198, file: !863, line: 359, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1146, line: 16, baseType: !293)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1181, file: !14, line: 519, baseType: !1203, size: 64, offset: 384)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1146, line: 21, baseType: !1204)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1146, line: 21, size: 64, elements: !1205)
!1205 = !{!1206}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1204, file: !1146, line: 21, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1146, line: 14, baseType: !293)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1181, file: !14, line: 521, baseType: !871, size: 64, offset: 448)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1181, file: !14, line: 522, baseType: !871, size: 64, offset: 512)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1181, file: !14, line: 528, baseType: !1211, size: 64, offset: 576)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1181, file: !14, line: 532, baseType: !1213, size: 64, offset: 640)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1181, file: !14, line: 536, baseType: !1117, size: 64, offset: 704)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1160, file: !14, line: 563, baseType: !1216, size: 64, offset: 320)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!1179, !1180, !13}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1160, file: !14, line: 565, baseType: !1220, size: 64, offset: 384)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{null, !1180, !293, !293}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1160, file: !14, line: 567, baseType: !1224, size: 64, offset: 448)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!293, !1130}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1160, file: !14, line: 571, baseType: !1176, size: 64, offset: 512)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1160, file: !14, line: 574, baseType: !1176, size: 64, offset: 576)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1160, file: !14, line: 579, baseType: !1230, size: 64, offset: 640)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!143, !1130, !293, !141, !143, !143}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1160, file: !14, line: 585, baseType: !1234, size: 64, offset: 704)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!197, !1130}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1160, file: !14, line: 615, baseType: !1238, size: 64, offset: 768)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!871, !1130, !293}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1131, file: !873, line: 359, baseType: !293, size: 64, offset: 1216)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1131, file: !873, line: 361, baseType: !513, size: 64, offset: 1280)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1131, file: !873, line: 362, baseType: !141, size: 64, offset: 1344)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1131, file: !873, line: 365, baseType: !922, size: 64, offset: 1408)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1131, file: !873, line: 373, baseType: !1246, offset: 1472)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !873, line: 296, elements: !411)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1127, file: !873, line: 391, baseType: !907, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1127, file: !873, line: 392, baseType: !321, size: 64, offset: 128)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1127, file: !873, line: 394, baseType: !1250, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!293, !513, !293, !293, !293, !293}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1127, file: !873, line: 398, baseType: !293, size: 64, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1127, file: !873, line: 399, baseType: !293, size: 64, offset: 320)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1127, file: !873, line: 405, baseType: !293, size: 64, offset: 384)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1127, file: !873, line: 406, baseType: !293, size: 64, offset: 448)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1127, file: !873, line: 407, baseType: !1258, size: 64, offset: 512)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !863, line: 286, baseType: !1260)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !863, line: 286, size: 64, elements: !1261)
!1261 = !{!1262}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1260, file: !863, line: 286, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1146, line: 18, baseType: !293)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1127, file: !873, line: 416, baseType: !898, size: 32, offset: 576)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1127, file: !873, line: 428, baseType: !898, size: 32, offset: 608)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1127, file: !873, line: 437, baseType: !898, size: 32, offset: 640)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1127, file: !873, line: 447, baseType: !898, size: 32, offset: 672)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1127, file: !873, line: 450, baseType: !922, size: 64, offset: 704)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1127, file: !873, line: 452, baseType: !143, size: 32, offset: 768)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1127, file: !873, line: 454, baseType: !397, offset: 800)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1127, file: !873, line: 457, baseType: !918, size: 256, offset: 832)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1127, file: !873, line: 459, baseType: !272, size: 128, offset: 1088)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1127, file: !873, line: 466, baseType: !293, size: 64, offset: 1216)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1127, file: !873, line: 467, baseType: !293, size: 64, offset: 1280)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1127, file: !873, line: 469, baseType: !293, size: 64, offset: 1344)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1127, file: !873, line: 470, baseType: !293, size: 64, offset: 1408)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1127, file: !873, line: 471, baseType: !924, size: 64, offset: 1472)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1127, file: !873, line: 472, baseType: !293, size: 64, offset: 1536)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1127, file: !873, line: 473, baseType: !293, size: 64, offset: 1600)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1127, file: !873, line: 474, baseType: !293, size: 64, offset: 1664)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1127, file: !873, line: 475, baseType: !293, size: 64, offset: 1728)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1127, file: !873, line: 477, baseType: !397, offset: 1792)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1127, file: !873, line: 478, baseType: !293, size: 64, offset: 1792)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1127, file: !873, line: 478, baseType: !293, size: 64, offset: 1856)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1127, file: !873, line: 478, baseType: !293, size: 64, offset: 1920)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1127, file: !873, line: 478, baseType: !293, size: 64, offset: 1984)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1127, file: !873, line: 479, baseType: !293, size: 64, offset: 2048)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1127, file: !873, line: 479, baseType: !293, size: 64, offset: 2112)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1127, file: !873, line: 479, baseType: !293, size: 64, offset: 2176)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1127, file: !873, line: 480, baseType: !293, size: 64, offset: 2240)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1127, file: !873, line: 480, baseType: !293, size: 64, offset: 2304)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1127, file: !873, line: 480, baseType: !293, size: 64, offset: 2368)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1127, file: !873, line: 480, baseType: !293, size: 64, offset: 2432)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1127, file: !873, line: 482, baseType: !1295, size: 2816, offset: 2496)
!1295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 2816, elements: !1296)
!1296 = !{!1297}
!1297 = !DISubrange(count: 44)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1127, file: !873, line: 488, baseType: !1299, size: 256, offset: 5312)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1300, line: 60, size: 256, elements: !1301)
!1300 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1301 = !{!1302}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1299, file: !1300, line: 61, baseType: !1303, size: 256)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !922, size: 256, elements: !331)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1127, file: !873, line: 490, baseType: !1305, size: 64, offset: 5568)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !873, line: 490, flags: DIFlagFwdDecl)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1127, file: !873, line: 493, baseType: !1308, size: 896, offset: 5632)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1309, line: 53, baseType: !1310)
!1309 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1309, line: 13, size: 896, elements: !1311)
!1311 = !{!1312, !1313, !1314, !1315, !1318, !1319, !1326, !1327, !1347, !1348, !1349}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1310, file: !1309, line: 18, baseType: !321, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1310, file: !1309, line: 28, baseType: !924, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1310, file: !1309, line: 31, baseType: !918, size: 256, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1310, file: !1309, line: 32, baseType: !1316, size: 64, offset: 384)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1309, line: 32, flags: DIFlagFwdDecl)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1310, file: !1309, line: 37, baseType: !223, size: 16, offset: 448)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1310, file: !1309, line: 40, baseType: !1320, size: 192, offset: 512)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1321, line: 53, size: 192, elements: !1322)
!1321 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1322 = !{!1323, !1324, !1325}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1320, file: !1321, line: 54, baseType: !922, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1320, file: !1321, line: 55, baseType: !397, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1320, file: !1321, line: 59, baseType: !272, size: 128, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1310, file: !1309, line: 41, baseType: !141, size: 64, offset: 704)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1310, file: !1309, line: 42, baseType: !1328, size: 64, offset: 768)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1330)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1331, line: 13, size: 896, elements: !1332)
!1331 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1332 = !{!1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1330, file: !1331, line: 14, baseType: !141, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1330, file: !1331, line: 15, baseType: !293, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1330, file: !1331, line: 17, baseType: !293, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1330, file: !1331, line: 17, baseType: !293, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1330, file: !1331, line: 19, baseType: !472, size: 64, offset: 256)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1330, file: !1331, line: 21, baseType: !472, size: 64, offset: 320)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1330, file: !1331, line: 22, baseType: !472, size: 64, offset: 384)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1330, file: !1331, line: 23, baseType: !472, size: 64, offset: 448)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1330, file: !1331, line: 24, baseType: !472, size: 64, offset: 512)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1330, file: !1331, line: 25, baseType: !472, size: 64, offset: 576)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1330, file: !1331, line: 26, baseType: !472, size: 64, offset: 640)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1330, file: !1331, line: 27, baseType: !472, size: 64, offset: 704)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1330, file: !1331, line: 28, baseType: !472, size: 64, offset: 768)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1330, file: !1331, line: 29, baseType: !472, size: 64, offset: 832)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1310, file: !1309, line: 44, baseType: !898, size: 32, offset: 832)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1310, file: !1309, line: 50, baseType: !221, size: 16, offset: 864)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1310, file: !1309, line: 51, baseType: !1350, size: 16, offset: 880)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !153, line: 18, baseType: !1351)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !155, line: 23, baseType: !1352)
!1352 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1127, file: !873, line: 495, baseType: !293, size: 64, offset: 6528)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1127, file: !873, line: 497, baseType: !1355, size: 64, offset: 6592)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !873, line: 381, size: 384, elements: !1357)
!1357 = !{!1358, !1359, !2508}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1356, file: !873, line: 382, baseType: !898, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1356, file: !873, line: 383, baseType: !1360, size: 128, offset: 64)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !873, line: 376, size: 128, elements: !1361)
!1361 = !{!1362, !2506}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1360, file: !873, line: 377, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1365, line: 640, size: 48640, elements: !1366)
!1365 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1366 = !{!1367, !1373, !1375, !1376, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1393, !1411, !1422, !1505, !1506, !1507, !1518, !1519, !1521, !1522, !1523, !1524, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1602, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1677, !1679, !1680, !1681, !1693, !1694, !1695, !1696, !1697, !1698, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1722, !1727, !1909, !1910, !1911, !1912, !1914, !1917, !1920, !1923, !1926, !1952, !2053, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2097, !2098, !2099, !2100, !2101, !2106, !2107, !2108, !2111, !2112, !2115, !2118, !2121, !2124, !2167, !2170, !2171, !2250, !2251, !2254, !2255, !2258, !2259, !2260, !2264, !2265, !2266, !2279, !2280, !2281, !2291, !2296, !2299, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1364, file: !1365, line: 646, baseType: !1368, size: 128)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1369, line: 56, size: 128, elements: !1370)
!1369 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1370 = !{!1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1368, file: !1369, line: 57, baseType: !293, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1368, file: !1369, line: 58, baseType: !152, size: 32, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1364, file: !1365, line: 649, baseType: !1374, size: 64, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !472)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1364, file: !1365, line: 657, baseType: !141, size: 64, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1364, file: !1365, line: 658, baseType: !1377, size: 32, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1378, line: 113, baseType: !1379)
!1378 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1378, line: 111, size: 32, elements: !1380)
!1380 = !{!1381}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1379, file: !1378, line: 112, baseType: !898, size: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1364, file: !1365, line: 660, baseType: !7, size: 32, offset: 288)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1364, file: !1365, line: 661, baseType: !7, size: 32, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1364, file: !1365, line: 684, baseType: !143, size: 32, offset: 352)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1364, file: !1365, line: 686, baseType: !143, size: 32, offset: 384)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1364, file: !1365, line: 687, baseType: !143, size: 32, offset: 416)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1364, file: !1365, line: 688, baseType: !143, size: 32, offset: 448)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1364, file: !1365, line: 689, baseType: !7, size: 32, offset: 480)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1364, file: !1365, line: 691, baseType: !1390, size: 64, offset: 512)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1392)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1365, line: 691, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1364, file: !1365, line: 692, baseType: !1394, size: 832, offset: 576)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1365, line: 451, size: 832, elements: !1395)
!1395 = !{!1396, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1394, file: !1365, line: 453, baseType: !1397, size: 128)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1365, line: 325, size: 128, elements: !1398)
!1398 = !{!1399, !1400}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1397, file: !1365, line: 326, baseType: !293, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1397, file: !1365, line: 327, baseType: !152, size: 32, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1394, file: !1365, line: 454, baseType: !911, size: 192, align: 64, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1394, file: !1365, line: 455, baseType: !272, size: 128, offset: 320)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1394, file: !1365, line: 456, baseType: !7, size: 32, offset: 448)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1394, file: !1365, line: 458, baseType: !321, size: 64, offset: 512)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1394, file: !1365, line: 459, baseType: !321, size: 64, offset: 576)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1394, file: !1365, line: 460, baseType: !321, size: 64, offset: 640)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1394, file: !1365, line: 461, baseType: !321, size: 64, offset: 704)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1394, file: !1365, line: 463, baseType: !321, size: 64, offset: 768)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1394, file: !1365, line: 465, baseType: !1410, offset: 832)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1365, line: 415, elements: !411)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1364, file: !1365, line: 693, baseType: !1412, size: 384, offset: 1408)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1365, line: 489, size: 384, elements: !1413)
!1413 = !{!1414, !1415, !1416, !1417, !1418, !1419, !1420}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1412, file: !1365, line: 490, baseType: !272, size: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1412, file: !1365, line: 491, baseType: !293, size: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1412, file: !1365, line: 492, baseType: !293, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1412, file: !1365, line: 493, baseType: !7, size: 32, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1412, file: !1365, line: 494, baseType: !223, size: 16, offset: 288)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1412, file: !1365, line: 495, baseType: !223, size: 16, offset: 304)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1412, file: !1365, line: 497, baseType: !1421, size: 64, offset: 320)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1364, file: !1365, line: 697, baseType: !1423, size: 1792, offset: 1792)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1365, line: 507, size: 1792, elements: !1424)
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1502, !1503}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1423, file: !1365, line: 508, baseType: !911, size: 192, align: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1423, file: !1365, line: 515, baseType: !321, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1423, file: !1365, line: 516, baseType: !321, size: 64, offset: 256)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1423, file: !1365, line: 517, baseType: !321, size: 64, offset: 320)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1423, file: !1365, line: 518, baseType: !321, size: 64, offset: 384)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1423, file: !1365, line: 519, baseType: !321, size: 64, offset: 448)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1423, file: !1365, line: 526, baseType: !928, size: 64, offset: 512)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1423, file: !1365, line: 527, baseType: !321, size: 64, offset: 576)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1423, file: !1365, line: 528, baseType: !7, size: 32, offset: 640)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1423, file: !1365, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1423, file: !1365, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1423, file: !1365, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1423, file: !1365, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1423, file: !1365, line: 563, baseType: !1439, size: 512, offset: 704)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1440)
!1440 = !{!1441, !1449, !1450, !1455, !1498, !1499, !1500, !1501}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1439, file: !20, line: 119, baseType: !1442, size: 256)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1443, line: 9, size: 256, elements: !1444)
!1443 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1444 = !{!1445, !1446}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1442, file: !1443, line: 10, baseType: !911, size: 192, align: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1442, file: !1443, line: 11, baseType: !1447, size: 64, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1448, line: 29, baseType: !928)
!1448 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1439, file: !20, line: 120, baseType: !1447, size: 64, offset: 256)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1439, file: !20, line: 121, baseType: !1451, size: 64, offset: 320)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!19, !1454}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1439, file: !20, line: 122, baseType: !1456, size: 64, offset: 384)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1458)
!1458 = !{!1459, !1479, !1480, !1483, !1488, !1489, !1493, !1497}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1457, file: !20, line: 160, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1462)
!1462 = !{!1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1461, file: !20, line: 215, baseType: !931)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1461, file: !20, line: 216, baseType: !7, size: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1461, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1461, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1461, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1461, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1461, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1461, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1461, file: !20, line: 233, baseType: !1447, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1461, file: !20, line: 234, baseType: !1454, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1461, file: !20, line: 235, baseType: !1447, size: 64, offset: 256)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1461, file: !20, line: 236, baseType: !1454, size: 64, offset: 320)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1461, file: !20, line: 237, baseType: !1476, size: 4096, offset: 512)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1457, size: 4096, elements: !1477)
!1477 = !{!1478}
!1478 = !DISubrange(count: 8)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1457, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1457, file: !20, line: 162, baseType: !1481, size: 32, offset: 96)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !273, line: 27, baseType: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !470, line: 96, baseType: !143)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1457, file: !20, line: 163, baseType: !1484, size: 32, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !549, line: 276, baseType: !1485)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !549, line: 276, size: 32, elements: !1486)
!1486 = !{!1487}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1485, file: !549, line: 276, baseType: !553, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1457, file: !20, line: 164, baseType: !1454, size: 64, offset: 192)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1457, file: !20, line: 165, baseType: !1490, size: 128, offset: 256)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1443, line: 14, size: 128, elements: !1491)
!1491 = !{!1492}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1490, file: !1443, line: 15, baseType: !903, size: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1457, file: !20, line: 166, baseType: !1494, size: 64, offset: 384)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!1447}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1457, file: !20, line: 167, baseType: !1447, size: 64, offset: 448)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1439, file: !20, line: 123, baseType: !229, size: 8, offset: 448)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1439, file: !20, line: 124, baseType: !229, size: 8, offset: 456)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1439, file: !20, line: 125, baseType: !229, size: 8, offset: 464)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1439, file: !20, line: 126, baseType: !229, size: 8, offset: 472)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1423, file: !1365, line: 572, baseType: !1439, size: 512, offset: 1216)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1423, file: !1365, line: 580, baseType: !1504, size: 64, offset: 1728)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1364, file: !1365, line: 721, baseType: !7, size: 32, offset: 3584)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1364, file: !1365, line: 722, baseType: !143, size: 32, offset: 3616)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1364, file: !1365, line: 723, baseType: !1508, size: 64, offset: 3648)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1510)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1511, line: 17, baseType: !1512)
!1511 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1511, line: 17, size: 64, elements: !1513)
!1513 = !{!1514}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1512, file: !1511, line: 17, baseType: !1515, size: 64)
!1515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 64, elements: !1516)
!1516 = !{!1517}
!1517 = !DISubrange(count: 1)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1364, file: !1365, line: 724, baseType: !1510, size: 64, offset: 3712)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1364, file: !1365, line: 749, baseType: !1520, offset: 3776)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1365, line: 290, elements: !411)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1364, file: !1365, line: 751, baseType: !272, size: 128, offset: 3776)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1364, file: !1365, line: 757, baseType: !1123, size: 64, offset: 3904)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1364, file: !1365, line: 758, baseType: !1123, size: 64, offset: 3968)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1364, file: !1365, line: 761, baseType: !1525, size: 320, offset: 4032)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1300, line: 34, size: 320, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1525, file: !1300, line: 35, baseType: !321, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1525, file: !1300, line: 36, baseType: !1529, size: 256, offset: 64)
!1529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1130, size: 256, elements: !331)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1364, file: !1365, line: 766, baseType: !143, size: 32, offset: 4352)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1364, file: !1365, line: 767, baseType: !143, size: 32, offset: 4384)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1364, file: !1365, line: 768, baseType: !143, size: 32, offset: 4416)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1364, file: !1365, line: 770, baseType: !143, size: 32, offset: 4448)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1364, file: !1365, line: 772, baseType: !293, size: 64, offset: 4480)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1364, file: !1365, line: 775, baseType: !7, size: 32, offset: 4544)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1364, file: !1365, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1364, file: !1365, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1364, file: !1365, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1364, file: !1365, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1364, file: !1365, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1364, file: !1365, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1364, file: !1365, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1364, file: !1365, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1364, file: !1365, line: 831, baseType: !293, size: 64, offset: 4672)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1364, file: !1365, line: 833, baseType: !1546, size: 384, offset: 4736)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1547)
!1547 = !{!1548, !1553}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1546, file: !25, line: 26, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!472, !1552}
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !25, line: 27, baseType: !1554, size: 320, offset: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1546, file: !25, line: 27, size: 320, elements: !1555)
!1555 = !{!1556, !1565, !1592}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1554, file: !25, line: 36, baseType: !1557, size: 320)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1554, file: !25, line: 29, size: 320, elements: !1558)
!1558 = !{!1559, !1560, !1561, !1562, !1563, !1564}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1557, file: !25, line: 30, baseType: !355, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1557, file: !25, line: 31, baseType: !152, size: 32, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1557, file: !25, line: 32, baseType: !152, size: 32, offset: 96)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1557, file: !25, line: 33, baseType: !152, size: 32, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1557, file: !25, line: 34, baseType: !321, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1557, file: !25, line: 35, baseType: !355, size: 64, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1554, file: !25, line: 46, baseType: !1566, size: 192)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1554, file: !25, line: 38, size: 192, elements: !1567)
!1567 = !{!1568, !1569, !1570, !1591}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1566, file: !25, line: 39, baseType: !1481, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1566, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1566, file: !25, line: 41, baseType: !1571, size: 64, offset: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1566, file: !25, line: 41, size: 64, elements: !1572)
!1572 = !{!1573, !1581}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1571, file: !25, line: 42, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1576, line: 7, size: 128, elements: !1577)
!1576 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1577 = !{!1578, !1580}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1575, file: !1576, line: 8, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !470, line: 93, baseType: !683)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1575, file: !1576, line: 9, baseType: !683, size: 64, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1571, file: !25, line: 43, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1584, line: 7, size: 64, elements: !1585)
!1584 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1585 = !{!1586, !1590}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1583, file: !1584, line: 8, baseType: !1587, size: 32)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1584, line: 5, baseType: !1588)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !153, line: 20, baseType: !1589)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !155, line: 26, baseType: !143)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1583, file: !1584, line: 9, baseType: !1588, size: 32, offset: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1566, file: !25, line: 45, baseType: !321, size: 64, offset: 128)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1554, file: !25, line: 54, baseType: !1593, size: 256)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1554, file: !25, line: 48, size: 256, elements: !1594)
!1594 = !{!1595, !1598, !1599, !1600, !1601}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1593, file: !25, line: 49, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1593, file: !25, line: 50, baseType: !143, size: 32, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1593, file: !25, line: 51, baseType: !143, size: 32, offset: 96)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1593, file: !25, line: 52, baseType: !293, size: 64, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1593, file: !25, line: 53, baseType: !293, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1364, file: !1365, line: 835, baseType: !1603, size: 32, offset: 5120)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !273, line: 22, baseType: !1604)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !470, line: 28, baseType: !143)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1364, file: !1365, line: 836, baseType: !1603, size: 32, offset: 5152)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1364, file: !1365, line: 840, baseType: !293, size: 64, offset: 5184)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1364, file: !1365, line: 849, baseType: !1363, size: 64, offset: 5248)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1364, file: !1365, line: 852, baseType: !1363, size: 64, offset: 5312)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1364, file: !1365, line: 857, baseType: !272, size: 128, offset: 5376)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1364, file: !1365, line: 858, baseType: !272, size: 128, offset: 5504)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1364, file: !1365, line: 859, baseType: !1363, size: 64, offset: 5632)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1364, file: !1365, line: 867, baseType: !272, size: 128, offset: 5696)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1364, file: !1365, line: 868, baseType: !272, size: 128, offset: 5824)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1364, file: !1365, line: 871, baseType: !1615, size: 64, offset: 5952)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1617)
!1617 = !{!1618, !1619, !1620, !1621, !1623, !1624, !1631, !1632}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1616, file: !53, line: 61, baseType: !1377, size: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1616, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1616, file: !53, line: 63, baseType: !397, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1616, file: !53, line: 65, baseType: !1622, size: 256, offset: 64)
!1622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !785, size: 256, elements: !331)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1616, file: !53, line: 66, baseType: !785, size: 64, offset: 320)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1616, file: !53, line: 68, baseType: !1625, size: 128, offset: 384)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1626, line: 40, baseType: !1627)
!1626 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1626, line: 36, size: 128, elements: !1628)
!1628 = !{!1629, !1630}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1627, file: !1626, line: 37, baseType: !397)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1627, file: !1626, line: 38, baseType: !272, size: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1616, file: !53, line: 69, baseType: !526, size: 128, align: 64, offset: 512)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1616, file: !53, line: 70, baseType: !1633, size: 128, offset: 640)
!1633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1634, size: 128, elements: !1516)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1635)
!1635 = !{!1636, !1637}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1634, file: !53, line: 55, baseType: !143, size: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1634, file: !53, line: 56, baseType: !1638, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1640, line: 20, size: 1088, elements: !1641)
!1640 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/lizy2001/genbc/linux")
!1641 = !{!1642, !1647, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1663, !1666, !1667}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1639, file: !1640, line: 21, baseType: !1643, size: 32)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1644, line: 19, size: 32, elements: !1645)
!1644 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1645 = !{!1646}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1643, file: !1644, line: 20, baseType: !1377, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1639, file: !1640, line: 22, baseType: !1648, size: 192, offset: 64)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1649, line: 19, size: 192, elements: !1650)
!1649 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1650 = !{!1651, !1652, !1653}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1648, file: !1649, line: 20, baseType: !889, size: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1648, file: !1649, line: 21, baseType: !7, size: 32, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1648, file: !1649, line: 22, baseType: !7, size: 32, offset: 160)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1639, file: !1640, line: 23, baseType: !526, size: 128, align: 64, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1639, file: !1640, line: 24, baseType: !7, size: 32, offset: 384)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1639, file: !1640, line: 25, baseType: !1363, size: 64, offset: 448)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1639, file: !1640, line: 26, baseType: !1084, size: 64, offset: 512)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1639, file: !1640, line: 27, baseType: !7, size: 32, offset: 576)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1639, file: !1640, line: 28, baseType: !1638, size: 64, offset: 640)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1639, file: !1640, line: 32, baseType: !1661, size: 64, offset: 704)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !589, line: 18, flags: DIFlagFwdDecl)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1639, file: !1640, line: 33, baseType: !1664, size: 64, offset: 768)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1640, line: 33, flags: DIFlagFwdDecl)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1639, file: !1640, line: 34, baseType: !143, size: 32, offset: 832)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1639, file: !1640, line: 35, baseType: !1668, size: 192, offset: 896)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1669, line: 7, size: 192, elements: !1670)
!1669 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!1670 = !{!1671, !1672, !1676}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1668, file: !1669, line: 8, baseType: !922, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1668, file: !1669, line: 9, baseType: !1673, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1675)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1669, line: 5, flags: DIFlagFwdDecl)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1668, file: !1669, line: 10, baseType: !7, size: 32, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1364, file: !1365, line: 872, baseType: !1678, size: 512, offset: 6016)
!1678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !789, size: 512, elements: !331)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1364, file: !1365, line: 873, baseType: !272, size: 128, offset: 6528)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1364, file: !1365, line: 874, baseType: !272, size: 128, offset: 6656)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1364, file: !1365, line: 876, baseType: !1682, size: 64, offset: 6784)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1684, line: 26, size: 192, elements: !1685)
!1684 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1685 = !{!1686, !1687}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1683, file: !1684, line: 27, baseType: !7, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1683, file: !1684, line: 28, baseType: !1688, size: 128, offset: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1689, line: 43, size: 128, elements: !1690)
!1689 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1690 = !{!1691, !1692}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1688, file: !1689, line: 44, baseType: !931)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1688, file: !1689, line: 45, baseType: !272, size: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1364, file: !1365, line: 879, baseType: !855, size: 64, offset: 6848)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1364, file: !1365, line: 882, baseType: !855, size: 64, offset: 6912)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1364, file: !1365, line: 884, baseType: !321, size: 64, offset: 6976)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1364, file: !1365, line: 885, baseType: !321, size: 64, offset: 7040)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1364, file: !1365, line: 890, baseType: !321, size: 64, offset: 7104)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1364, file: !1365, line: 891, baseType: !1699, size: 128, offset: 7168)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1365, line: 242, size: 128, elements: !1700)
!1700 = !{!1701, !1702, !1703}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1699, file: !1365, line: 244, baseType: !321, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1699, file: !1365, line: 245, baseType: !321, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1699, file: !1365, line: 246, baseType: !931, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1364, file: !1365, line: 900, baseType: !293, size: 64, offset: 7296)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1364, file: !1365, line: 901, baseType: !293, size: 64, offset: 7360)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1364, file: !1365, line: 904, baseType: !321, size: 64, offset: 7424)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1364, file: !1365, line: 907, baseType: !321, size: 64, offset: 7488)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1364, file: !1365, line: 910, baseType: !293, size: 64, offset: 7552)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1364, file: !1365, line: 911, baseType: !293, size: 64, offset: 7616)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1364, file: !1365, line: 914, baseType: !1711, size: 640, offset: 7680)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1712, line: 123, size: 640, elements: !1713)
!1712 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1713 = !{!1714, !1720, !1721}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1711, file: !1712, line: 124, baseType: !1715, size: 576)
!1715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1716, size: 576, elements: !438)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1712, line: 108, size: 192, elements: !1717)
!1717 = !{!1718, !1719}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1716, file: !1712, line: 109, baseType: !321, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1716, file: !1712, line: 110, baseType: !1490, size: 128, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1711, file: !1712, line: 125, baseType: !7, size: 32, offset: 576)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1711, file: !1712, line: 126, baseType: !7, size: 32, offset: 608)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1364, file: !1365, line: 917, baseType: !1723, size: 192, offset: 8320)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1712, line: 134, size: 192, elements: !1724)
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1723, file: !1712, line: 135, baseType: !526, size: 128, align: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1723, file: !1712, line: 136, baseType: !7, size: 32, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1364, file: !1365, line: 923, baseType: !1728, size: 64, offset: 8512)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1730)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1731, line: 111, size: 1280, elements: !1732)
!1731 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1732 = !{!1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1752, !1753, !1754, !1755, !1756, !1757, !1864, !1865, !1866, !1867, !1893, !1894, !1904}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1730, file: !1731, line: 112, baseType: !898, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1730, file: !1731, line: 120, baseType: !588, size: 32, offset: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1730, file: !1731, line: 121, baseType: !596, size: 32, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1730, file: !1731, line: 122, baseType: !588, size: 32, offset: 96)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1730, file: !1731, line: 123, baseType: !596, size: 32, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1730, file: !1731, line: 124, baseType: !588, size: 32, offset: 160)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1730, file: !1731, line: 125, baseType: !596, size: 32, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1730, file: !1731, line: 126, baseType: !588, size: 32, offset: 224)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1730, file: !1731, line: 127, baseType: !596, size: 32, offset: 256)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1730, file: !1731, line: 128, baseType: !7, size: 32, offset: 288)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1730, file: !1731, line: 129, baseType: !1744, size: 64, offset: 320)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1745, line: 26, baseType: !1746)
!1745 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1745, line: 24, size: 64, elements: !1747)
!1747 = !{!1748}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1746, file: !1745, line: 25, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 64, elements: !1750)
!1750 = !{!1751}
!1751 = !DISubrange(count: 2)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1730, file: !1731, line: 130, baseType: !1744, size: 64, offset: 384)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1730, file: !1731, line: 131, baseType: !1744, size: 64, offset: 448)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1730, file: !1731, line: 132, baseType: !1744, size: 64, offset: 512)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1730, file: !1731, line: 133, baseType: !1744, size: 64, offset: 576)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1730, file: !1731, line: 135, baseType: !231, size: 8, offset: 640)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1730, file: !1731, line: 137, baseType: !1758, size: 64, offset: 704)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1760, line: 189, size: 1664, elements: !1761)
!1760 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1761 = !{!1762, !1763, !1766, !1771, !1772, !1775, !1776, !1781, !1782, !1783, !1784, !1786, !1787, !1788, !1789, !1790, !1828, !1849}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1759, file: !1760, line: 190, baseType: !1377, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1759, file: !1760, line: 191, baseType: !1764, size: 32, offset: 32)
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1760, line: 28, baseType: !1765)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !273, line: 98, baseType: !1588)
!1766 = !DIDerivedType(tag: DW_TAG_member, scope: !1759, file: !1760, line: 192, baseType: !1767, size: 192, offset: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1759, file: !1760, line: 192, size: 192, elements: !1768)
!1768 = !{!1769, !1770}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1767, file: !1760, line: 193, baseType: !272, size: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1767, file: !1760, line: 194, baseType: !911, size: 192, align: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1759, file: !1760, line: 199, baseType: !918, size: 256, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1759, file: !1760, line: 200, baseType: !1773, size: 64, offset: 512)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1760, line: 200, flags: DIFlagFwdDecl)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1759, file: !1760, line: 201, baseType: !141, size: 64, offset: 576)
!1776 = !DIDerivedType(tag: DW_TAG_member, scope: !1759, file: !1760, line: 202, baseType: !1777, size: 64, offset: 640)
!1777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1759, file: !1760, line: 202, size: 64, elements: !1778)
!1778 = !{!1779, !1780}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1777, file: !1760, line: 203, baseType: !689, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1777, file: !1760, line: 204, baseType: !689, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1759, file: !1760, line: 206, baseType: !689, size: 64, offset: 704)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1759, file: !1760, line: 207, baseType: !588, size: 32, offset: 768)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1759, file: !1760, line: 208, baseType: !596, size: 32, offset: 800)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1759, file: !1760, line: 209, baseType: !1785, size: 32, offset: 832)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1760, line: 31, baseType: !709)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1759, file: !1760, line: 210, baseType: !223, size: 16, offset: 864)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1759, file: !1760, line: 211, baseType: !223, size: 16, offset: 880)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1759, file: !1760, line: 215, baseType: !1352, size: 16, offset: 896)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1759, file: !1760, line: 222, baseType: !293, size: 64, offset: 960)
!1790 = !DIDerivedType(tag: DW_TAG_member, scope: !1759, file: !1760, line: 239, baseType: !1791, size: 320, offset: 1024)
!1791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1759, file: !1760, line: 239, size: 320, elements: !1792)
!1792 = !{!1793, !1820}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1791, file: !1760, line: 240, baseType: !1794, size: 320)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1760, line: 108, size: 320, elements: !1795)
!1795 = !{!1796, !1797, !1809, !1812, !1819}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1794, file: !1760, line: 110, baseType: !293, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, scope: !1794, file: !1760, line: 111, baseType: !1798, size: 64, offset: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1794, file: !1760, line: 111, size: 64, elements: !1799)
!1799 = !{!1800, !1808}
!1800 = !DIDerivedType(tag: DW_TAG_member, scope: !1798, file: !1760, line: 112, baseType: !1801, size: 64)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1798, file: !1760, line: 112, size: 64, elements: !1802)
!1802 = !{!1803, !1804}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1801, file: !1760, line: 114, baseType: !221, size: 16)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1801, file: !1760, line: 115, baseType: !1805, size: 48, offset: 16)
!1805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 48, elements: !1806)
!1806 = !{!1807}
!1807 = !DISubrange(count: 6)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1798, file: !1760, line: 121, baseType: !293, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1794, file: !1760, line: 123, baseType: !1810, size: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1760, line: 96, flags: DIFlagFwdDecl)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1794, file: !1760, line: 124, baseType: !1813, size: 64, offset: 192)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1760, line: 102, size: 192, elements: !1815)
!1815 = !{!1816, !1817, !1818}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1814, file: !1760, line: 103, baseType: !526, size: 128, align: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1814, file: !1760, line: 104, baseType: !1377, size: 32, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1814, file: !1760, line: 105, baseType: !640, size: 8, offset: 160)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1794, file: !1760, line: 125, baseType: !197, size: 64, offset: 256)
!1820 = !DIDerivedType(tag: DW_TAG_member, scope: !1791, file: !1760, line: 241, baseType: !1821, size: 320)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1791, file: !1760, line: 241, size: 320, elements: !1822)
!1822 = !{!1823, !1824, !1825, !1826, !1827}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1821, file: !1760, line: 242, baseType: !293, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1821, file: !1760, line: 243, baseType: !293, size: 64, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1821, file: !1760, line: 244, baseType: !1810, size: 64, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1821, file: !1760, line: 245, baseType: !1813, size: 64, offset: 192)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1821, file: !1760, line: 246, baseType: !214, size: 64, offset: 256)
!1828 = !DIDerivedType(tag: DW_TAG_member, scope: !1759, file: !1760, line: 254, baseType: !1829, size: 256, offset: 1344)
!1829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1759, file: !1760, line: 254, size: 256, elements: !1830)
!1830 = !{!1831, !1837}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1829, file: !1760, line: 255, baseType: !1832, size: 256)
!1832 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1760, line: 128, size: 256, elements: !1833)
!1833 = !{!1834, !1835}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1832, file: !1760, line: 129, baseType: !141, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1832, file: !1760, line: 130, baseType: !1836, size: 256)
!1836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 256, elements: !331)
!1837 = !DIDerivedType(tag: DW_TAG_member, scope: !1829, file: !1760, line: 256, baseType: !1838, size: 256)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1829, file: !1760, line: 256, size: 256, elements: !1839)
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1838, file: !1760, line: 258, baseType: !272, size: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1838, file: !1760, line: 259, baseType: !1842, size: 128, offset: 128)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1843, line: 22, size: 128, elements: !1844)
!1843 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1844 = !{!1845, !1848}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1842, file: !1843, line: 23, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1843, line: 23, flags: DIFlagFwdDecl)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1842, file: !1843, line: 24, baseType: !293, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1759, file: !1760, line: 274, baseType: !1850, size: 64, offset: 1600)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1760, line: 170, size: 192, elements: !1852)
!1852 = !{!1853, !1862, !1863}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1851, file: !1760, line: 171, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1760, line: 165, baseType: !1855)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!143, !1758, !1858, !1860, !1758}
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1811)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1832)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1851, file: !1760, line: 172, baseType: !1758, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1851, file: !1760, line: 173, baseType: !1810, size: 64, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1730, file: !1731, line: 138, baseType: !1758, size: 64, offset: 768)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1730, file: !1731, line: 139, baseType: !1758, size: 64, offset: 832)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1730, file: !1731, line: 140, baseType: !1758, size: 64, offset: 896)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1730, file: !1731, line: 145, baseType: !1868, size: 64, offset: 960)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1870, line: 13, size: 896, elements: !1871)
!1870 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1871 = !{!1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1869, file: !1870, line: 14, baseType: !1377, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1869, file: !1870, line: 15, baseType: !898, size: 32, offset: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1869, file: !1870, line: 16, baseType: !898, size: 32, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1869, file: !1870, line: 21, baseType: !922, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1869, file: !1870, line: 27, baseType: !293, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1869, file: !1870, line: 28, baseType: !293, size: 64, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1869, file: !1870, line: 29, baseType: !922, size: 64, offset: 320)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1869, file: !1870, line: 32, baseType: !789, size: 128, offset: 384)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1869, file: !1870, line: 33, baseType: !588, size: 32, offset: 512)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1869, file: !1870, line: 37, baseType: !922, size: 64, offset: 576)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1869, file: !1870, line: 44, baseType: !1883, size: 256, offset: 640)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1884, line: 15, size: 256, elements: !1885)
!1884 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1885 = !{!1886, !1887, !1888, !1889, !1890, !1891, !1892}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1883, file: !1884, line: 16, baseType: !931)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1883, file: !1884, line: 18, baseType: !143, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1883, file: !1884, line: 19, baseType: !143, size: 32, offset: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1883, file: !1884, line: 20, baseType: !143, size: 32, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1883, file: !1884, line: 21, baseType: !143, size: 32, offset: 96)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1883, file: !1884, line: 22, baseType: !293, size: 64, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1883, file: !1884, line: 23, baseType: !293, size: 64, offset: 192)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1730, file: !1731, line: 146, baseType: !1661, size: 64, offset: 1024)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1730, file: !1731, line: 147, baseType: !1895, size: 64, offset: 1088)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1731, line: 25, size: 64, elements: !1897)
!1897 = !{!1898, !1899, !1900}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1896, file: !1731, line: 26, baseType: !898, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1896, file: !1731, line: 27, baseType: !143, size: 32, offset: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1896, file: !1731, line: 28, baseType: !1901, offset: 64)
!1901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, elements: !1902)
!1902 = !{!1903}
!1903 = !DISubrange(count: 0)
!1904 = !DIDerivedType(tag: DW_TAG_member, scope: !1730, file: !1731, line: 149, baseType: !1905, size: 128, offset: 1152)
!1905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1730, file: !1731, line: 149, size: 128, elements: !1906)
!1906 = !{!1907, !1908}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1905, file: !1731, line: 150, baseType: !143, size: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1905, file: !1731, line: 151, baseType: !526, size: 128, align: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1364, file: !1365, line: 926, baseType: !1728, size: 64, offset: 8576)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1364, file: !1365, line: 929, baseType: !1728, size: 64, offset: 8640)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1364, file: !1365, line: 933, baseType: !1758, size: 64, offset: 8704)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1364, file: !1365, line: 943, baseType: !1913, size: 128, offset: 8768)
!1913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 128, elements: !156)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1364, file: !1365, line: 945, baseType: !1915, size: 64, offset: 8896)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1365, line: 49, flags: DIFlagFwdDecl)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1364, file: !1365, line: 956, baseType: !1918, size: 64, offset: 8960)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1365, line: 45, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1364, file: !1365, line: 959, baseType: !1921, size: 64, offset: 9024)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1365, line: 959, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1364, file: !1365, line: 962, baseType: !1924, size: 64, offset: 9088)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1365, line: 66, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1364, file: !1365, line: 966, baseType: !1927, size: 64, offset: 9152)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1929, line: 31, size: 576, elements: !1930)
!1929 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!1930 = !{!1931, !1932, !1935, !1938, !1941, !1942, !1945, !1948, !1949}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1928, file: !1929, line: 32, baseType: !898, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1928, file: !1929, line: 33, baseType: !1933, size: 64, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1929, line: 9, flags: DIFlagFwdDecl)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1928, file: !1929, line: 34, baseType: !1936, size: 64, offset: 128)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1929, line: 10, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1928, file: !1929, line: 35, baseType: !1939, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1929, line: 8, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1928, file: !1929, line: 36, baseType: !1638, size: 64, offset: 256)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1928, file: !1929, line: 37, baseType: !1943, size: 64, offset: 320)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1760, line: 34, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1928, file: !1929, line: 38, baseType: !1946, size: 64, offset: 384)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1929, line: 38, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1928, file: !1929, line: 39, baseType: !1946, size: 64, offset: 448)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1928, file: !1929, line: 40, baseType: !1950, size: 64, offset: 512)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1929, line: 12, flags: DIFlagFwdDecl)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1364, file: !1365, line: 969, baseType: !1953, size: 64, offset: 9216)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1955, line: 82, size: 7296, elements: !1956)
!1955 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1956 = !{!1957, !1958, !1959, !1960, !1961, !1962, !1963, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1992, !2001, !2002, !2004, !2005, !2006, !2009, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2039, !2040, !2047, !2048, !2049, !2050, !2051, !2052}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1954, file: !1955, line: 83, baseType: !1377, size: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1954, file: !1955, line: 84, baseType: !898, size: 32, offset: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1954, file: !1955, line: 85, baseType: !143, size: 32, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1954, file: !1955, line: 86, baseType: !272, size: 128, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1954, file: !1955, line: 88, baseType: !1625, size: 128, offset: 256)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1954, file: !1955, line: 91, baseType: !1363, size: 64, offset: 384)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1954, file: !1955, line: 94, baseType: !1964, size: 192, offset: 448)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1965, line: 30, size: 192, elements: !1966)
!1965 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1966 = !{!1967, !1968}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1964, file: !1965, line: 31, baseType: !272, size: 128)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1964, file: !1965, line: 32, baseType: !1969, size: 64, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1970, line: 25, baseType: !1971)
!1970 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1970, line: 23, size: 64, elements: !1972)
!1972 = !{!1973}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1971, file: !1970, line: 24, baseType: !1515, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1954, file: !1955, line: 97, baseType: !785, size: 64, offset: 640)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1954, file: !1955, line: 100, baseType: !143, size: 32, offset: 704)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1954, file: !1955, line: 106, baseType: !143, size: 32, offset: 736)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1954, file: !1955, line: 107, baseType: !1363, size: 64, offset: 768)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1954, file: !1955, line: 110, baseType: !143, size: 32, offset: 832)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1954, file: !1955, line: 111, baseType: !7, size: 32, offset: 864)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1954, file: !1955, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1954, file: !1955, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1954, file: !1955, line: 128, baseType: !143, size: 32, offset: 928)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1954, file: !1955, line: 129, baseType: !272, size: 128, offset: 960)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1954, file: !1955, line: 132, baseType: !1439, size: 512, offset: 1088)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1954, file: !1955, line: 133, baseType: !1447, size: 64, offset: 1600)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1954, file: !1955, line: 140, baseType: !1987, size: 256, offset: 1664)
!1987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1988, size: 256, elements: !1750)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1955, line: 38, size: 128, elements: !1989)
!1989 = !{!1990, !1991}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1988, file: !1955, line: 39, baseType: !321, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1988, file: !1955, line: 40, baseType: !321, size: 64, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1954, file: !1955, line: 146, baseType: !1993, size: 192, offset: 1920)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1955, line: 66, size: 192, elements: !1994)
!1994 = !{!1995}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1993, file: !1955, line: 67, baseType: !1996, size: 192)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1955, line: 47, size: 192, elements: !1997)
!1997 = !{!1998, !1999, !2000}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1996, file: !1955, line: 48, baseType: !924, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1996, file: !1955, line: 49, baseType: !924, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1996, file: !1955, line: 50, baseType: !924, size: 64, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1954, file: !1955, line: 150, baseType: !1711, size: 640, offset: 2112)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1954, file: !1955, line: 153, baseType: !2003, size: 256, offset: 2752)
!2003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1615, size: 256, elements: !331)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1954, file: !1955, line: 159, baseType: !1615, size: 64, offset: 3008)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1954, file: !1955, line: 162, baseType: !143, size: 32, offset: 3072)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1954, file: !1955, line: 164, baseType: !2007, size: 64, offset: 3136)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1955, line: 164, flags: DIFlagFwdDecl)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1954, file: !1955, line: 175, baseType: !2010, size: 32, offset: 3200)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !549, line: 805, baseType: !2011)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !549, line: 798, size: 32, elements: !2012)
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2011, file: !549, line: 803, baseType: !548, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2011, file: !549, line: 804, baseType: !397, offset: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1954, file: !1955, line: 176, baseType: !321, size: 64, offset: 3264)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1954, file: !1955, line: 176, baseType: !321, size: 64, offset: 3328)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1954, file: !1955, line: 176, baseType: !321, size: 64, offset: 3392)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1954, file: !1955, line: 176, baseType: !321, size: 64, offset: 3456)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1954, file: !1955, line: 177, baseType: !321, size: 64, offset: 3520)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1954, file: !1955, line: 178, baseType: !321, size: 64, offset: 3584)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1954, file: !1955, line: 179, baseType: !1699, size: 128, offset: 3648)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1954, file: !1955, line: 180, baseType: !293, size: 64, offset: 3776)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1954, file: !1955, line: 180, baseType: !293, size: 64, offset: 3840)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1954, file: !1955, line: 180, baseType: !293, size: 64, offset: 3904)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1954, file: !1955, line: 180, baseType: !293, size: 64, offset: 3968)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1954, file: !1955, line: 181, baseType: !293, size: 64, offset: 4032)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1954, file: !1955, line: 181, baseType: !293, size: 64, offset: 4096)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1954, file: !1955, line: 181, baseType: !293, size: 64, offset: 4160)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1954, file: !1955, line: 181, baseType: !293, size: 64, offset: 4224)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1954, file: !1955, line: 182, baseType: !293, size: 64, offset: 4288)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1954, file: !1955, line: 182, baseType: !293, size: 64, offset: 4352)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1954, file: !1955, line: 182, baseType: !293, size: 64, offset: 4416)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1954, file: !1955, line: 182, baseType: !293, size: 64, offset: 4480)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1954, file: !1955, line: 183, baseType: !293, size: 64, offset: 4544)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1954, file: !1955, line: 183, baseType: !293, size: 64, offset: 4608)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1954, file: !1955, line: 184, baseType: !2037, offset: 4672)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2038, line: 12, elements: !411)
!2038 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1954, file: !1955, line: 192, baseType: !323, size: 64, offset: 4672)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1954, file: !1955, line: 203, baseType: !2041, size: 2048, offset: 4736)
!2041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2042, size: 2048, elements: !156)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2043, line: 43, size: 128, elements: !2044)
!2043 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2044 = !{!2045, !2046}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2042, file: !2043, line: 44, baseType: !485, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2042, file: !2043, line: 45, baseType: !485, size: 64, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1954, file: !1955, line: 220, baseType: !640, size: 8, offset: 6784)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1954, file: !1955, line: 221, baseType: !1352, size: 16, offset: 6800)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1954, file: !1955, line: 222, baseType: !1352, size: 16, offset: 6816)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1954, file: !1955, line: 224, baseType: !1123, size: 64, offset: 6848)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1954, file: !1955, line: 227, baseType: !1320, size: 192, offset: 6912)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1954, file: !1955, line: 233, baseType: !1320, size: 192, offset: 7104)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1364, file: !1365, line: 970, baseType: !2054, size: 64, offset: 9280)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1955, line: 20, size: 16576, elements: !2056)
!2056 = !{!2057, !2058, !2059, !2060}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2055, file: !1955, line: 21, baseType: !397)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2055, file: !1955, line: 22, baseType: !1377, size: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2055, file: !1955, line: 23, baseType: !1625, size: 128, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2055, file: !1955, line: 24, baseType: !2061, size: 16384, offset: 192)
!2061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2062, size: 16384, elements: !442)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1965, line: 49, size: 256, elements: !2063)
!2063 = !{!2064}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2062, file: !1965, line: 50, baseType: !2065, size: 256)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1965, line: 35, size: 256, elements: !2066)
!2066 = !{!2067, !2074, !2075, !2079}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2065, file: !1965, line: 37, baseType: !2068, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2069, line: 19, baseType: !2070)
!2069 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2069, line: 18, baseType: !2072)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{null, !143}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2065, file: !1965, line: 38, baseType: !293, size: 64, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2065, file: !1965, line: 44, baseType: !2076, size: 64, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2069, line: 22, baseType: !2077)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2069, line: 21, baseType: !166)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2065, file: !1965, line: 46, baseType: !1969, size: 64, offset: 192)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1364, file: !1365, line: 971, baseType: !1969, size: 64, offset: 9344)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1364, file: !1365, line: 972, baseType: !1969, size: 64, offset: 9408)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1364, file: !1365, line: 974, baseType: !1969, size: 64, offset: 9472)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1364, file: !1365, line: 975, baseType: !1964, size: 192, offset: 9536)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1364, file: !1365, line: 976, baseType: !293, size: 64, offset: 9728)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1364, file: !1365, line: 977, baseType: !483, size: 64, offset: 9792)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1364, file: !1365, line: 978, baseType: !7, size: 32, offset: 9856)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1364, file: !1365, line: 980, baseType: !529, size: 64, offset: 9920)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1364, file: !1365, line: 989, baseType: !2089, size: 128, offset: 9984)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2090, line: 35, size: 128, elements: !2091)
!2090 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2091 = !{!2092, !2093, !2094}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2089, file: !2090, line: 36, baseType: !143, size: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2089, file: !2090, line: 37, baseType: !898, size: 32, offset: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2089, file: !2090, line: 38, baseType: !2095, size: 64, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2090, line: 23, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1364, file: !1365, line: 992, baseType: !321, size: 64, offset: 10112)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1364, file: !1365, line: 993, baseType: !321, size: 64, offset: 10176)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1364, file: !1365, line: 996, baseType: !397, offset: 10240)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1364, file: !1365, line: 999, baseType: !931, offset: 10240)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1364, file: !1365, line: 1001, baseType: !2102, size: 64, offset: 10240)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1365, line: 636, size: 64, elements: !2103)
!2103 = !{!2104}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2102, file: !1365, line: 637, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1364, file: !1365, line: 1005, baseType: !903, size: 128, offset: 10304)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1364, file: !1365, line: 1007, baseType: !1363, size: 64, offset: 10432)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1364, file: !1365, line: 1009, baseType: !2109, size: 64, offset: 10496)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1365, line: 1009, flags: DIFlagFwdDecl)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1364, file: !1365, line: 1043, baseType: !141, size: 64, offset: 10560)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1364, file: !1365, line: 1046, baseType: !2113, size: 64, offset: 10624)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1365, line: 41, flags: DIFlagFwdDecl)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1364, file: !1365, line: 1050, baseType: !2116, size: 64, offset: 10688)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1365, line: 42, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1364, file: !1365, line: 1054, baseType: !2119, size: 64, offset: 10752)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1365, line: 55, flags: DIFlagFwdDecl)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1364, file: !1365, line: 1056, baseType: !2122, size: 64, offset: 10816)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1365, line: 40, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1364, file: !1365, line: 1058, baseType: !2125, size: 64, offset: 10880)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2127, line: 99, size: 704, elements: !2128)
!2127 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2128 = !{!2129, !2130, !2131, !2132, !2133, !2134, !2135, !2154, !2155}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2126, file: !2127, line: 100, baseType: !922, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2126, file: !2127, line: 101, baseType: !898, size: 32, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2126, file: !2127, line: 102, baseType: !898, size: 32, offset: 96)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2126, file: !2127, line: 105, baseType: !397, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2126, file: !2127, line: 107, baseType: !223, size: 16, offset: 128)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2126, file: !2127, line: 109, baseType: !889, size: 128, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2126, file: !2127, line: 110, baseType: !2136, size: 64, offset: 320)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2127, line: 73, size: 448, elements: !2138)
!2138 = !{!2139, !2142, !2143, !2148, !2153}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2137, file: !2127, line: 74, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2127, line: 74, flags: DIFlagFwdDecl)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2137, file: !2127, line: 75, baseType: !2125, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, scope: !2137, file: !2127, line: 83, baseType: !2144, size: 128, offset: 128)
!2144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2137, file: !2127, line: 83, size: 128, elements: !2145)
!2145 = !{!2146, !2147}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2144, file: !2127, line: 84, baseType: !272, size: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2144, file: !2127, line: 85, baseType: !1084, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, scope: !2137, file: !2127, line: 87, baseType: !2149, size: 128, offset: 256)
!2149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2137, file: !2127, line: 87, size: 128, elements: !2150)
!2150 = !{!2151, !2152}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2149, file: !2127, line: 88, baseType: !789, size: 128)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2149, file: !2127, line: 89, baseType: !526, size: 128, align: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2137, file: !2127, line: 92, baseType: !7, size: 32, offset: 384)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2126, file: !2127, line: 111, baseType: !785, size: 64, offset: 384)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2126, file: !2127, line: 113, baseType: !2156, size: 256, offset: 448)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2157, line: 102, size: 256, elements: !2158)
!2157 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2158 = !{!2159, !2160, !2161}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2156, file: !2157, line: 103, baseType: !922, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2156, file: !2157, line: 104, baseType: !272, size: 128, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2156, file: !2157, line: 105, baseType: !2162, size: 64, offset: 192)
!2162 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2157, line: 21, baseType: !2163)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{null, !2166}
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1364, file: !1365, line: 1061, baseType: !2168, size: 64, offset: 10944)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1365, line: 43, flags: DIFlagFwdDecl)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1364, file: !1365, line: 1064, baseType: !293, size: 64, offset: 11008)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1364, file: !1365, line: 1065, baseType: !2172, size: 64, offset: 11072)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1965, line: 14, baseType: !2174)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1965, line: 12, size: 384, elements: !2175)
!2175 = !{!2176}
!2176 = !DIDerivedType(tag: DW_TAG_member, scope: !2174, file: !1965, line: 13, baseType: !2177, size: 384)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2174, file: !1965, line: 13, size: 384, elements: !2178)
!2178 = !{!2179, !2180, !2181, !2182}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2177, file: !1965, line: 13, baseType: !143, size: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2177, file: !1965, line: 13, baseType: !143, size: 32, offset: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2177, file: !1965, line: 13, baseType: !143, size: 32, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2177, file: !1965, line: 13, baseType: !2183, size: 256, offset: 128)
!2183 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2184, line: 32, size: 256, elements: !2185)
!2184 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2185 = !{!2186, !2191, !2204, !2210, !2219, !2239, !2244}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2183, file: !2184, line: 37, baseType: !2187, size: 64)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2183, file: !2184, line: 34, size: 64, elements: !2188)
!2188 = !{!2189, !2190}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2187, file: !2184, line: 35, baseType: !1604, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2187, file: !2184, line: 36, baseType: !594, size: 32, offset: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2183, file: !2184, line: 45, baseType: !2192, size: 192)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2183, file: !2184, line: 40, size: 192, elements: !2193)
!2193 = !{!2194, !2196, !2197, !2203}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2192, file: !2184, line: 41, baseType: !2195, size: 32)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !470, line: 95, baseType: !143)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2192, file: !2184, line: 42, baseType: !143, size: 32, offset: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2192, file: !2184, line: 43, baseType: !2198, size: 64, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2184, line: 11, baseType: !2199)
!2199 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2184, line: 8, size: 64, elements: !2200)
!2200 = !{!2201, !2202}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2199, file: !2184, line: 9, baseType: !143, size: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2199, file: !2184, line: 10, baseType: !141, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2192, file: !2184, line: 44, baseType: !143, size: 32, offset: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2183, file: !2184, line: 52, baseType: !2205, size: 128)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2183, file: !2184, line: 48, size: 128, elements: !2206)
!2206 = !{!2207, !2208, !2209}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2205, file: !2184, line: 49, baseType: !1604, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2205, file: !2184, line: 50, baseType: !594, size: 32, offset: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2205, file: !2184, line: 51, baseType: !2198, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2183, file: !2184, line: 61, baseType: !2211, size: 256)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2183, file: !2184, line: 55, size: 256, elements: !2212)
!2212 = !{!2213, !2214, !2215, !2216, !2218}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2211, file: !2184, line: 56, baseType: !1604, size: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2211, file: !2184, line: 57, baseType: !594, size: 32, offset: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2211, file: !2184, line: 58, baseType: !143, size: 32, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2211, file: !2184, line: 59, baseType: !2217, size: 64, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !470, line: 94, baseType: !471)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2211, file: !2184, line: 60, baseType: !2217, size: 64, offset: 192)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2183, file: !2184, line: 95, baseType: !2220, size: 256)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2183, file: !2184, line: 64, size: 256, elements: !2221)
!2221 = !{!2222, !2223}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2220, file: !2184, line: 65, baseType: !141, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, scope: !2220, file: !2184, line: 77, baseType: !2224, size: 192, offset: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2220, file: !2184, line: 77, size: 192, elements: !2225)
!2225 = !{!2226, !2227, !2234}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2224, file: !2184, line: 82, baseType: !1352, size: 16)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2224, file: !2184, line: 88, baseType: !2228, size: 192)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2224, file: !2184, line: 84, size: 192, elements: !2229)
!2229 = !{!2230, !2232, !2233}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2228, file: !2184, line: 85, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 64, elements: !1477)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2228, file: !2184, line: 86, baseType: !141, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2228, file: !2184, line: 87, baseType: !141, size: 64, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2224, file: !2184, line: 93, baseType: !2235, size: 96)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2224, file: !2184, line: 90, size: 96, elements: !2236)
!2236 = !{!2237, !2238}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2235, file: !2184, line: 91, baseType: !2231, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2235, file: !2184, line: 92, baseType: !154, size: 32, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2183, file: !2184, line: 101, baseType: !2240, size: 128)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2183, file: !2184, line: 98, size: 128, elements: !2241)
!2241 = !{!2242, !2243}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2240, file: !2184, line: 99, baseType: !472, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2240, file: !2184, line: 100, baseType: !143, size: 32, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2183, file: !2184, line: 108, baseType: !2245, size: 128)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2183, file: !2184, line: 104, size: 128, elements: !2246)
!2246 = !{!2247, !2248, !2249}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2245, file: !2184, line: 105, baseType: !141, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2245, file: !2184, line: 106, baseType: !143, size: 32, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2245, file: !2184, line: 107, baseType: !7, size: 32, offset: 96)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1364, file: !1365, line: 1067, baseType: !2037, offset: 11136)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1364, file: !1365, line: 1099, baseType: !2252, size: 64, offset: 11136)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1365, line: 56, flags: DIFlagFwdDecl)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1364, file: !1365, line: 1103, baseType: !272, size: 128, offset: 11200)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1364, file: !1365, line: 1104, baseType: !2256, size: 64, offset: 11328)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1365, line: 46, flags: DIFlagFwdDecl)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1364, file: !1365, line: 1105, baseType: !1320, size: 192, offset: 11392)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1364, file: !1365, line: 1106, baseType: !7, size: 32, offset: 11584)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1364, file: !1365, line: 1109, baseType: !2261, size: 128, offset: 11648)
!2261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2262, size: 128, elements: !1750)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1365, line: 51, flags: DIFlagFwdDecl)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1364, file: !1365, line: 1110, baseType: !1320, size: 192, offset: 11776)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1364, file: !1365, line: 1111, baseType: !272, size: 128, offset: 11968)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1364, file: !1365, line: 1173, baseType: !2267, size: 64, offset: 12096)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2269, line: 62, size: 256, align: 256, elements: !2270)
!2269 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2270 = !{!2271, !2272, !2273, !2278}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2268, file: !2269, line: 75, baseType: !154, size: 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2268, file: !2269, line: 90, baseType: !154, size: 32, offset: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2268, file: !2269, line: 124, baseType: !2274, size: 64, offset: 64)
!2274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2268, file: !2269, line: 109, size: 64, elements: !2275)
!2275 = !{!2276, !2277}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2274, file: !2269, line: 110, baseType: !322, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2274, file: !2269, line: 112, baseType: !322, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2268, file: !2269, line: 144, baseType: !154, size: 32, offset: 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1364, file: !1365, line: 1174, baseType: !152, size: 32, offset: 12160)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1364, file: !1365, line: 1179, baseType: !293, size: 64, offset: 12224)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1364, file: !1365, line: 1182, baseType: !2282, size: 128, offset: 12288)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1300, line: 76, size: 128, elements: !2283)
!2283 = !{!2284, !2289, !2290}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2282, file: !1300, line: 85, baseType: !2285, size: 64)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2286, line: 7, size: 64, elements: !2287)
!2286 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2287 = !{!2288}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2285, file: !2286, line: 12, baseType: !1512, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2282, file: !1300, line: 88, baseType: !640, size: 8, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2282, file: !1300, line: 95, baseType: !640, size: 8, offset: 72)
!2291 = !DIDerivedType(tag: DW_TAG_member, scope: !1364, file: !1365, line: 1184, baseType: !2292, size: 128, offset: 12416)
!2292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1364, file: !1365, line: 1184, size: 128, elements: !2293)
!2293 = !{!2294, !2295}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2292, file: !1365, line: 1185, baseType: !1377, size: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2292, file: !1365, line: 1186, baseType: !526, size: 128, align: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1364, file: !1365, line: 1190, baseType: !2297, size: 64, offset: 12544)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1365, line: 53, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1364, file: !1365, line: 1192, baseType: !2300, size: 128, offset: 12608)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1300, line: 64, size: 128, elements: !2301)
!2301 = !{!2302, !2303, !2304}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2300, file: !1300, line: 65, baseType: !871, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2300, file: !1300, line: 67, baseType: !154, size: 32, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2300, file: !1300, line: 68, baseType: !154, size: 32, offset: 96)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1364, file: !1365, line: 1206, baseType: !143, size: 32, offset: 12736)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1364, file: !1365, line: 1207, baseType: !143, size: 32, offset: 12768)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1364, file: !1365, line: 1209, baseType: !293, size: 64, offset: 12800)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1364, file: !1365, line: 1219, baseType: !321, size: 64, offset: 12864)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1364, file: !1365, line: 1220, baseType: !321, size: 64, offset: 12928)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1364, file: !1365, line: 1317, baseType: !143, size: 32, offset: 12992)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1364, file: !1365, line: 1319, baseType: !1363, size: 64, offset: 13056)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1364, file: !1365, line: 1322, baseType: !2313, size: 64, offset: 13120)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2315, line: 56, size: 512, elements: !2316)
!2315 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2316 = !{!2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2314, file: !2315, line: 57, baseType: !2313, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2314, file: !2315, line: 58, baseType: !141, size: 64, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2314, file: !2315, line: 59, baseType: !293, size: 64, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2314, file: !2315, line: 60, baseType: !293, size: 64, offset: 192)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2314, file: !2315, line: 61, baseType: !971, size: 64, offset: 256)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2314, file: !2315, line: 62, baseType: !7, size: 32, offset: 320)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2314, file: !2315, line: 63, baseType: !320, size: 64, offset: 384)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2314, file: !2315, line: 64, baseType: !2325, size: 64, offset: 448)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1364, file: !1365, line: 1326, baseType: !1377, size: 32, offset: 13184)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1364, file: !1365, line: 1342, baseType: !141, size: 64, offset: 13248)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1364, file: !1365, line: 1343, baseType: !322, size: 64, offset: 13312)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1364, file: !1365, line: 1344, baseType: !321, size: 64, offset: 13376)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1364, file: !1365, line: 1345, baseType: !322, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1364, file: !1365, line: 1346, baseType: !322, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1364, file: !1365, line: 1347, baseType: !322, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1364, file: !1365, line: 1348, baseType: !526, size: 128, align: 64, offset: 13504)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1364, file: !1365, line: 1358, baseType: !2336, size: 34816, offset: 13824)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2337, line: 485, size: 34816, elements: !2338)
!2337 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2338 = !{!2339, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2368, !2369, !2370, !2371, !2372, !2373, !2376, !2377, !2378}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2336, file: !2337, line: 487, baseType: !2340, size: 192)
!2340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2341, size: 192, elements: !438)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2342, line: 16, size: 64, elements: !2343)
!2342 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2343 = !{!2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2341, file: !2342, line: 17, baseType: !221, size: 16)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2341, file: !2342, line: 18, baseType: !221, size: 16, offset: 16)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2341, file: !2342, line: 19, baseType: !221, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2341, file: !2342, line: 19, baseType: !221, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2341, file: !2342, line: 19, baseType: !221, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2341, file: !2342, line: 19, baseType: !221, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2341, file: !2342, line: 19, baseType: !221, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2341, file: !2342, line: 20, baseType: !221, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2341, file: !2342, line: 20, baseType: !221, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2341, file: !2342, line: 20, baseType: !221, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2341, file: !2342, line: 20, baseType: !221, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2341, file: !2342, line: 20, baseType: !221, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2341, file: !2342, line: 20, baseType: !221, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2336, file: !2337, line: 491, baseType: !293, size: 64, offset: 192)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2336, file: !2337, line: 495, baseType: !223, size: 16, offset: 256)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2336, file: !2337, line: 496, baseType: !223, size: 16, offset: 272)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2336, file: !2337, line: 497, baseType: !223, size: 16, offset: 288)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2336, file: !2337, line: 498, baseType: !223, size: 16, offset: 304)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2336, file: !2337, line: 502, baseType: !293, size: 64, offset: 320)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2336, file: !2337, line: 503, baseType: !293, size: 64, offset: 384)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2336, file: !2337, line: 514, baseType: !2365, size: 256, offset: 448)
!2365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2366, size: 256, elements: !331)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2337, line: 483, flags: DIFlagFwdDecl)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2336, file: !2337, line: 516, baseType: !293, size: 64, offset: 704)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2336, file: !2337, line: 518, baseType: !293, size: 64, offset: 768)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2336, file: !2337, line: 520, baseType: !293, size: 64, offset: 832)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2336, file: !2337, line: 521, baseType: !293, size: 64, offset: 896)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2336, file: !2337, line: 522, baseType: !293, size: 64, offset: 960)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2336, file: !2337, line: 528, baseType: !2374, size: 64, offset: 1024)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2337, line: 10, flags: DIFlagFwdDecl)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2336, file: !2337, line: 535, baseType: !293, size: 64, offset: 1088)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2336, file: !2337, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2336, file: !2337, line: 540, baseType: !2379, size: 33280, offset: 1536)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2380, line: 317, size: 33280, elements: !2381)
!2380 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2381 = !{!2382, !2383, !2384}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2379, file: !2380, line: 330, baseType: !7, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2379, file: !2380, line: 337, baseType: !293, size: 64, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2379, file: !2380, line: 348, baseType: !2385, size: 32768, offset: 512)
!2385 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2380, line: 304, size: 32768, elements: !2386)
!2386 = !{!2387, !2400, !2439, !2489, !2502}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2385, file: !2380, line: 305, baseType: !2388, size: 896)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2380, line: 12, size: 896, elements: !2389)
!2389 = !{!2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2399}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2388, file: !2380, line: 13, baseType: !152, size: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2388, file: !2380, line: 14, baseType: !152, size: 32, offset: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2388, file: !2380, line: 15, baseType: !152, size: 32, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2388, file: !2380, line: 16, baseType: !152, size: 32, offset: 96)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2388, file: !2380, line: 17, baseType: !152, size: 32, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2388, file: !2380, line: 18, baseType: !152, size: 32, offset: 160)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2388, file: !2380, line: 19, baseType: !152, size: 32, offset: 192)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2388, file: !2380, line: 22, baseType: !2398, size: 640, offset: 224)
!2398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 640, elements: !188)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2388, file: !2380, line: 25, baseType: !152, size: 32, offset: 864)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2385, file: !2380, line: 306, baseType: !2401, size: 4096, align: 128)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2380, line: 34, size: 4096, align: 128, elements: !2402)
!2402 = !{!2403, !2404, !2405, !2406, !2407, !2422, !2423, !2424, !2428, !2430, !2434}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2401, file: !2380, line: 35, baseType: !221, size: 16)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2401, file: !2380, line: 36, baseType: !221, size: 16, offset: 16)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2401, file: !2380, line: 37, baseType: !221, size: 16, offset: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2401, file: !2380, line: 38, baseType: !221, size: 16, offset: 48)
!2407 = !DIDerivedType(tag: DW_TAG_member, scope: !2401, file: !2380, line: 39, baseType: !2408, size: 128, offset: 64)
!2408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2401, file: !2380, line: 39, size: 128, elements: !2409)
!2409 = !{!2410, !2415}
!2410 = !DIDerivedType(tag: DW_TAG_member, scope: !2408, file: !2380, line: 40, baseType: !2411, size: 128)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2408, file: !2380, line: 40, size: 128, elements: !2412)
!2412 = !{!2413, !2414}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2411, file: !2380, line: 41, baseType: !321, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2411, file: !2380, line: 42, baseType: !321, size: 64, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, scope: !2408, file: !2380, line: 44, baseType: !2416, size: 128)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2408, file: !2380, line: 44, size: 128, elements: !2417)
!2417 = !{!2418, !2419, !2420, !2421}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2416, file: !2380, line: 45, baseType: !152, size: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2416, file: !2380, line: 46, baseType: !152, size: 32, offset: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2416, file: !2380, line: 47, baseType: !152, size: 32, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2416, file: !2380, line: 48, baseType: !152, size: 32, offset: 96)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2401, file: !2380, line: 51, baseType: !152, size: 32, offset: 192)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2401, file: !2380, line: 52, baseType: !152, size: 32, offset: 224)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2401, file: !2380, line: 55, baseType: !2425, size: 1024, offset: 256)
!2425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 1024, elements: !2426)
!2426 = !{!2427}
!2427 = !DISubrange(count: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2401, file: !2380, line: 58, baseType: !2429, size: 2048, offset: 1280)
!2429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 2048, elements: !442)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2401, file: !2380, line: 60, baseType: !2431, size: 384, offset: 3328)
!2431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 384, elements: !2432)
!2432 = !{!2433}
!2433 = !DISubrange(count: 12)
!2434 = !DIDerivedType(tag: DW_TAG_member, scope: !2401, file: !2380, line: 62, baseType: !2435, size: 384, offset: 3712)
!2435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2401, file: !2380, line: 62, size: 384, elements: !2436)
!2436 = !{!2437, !2438}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2435, file: !2380, line: 63, baseType: !2431, size: 384)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2435, file: !2380, line: 64, baseType: !2431, size: 384)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2385, file: !2380, line: 307, baseType: !2440, size: 1088)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2380, line: 79, size: 1088, elements: !2441)
!2441 = !{!2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2488}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2440, file: !2380, line: 80, baseType: !152, size: 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2440, file: !2380, line: 81, baseType: !152, size: 32, offset: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2440, file: !2380, line: 82, baseType: !152, size: 32, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2440, file: !2380, line: 83, baseType: !152, size: 32, offset: 96)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2440, file: !2380, line: 84, baseType: !152, size: 32, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2440, file: !2380, line: 85, baseType: !152, size: 32, offset: 160)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2440, file: !2380, line: 86, baseType: !152, size: 32, offset: 192)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2440, file: !2380, line: 88, baseType: !2398, size: 640, offset: 224)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2440, file: !2380, line: 89, baseType: !229, size: 8, offset: 864)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2440, file: !2380, line: 90, baseType: !229, size: 8, offset: 872)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2440, file: !2380, line: 91, baseType: !229, size: 8, offset: 880)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2440, file: !2380, line: 92, baseType: !229, size: 8, offset: 888)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2440, file: !2380, line: 93, baseType: !229, size: 8, offset: 896)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2440, file: !2380, line: 94, baseType: !229, size: 8, offset: 904)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2440, file: !2380, line: 95, baseType: !2457, size: 64, offset: 960)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2459, line: 11, size: 128, elements: !2460)
!2459 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2460 = !{!2461, !2462}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2458, file: !2459, line: 12, baseType: !472, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2458, file: !2459, line: 13, baseType: !2463, size: 64, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2465, line: 56, size: 1344, elements: !2466)
!2465 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2466 = !{!2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2464, file: !2465, line: 61, baseType: !293, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2464, file: !2465, line: 62, baseType: !293, size: 64, offset: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2464, file: !2465, line: 63, baseType: !293, size: 64, offset: 128)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2464, file: !2465, line: 64, baseType: !293, size: 64, offset: 192)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2464, file: !2465, line: 65, baseType: !293, size: 64, offset: 256)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2464, file: !2465, line: 66, baseType: !293, size: 64, offset: 320)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2464, file: !2465, line: 68, baseType: !293, size: 64, offset: 384)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2464, file: !2465, line: 69, baseType: !293, size: 64, offset: 448)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2464, file: !2465, line: 70, baseType: !293, size: 64, offset: 512)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2464, file: !2465, line: 71, baseType: !293, size: 64, offset: 576)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2464, file: !2465, line: 72, baseType: !293, size: 64, offset: 640)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2464, file: !2465, line: 73, baseType: !293, size: 64, offset: 704)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2464, file: !2465, line: 74, baseType: !293, size: 64, offset: 768)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2464, file: !2465, line: 75, baseType: !293, size: 64, offset: 832)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2464, file: !2465, line: 76, baseType: !293, size: 64, offset: 896)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2464, file: !2465, line: 81, baseType: !293, size: 64, offset: 960)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2464, file: !2465, line: 83, baseType: !293, size: 64, offset: 1024)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2464, file: !2465, line: 84, baseType: !293, size: 64, offset: 1088)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2464, file: !2465, line: 85, baseType: !293, size: 64, offset: 1152)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2464, file: !2465, line: 86, baseType: !293, size: 64, offset: 1216)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2464, file: !2465, line: 87, baseType: !293, size: 64, offset: 1280)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2440, file: !2380, line: 96, baseType: !152, size: 32, offset: 1024)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2385, file: !2380, line: 308, baseType: !2490, size: 4608, align: 512)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2380, line: 289, size: 4608, align: 512, elements: !2491)
!2491 = !{!2492, !2493, !2500}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2490, file: !2380, line: 290, baseType: !2401, size: 4096, align: 128)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2490, file: !2380, line: 291, baseType: !2494, size: 512, offset: 4096)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2380, line: 268, size: 512, elements: !2495)
!2495 = !{!2496, !2497, !2498}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2494, file: !2380, line: 269, baseType: !321, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2494, file: !2380, line: 270, baseType: !321, size: 64, offset: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2494, file: !2380, line: 271, baseType: !2499, size: 384, offset: 128)
!2499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 384, elements: !1806)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2490, file: !2380, line: 292, baseType: !2501, offset: 4608)
!2501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, elements: !1902)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2385, file: !2380, line: 309, baseType: !2503, size: 32768)
!2503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 32768, elements: !2504)
!2504 = !{!2505}
!2505 = !DISubrange(count: 4096)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1360, file: !873, line: 378, baseType: !2507, size: 64, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1356, file: !873, line: 384, baseType: !1683, size: 192, offset: 192)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1127, file: !873, line: 500, baseType: !397, offset: 6656)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1127, file: !873, line: 501, baseType: !2511, size: 64, offset: 6656)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !873, line: 387, flags: DIFlagFwdDecl)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1127, file: !873, line: 516, baseType: !1661, size: 64, offset: 6720)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1127, file: !873, line: 519, baseType: !513, size: 64, offset: 6784)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1127, file: !873, line: 521, baseType: !2516, size: 64, offset: 6848)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !873, line: 521, flags: DIFlagFwdDecl)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1127, file: !873, line: 545, baseType: !898, size: 32, offset: 6912)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1127, file: !873, line: 548, baseType: !640, size: 8, offset: 6944)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1127, file: !873, line: 550, baseType: !2521, offset: 6952)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2522, line: 142, elements: !411)
!2522 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1127, file: !873, line: 554, baseType: !2156, size: 256, offset: 6976)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1127, file: !873, line: 557, baseType: !152, size: 32, offset: 7232)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1124, file: !873, line: 565, baseType: !2526, offset: 7296)
!2526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, elements: !2527)
!2527 = !{!2528}
!2528 = !DISubrange(count: -1)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1120, file: !873, line: 151, baseType: !898, size: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1113, file: !873, line: 156, baseType: !397, offset: 256)
!2531 = !DIDerivedType(tag: DW_TAG_member, scope: !877, file: !873, line: 159, baseType: !2532, size: 128)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !877, file: !873, line: 159, size: 128, elements: !2533)
!2533 = !{!2534, !2598}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2532, file: !873, line: 161, baseType: !2535, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2537)
!2537 = !{!2538, !2548, !2569, !2570, !2571, !2572, !2573, !2585, !2586, !2587}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2536, file: !31, line: 111, baseType: !2539, size: 384)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2540)
!2540 = !{!2541, !2543, !2544, !2545, !2546, !2547}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2539, file: !31, line: 20, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2539, file: !31, line: 21, baseType: !2542, size: 64, offset: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2539, file: !31, line: 22, baseType: !2542, size: 64, offset: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2539, file: !31, line: 23, baseType: !293, size: 64, offset: 192)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2539, file: !31, line: 24, baseType: !293, size: 64, offset: 256)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2539, file: !31, line: 25, baseType: !293, size: 64, offset: 320)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2536, file: !31, line: 112, baseType: !2549, size: 64, offset: 384)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2551, line: 105, size: 128, elements: !2552)
!2551 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2552 = !{!2553, !2554}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2550, file: !2551, line: 110, baseType: !293, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2550, file: !2551, line: 118, baseType: !2555, size: 64, offset: 64)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2551, line: 95, size: 448, elements: !2557)
!2557 = !{!2558, !2559, !2564, !2565, !2566, !2567, !2568}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2556, file: !2551, line: 96, baseType: !922, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2556, file: !2551, line: 97, baseType: !2560, size: 64, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2551, line: 60, baseType: !2562)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{null, !2549}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2556, file: !2551, line: 98, baseType: !2560, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2556, file: !2551, line: 99, baseType: !640, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2556, file: !2551, line: 100, baseType: !640, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2556, file: !2551, line: 101, baseType: !526, size: 128, align: 64, offset: 256)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2556, file: !2551, line: 102, baseType: !2549, size: 64, offset: 384)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2536, file: !31, line: 113, baseType: !2550, size: 128, offset: 448)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2536, file: !31, line: 114, baseType: !1683, size: 192, offset: 576)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2536, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2536, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2536, file: !31, line: 117, baseType: !2574, size: 64, offset: 832)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2576)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2577)
!2577 = !{!2578, !2579, !2583, !2584}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2576, file: !31, line: 73, baseType: !991, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2576, file: !31, line: 78, baseType: !2580, size: 64, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{null, !2535}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2576, file: !31, line: 83, baseType: !2580, size: 64, offset: 128)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2576, file: !31, line: 89, baseType: !1176, size: 64, offset: 192)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2536, file: !31, line: 118, baseType: !141, size: 64, offset: 896)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2536, file: !31, line: 119, baseType: !143, size: 32, offset: 960)
!2587 = !DIDerivedType(tag: DW_TAG_member, scope: !2536, file: !31, line: 120, baseType: !2588, size: 128, offset: 1024)
!2588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2536, file: !31, line: 120, size: 128, elements: !2589)
!2589 = !{!2590, !2596}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2588, file: !31, line: 121, baseType: !2591, size: 128)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2592, line: 6, size: 128, elements: !2593)
!2592 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2593 = !{!2594, !2595}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2591, file: !2592, line: 7, baseType: !321, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2591, file: !2592, line: 8, baseType: !321, size: 64, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2588, file: !31, line: 122, baseType: !2597)
!2597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2591, elements: !1902)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2532, file: !873, line: 162, baseType: !141, size: 64, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !877, file: !873, line: 176, baseType: !526, size: 128, align: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, scope: !872, file: !873, line: 179, baseType: !2601, size: 32, offset: 384)
!2601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !872, file: !873, line: 179, size: 32, elements: !2602)
!2602 = !{!2603, !2604, !2605, !2606}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2601, file: !873, line: 184, baseType: !898, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2601, file: !873, line: 192, baseType: !7, size: 32)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2601, file: !873, line: 194, baseType: !7, size: 32)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2601, file: !873, line: 195, baseType: !143, size: 32)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !872, file: !873, line: 199, baseType: !898, size: 32, offset: 416)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !807, file: !44, line: 1964, baseType: !2609, size: 64, offset: 1344)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!472, !749, !2612}
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2614, line: 12, size: 256, elements: !2615)
!2614 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2615 = !{!2616, !2617, !2618, !2619, !2620}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2613, file: !2614, line: 13, baseType: !894, size: 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2613, file: !2614, line: 16, baseType: !143, size: 32, offset: 32)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2613, file: !2614, line: 23, baseType: !293, size: 64, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2613, file: !2614, line: 30, baseType: !293, size: 64, offset: 128)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2613, file: !2614, line: 33, baseType: !2621, size: 64, offset: 192)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !873, line: 27, flags: DIFlagFwdDecl)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !807, file: !44, line: 1966, baseType: !2609, size: 64, offset: 1408)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !750, file: !44, line: 1424, baseType: !2625, size: 64, offset: 448)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2627)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2628)
!2628 = !{!2629, !2675, !2679, !2683, !2684, !2685, !2686, !2687, !2692, !2697, !2701}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2627, file: !38, line: 323, baseType: !2630, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!143, !2633}
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2635)
!2635 = !{!2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2660, !2661, !2662}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2634, file: !38, line: 295, baseType: !789, size: 128)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2634, file: !38, line: 296, baseType: !272, size: 128, offset: 128)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2634, file: !38, line: 297, baseType: !272, size: 128, offset: 256)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2634, file: !38, line: 298, baseType: !272, size: 128, offset: 384)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2634, file: !38, line: 299, baseType: !1320, size: 192, offset: 512)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2634, file: !38, line: 300, baseType: !397, offset: 704)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2634, file: !38, line: 301, baseType: !898, size: 32, offset: 704)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2634, file: !38, line: 302, baseType: !749, size: 64, offset: 768)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2634, file: !38, line: 303, baseType: !2645, size: 64, offset: 832)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2646)
!2646 = !{!2647, !2659}
!2647 = !DIDerivedType(tag: DW_TAG_member, scope: !2645, file: !38, line: 69, baseType: !2648, size: 32)
!2648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2645, file: !38, line: 69, size: 32, elements: !2649)
!2649 = !{!2650, !2651, !2652}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2648, file: !38, line: 70, baseType: !588, size: 32)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2648, file: !38, line: 71, baseType: !596, size: 32)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2648, file: !38, line: 72, baseType: !2653, size: 32)
!2653 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2654, line: 24, baseType: !2655)
!2654 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2654, line: 22, size: 32, elements: !2656)
!2656 = !{!2657}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2655, file: !2654, line: 23, baseType: !2658, size: 32)
!2658 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2654, line: 20, baseType: !594)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2645, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2634, file: !38, line: 304, baseType: !681, size: 64, offset: 896)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2634, file: !38, line: 305, baseType: !293, size: 64, offset: 960)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2634, file: !38, line: 306, baseType: !2663, size: 576, offset: 1024)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2664)
!2664 = !{!2665, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2663, file: !38, line: 206, baseType: !2666, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !683)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2663, file: !38, line: 207, baseType: !2666, size: 64, offset: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2663, file: !38, line: 208, baseType: !2666, size: 64, offset: 128)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2663, file: !38, line: 209, baseType: !2666, size: 64, offset: 192)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2663, file: !38, line: 210, baseType: !2666, size: 64, offset: 256)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2663, file: !38, line: 211, baseType: !2666, size: 64, offset: 320)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2663, file: !38, line: 212, baseType: !2666, size: 64, offset: 384)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2663, file: !38, line: 213, baseType: !689, size: 64, offset: 448)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2663, file: !38, line: 214, baseType: !689, size: 64, offset: 512)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2627, file: !38, line: 324, baseType: !2676, size: 64, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!2633, !749, !143}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2627, file: !38, line: 325, baseType: !2680, size: 64, offset: 128)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{null, !2633}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2627, file: !38, line: 326, baseType: !2630, size: 64, offset: 192)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2627, file: !38, line: 327, baseType: !2630, size: 64, offset: 256)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2627, file: !38, line: 328, baseType: !2630, size: 64, offset: 320)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2627, file: !38, line: 329, baseType: !835, size: 64, offset: 384)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2627, file: !38, line: 332, baseType: !2688, size: 64, offset: 448)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!2691, !582}
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2627, file: !38, line: 333, baseType: !2693, size: 64, offset: 512)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!143, !582, !2696}
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2627, file: !38, line: 335, baseType: !2698, size: 64, offset: 576)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!143, !582, !2691}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2627, file: !38, line: 337, baseType: !2702, size: 64, offset: 640)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!143, !749, !2705}
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !750, file: !44, line: 1425, baseType: !2707, size: 64, offset: 512)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2709)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2710)
!2710 = !{!2711, !2715, !2716, !2720, !2721, !2722, !2737, !2760, !2764, !2765, !2788}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2709, file: !38, line: 429, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!143, !749, !143, !143, !699}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2709, file: !38, line: 430, baseType: !835, size: 64, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2709, file: !38, line: 431, baseType: !2717, size: 64, offset: 128)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!143, !749, !7}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2709, file: !38, line: 432, baseType: !2717, size: 64, offset: 192)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2709, file: !38, line: 433, baseType: !835, size: 64, offset: 256)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2709, file: !38, line: 434, baseType: !2723, size: 64, offset: 320)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!143, !749, !143, !2726}
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2728)
!2728 = !{!2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2727, file: !38, line: 416, baseType: !143, size: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2727, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2727, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2727, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2727, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2727, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2727, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2727, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2709, file: !38, line: 435, baseType: !2738, size: 64, offset: 384)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!143, !749, !2645, !2741}
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2743)
!2743 = !{!2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2742, file: !38, line: 344, baseType: !143, size: 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2742, file: !38, line: 345, baseType: !321, size: 64, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2742, file: !38, line: 346, baseType: !321, size: 64, offset: 128)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2742, file: !38, line: 347, baseType: !321, size: 64, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2742, file: !38, line: 348, baseType: !321, size: 64, offset: 256)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2742, file: !38, line: 349, baseType: !321, size: 64, offset: 320)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2742, file: !38, line: 350, baseType: !321, size: 64, offset: 384)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2742, file: !38, line: 351, baseType: !928, size: 64, offset: 448)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2742, file: !38, line: 353, baseType: !928, size: 64, offset: 512)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2742, file: !38, line: 354, baseType: !143, size: 32, offset: 576)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2742, file: !38, line: 355, baseType: !143, size: 32, offset: 608)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2742, file: !38, line: 356, baseType: !321, size: 64, offset: 640)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2742, file: !38, line: 357, baseType: !321, size: 64, offset: 704)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2742, file: !38, line: 358, baseType: !321, size: 64, offset: 768)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2742, file: !38, line: 359, baseType: !928, size: 64, offset: 832)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2742, file: !38, line: 360, baseType: !143, size: 32, offset: 896)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2709, file: !38, line: 436, baseType: !2761, size: 64, offset: 448)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!143, !749, !2705, !2741}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2709, file: !38, line: 438, baseType: !2738, size: 64, offset: 512)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2709, file: !38, line: 439, baseType: !2766, size: 64, offset: 576)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!143, !749, !2769}
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2771)
!2771 = !{!2772, !2773}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2770, file: !38, line: 410, baseType: !7, size: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2770, file: !38, line: 411, baseType: !2774, size: 1344, offset: 64)
!2774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2775, size: 1344, elements: !438)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2776)
!2776 = !{!2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2787}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2775, file: !38, line: 396, baseType: !7, size: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2775, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2775, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2775, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2775, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2775, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2775, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2775, file: !38, line: 404, baseType: !323, size: 64, offset: 256)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2775, file: !38, line: 405, baseType: !2786, size: 64, offset: 320)
!2786 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !273, line: 126, baseType: !321)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2775, file: !38, line: 406, baseType: !2786, size: 64, offset: 384)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2709, file: !38, line: 440, baseType: !2717, size: 64, offset: 640)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !750, file: !44, line: 1426, baseType: !2790, size: 64, offset: 576)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2792)
!2792 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !750, file: !44, line: 1427, baseType: !293, size: 64, offset: 640)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !750, file: !44, line: 1428, baseType: !293, size: 64, offset: 704)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !750, file: !44, line: 1429, baseType: !293, size: 64, offset: 768)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !750, file: !44, line: 1430, baseType: !543, size: 64, offset: 832)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !750, file: !44, line: 1431, baseType: !918, size: 256, offset: 896)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !750, file: !44, line: 1432, baseType: !143, size: 32, offset: 1152)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !750, file: !44, line: 1433, baseType: !898, size: 32, offset: 1184)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !750, file: !44, line: 1437, baseType: !2801, size: 64, offset: 1216)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2804)
!2804 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !750, file: !44, line: 1449, baseType: !2806, size: 64, offset: 1280)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !559, line: 34, size: 64, elements: !2807)
!2807 = !{!2808}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2806, file: !559, line: 35, baseType: !562, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !750, file: !44, line: 1450, baseType: !272, size: 128, offset: 1344)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !750, file: !44, line: 1451, baseType: !2811, size: 64, offset: 1472)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !750, file: !44, line: 1452, baseType: !2122, size: 64, offset: 1536)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !750, file: !44, line: 1453, baseType: !2815, size: 64, offset: 1600)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !750, file: !44, line: 1454, baseType: !789, size: 128, offset: 1664)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !750, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !750, file: !44, line: 1456, baseType: !2820, size: 2432, offset: 1856)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2821)
!2821 = !{!2822, !2823, !2824, !2826, !2858}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2820, file: !38, line: 519, baseType: !7, size: 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2820, file: !38, line: 520, baseType: !918, size: 256, offset: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2820, file: !38, line: 521, baseType: !2825, size: 192, offset: 320)
!2825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 192, elements: !438)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2820, file: !38, line: 522, baseType: !2827, size: 1728, offset: 512)
!2827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2828, size: 1728, elements: !438)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2829)
!2829 = !{!2830, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2828, file: !38, line: 223, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2833)
!2833 = !{!2834, !2835, !2848, !2849}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2832, file: !38, line: 444, baseType: !143, size: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2832, file: !38, line: 445, baseType: !2836, size: 64, offset: 64)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2838)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2839)
!2839 = !{!2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2838, file: !38, line: 311, baseType: !835, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2838, file: !38, line: 312, baseType: !835, size: 64, offset: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2838, file: !38, line: 313, baseType: !835, size: 64, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2838, file: !38, line: 314, baseType: !835, size: 64, offset: 192)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2838, file: !38, line: 315, baseType: !2630, size: 64, offset: 256)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2838, file: !38, line: 316, baseType: !2630, size: 64, offset: 320)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2838, file: !38, line: 317, baseType: !2630, size: 64, offset: 384)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2838, file: !38, line: 318, baseType: !2702, size: 64, offset: 448)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2832, file: !38, line: 446, baseType: !134, size: 64, offset: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2832, file: !38, line: 447, baseType: !2831, size: 64, offset: 192)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2828, file: !38, line: 224, baseType: !143, size: 32, offset: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2828, file: !38, line: 226, baseType: !272, size: 128, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2828, file: !38, line: 227, baseType: !293, size: 64, offset: 256)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2828, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2828, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2828, file: !38, line: 230, baseType: !2666, size: 64, offset: 384)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2828, file: !38, line: 231, baseType: !2666, size: 64, offset: 448)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2828, file: !38, line: 232, baseType: !141, size: 64, offset: 512)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2820, file: !38, line: 523, baseType: !2859, size: 192, offset: 2240)
!2859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2836, size: 192, elements: !438)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !750, file: !44, line: 1458, baseType: !2861, size: 2112, offset: 4288)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2862)
!2862 = !{!2863, !2864, !2865}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2861, file: !44, line: 1411, baseType: !143, size: 32)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2861, file: !44, line: 1412, baseType: !1625, size: 128, offset: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2861, file: !44, line: 1413, baseType: !2866, size: 1920, offset: 192)
!2866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2867, size: 1920, elements: !438)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2868, line: 12, size: 640, elements: !2869)
!2868 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2869 = !{!2870, !2878, !2879, !2884, !2885}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2867, file: !2868, line: 13, baseType: !2871, size: 320)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2872, line: 17, size: 320, elements: !2873)
!2872 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2873 = !{!2874, !2875, !2876, !2877}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2871, file: !2872, line: 18, baseType: !143, size: 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2871, file: !2872, line: 19, baseType: !143, size: 32, offset: 32)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2871, file: !2872, line: 20, baseType: !1625, size: 128, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2871, file: !2872, line: 22, baseType: !526, size: 128, align: 64, offset: 192)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2867, file: !2868, line: 14, baseType: !251, size: 64, offset: 320)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2867, file: !2868, line: 15, baseType: !2880, size: 64, offset: 384)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2881, line: 16, size: 64, elements: !2882)
!2881 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2882 = !{!2883}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2880, file: !2881, line: 17, baseType: !1363, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2867, file: !2868, line: 16, baseType: !1625, size: 128, offset: 448)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2867, file: !2868, line: 17, baseType: !898, size: 32, offset: 576)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !750, file: !44, line: 1465, baseType: !141, size: 64, offset: 6400)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !750, file: !44, line: 1468, baseType: !152, size: 32, offset: 6464)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !750, file: !44, line: 1470, baseType: !689, size: 64, offset: 6528)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !750, file: !44, line: 1471, baseType: !689, size: 64, offset: 6592)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !750, file: !44, line: 1473, baseType: !154, size: 32, offset: 6656)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !750, file: !44, line: 1474, baseType: !2892, size: 64, offset: 6720)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !750, file: !44, line: 1477, baseType: !2895, size: 256, offset: 6784)
!2895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 256, elements: !2426)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !750, file: !44, line: 1478, baseType: !2897, size: 128, offset: 7040)
!2897 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2898, line: 18, baseType: !2899)
!2898 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2898, line: 16, size: 128, elements: !2900)
!2900 = !{!2901}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2899, file: !2898, line: 17, baseType: !2902, size: 128)
!2902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 128, elements: !156)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !750, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !750, file: !44, line: 1481, baseType: !2905, size: 32, offset: 7200)
!2905 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !273, line: 150, baseType: !7)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !750, file: !44, line: 1487, baseType: !1320, size: 192, offset: 7232)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !750, file: !44, line: 1493, baseType: !197, size: 64, offset: 7424)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !750, file: !44, line: 1495, baseType: !2909, size: 64, offset: 7488)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2911)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !541, line: 135, size: 1024, align: 512, elements: !2912)
!2912 = !{!2913, !2917, !2918, !2925, !2931, !2935, !2939, !2943, !2944, !2948, !2952, !2957, !2961}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2911, file: !541, line: 136, baseType: !2914, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!143, !543, !7}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2911, file: !541, line: 137, baseType: !2914, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2911, file: !541, line: 138, baseType: !2919, size: 64, offset: 128)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!143, !2922, !2924}
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2911, file: !541, line: 139, baseType: !2926, size: 64, offset: 192)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!143, !2922, !7, !197, !2929}
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !567)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2911, file: !541, line: 141, baseType: !2932, size: 64, offset: 256)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!143, !2922}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2911, file: !541, line: 142, baseType: !2936, size: 64, offset: 320)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!143, !543}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2911, file: !541, line: 143, baseType: !2940, size: 64, offset: 384)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{null, !543}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2911, file: !541, line: 144, baseType: !2940, size: 64, offset: 448)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2911, file: !541, line: 145, baseType: !2945, size: 64, offset: 512)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{null, !543, !582}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2911, file: !541, line: 146, baseType: !2949, size: 64, offset: 576)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!214, !543, !214, !143}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2911, file: !541, line: 147, baseType: !2953, size: 64, offset: 640)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!539, !2956}
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2911, file: !541, line: 148, baseType: !2958, size: 64, offset: 704)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!143, !699, !640}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2911, file: !541, line: 149, baseType: !2962, size: 64, offset: 768)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!543, !543, !2965}
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !750, file: !44, line: 1500, baseType: !143, size: 32, offset: 7552)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !750, file: !44, line: 1502, baseType: !2969, size: 448, offset: 7616)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2614, line: 60, size: 448, elements: !2970)
!2970 = !{!2971, !2976, !2977, !2978, !2979, !2980, !2981}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2969, file: !2614, line: 61, baseType: !2972, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!293, !2975, !2612}
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2969, file: !2614, line: 63, baseType: !2972, size: 64, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2969, file: !2614, line: 66, baseType: !472, size: 64, offset: 128)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2969, file: !2614, line: 67, baseType: !143, size: 32, offset: 192)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2969, file: !2614, line: 68, baseType: !7, size: 32, offset: 224)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2969, file: !2614, line: 71, baseType: !272, size: 128, offset: 256)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2969, file: !2614, line: 77, baseType: !2982, size: 64, offset: 384)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !750, file: !44, line: 1505, baseType: !922, size: 64, offset: 8064)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !750, file: !44, line: 1508, baseType: !922, size: 64, offset: 8128)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !750, file: !44, line: 1511, baseType: !143, size: 32, offset: 8192)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !750, file: !44, line: 1514, baseType: !1058, size: 32, offset: 8224)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !750, file: !44, line: 1517, baseType: !2988, size: 64, offset: 8256)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2157, line: 18, flags: DIFlagFwdDecl)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !750, file: !44, line: 1518, baseType: !785, size: 64, offset: 8320)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !750, file: !44, line: 1525, baseType: !1661, size: 64, offset: 8384)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !750, file: !44, line: 1532, baseType: !2993, size: 64, offset: 8448)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2994, line: 52, size: 64, elements: !2995)
!2994 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2995 = !{!2996}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2993, file: !2994, line: 53, baseType: !2997, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2994, line: 40, size: 256, elements: !2999)
!2999 = !{!3000, !3001, !3006}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2998, file: !2994, line: 42, baseType: !397)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2998, file: !2994, line: 44, baseType: !3002, size: 192)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2994, line: 28, size: 192, elements: !3003)
!3003 = !{!3004, !3005}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3002, file: !2994, line: 29, baseType: !272, size: 128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3002, file: !2994, line: 31, baseType: !472, size: 64, offset: 128)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2998, file: !2994, line: 49, baseType: !472, size: 64, offset: 192)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !750, file: !44, line: 1533, baseType: !2993, size: 64, offset: 8512)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !750, file: !44, line: 1534, baseType: !526, size: 128, align: 64, offset: 8576)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !750, file: !44, line: 1535, baseType: !2156, size: 256, offset: 8704)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !750, file: !44, line: 1537, baseType: !1320, size: 192, offset: 8960)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !750, file: !44, line: 1542, baseType: !143, size: 32, offset: 9152)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !750, file: !44, line: 1545, baseType: !397, offset: 9184)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !750, file: !44, line: 1546, baseType: !272, size: 128, offset: 9216)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !750, file: !44, line: 1548, baseType: !397, offset: 9344)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !750, file: !44, line: 1549, baseType: !272, size: 128, offset: 9344)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !583, file: !44, line: 624, baseType: !884, size: 64, offset: 256)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !583, file: !44, line: 631, baseType: !293, size: 64, offset: 320)
!3018 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !44, line: 639, baseType: !3019, size: 32, offset: 384)
!3019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !44, line: 639, size: 32, elements: !3020)
!3020 = !{!3021, !3023}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3019, file: !44, line: 640, baseType: !3022, size: 32)
!3022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3019, file: !44, line: 641, baseType: !7, size: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !583, file: !44, line: 643, baseType: !663, size: 32, offset: 416)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !583, file: !44, line: 644, baseType: !681, size: 64, offset: 448)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !583, file: !44, line: 645, baseType: !685, size: 128, offset: 512)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !583, file: !44, line: 646, baseType: !685, size: 128, offset: 640)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !583, file: !44, line: 647, baseType: !685, size: 128, offset: 768)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !583, file: !44, line: 648, baseType: !397, offset: 896)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !583, file: !44, line: 649, baseType: !223, size: 16, offset: 896)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !583, file: !44, line: 650, baseType: !229, size: 8, offset: 912)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !583, file: !44, line: 651, baseType: !229, size: 8, offset: 920)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !583, file: !44, line: 652, baseType: !2786, size: 64, offset: 960)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !583, file: !44, line: 659, baseType: !293, size: 64, offset: 1024)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !583, file: !44, line: 660, baseType: !918, size: 256, offset: 1088)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !583, file: !44, line: 662, baseType: !293, size: 64, offset: 1344)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !583, file: !44, line: 663, baseType: !293, size: 64, offset: 1408)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !583, file: !44, line: 665, baseType: !789, size: 128, offset: 1472)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !583, file: !44, line: 666, baseType: !272, size: 128, offset: 1600)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !583, file: !44, line: 675, baseType: !272, size: 128, offset: 1728)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !583, file: !44, line: 676, baseType: !272, size: 128, offset: 1856)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !583, file: !44, line: 677, baseType: !272, size: 128, offset: 1984)
!3043 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !44, line: 678, baseType: !3044, size: 128, offset: 2112)
!3044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !44, line: 678, size: 128, elements: !3045)
!3045 = !{!3046, !3047}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3044, file: !44, line: 679, baseType: !785, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3044, file: !44, line: 680, baseType: !526, size: 128, align: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !583, file: !44, line: 682, baseType: !924, size: 64, offset: 2240)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !583, file: !44, line: 683, baseType: !924, size: 64, offset: 2304)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !583, file: !44, line: 684, baseType: !898, size: 32, offset: 2368)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !583, file: !44, line: 685, baseType: !898, size: 32, offset: 2400)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !583, file: !44, line: 686, baseType: !898, size: 32, offset: 2432)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !583, file: !44, line: 688, baseType: !898, size: 32, offset: 2464)
!3054 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !44, line: 690, baseType: !3055, size: 64, offset: 2496)
!3055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !44, line: 690, size: 64, elements: !3056)
!3056 = !{!3057, !3280}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3055, file: !44, line: 691, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3060)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !3061)
!3061 = !{!3062, !3063, !3067, !3072, !3076, !3077, !3078, !3082, !3095, !3096, !3104, !3108, !3109, !3113, !3114, !3118, !3123, !3124, !3128, !3132, !3240, !3244, !3245, !3249, !3250, !3254, !3258, !3263, !3267, !3271, !3275, !3279}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3060, file: !44, line: 1823, baseType: !134, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3060, file: !44, line: 1824, baseType: !3064, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!681, !513, !681, !143}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3060, file: !44, line: 1825, baseType: !3068, size: 64, offset: 128)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!468, !513, !214, !483, !3071}
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3060, file: !44, line: 1826, baseType: !3073, size: 64, offset: 192)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!468, !513, !197, !483, !3071}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3060, file: !44, line: 1827, baseType: !995, size: 64, offset: 256)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3060, file: !44, line: 1828, baseType: !995, size: 64, offset: 320)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3060, file: !44, line: 1829, baseType: !3079, size: 64, offset: 384)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!143, !998, !640}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3060, file: !44, line: 1830, baseType: !3083, size: 64, offset: 448)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!143, !513, !3086}
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !3088)
!3088 = !{!3089, !3094}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3087, file: !44, line: 1777, baseType: !3090, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !3091)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!143, !3086, !197, !143, !681, !321, !7}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3087, file: !44, line: 1778, baseType: !681, size: 64, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3060, file: !44, line: 1831, baseType: !3083, size: 64, offset: 512)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3060, file: !44, line: 1832, baseType: !3097, size: 64, offset: 576)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!3100, !513, !3102}
!3100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3101, line: 52, baseType: !7)
!3101 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !769, line: 27, flags: DIFlagFwdDecl)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3060, file: !44, line: 1833, baseType: !3105, size: 64, offset: 640)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!472, !513, !7, !293}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3060, file: !44, line: 1834, baseType: !3105, size: 64, offset: 704)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3060, file: !44, line: 1835, baseType: !3110, size: 64, offset: 768)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!143, !513, !1130}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3060, file: !44, line: 1836, baseType: !293, size: 64, offset: 832)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3060, file: !44, line: 1837, baseType: !3115, size: 64, offset: 896)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!143, !582, !513}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3060, file: !44, line: 1838, baseType: !3119, size: 64, offset: 960)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!143, !513, !3122}
!3122 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !141)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3060, file: !44, line: 1839, baseType: !3115, size: 64, offset: 1024)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3060, file: !44, line: 1840, baseType: !3125, size: 64, offset: 1088)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!143, !513, !681, !681, !143}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3060, file: !44, line: 1841, baseType: !3129, size: 64, offset: 1152)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!143, !143, !513, !143}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3060, file: !44, line: 1842, baseType: !3133, size: 64, offset: 1216)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!143, !513, !143, !3136}
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !3138)
!3138 = !{!3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3170, !3171, !3172, !3185, !3216}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3137, file: !44, line: 1063, baseType: !3136, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3137, file: !44, line: 1064, baseType: !272, size: 128, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3137, file: !44, line: 1065, baseType: !789, size: 128, offset: 192)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3137, file: !44, line: 1066, baseType: !272, size: 128, offset: 320)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3137, file: !44, line: 1069, baseType: !272, size: 128, offset: 448)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3137, file: !44, line: 1072, baseType: !3122, size: 64, offset: 576)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3137, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3137, file: !44, line: 1074, baseType: !231, size: 8, offset: 672)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3137, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3137, file: !44, line: 1076, baseType: !143, size: 32, offset: 736)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3137, file: !44, line: 1077, baseType: !1625, size: 128, offset: 768)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3137, file: !44, line: 1078, baseType: !513, size: 64, offset: 896)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3137, file: !44, line: 1079, baseType: !681, size: 64, offset: 960)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3137, file: !44, line: 1080, baseType: !681, size: 64, offset: 1024)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3137, file: !44, line: 1082, baseType: !3154, size: 64, offset: 1088)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !3156)
!3156 = !{!3157, !3165, !3166, !3167, !3168, !3169}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3155, file: !44, line: 1315, baseType: !3158)
!3158 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3159, line: 20, baseType: !3160)
!3159 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3159, line: 11, elements: !3161)
!3161 = !{!3162}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3160, file: !3159, line: 12, baseType: !3163)
!3163 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !409, line: 33, baseType: !3164)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 31, elements: !411)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3155, file: !44, line: 1316, baseType: !143, size: 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3155, file: !44, line: 1317, baseType: !143, size: 32, offset: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3155, file: !44, line: 1318, baseType: !3154, size: 64, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3155, file: !44, line: 1319, baseType: !513, size: 64, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3155, file: !44, line: 1320, baseType: !526, size: 128, align: 64, offset: 192)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3137, file: !44, line: 1084, baseType: !293, size: 64, offset: 1152)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3137, file: !44, line: 1085, baseType: !293, size: 64, offset: 1216)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3137, file: !44, line: 1087, baseType: !3173, size: 64, offset: 1280)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3175)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3176)
!3176 = !{!3177, !3181}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3175, file: !44, line: 1012, baseType: !3178, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{null, !3136, !3136}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3175, file: !44, line: 1013, baseType: !3182, size: 64, offset: 64)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{null, !3136}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3137, file: !44, line: 1088, baseType: !3186, size: 64, offset: 1344)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3188)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3189)
!3189 = !{!3190, !3194, !3198, !3199, !3203, !3207, !3211, !3215}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3188, file: !44, line: 1017, baseType: !3191, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!3122, !3122}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3188, file: !44, line: 1018, baseType: !3195, size: 64, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{null, !3122}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3188, file: !44, line: 1019, baseType: !3182, size: 64, offset: 128)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3188, file: !44, line: 1020, baseType: !3200, size: 64, offset: 192)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!143, !3136, !143}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3188, file: !44, line: 1021, baseType: !3204, size: 64, offset: 256)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!640, !3136}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3188, file: !44, line: 1022, baseType: !3208, size: 64, offset: 320)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!143, !3136, !143, !276}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3188, file: !44, line: 1023, baseType: !3212, size: 64, offset: 384)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{null, !3136, !972}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3188, file: !44, line: 1024, baseType: !3204, size: 64, offset: 448)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3137, file: !44, line: 1097, baseType: !3217, size: 256, offset: 1408)
!3217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3137, file: !44, line: 1089, size: 256, elements: !3218)
!3218 = !{!3219, !3228, !3234}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3217, file: !44, line: 1090, baseType: !3220, size: 256)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3221, line: 10, size: 256, elements: !3222)
!3221 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3222 = !{!3223, !3224, !3227}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3220, file: !3221, line: 11, baseType: !152, size: 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3220, file: !3221, line: 12, baseType: !3225, size: 64, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3221, line: 5, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3220, file: !3221, line: 13, baseType: !272, size: 128, offset: 128)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3217, file: !44, line: 1091, baseType: !3229, size: 64)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3221, line: 17, size: 64, elements: !3230)
!3230 = !{!3231}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3229, file: !3221, line: 18, baseType: !3232, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3221, line: 16, flags: DIFlagFwdDecl)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3217, file: !44, line: 1096, baseType: !3235, size: 192)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3217, file: !44, line: 1092, size: 192, elements: !3236)
!3236 = !{!3237, !3238, !3239}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3235, file: !44, line: 1093, baseType: !272, size: 128)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3235, file: !44, line: 1094, baseType: !143, size: 32, offset: 128)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3235, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3060, file: !44, line: 1843, baseType: !3241, size: 64, offset: 1280)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!468, !513, !871, !143, !483, !3071, !143}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3060, file: !44, line: 1844, baseType: !1250, size: 64, offset: 1344)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3060, file: !44, line: 1845, baseType: !3246, size: 64, offset: 1408)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!143, !143}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3060, file: !44, line: 1846, baseType: !3133, size: 64, offset: 1472)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3060, file: !44, line: 1847, baseType: !3251, size: 64, offset: 1536)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!468, !2297, !513, !3071, !483, !7}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3060, file: !44, line: 1848, baseType: !3255, size: 64, offset: 1600)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!468, !513, !3071, !2297, !483, !7}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3060, file: !44, line: 1849, baseType: !3259, size: 64, offset: 1664)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!143, !513, !472, !3262, !972}
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3060, file: !44, line: 1850, baseType: !3264, size: 64, offset: 1728)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!472, !513, !143, !681, !681}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3060, file: !44, line: 1852, baseType: !3268, size: 64, offset: 1792)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{null, !861, !513}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3060, file: !44, line: 1856, baseType: !3272, size: 64, offset: 1856)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!468, !513, !681, !513, !681, !483, !7}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3060, file: !44, line: 1858, baseType: !3276, size: 64, offset: 1920)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!681, !513, !681, !513, !681, !681, !7}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3060, file: !44, line: 1861, baseType: !3125, size: 64, offset: 1984)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3055, file: !44, line: 692, baseType: !814, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !583, file: !44, line: 694, baseType: !3282, size: 64, offset: 2560)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3284)
!3284 = !{!3285, !3286, !3287, !3288}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3283, file: !44, line: 1101, baseType: !397)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3283, file: !44, line: 1102, baseType: !272, size: 128)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3283, file: !44, line: 1103, baseType: !272, size: 128, offset: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3283, file: !44, line: 1104, baseType: !272, size: 128, offset: 256)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !583, file: !44, line: 695, baseType: !885, size: 1216, align: 64, offset: 2624)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !583, file: !44, line: 696, baseType: !272, size: 128, offset: 3840)
!3291 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !44, line: 697, baseType: !3292, size: 64, offset: 3968)
!3292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !44, line: 697, size: 64, elements: !3293)
!3293 = !{!3294, !3295, !3296, !3299, !3300}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3292, file: !44, line: 698, baseType: !2297, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3292, file: !44, line: 699, baseType: !2811, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3292, file: !44, line: 700, baseType: !3297, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3292, file: !44, line: 701, baseType: !214, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3292, file: !44, line: 702, baseType: !7, size: 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !583, file: !44, line: 705, baseType: !154, size: 32, offset: 4032)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !583, file: !44, line: 708, baseType: !154, size: 32, offset: 4064)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !583, file: !44, line: 709, baseType: !2892, size: 64, offset: 4096)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !583, file: !44, line: 720, baseType: !141, size: 64, offset: 4160)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !544, file: !541, line: 98, baseType: !3306, size: 256, offset: 448)
!3306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 256, elements: !2426)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !544, file: !541, line: 101, baseType: !3308, size: 32, offset: 704)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3309, line: 25, size: 32, elements: !3310)
!3309 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3310 = !{!3311}
!3311 = !DIDerivedType(tag: DW_TAG_member, scope: !3308, file: !3309, line: 26, baseType: !3312, size: 32)
!3312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3308, file: !3309, line: 26, size: 32, elements: !3313)
!3313 = !{!3314}
!3314 = !DIDerivedType(tag: DW_TAG_member, scope: !3312, file: !3309, line: 30, baseType: !3315, size: 32)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3312, file: !3309, line: 30, size: 32, elements: !3316)
!3316 = !{!3317, !3318}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3315, file: !3309, line: 31, baseType: !397)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3315, file: !3309, line: 32, baseType: !143, size: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !544, file: !541, line: 102, baseType: !2909, size: 64, offset: 768)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !544, file: !541, line: 103, baseType: !749, size: 64, offset: 832)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !544, file: !541, line: 104, baseType: !293, size: 64, offset: 896)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !544, file: !541, line: 105, baseType: !141, size: 64, offset: 960)
!3323 = !DIDerivedType(tag: DW_TAG_member, scope: !544, file: !541, line: 107, baseType: !3324, size: 128, offset: 1024)
!3324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !544, file: !541, line: 107, size: 128, elements: !3325)
!3325 = !{!3326, !3327}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3324, file: !541, line: 108, baseType: !272, size: 128)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3324, file: !541, line: 109, baseType: !3328, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !544, file: !541, line: 111, baseType: !272, size: 128, offset: 1152)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !544, file: !541, line: 112, baseType: !272, size: 128, offset: 1280)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !544, file: !541, line: 120, baseType: !3332, size: 128, offset: 1408)
!3332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !544, file: !541, line: 116, size: 128, elements: !3333)
!3333 = !{!3334, !3335, !3336}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3332, file: !541, line: 117, baseType: !789, size: 128)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3332, file: !541, line: 118, baseType: !558, size: 128)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3332, file: !541, line: 119, baseType: !526, size: 128, align: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !514, file: !44, line: 922, baseType: !582, size: 64, offset: 256)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !514, file: !44, line: 923, baseType: !3058, size: 64, offset: 320)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !514, file: !44, line: 929, baseType: !397, offset: 384)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !514, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !514, file: !44, line: 931, baseType: !922, size: 64, offset: 448)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !514, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !514, file: !44, line: 933, baseType: !2905, size: 32, offset: 544)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !514, file: !44, line: 934, baseType: !1320, size: 192, offset: 576)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !514, file: !44, line: 935, baseType: !681, size: 64, offset: 768)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !514, file: !44, line: 936, baseType: !3347, size: 192, offset: 832)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3348)
!3348 = !{!3349, !3350, !3351, !3352, !3353, !3354}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3347, file: !44, line: 886, baseType: !3158)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3347, file: !44, line: 887, baseType: !1615, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3347, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3347, file: !44, line: 889, baseType: !588, size: 32, offset: 96)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3347, file: !44, line: 889, baseType: !588, size: 32, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3347, file: !44, line: 890, baseType: !143, size: 32, offset: 160)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !514, file: !44, line: 937, baseType: !1728, size: 64, offset: 1024)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !514, file: !44, line: 938, baseType: !3357, size: 256, offset: 1088)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3358)
!3358 = !{!3359, !3360, !3361, !3362, !3363, !3364}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3357, file: !44, line: 897, baseType: !293, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3357, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3357, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3357, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3357, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3357, file: !44, line: 904, baseType: !681, size: 64, offset: 192)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !514, file: !44, line: 940, baseType: !321, size: 64, offset: 1344)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !514, file: !44, line: 945, baseType: !141, size: 64, offset: 1408)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !514, file: !44, line: 949, baseType: !272, size: 128, offset: 1472)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !514, file: !44, line: 950, baseType: !272, size: 128, offset: 1600)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !514, file: !44, line: 952, baseType: !884, size: 64, offset: 1728)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !514, file: !44, line: 953, baseType: !1058, size: 32, offset: 1792)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !514, file: !44, line: 954, baseType: !1058, size: 32, offset: 1824)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !504, file: !462, line: 174, baseType: !510, size: 64, offset: 320)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !504, file: !462, line: 176, baseType: !3374, size: 64, offset: 384)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!143, !513, !390, !503, !1130}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !492, file: !462, line: 90, baseType: !487, size: 64, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !492, file: !462, line: 91, baseType: !3379, size: 64, offset: 256)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !452, file: !385, line: 143, baseType: !3381, size: 64, offset: 256)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!3384, !390}
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3386)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3387)
!3387 = !{!3388, !3389, !3393, !3397, !3403, !3407}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3386, file: !61, line: 40, baseType: !60, size: 32)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3386, file: !61, line: 41, baseType: !3390, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!640}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3386, file: !61, line: 42, baseType: !3394, size: 64, offset: 128)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{!141}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3386, file: !61, line: 43, baseType: !3398, size: 64, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!2325, !3401}
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3386, file: !61, line: 44, baseType: !3404, size: 64, offset: 256)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!2325}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3386, file: !61, line: 45, baseType: !216, size: 64, offset: 320)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !452, file: !385, line: 144, baseType: !3409, size: 64, offset: 320)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!2325, !390}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !452, file: !385, line: 145, baseType: !3413, size: 64, offset: 384)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{null, !390, !3416, !3417}
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !384, file: !385, line: 70, baseType: !3419, size: 64, offset: 384)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !769, line: 123, size: 1024, elements: !3421)
!3421 = !{!3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3544, !3545, !3546, !3547, !3548}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3420, file: !769, line: 124, baseType: !898, size: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3420, file: !769, line: 125, baseType: !898, size: 32, offset: 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3420, file: !769, line: 135, baseType: !3419, size: 64, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3420, file: !769, line: 136, baseType: !197, size: 64, offset: 128)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3420, file: !769, line: 138, baseType: !911, size: 192, align: 64, offset: 192)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3420, file: !769, line: 140, baseType: !2325, size: 64, offset: 384)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3420, file: !769, line: 141, baseType: !7, size: 32, offset: 448)
!3429 = !DIDerivedType(tag: DW_TAG_member, scope: !3420, file: !769, line: 142, baseType: !3430, size: 256, offset: 512)
!3430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3420, file: !769, line: 142, size: 256, elements: !3431)
!3431 = !{!3432, !3472, !3476}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3430, file: !769, line: 143, baseType: !3433, size: 192)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !769, line: 91, size: 192, elements: !3434)
!3434 = !{!3435, !3436, !3437}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3433, file: !769, line: 92, baseType: !293, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3433, file: !769, line: 94, baseType: !907, size: 64, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3433, file: !769, line: 100, baseType: !3438, size: 64, offset: 128)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !769, line: 180, size: 704, elements: !3440)
!3440 = !{!3441, !3442, !3443, !3444, !3445, !3446, !3470, !3471}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3439, file: !769, line: 182, baseType: !3419, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3439, file: !769, line: 183, baseType: !7, size: 32, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3439, file: !769, line: 186, baseType: !1648, size: 192, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3439, file: !769, line: 187, baseType: !152, size: 32, offset: 320)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3439, file: !769, line: 188, baseType: !152, size: 32, offset: 352)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3439, file: !769, line: 189, baseType: !3447, size: 64, offset: 384)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !769, line: 168, size: 320, elements: !3449)
!3449 = !{!3450, !3454, !3458, !3462, !3466}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3448, file: !769, line: 169, baseType: !3451, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!143, !861, !3438}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3448, file: !769, line: 171, baseType: !3455, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!143, !3419, !197, !478}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3448, file: !769, line: 173, baseType: !3459, size: 64, offset: 128)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!143, !3419}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3448, file: !769, line: 174, baseType: !3463, size: 64, offset: 192)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!143, !3419, !3419, !197}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3448, file: !769, line: 176, baseType: !3467, size: 64, offset: 256)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!143, !861, !3419, !3438}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3439, file: !769, line: 192, baseType: !272, size: 128, offset: 448)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3439, file: !769, line: 194, baseType: !1625, size: 128, offset: 576)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3430, file: !769, line: 144, baseType: !3473, size: 64)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !769, line: 103, size: 64, elements: !3474)
!3474 = !{!3475}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3473, file: !769, line: 104, baseType: !3419, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3430, file: !769, line: 145, baseType: !3477, size: 256)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !769, line: 107, size: 256, elements: !3478)
!3478 = !{!3479, !3539, !3542, !3543}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3477, file: !769, line: 108, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3482)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !769, line: 217, size: 768, elements: !3483)
!3483 = !{!3484, !3504, !3508, !3512, !3516, !3520, !3524, !3528, !3529, !3530, !3531, !3535}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3482, file: !769, line: 222, baseType: !3485, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!143, !3488}
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !769, line: 197, size: 1088, elements: !3490)
!3490 = !{!3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3489, file: !769, line: 199, baseType: !3419, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3489, file: !769, line: 200, baseType: !513, size: 64, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3489, file: !769, line: 201, baseType: !861, size: 64, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3489, file: !769, line: 202, baseType: !141, size: 64, offset: 192)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3489, file: !769, line: 205, baseType: !1320, size: 192, offset: 256)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3489, file: !769, line: 206, baseType: !1320, size: 192, offset: 448)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3489, file: !769, line: 207, baseType: !143, size: 32, offset: 640)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3489, file: !769, line: 208, baseType: !272, size: 128, offset: 704)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3489, file: !769, line: 209, baseType: !214, size: 64, offset: 832)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3489, file: !769, line: 211, baseType: !483, size: 64, offset: 896)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3489, file: !769, line: 212, baseType: !640, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3489, file: !769, line: 213, baseType: !640, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3489, file: !769, line: 214, baseType: !1158, size: 64, offset: 1024)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3482, file: !769, line: 223, baseType: !3505, size: 64, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{null, !3488}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3482, file: !769, line: 236, baseType: !3509, size: 64, offset: 128)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!143, !861, !141}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3482, file: !769, line: 238, baseType: !3513, size: 64, offset: 192)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!141, !861, !3071}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3482, file: !769, line: 239, baseType: !3517, size: 64, offset: 256)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!141, !861, !141, !3071}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3482, file: !769, line: 240, baseType: !3521, size: 64, offset: 320)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{null, !861, !141}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3482, file: !769, line: 242, baseType: !3525, size: 64, offset: 384)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!468, !3488, !214, !483, !681}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3482, file: !769, line: 252, baseType: !483, size: 64, offset: 448)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3482, file: !769, line: 259, baseType: !640, size: 8, offset: 512)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3482, file: !769, line: 260, baseType: !3525, size: 64, offset: 576)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3482, file: !769, line: 263, baseType: !3532, size: 64, offset: 640)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!3100, !3488, !3102}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3482, file: !769, line: 266, baseType: !3536, size: 64, offset: 704)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!143, !3488, !1130}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3477, file: !769, line: 109, baseType: !3540, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !769, line: 31, flags: DIFlagFwdDecl)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3477, file: !769, line: 110, baseType: !681, size: 64, offset: 128)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3477, file: !769, line: 111, baseType: !3419, size: 64, offset: 192)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3420, file: !769, line: 148, baseType: !141, size: 64, offset: 768)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3420, file: !769, line: 154, baseType: !321, size: 64, offset: 832)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3420, file: !769, line: 156, baseType: !223, size: 16, offset: 896)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3420, file: !769, line: 157, baseType: !478, size: 16, offset: 912)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3420, file: !769, line: 158, baseType: !3549, size: 64, offset: 960)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !769, line: 32, flags: DIFlagFwdDecl)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !384, file: !385, line: 71, baseType: !1643, size: 32, offset: 448)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !384, file: !385, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !384, file: !385, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !384, file: !385, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !384, file: !385, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !384, file: !385, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !381, file: !73, line: 463, baseType: !380, size: 64, offset: 512)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !381, file: !73, line: 465, baseType: !3559, size: 64, offset: 576)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !381, file: !73, line: 467, baseType: !197, size: 64, offset: 640)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !381, file: !73, line: 468, baseType: !3563, size: 64, offset: 704)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3565)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3566)
!3566 = !{!3567, !3568, !3569, !3573, !3578, !3582}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3565, file: !73, line: 88, baseType: !197, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3565, file: !73, line: 89, baseType: !489, size: 64, offset: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3565, file: !73, line: 90, baseType: !3570, size: 64, offset: 128)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!143, !380, !433}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3565, file: !73, line: 91, baseType: !3574, size: 64, offset: 192)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!214, !380, !3577, !3416, !3417}
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3565, file: !73, line: 93, baseType: !3579, size: 64, offset: 256)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{null, !380}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3565, file: !73, line: 95, baseType: !3583, size: 64, offset: 320)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3585)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3586)
!3586 = !{!3587, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3585, file: !80, line: 279, baseType: !3588, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!143, !380}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3585, file: !80, line: 280, baseType: !3579, size: 64, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3585, file: !80, line: 281, baseType: !3588, size: 64, offset: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3585, file: !80, line: 282, baseType: !3588, size: 64, offset: 192)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3585, file: !80, line: 283, baseType: !3588, size: 64, offset: 256)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3585, file: !80, line: 284, baseType: !3588, size: 64, offset: 320)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3585, file: !80, line: 285, baseType: !3588, size: 64, offset: 384)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3585, file: !80, line: 286, baseType: !3588, size: 64, offset: 448)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3585, file: !80, line: 287, baseType: !3588, size: 64, offset: 512)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3585, file: !80, line: 288, baseType: !3588, size: 64, offset: 576)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3585, file: !80, line: 289, baseType: !3588, size: 64, offset: 640)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3585, file: !80, line: 290, baseType: !3588, size: 64, offset: 704)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3585, file: !80, line: 291, baseType: !3588, size: 64, offset: 768)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3585, file: !80, line: 292, baseType: !3588, size: 64, offset: 832)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3585, file: !80, line: 293, baseType: !3588, size: 64, offset: 896)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3585, file: !80, line: 294, baseType: !3588, size: 64, offset: 960)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3585, file: !80, line: 295, baseType: !3588, size: 64, offset: 1024)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3585, file: !80, line: 296, baseType: !3588, size: 64, offset: 1088)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3585, file: !80, line: 297, baseType: !3588, size: 64, offset: 1152)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3585, file: !80, line: 298, baseType: !3588, size: 64, offset: 1216)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3585, file: !80, line: 299, baseType: !3588, size: 64, offset: 1280)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3585, file: !80, line: 300, baseType: !3588, size: 64, offset: 1344)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3585, file: !80, line: 301, baseType: !3588, size: 64, offset: 1408)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !381, file: !73, line: 470, baseType: !3614, size: 64, offset: 768)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3616, line: 82, size: 1408, elements: !3617)
!3616 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3617 = !{!3618, !3619, !3620, !3621, !3622, !3623, !3624, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3697, !3700, !3701}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3615, file: !3616, line: 83, baseType: !197, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3615, file: !3616, line: 84, baseType: !197, size: 64, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3615, file: !3616, line: 85, baseType: !380, size: 64, offset: 128)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3615, file: !3616, line: 86, baseType: !489, size: 64, offset: 192)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3615, file: !3616, line: 87, baseType: !489, size: 64, offset: 256)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3615, file: !3616, line: 88, baseType: !489, size: 64, offset: 320)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3615, file: !3616, line: 90, baseType: !3625, size: 64, offset: 384)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!143, !380, !3628}
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3630)
!3630 = !{!3631, !3632, !3633, !3634, !3635, !3636, !3637, !3649, !3661, !3662, !3663, !3664, !3665, !3673, !3674, !3675, !3676, !3677, !3678}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3629, file: !67, line: 96, baseType: !197, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3629, file: !67, line: 97, baseType: !3614, size: 64, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3629, file: !67, line: 99, baseType: !134, size: 64, offset: 128)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3629, file: !67, line: 100, baseType: !197, size: 64, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3629, file: !67, line: 102, baseType: !640, size: 8, offset: 256)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3629, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3629, file: !67, line: 105, baseType: !3638, size: 64, offset: 320)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3640)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !283, line: 262, size: 1600, elements: !3641)
!3641 = !{!3642, !3643, !3644, !3648}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3640, file: !283, line: 263, baseType: !2895, size: 256)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3640, file: !283, line: 264, baseType: !2895, size: 256, offset: 256)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3640, file: !283, line: 265, baseType: !3645, size: 1024, offset: 512)
!3645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 1024, elements: !3646)
!3646 = !{!3647}
!3647 = !DISubrange(count: 128)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3640, file: !283, line: 266, baseType: !2325, size: 64, offset: 1536)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3629, file: !67, line: 106, baseType: !3650, size: 64, offset: 384)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3652)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !283, line: 210, size: 256, elements: !3653)
!3653 = !{!3654, !3658, !3659, !3660}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3652, file: !283, line: 211, baseType: !3655, size: 72)
!3655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 72, elements: !3656)
!3656 = !{!3657}
!3657 = !DISubrange(count: 9)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3652, file: !283, line: 212, baseType: !292, size: 64, offset: 128)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3652, file: !283, line: 213, baseType: !154, size: 32, offset: 192)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3652, file: !283, line: 214, baseType: !154, size: 32, offset: 224)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3629, file: !67, line: 108, baseType: !3588, size: 64, offset: 448)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3629, file: !67, line: 109, baseType: !3579, size: 64, offset: 512)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3629, file: !67, line: 110, baseType: !3588, size: 64, offset: 576)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3629, file: !67, line: 111, baseType: !3579, size: 64, offset: 640)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3629, file: !67, line: 112, baseType: !3666, size: 64, offset: 704)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!143, !380, !3669}
!3669 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3670)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3671)
!3671 = !{!3672}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3670, file: !80, line: 51, baseType: !143, size: 32)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3629, file: !67, line: 113, baseType: !3588, size: 64, offset: 768)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3629, file: !67, line: 114, baseType: !489, size: 64, offset: 832)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3629, file: !67, line: 115, baseType: !489, size: 64, offset: 896)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3629, file: !67, line: 117, baseType: !3583, size: 64, offset: 960)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3629, file: !67, line: 118, baseType: !3579, size: 64, offset: 1024)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3629, file: !67, line: 120, baseType: !3679, size: 64, offset: 1088)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3615, file: !3616, line: 91, baseType: !3570, size: 64, offset: 448)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3615, file: !3616, line: 92, baseType: !3588, size: 64, offset: 512)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3615, file: !3616, line: 93, baseType: !3579, size: 64, offset: 576)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3615, file: !3616, line: 94, baseType: !3588, size: 64, offset: 640)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3615, file: !3616, line: 95, baseType: !3579, size: 64, offset: 704)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3615, file: !3616, line: 97, baseType: !3588, size: 64, offset: 768)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3615, file: !3616, line: 98, baseType: !3588, size: 64, offset: 832)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3615, file: !3616, line: 100, baseType: !3666, size: 64, offset: 896)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3615, file: !3616, line: 101, baseType: !3588, size: 64, offset: 960)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3615, file: !3616, line: 103, baseType: !3588, size: 64, offset: 1024)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3615, file: !3616, line: 105, baseType: !3588, size: 64, offset: 1088)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3615, file: !3616, line: 107, baseType: !3583, size: 64, offset: 1152)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3615, file: !3616, line: 109, baseType: !3694, size: 64, offset: 1216)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3696)
!3696 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3616, line: 109, flags: DIFlagFwdDecl)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3615, file: !3616, line: 111, baseType: !3698, size: 64, offset: 1280)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3616, line: 111, flags: DIFlagFwdDecl)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3615, file: !3616, line: 112, baseType: !795, offset: 1344)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3615, file: !3616, line: 114, baseType: !640, size: 8, offset: 1344)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !381, file: !73, line: 471, baseType: !3628, size: 64, offset: 832)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !381, file: !73, line: 473, baseType: !141, size: 64, offset: 896)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !381, file: !73, line: 475, baseType: !141, size: 64, offset: 960)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !381, file: !73, line: 480, baseType: !1320, size: 192, offset: 1024)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !381, file: !73, line: 484, baseType: !3707, size: 576, offset: 1216)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3708)
!3708 = !{!3709, !3710, !3711, !3712, !3713, !3714}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3707, file: !73, line: 362, baseType: !272, size: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3707, file: !73, line: 363, baseType: !272, size: 128, offset: 128)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3707, file: !73, line: 364, baseType: !272, size: 128, offset: 256)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3707, file: !73, line: 365, baseType: !272, size: 128, offset: 384)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3707, file: !73, line: 366, baseType: !640, size: 8, offset: 512)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3707, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !381, file: !73, line: 485, baseType: !3716, size: 2304, offset: 1792)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3717)
!3717 = !{!3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3813, !3817}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3716, file: !80, line: 566, baseType: !3669, size: 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3716, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3716, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3716, file: !80, line: 569, baseType: !640, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3716, file: !80, line: 570, baseType: !640, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3716, file: !80, line: 571, baseType: !640, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3716, file: !80, line: 572, baseType: !640, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3716, file: !80, line: 573, baseType: !640, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3716, file: !80, line: 574, baseType: !640, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3716, file: !80, line: 575, baseType: !640, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3716, file: !80, line: 576, baseType: !640, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3716, file: !80, line: 577, baseType: !152, size: 32, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3716, file: !80, line: 578, baseType: !397, offset: 96)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3716, file: !80, line: 580, baseType: !272, size: 128, offset: 128)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3716, file: !80, line: 581, baseType: !1683, size: 192, offset: 256)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3716, file: !80, line: 582, baseType: !3734, size: 64, offset: 448)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3736, line: 43, size: 1472, elements: !3737)
!3736 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3737 = !{!3738, !3739, !3740, !3741, !3742, !3745, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3735, file: !3736, line: 44, baseType: !197, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3735, file: !3736, line: 45, baseType: !143, size: 32, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3735, file: !3736, line: 46, baseType: !272, size: 128, offset: 128)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3735, file: !3736, line: 47, baseType: !397, offset: 256)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3735, file: !3736, line: 48, baseType: !3743, size: 64, offset: 256)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3735, file: !3736, line: 49, baseType: !3746, size: 320, offset: 320)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3747, line: 11, size: 320, elements: !3748)
!3747 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3748 = !{!3749, !3750, !3751, !3756}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3746, file: !3747, line: 16, baseType: !789, size: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3746, file: !3747, line: 17, baseType: !293, size: 64, offset: 128)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3746, file: !3747, line: 18, baseType: !3752, size: 64, offset: 192)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{null, !3755}
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3746, file: !3747, line: 19, baseType: !152, size: 32, offset: 256)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3735, file: !3736, line: 50, baseType: !293, size: 64, offset: 640)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3735, file: !3736, line: 51, baseType: !1447, size: 64, offset: 704)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3735, file: !3736, line: 52, baseType: !1447, size: 64, offset: 768)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3735, file: !3736, line: 53, baseType: !1447, size: 64, offset: 832)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3735, file: !3736, line: 54, baseType: !1447, size: 64, offset: 896)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3735, file: !3736, line: 55, baseType: !1447, size: 64, offset: 960)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3735, file: !3736, line: 56, baseType: !293, size: 64, offset: 1024)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3735, file: !3736, line: 57, baseType: !293, size: 64, offset: 1088)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3735, file: !3736, line: 58, baseType: !293, size: 64, offset: 1152)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3735, file: !3736, line: 59, baseType: !293, size: 64, offset: 1216)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3735, file: !3736, line: 60, baseType: !293, size: 64, offset: 1280)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3735, file: !3736, line: 61, baseType: !380, size: 64, offset: 1344)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3735, file: !3736, line: 62, baseType: !640, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3735, file: !3736, line: 63, baseType: !640, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3716, file: !80, line: 583, baseType: !640, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3716, file: !80, line: 584, baseType: !640, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3716, file: !80, line: 585, baseType: !640, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3716, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3716, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3716, file: !80, line: 592, baseType: !1439, size: 512, offset: 576)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3716, file: !80, line: 593, baseType: !321, size: 64, offset: 1088)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3716, file: !80, line: 594, baseType: !2156, size: 256, offset: 1152)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3716, file: !80, line: 595, baseType: !1625, size: 128, offset: 1408)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3716, file: !80, line: 596, baseType: !3743, size: 64, offset: 1536)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3716, file: !80, line: 597, baseType: !898, size: 32, offset: 1600)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3716, file: !80, line: 598, baseType: !898, size: 32, offset: 1632)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3716, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3716, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3716, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3716, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3716, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3716, file: !80, line: 604, baseType: !640, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3716, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3716, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3716, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3716, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3716, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3716, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3716, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3716, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3716, file: !80, line: 613, baseType: !143, size: 32, offset: 1792)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3716, file: !80, line: 614, baseType: !143, size: 32, offset: 1824)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3716, file: !80, line: 615, baseType: !321, size: 64, offset: 1856)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3716, file: !80, line: 616, baseType: !321, size: 64, offset: 1920)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3716, file: !80, line: 617, baseType: !321, size: 64, offset: 1984)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3716, file: !80, line: 618, baseType: !321, size: 64, offset: 2048)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3716, file: !80, line: 620, baseType: !3804, size: 64, offset: 2112)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3806)
!3806 = !{!3807, !3808, !3809, !3810}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3805, file: !80, line: 537, baseType: !397)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3805, file: !80, line: 538, baseType: !7, size: 32)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3805, file: !80, line: 540, baseType: !272, size: 128, offset: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3805, file: !80, line: 543, baseType: !3811, size: 64, offset: 192)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3716, file: !80, line: 621, baseType: !3814, size: 64, offset: 2176)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{null, !380, !1588}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3716, file: !80, line: 622, baseType: !3818, size: 64, offset: 2240)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !381, file: !73, line: 486, baseType: !3821, size: 64, offset: 4096)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3823)
!3823 = !{!3824, !3825, !3826, !3830, !3831, !3832}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3822, file: !80, line: 643, baseType: !3585, size: 1472)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3822, file: !80, line: 644, baseType: !3588, size: 64, offset: 1472)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3822, file: !80, line: 645, baseType: !3827, size: 64, offset: 1536)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{null, !380, !640}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3822, file: !80, line: 646, baseType: !3588, size: 64, offset: 1600)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3822, file: !80, line: 647, baseType: !3579, size: 64, offset: 1664)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3822, file: !80, line: 648, baseType: !3579, size: 64, offset: 1728)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !381, file: !73, line: 493, baseType: !3834, size: 64, offset: 4160)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3836)
!3836 = !{!3837, !3838, !3839, !4011, !4012, !4013, !4014, !4015, !4016, !4019, !4020, !4021, !4022, !4023, !4024, !4025}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3835, file: !94, line: 163, baseType: !272, size: 128)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3835, file: !94, line: 164, baseType: !197, size: 64, offset: 128)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3835, file: !94, line: 165, baseType: !3840, size: 64, offset: 192)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3842)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3843)
!3843 = !{!3844, !3962, !3972, !3977, !3981, !3988, !3992, !3996, !4003, !4007}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3842, file: !94, line: 106, baseType: !3845, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!143, !3834, !3848, !93}
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3850, line: 51, size: 1344, elements: !3851)
!3850 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3851 = !{!3852, !3853, !3855, !3856, !3946, !3955, !3956, !3957, !3958, !3959, !3960, !3961}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3849, file: !3850, line: 52, baseType: !197, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3849, file: !3850, line: 53, baseType: !3854, size: 32, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3850, line: 28, baseType: !152)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3849, file: !3850, line: 54, baseType: !197, size: 64, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3849, file: !3850, line: 55, baseType: !3857, size: 192, offset: 192)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3858, line: 17, size: 192, elements: !3859)
!3858 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3859 = !{!3860, !3862, !3945}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3857, file: !3858, line: 18, baseType: !3861, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3857, file: !3858, line: 19, baseType: !3863, size: 64, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3865)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3858, line: 110, size: 1152, elements: !3866)
!3866 = !{!3867, !3871, !3875, !3881, !3887, !3891, !3895, !3900, !3904, !3905, !3909, !3913, !3917, !3928, !3929, !3930, !3931, !3941}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3865, file: !3858, line: 111, baseType: !3868, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!3861, !3861}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3865, file: !3858, line: 112, baseType: !3872, size: 64, offset: 64)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{null, !3861}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3865, file: !3858, line: 113, baseType: !3876, size: 64, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!640, !3879}
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3857)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3865, file: !3858, line: 114, baseType: !3882, size: 64, offset: 192)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!2325, !3879, !3885}
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3865, file: !3858, line: 116, baseType: !3888, size: 64, offset: 256)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!640, !3879, !197}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3865, file: !3858, line: 118, baseType: !3892, size: 64, offset: 320)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!143, !3879, !197, !7, !141, !483}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3865, file: !3858, line: 123, baseType: !3896, size: 64, offset: 384)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!143, !3879, !197, !3899, !483}
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3865, file: !3858, line: 126, baseType: !3901, size: 64, offset: 448)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!197, !3879}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3865, file: !3858, line: 127, baseType: !3901, size: 64, offset: 512)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3865, file: !3858, line: 128, baseType: !3906, size: 64, offset: 576)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!3861, !3879}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3865, file: !3858, line: 130, baseType: !3910, size: 64, offset: 640)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!3861, !3879, !3861}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3865, file: !3858, line: 133, baseType: !3914, size: 64, offset: 704)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!3861, !3879, !197}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3865, file: !3858, line: 135, baseType: !3918, size: 64, offset: 768)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!143, !3879, !197, !197, !7, !7, !3921}
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3858, line: 43, size: 640, elements: !3923)
!3923 = !{!3924, !3925, !3926}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3922, file: !3858, line: 44, baseType: !3861, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3922, file: !3858, line: 45, baseType: !7, size: 32, offset: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3922, file: !3858, line: 46, baseType: !3927, size: 512, offset: 128)
!3927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 512, elements: !1477)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3865, file: !3858, line: 140, baseType: !3910, size: 64, offset: 832)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3865, file: !3858, line: 143, baseType: !3906, size: 64, offset: 896)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3865, file: !3858, line: 145, baseType: !3868, size: 64, offset: 960)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3865, file: !3858, line: 146, baseType: !3932, size: 64, offset: 1024)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!143, !3879, !3935}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3858, line: 29, size: 128, elements: !3937)
!3937 = !{!3938, !3939, !3940}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3936, file: !3858, line: 30, baseType: !7, size: 32)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3936, file: !3858, line: 31, baseType: !7, size: 32, offset: 32)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3936, file: !3858, line: 32, baseType: !3879, size: 64, offset: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3865, file: !3858, line: 148, baseType: !3942, size: 64, offset: 1088)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{!143, !3879, !380}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3857, file: !3858, line: 20, baseType: !380, size: 64, offset: 128)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3849, file: !3850, line: 57, baseType: !3947, size: 64, offset: 384)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3850, line: 31, size: 704, elements: !3949)
!3949 = !{!3950, !3951, !3952, !3953, !3954}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3948, file: !3850, line: 32, baseType: !214, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3948, file: !3850, line: 33, baseType: !143, size: 32, offset: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3948, file: !3850, line: 34, baseType: !141, size: 64, offset: 128)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3948, file: !3850, line: 35, baseType: !3947, size: 64, offset: 192)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3948, file: !3850, line: 43, baseType: !504, size: 448, offset: 256)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3849, file: !3850, line: 58, baseType: !3947, size: 64, offset: 448)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3849, file: !3850, line: 59, baseType: !3848, size: 64, offset: 512)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3849, file: !3850, line: 60, baseType: !3848, size: 64, offset: 576)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3849, file: !3850, line: 61, baseType: !3848, size: 64, offset: 640)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3849, file: !3850, line: 63, baseType: !384, size: 512, offset: 704)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3849, file: !3850, line: 65, baseType: !293, size: 64, offset: 1216)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3849, file: !3850, line: 66, baseType: !141, size: 64, offset: 1280)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3842, file: !94, line: 108, baseType: !3963, size: 64, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!143, !3834, !3966, !93}
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3968)
!3968 = !{!3969, !3970, !3971}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3967, file: !94, line: 64, baseType: !3861, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3967, file: !94, line: 65, baseType: !143, size: 32, offset: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3967, file: !94, line: 66, baseType: !151, size: 512, offset: 96)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3842, file: !94, line: 110, baseType: !3973, size: 64, offset: 128)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!143, !3834, !7, !3976}
!3976 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !273, line: 164, baseType: !293)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3842, file: !94, line: 111, baseType: !3978, size: 64, offset: 192)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{null, !3834, !7}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3842, file: !94, line: 112, baseType: !3982, size: 64, offset: 256)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!143, !3834, !3848, !3985, !7, !3987, !251}
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3842, file: !94, line: 117, baseType: !3989, size: 64, offset: 320)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!143, !3834, !7, !7, !141}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3842, file: !94, line: 119, baseType: !3993, size: 64, offset: 384)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{null, !3834, !7, !7}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3842, file: !94, line: 121, baseType: !3997, size: 64, offset: 448)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!143, !3834, !4000, !640}
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4002, line: 11, flags: DIFlagFwdDecl)
!4002 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3842, file: !94, line: 122, baseType: !4004, size: 64, offset: 512)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{null, !3834, !4000}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3842, file: !94, line: 123, baseType: !4008, size: 64, offset: 576)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!143, !3834, !3966, !3987, !251}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3835, file: !94, line: 166, baseType: !141, size: 64, offset: 256)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3835, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3835, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3835, file: !94, line: 171, baseType: !3861, size: 64, offset: 384)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3835, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3835, file: !94, line: 173, baseType: !4017, size: 64, offset: 512)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3835, file: !94, line: 175, baseType: !3834, size: 64, offset: 576)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3835, file: !94, line: 182, baseType: !3976, size: 64, offset: 640)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3835, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3835, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3835, file: !94, line: 185, baseType: !889, size: 128, offset: 768)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3835, file: !94, line: 186, baseType: !1320, size: 192, offset: 896)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3835, file: !94, line: 187, baseType: !4026, offset: 1088)
!4026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2527)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !381, file: !73, line: 499, baseType: !272, size: 128, offset: 4224)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !381, file: !73, line: 502, baseType: !4029, size: 64, offset: 4352)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4031)
!4031 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !381, file: !73, line: 504, baseType: !4033, size: 64, offset: 4416)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !381, file: !73, line: 505, baseType: !321, size: 64, offset: 4480)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !381, file: !73, line: 510, baseType: !321, size: 64, offset: 4544)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !381, file: !73, line: 511, baseType: !4037, size: 64, offset: 4608)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4039)
!4039 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !381, file: !73, line: 513, baseType: !4041, size: 64, offset: 4672)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !4043)
!4043 = !{!4044, !4045}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4042, file: !73, line: 293, baseType: !7, size: 32)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4042, file: !73, line: 294, baseType: !293, size: 64, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !381, file: !73, line: 515, baseType: !272, size: 128, offset: 4736)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !381, file: !73, line: 526, baseType: !4048, offset: 4864)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4049, line: 5, elements: !411)
!4049 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !381, file: !73, line: 528, baseType: !3848, size: 64, offset: 4864)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !381, file: !73, line: 529, baseType: !3861, size: 64, offset: 4928)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !381, file: !73, line: 534, baseType: !663, size: 32, offset: 4992)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !381, file: !73, line: 535, baseType: !152, size: 32, offset: 5024)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !381, file: !73, line: 537, baseType: !397, offset: 5056)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !381, file: !73, line: 538, baseType: !272, size: 128, offset: 5056)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !381, file: !73, line: 540, baseType: !4057, size: 64, offset: 5184)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4059, line: 54, size: 960, elements: !4060)
!4059 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4060 = !{!4061, !4062, !4063, !4064, !4065, !4066, !4067, !4071, !4075, !4076, !4077, !4078, !4082, !4086, !4087}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4058, file: !4059, line: 55, baseType: !197, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4058, file: !4059, line: 56, baseType: !134, size: 64, offset: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4058, file: !4059, line: 58, baseType: !489, size: 64, offset: 128)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4058, file: !4059, line: 59, baseType: !489, size: 64, offset: 192)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4058, file: !4059, line: 60, baseType: !390, size: 64, offset: 256)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4058, file: !4059, line: 62, baseType: !3570, size: 64, offset: 320)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4058, file: !4059, line: 63, baseType: !4068, size: 64, offset: 384)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!214, !380, !3577}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4058, file: !4059, line: 65, baseType: !4072, size: 64, offset: 448)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{null, !4057}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4058, file: !4059, line: 66, baseType: !3579, size: 64, offset: 512)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4058, file: !4059, line: 68, baseType: !3588, size: 64, offset: 576)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4058, file: !4059, line: 70, baseType: !3384, size: 64, offset: 640)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4058, file: !4059, line: 71, baseType: !4079, size: 64, offset: 704)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!2325, !380}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4058, file: !4059, line: 73, baseType: !4083, size: 64, offset: 768)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{null, !380, !3416, !3417}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4058, file: !4059, line: 75, baseType: !3583, size: 64, offset: 832)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4058, file: !4059, line: 77, baseType: !3698, size: 64, offset: 896)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !381, file: !73, line: 541, baseType: !489, size: 64, offset: 5248)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !381, file: !73, line: 543, baseType: !3579, size: 64, offset: 5312)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !381, file: !73, line: 544, baseType: !4091, size: 64, offset: 5376)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !381, file: !73, line: 545, baseType: !4094, size: 64, offset: 5440)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !381, file: !73, line: 547, baseType: !640, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !381, file: !73, line: 548, baseType: !640, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !381, file: !73, line: 549, baseType: !640, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !381, file: !73, line: 550, baseType: !640, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !304, file: !269, line: 635, baseType: !381, size: 5568, offset: 2304)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !304, file: !269, line: 636, baseType: !503, size: 64, offset: 7872)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !304, file: !269, line: 637, baseType: !503, size: 64, offset: 7936)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !304, file: !269, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !299, file: !269, line: 312, baseType: !303, size: 64, offset: 192)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !299, file: !269, line: 314, baseType: !141, size: 64, offset: 256)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !299, file: !269, line: 315, baseType: !365, size: 64, offset: 320)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !299, file: !269, line: 316, baseType: !4108, size: 64, offset: 384)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !269, line: 69, size: 832, elements: !4110)
!4110 = !{!4111, !4112, !4113, !4116, !4117}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4109, file: !269, line: 70, baseType: !303, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4109, file: !269, line: 71, baseType: !272, size: 128, offset: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4109, file: !269, line: 72, baseType: !4114, size: 64, offset: 192)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !269, line: 72, flags: DIFlagFwdDecl)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4109, file: !269, line: 73, baseType: !231, size: 8, offset: 256)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4109, file: !269, line: 74, baseType: !384, size: 512, offset: 320)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !299, file: !269, line: 318, baseType: !7, size: 32, offset: 448)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !299, file: !269, line: 319, baseType: !223, size: 16, offset: 480)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !299, file: !269, line: 320, baseType: !223, size: 16, offset: 496)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !299, file: !269, line: 321, baseType: !223, size: 16, offset: 512)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !299, file: !269, line: 322, baseType: !223, size: 16, offset: 528)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !299, file: !269, line: 323, baseType: !7, size: 32, offset: 544)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !299, file: !269, line: 324, baseType: !229, size: 8, offset: 576)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !299, file: !269, line: 325, baseType: !229, size: 8, offset: 584)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !299, file: !269, line: 330, baseType: !229, size: 8, offset: 592)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !299, file: !269, line: 331, baseType: !229, size: 8, offset: 600)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !299, file: !269, line: 332, baseType: !229, size: 8, offset: 608)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !299, file: !269, line: 333, baseType: !229, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !299, file: !269, line: 334, baseType: !229, size: 8, offset: 624)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !299, file: !269, line: 335, baseType: !229, size: 8, offset: 632)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !299, file: !269, line: 336, baseType: !221, size: 16, offset: 640)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !299, file: !269, line: 337, baseType: !3987, size: 64, offset: 704)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !299, file: !269, line: 339, baseType: !4135, size: 64, offset: 768)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !299, file: !269, line: 340, baseType: !321, size: 64, offset: 832)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !299, file: !269, line: 346, baseType: !4042, size: 128, offset: 896)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !299, file: !269, line: 348, baseType: !4139, size: 32, offset: 1024)
!4139 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !269, line: 155, baseType: !143)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !299, file: !269, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !299, file: !269, line: 352, baseType: !229, size: 8, offset: 1064)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !299, file: !269, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !299, file: !269, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !299, file: !269, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !299, file: !269, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !299, file: !269, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !299, file: !269, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !299, file: !269, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !299, file: !269, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !299, file: !269, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !299, file: !269, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !299, file: !269, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !299, file: !269, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !299, file: !269, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !299, file: !269, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !299, file: !269, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !299, file: !269, line: 376, baseType: !7, size: 32, offset: 1120)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !299, file: !269, line: 377, baseType: !7, size: 32, offset: 1152)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !299, file: !269, line: 380, baseType: !4160, size: 64, offset: 1216)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !269, line: 303, flags: DIFlagFwdDecl)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !299, file: !269, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !299, file: !269, line: 383, baseType: !143, size: 32, offset: 1312)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !299, file: !269, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !299, file: !269, line: 387, baseType: !4166, size: 32, offset: 1376)
!4166 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !269, line: 180, baseType: !7)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !299, file: !269, line: 388, baseType: !381, size: 5568, offset: 1408)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !299, file: !269, line: 390, baseType: !143, size: 32, offset: 6976)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !299, file: !269, line: 396, baseType: !7, size: 32, offset: 7008)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !299, file: !269, line: 397, baseType: !4171, size: 8704, offset: 7040)
!4171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 8704, elements: !4172)
!4172 = !{!4173}
!4173 = !DISubrange(count: 17)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !299, file: !269, line: 399, baseType: !640, size: 8, offset: 15744)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !299, file: !269, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !299, file: !269, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !299, file: !269, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !299, file: !269, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !299, file: !269, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !299, file: !269, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !299, file: !269, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !299, file: !269, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !299, file: !269, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !299, file: !269, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !299, file: !269, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !299, file: !269, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !299, file: !269, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !299, file: !269, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !299, file: !269, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !299, file: !269, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !299, file: !269, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !299, file: !269, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !299, file: !269, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !299, file: !269, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !299, file: !269, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !299, file: !269, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !299, file: !269, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !299, file: !269, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !299, file: !269, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !299, file: !269, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !299, file: !269, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !299, file: !269, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !299, file: !269, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !299, file: !269, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !299, file: !269, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !299, file: !269, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !299, file: !269, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !299, file: !269, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !299, file: !269, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !299, file: !269, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !299, file: !269, line: 450, baseType: !4212, size: 16, offset: 15792)
!4212 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !269, line: 206, baseType: !223)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !299, file: !269, line: 451, baseType: !898, size: 32, offset: 15808)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !299, file: !269, line: 453, baseType: !151, size: 512, offset: 15840)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !299, file: !269, line: 454, baseType: !785, size: 64, offset: 16384)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !299, file: !269, line: 455, baseType: !503, size: 64, offset: 16448)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !299, file: !269, line: 456, baseType: !143, size: 32, offset: 16512)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !299, file: !269, line: 457, baseType: !4219, size: 1088, offset: 16576)
!4219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 1088, elements: !4172)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !299, file: !269, line: 458, baseType: !4219, size: 1088, offset: 17664)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !299, file: !269, line: 469, baseType: !489, size: 64, offset: 18752)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !299, file: !269, line: 471, baseType: !4223, size: 64, offset: 18816)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !269, line: 304, flags: DIFlagFwdDecl)
!4225 = !DIDerivedType(tag: DW_TAG_member, scope: !299, file: !269, line: 478, baseType: !4226, size: 64, offset: 18880)
!4226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !299, file: !269, line: 478, size: 64, elements: !4227)
!4227 = !{!4228, !4231}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4226, file: !269, line: 479, baseType: !4229, size: 64)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !269, line: 305, flags: DIFlagFwdDecl)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4226, file: !269, line: 480, baseType: !298, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !299, file: !269, line: 482, baseType: !221, size: 16, offset: 18944)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !299, file: !269, line: 483, baseType: !229, size: 8, offset: 18960)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !299, file: !269, line: 497, baseType: !221, size: 16, offset: 18976)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !299, file: !269, line: 498, baseType: !320, size: 64, offset: 19008)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !299, file: !269, line: 499, baseType: !483, size: 64, offset: 19072)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !299, file: !269, line: 500, baseType: !214, size: 64, offset: 19136)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !299, file: !269, line: 502, baseType: !293, size: 64, offset: 19200)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !268, file: !269, line: 863, baseType: !4240, size: 64, offset: 320)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{null, !298}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !268, file: !269, line: 864, baseType: !4244, size: 64, offset: 384)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!143, !298, !3669}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !268, file: !269, line: 865, baseType: !4248, size: 64, offset: 448)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!143, !298}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !268, file: !269, line: 866, baseType: !4240, size: 64, offset: 512)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !268, file: !269, line: 867, baseType: !4253, size: 64, offset: 576)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!143, !298, !143}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !268, file: !269, line: 868, baseType: !4257, size: 64, offset: 640)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4259)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !269, line: 795, size: 384, elements: !4260)
!4260 = !{!4261, !4266, !4270, !4271, !4272, !4273}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4259, file: !269, line: 797, baseType: !4262, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!4265, !298, !4166}
!4265 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !269, line: 772, baseType: !7)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4259, file: !269, line: 801, baseType: !4267, size: 64, offset: 64)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!4265, !298}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4259, file: !269, line: 804, baseType: !4267, size: 64, offset: 128)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4259, file: !269, line: 807, baseType: !4240, size: 64, offset: 192)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4259, file: !269, line: 808, baseType: !4240, size: 64, offset: 256)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4259, file: !269, line: 811, baseType: !4240, size: 64, offset: 320)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !268, file: !269, line: 869, baseType: !489, size: 64, offset: 704)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !268, file: !269, line: 870, baseType: !3629, size: 1152, offset: 768)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !268, file: !269, line: 871, baseType: !4277, size: 128, offset: 1920)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !269, line: 759, size: 128, elements: !4278)
!4278 = !{!4279, !4280}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4277, file: !269, line: 760, baseType: !397)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4277, file: !269, line: 761, baseType: !272, size: 128)
!4281 = !DIGlobalVariableExpression(var: !4282, expr: !DIExpression())
!4282 = distinct !DIGlobalVariable(name: "gxt4500_pci_tbl", scope: !2, file: !3, line: 754, type: !4283, isLocal: true, isDefinition: true)
!4283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 1280, elements: !4284)
!4284 = !{!4285}
!4285 = !DISubrange(count: 5)
!4286 = !DIGlobalVariableExpression(var: !4287, expr: !DIExpression())
!4287 = distinct !DIGlobalVariable(name: "cardinfo", scope: !2, file: !3, line: 189, type: !4288, isLocal: true, isDefinition: true)
!4288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4289, size: 512, elements: !331)
!4289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4290)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cardinfo", file: !3, line: 186, size: 128, elements: !4291)
!4291 = !{!4292, !4293}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "refclk_ps", scope: !4290, file: !3, line: 187, baseType: !143, size: 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "cardname", scope: !4290, file: !3, line: 188, baseType: !197, size: 64, offset: 64)
!4294 = !DIGlobalVariableExpression(var: !4295, expr: !DIExpression())
!4295 = distinct !DIGlobalVariable(name: "gxt4500_fix", scope: !2, file: !3, line: 593, type: !4296, isLocal: true, isDefinition: true)
!4296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4297)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fix_screeninfo", file: !126, line: 157, size: 640, elements: !4298)
!4298 = !{!4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4297, file: !126, line: 158, baseType: !1913, size: 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "smem_start", scope: !4297, file: !126, line: 159, baseType: !293, size: 64, offset: 128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "smem_len", scope: !4297, file: !126, line: 161, baseType: !154, size: 32, offset: 192)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4297, file: !126, line: 162, baseType: !154, size: 32, offset: 224)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "type_aux", scope: !4297, file: !126, line: 163, baseType: !154, size: 32, offset: 256)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "visual", scope: !4297, file: !126, line: 164, baseType: !154, size: 32, offset: 288)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "xpanstep", scope: !4297, file: !126, line: 165, baseType: !222, size: 16, offset: 320)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "ypanstep", scope: !4297, file: !126, line: 166, baseType: !222, size: 16, offset: 336)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "ywrapstep", scope: !4297, file: !126, line: 167, baseType: !222, size: 16, offset: 352)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !4297, file: !126, line: 168, baseType: !154, size: 32, offset: 384)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_start", scope: !4297, file: !126, line: 169, baseType: !293, size: 64, offset: 448)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_len", scope: !4297, file: !126, line: 171, baseType: !154, size: 32, offset: 512)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !4297, file: !126, line: 172, baseType: !154, size: 32, offset: 544)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !4297, file: !126, line: 174, baseType: !222, size: 16, offset: 576)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4297, file: !126, line: 175, baseType: !4314, size: 32, offset: 592)
!4314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 32, elements: !1750)
!4315 = !DIGlobalVariableExpression(var: !4316, expr: !DIExpression())
!4316 = distinct !DIGlobalVariable(name: "gxt4500_ops", scope: !2, file: !3, line: 602, type: !4317, isLocal: true, isDefinition: true)
!4317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4318)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_ops", file: !4319, line: 228, size: 1472, elements: !4320)
!4319 = !DIFile(filename: "./include/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!4320 = !{!4321, !4322, !4646, !4647, !4651, !4655, !4660, !4661, !4665, !4670, !4674, !4675, !4689, !4703, !4720, !4737, !4738, !4742, !4743, !4747, !4758, !4759, !4760}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4318, file: !4319, line: 230, baseType: !134, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "fb_open", scope: !4318, file: !4319, line: 231, baseType: !4323, size: 64, offset: 64)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!143, !4326, !143}
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_info", file: !4319, line: 437, size: 8128, elements: !4328)
!4328 = !{!4329, !4330, !4331, !4332, !4333, !4334, !4335, !4373, !4374, !4435, !4436, !4454, !4455, !4465, !4466, !4467, !4515, !4516, !4518, !4525, !4540, !4542, !4543, !4544, !4545, !4624, !4629, !4630, !4631, !4632, !4633, !4634, !4645}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4327, file: !4319, line: 438, baseType: !898, size: 32)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4327, file: !4319, line: 439, baseType: !143, size: 32, offset: 32)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4327, file: !4319, line: 440, baseType: !143, size: 32, offset: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_rotate_hint", scope: !4327, file: !4319, line: 445, baseType: !143, size: 32, offset: 96)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4327, file: !4319, line: 446, baseType: !1320, size: 192, offset: 128)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock", scope: !4327, file: !4319, line: 447, baseType: !1320, size: 192, offset: 320)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !4327, file: !4319, line: 448, baseType: !4336, size: 1280, offset: 512)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_var_screeninfo", file: !126, line: 242, size: 1280, elements: !4337)
!4337 = !{!4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !4336, file: !126, line: 243, baseType: !154, size: 32)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !4336, file: !126, line: 244, baseType: !154, size: 32, offset: 32)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "xres_virtual", scope: !4336, file: !126, line: 245, baseType: !154, size: 32, offset: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "yres_virtual", scope: !4336, file: !126, line: 246, baseType: !154, size: 32, offset: 96)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "xoffset", scope: !4336, file: !126, line: 247, baseType: !154, size: 32, offset: 128)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "yoffset", scope: !4336, file: !126, line: 248, baseType: !154, size: 32, offset: 160)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel", scope: !4336, file: !126, line: 250, baseType: !154, size: 32, offset: 192)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "grayscale", scope: !4336, file: !126, line: 251, baseType: !154, size: 32, offset: 224)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !4336, file: !126, line: 253, baseType: !4347, size: 96, offset: 256)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_bitfield", file: !126, line: 188, size: 96, elements: !4348)
!4348 = !{!4349, !4350, !4351}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4347, file: !126, line: 189, baseType: !154, size: 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4347, file: !126, line: 190, baseType: !154, size: 32, offset: 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "msb_right", scope: !4347, file: !126, line: 191, baseType: !154, size: 32, offset: 64)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !4336, file: !126, line: 254, baseType: !4347, size: 96, offset: 352)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !4336, file: !126, line: 255, baseType: !4347, size: 96, offset: 448)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !4336, file: !126, line: 256, baseType: !4347, size: 96, offset: 544)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "nonstd", scope: !4336, file: !126, line: 258, baseType: !154, size: 32, offset: 640)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4336, file: !126, line: 260, baseType: !154, size: 32, offset: 672)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4336, file: !126, line: 262, baseType: !154, size: 32, offset: 704)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4336, file: !126, line: 263, baseType: !154, size: 32, offset: 736)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "accel_flags", scope: !4336, file: !126, line: 265, baseType: !154, size: 32, offset: 768)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !4336, file: !126, line: 268, baseType: !154, size: 32, offset: 800)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !4336, file: !126, line: 269, baseType: !154, size: 32, offset: 832)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !4336, file: !126, line: 270, baseType: !154, size: 32, offset: 864)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !4336, file: !126, line: 271, baseType: !154, size: 32, offset: 896)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !4336, file: !126, line: 272, baseType: !154, size: 32, offset: 928)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !4336, file: !126, line: 273, baseType: !154, size: 32, offset: 960)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !4336, file: !126, line: 274, baseType: !154, size: 32, offset: 992)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4336, file: !126, line: 275, baseType: !154, size: 32, offset: 1024)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !4336, file: !126, line: 276, baseType: !154, size: 32, offset: 1056)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "rotate", scope: !4336, file: !126, line: 277, baseType: !154, size: 32, offset: 1088)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !4336, file: !126, line: 278, baseType: !154, size: 32, offset: 1120)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4336, file: !126, line: 279, baseType: !4372, size: 128, offset: 1152)
!4372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 128, elements: !331)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "fix", scope: !4327, file: !4319, line: 449, baseType: !4297, size: 640, offset: 1792)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "monspecs", scope: !4327, file: !4319, line: 450, baseType: !4375, size: 1152, offset: 2432)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_monspecs", file: !4319, line: 63, size: 1152, elements: !4376)
!4376 = !{!4377, !4388, !4406, !4408, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "chroma", scope: !4375, file: !4319, line: 64, baseType: !4378, size: 256)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_chroma", file: !4319, line: 52, size: 256, elements: !4379)
!4379 = !{!4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "redx", scope: !4378, file: !4319, line: 53, baseType: !154, size: 32)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "greenx", scope: !4378, file: !4319, line: 54, baseType: !154, size: 32, offset: 32)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "bluex", scope: !4378, file: !4319, line: 55, baseType: !154, size: 32, offset: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "whitex", scope: !4378, file: !4319, line: 56, baseType: !154, size: 32, offset: 96)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "redy", scope: !4378, file: !4319, line: 57, baseType: !154, size: 32, offset: 128)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "greeny", scope: !4378, file: !4319, line: 58, baseType: !154, size: 32, offset: 160)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "bluey", scope: !4378, file: !4319, line: 59, baseType: !154, size: 32, offset: 192)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "whitey", scope: !4378, file: !4319, line: 60, baseType: !154, size: 32, offset: 224)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "modedb", scope: !4375, file: !4319, line: 65, baseType: !4389, size: 64, offset: 256)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_videomode", file: !4319, line: 766, size: 512, elements: !4391)
!4391 = !{!4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4390, file: !4319, line: 767, baseType: !197, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !4390, file: !4319, line: 768, baseType: !152, size: 32, offset: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !4390, file: !4319, line: 769, baseType: !152, size: 32, offset: 96)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !4390, file: !4319, line: 770, baseType: !152, size: 32, offset: 128)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !4390, file: !4319, line: 771, baseType: !152, size: 32, offset: 160)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !4390, file: !4319, line: 772, baseType: !152, size: 32, offset: 192)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !4390, file: !4319, line: 773, baseType: !152, size: 32, offset: 224)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !4390, file: !4319, line: 774, baseType: !152, size: 32, offset: 256)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !4390, file: !4319, line: 775, baseType: !152, size: 32, offset: 288)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !4390, file: !4319, line: 776, baseType: !152, size: 32, offset: 320)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !4390, file: !4319, line: 777, baseType: !152, size: 32, offset: 352)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4390, file: !4319, line: 778, baseType: !152, size: 32, offset: 384)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !4390, file: !4319, line: 779, baseType: !152, size: 32, offset: 416)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !4390, file: !4319, line: 780, baseType: !152, size: 32, offset: 448)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !4375, file: !4319, line: 66, baseType: !4407, size: 32, offset: 320)
!4407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 32, elements: !331)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "monitor", scope: !4375, file: !4319, line: 67, baseType: !4409, size: 112, offset: 352)
!4409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 112, elements: !4410)
!4410 = !{!4411}
!4411 = !DISubrange(count: 14)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "serial_no", scope: !4375, file: !4319, line: 68, baseType: !4409, size: 112, offset: 464)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !4375, file: !4319, line: 69, baseType: !4409, size: 112, offset: 576)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "modedb_len", scope: !4375, file: !4319, line: 70, baseType: !154, size: 32, offset: 704)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !4375, file: !4319, line: 71, baseType: !154, size: 32, offset: 736)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !4375, file: !4319, line: 72, baseType: !154, size: 32, offset: 768)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !4375, file: !4319, line: 73, baseType: !154, size: 32, offset: 800)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "week", scope: !4375, file: !4319, line: 74, baseType: !154, size: 32, offset: 832)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "hfmin", scope: !4375, file: !4319, line: 75, baseType: !154, size: 32, offset: 864)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "hfmax", scope: !4375, file: !4319, line: 76, baseType: !154, size: 32, offset: 896)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmin", scope: !4375, file: !4319, line: 77, baseType: !154, size: 32, offset: 928)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmax", scope: !4375, file: !4319, line: 78, baseType: !154, size: 32, offset: 960)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !4375, file: !4319, line: 79, baseType: !222, size: 16, offset: 992)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !4375, file: !4319, line: 80, baseType: !222, size: 16, offset: 1008)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4375, file: !4319, line: 81, baseType: !222, size: 16, offset: 1024)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "vfmin", scope: !4375, file: !4319, line: 82, baseType: !222, size: 16, offset: 1040)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "vfmax", scope: !4375, file: !4319, line: 83, baseType: !222, size: 16, offset: 1056)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !4375, file: !4319, line: 84, baseType: !222, size: 16, offset: 1072)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "gtf", scope: !4375, file: !4319, line: 85, baseType: !222, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !4375, file: !4319, line: 86, baseType: !222, size: 16, offset: 1104)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4375, file: !4319, line: 87, baseType: !230, size: 8, offset: 1120)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4375, file: !4319, line: 88, baseType: !230, size: 8, offset: 1128)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "max_x", scope: !4375, file: !4319, line: 89, baseType: !230, size: 8, offset: 1136)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "max_y", scope: !4375, file: !4319, line: 90, baseType: !230, size: 8, offset: 1144)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4327, file: !4319, line: 451, baseType: !2156, size: 256, offset: 3584)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "pixmap", scope: !4327, file: !4319, line: 452, baseType: !4437, size: 448, offset: 3840)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_pixmap", file: !4319, line: 185, size: 448, elements: !4438)
!4438 = !{!4439, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4453}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4437, file: !4319, line: 186, baseType: !4440, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4437, file: !4319, line: 187, baseType: !152, size: 32, offset: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4437, file: !4319, line: 188, baseType: !152, size: 32, offset: 96)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "buf_align", scope: !4437, file: !4319, line: 189, baseType: !152, size: 32, offset: 128)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "scan_align", scope: !4437, file: !4319, line: 190, baseType: !152, size: 32, offset: 160)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "access_align", scope: !4437, file: !4319, line: 191, baseType: !152, size: 32, offset: 192)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4437, file: !4319, line: 192, baseType: !152, size: 32, offset: 224)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "blit_x", scope: !4437, file: !4319, line: 193, baseType: !152, size: 32, offset: 256)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "blit_y", scope: !4437, file: !4319, line: 194, baseType: !152, size: 32, offset: 288)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "writeio", scope: !4437, file: !4319, line: 198, baseType: !4450, size: 64, offset: 320)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{null, !4326, !141, !141, !7}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "readio", scope: !4437, file: !4319, line: 199, baseType: !4450, size: 64, offset: 384)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "sprite", scope: !4327, file: !4319, line: 453, baseType: !4437, size: 448, offset: 4288)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !4327, file: !4319, line: 454, baseType: !4456, size: 320, offset: 4736)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cmap", file: !126, line: 282, size: 320, elements: !4457)
!4457 = !{!4458, !4459, !4460, !4462, !4463, !4464}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4456, file: !126, line: 283, baseType: !154, size: 32)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4456, file: !126, line: 284, baseType: !154, size: 32, offset: 32)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !4456, file: !126, line: 285, baseType: !4461, size: 64, offset: 64)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !4456, file: !126, line: 286, baseType: !4461, size: 64, offset: 128)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !4456, file: !126, line: 287, baseType: !4461, size: 64, offset: 192)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !4456, file: !126, line: 288, baseType: !4461, size: 64, offset: 256)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "modelist", scope: !4327, file: !4319, line: 455, baseType: !272, size: 128, offset: 5056)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4327, file: !4319, line: 456, baseType: !4389, size: 64, offset: 5184)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "bl_dev", scope: !4327, file: !4319, line: 462, baseType: !4468, size: 64, offset: 5248)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_device", file: !108, line: 280, size: 6912, elements: !4470)
!4470 = !{!4471, !4481, !4482, !4483, !4498, !4510, !4511, !4512, !4514}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "props", scope: !4469, file: !108, line: 284, baseType: !4472, size: 224)
!4472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_properties", file: !108, line: 182, size: 224, elements: !4473)
!4473 = !{!4474, !4475, !4476, !4477, !4478, !4479, !4480}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !4472, file: !108, line: 194, baseType: !143, size: 32)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !4472, file: !108, line: 203, baseType: !143, size: 32, offset: 32)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4472, file: !108, line: 219, baseType: !143, size: 32, offset: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !4472, file: !108, line: 238, baseType: !143, size: 32, offset: 96)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4472, file: !108, line: 249, baseType: !107, size: 32, offset: 128)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4472, file: !108, line: 264, baseType: !7, size: 32, offset: 160)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4472, file: !108, line: 272, baseType: !114, size: 32, offset: 192)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "update_lock", scope: !4469, file: !108, line: 294, baseType: !1320, size: 192, offset: 256)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "ops_lock", scope: !4469, file: !108, line: 303, baseType: !1320, size: 192, offset: 448)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4469, file: !108, line: 312, baseType: !4484, size: 64, offset: 640)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4486)
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_ops", file: !108, line: 120, size: 256, elements: !4487)
!4487 = !{!4488, !4489, !4493, !4494}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4486, file: !108, line: 128, baseType: !7, size: 32)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "update_status", scope: !4486, file: !108, line: 146, baseType: !4490, size: 64, offset: 64)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!143, !4468}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "get_brightness", scope: !4486, file: !108, line: 160, baseType: !4490, size: 64, offset: 128)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "check_fb", scope: !4486, file: !108, line: 174, baseType: !4495, size: 64, offset: 192)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!143, !4468, !4326}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "fb_notif", scope: !4469, file: !108, line: 317, baseType: !4499, size: 192, offset: 704)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4500, line: 54, size: 192, elements: !4501)
!4500 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!4501 = !{!4502, !4508, !4509}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4499, file: !4500, line: 55, baseType: !4503, size: 64)
!4503 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4500, line: 51, baseType: !4504)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!143, !4507, !293, !141}
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4499, file: !4500, line: 56, baseType: !4507, size: 64, offset: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4499, file: !4500, line: 57, baseType: !143, size: 32, offset: 128)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4469, file: !108, line: 322, baseType: !272, size: 128, offset: 896)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4469, file: !108, line: 327, baseType: !381, size: 5568, offset: 1024)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "fb_bl_on", scope: !4469, file: !108, line: 335, baseType: !4513, size: 256, offset: 6592)
!4513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 256, elements: !2426)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4469, file: !108, line: 340, baseType: !143, size: 32, offset: 6848)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "bl_curve_mutex", scope: !4327, file: !4319, line: 465, baseType: !1320, size: 192, offset: 5312)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "bl_curve", scope: !4327, file: !4319, line: 466, baseType: !4517, size: 1024, offset: 5504)
!4517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 1024, elements: !3646)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_work", scope: !4327, file: !4319, line: 469, baseType: !4519, size: 704, offset: 6528)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2157, line: 115, size: 704, elements: !4520)
!4520 = !{!4521, !4522, !4523, !4524}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4519, file: !2157, line: 116, baseType: !2156, size: 256)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4519, file: !2157, line: 117, baseType: !3746, size: 320, offset: 256)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4519, file: !2157, line: 120, baseType: !2988, size: 64, offset: 576)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4519, file: !2157, line: 121, baseType: !143, size: 32, offset: 640)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "fbdefio", scope: !4327, file: !4319, line: 470, baseType: !4526, size: 64, offset: 7232)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_deferred_io", file: !4319, line: 203, size: 512, elements: !4528)
!4528 = !{!4529, !4530, !4531, !4532, !4536}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4527, file: !4319, line: 205, baseType: !293, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4527, file: !4319, line: 206, baseType: !1320, size: 192, offset: 64)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "pagelist", scope: !4527, file: !4319, line: 207, baseType: !272, size: 128, offset: 256)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "first_io", scope: !4527, file: !4319, line: 209, baseType: !4533, size: 64, offset: 384)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{null, !4326}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_io", scope: !4527, file: !4319, line: 210, baseType: !4537, size: 64, offset: 448)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{null, !4326, !276}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "fbops", scope: !4327, file: !4319, line: 473, baseType: !4541, size: 64, offset: 7296)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4327, file: !4319, line: 474, baseType: !380, size: 64, offset: 7360)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4327, file: !4319, line: 475, baseType: !380, size: 64, offset: 7424)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "class_flag", scope: !4327, file: !4319, line: 476, baseType: !143, size: 32, offset: 7488)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "tileops", scope: !4327, file: !4319, line: 478, baseType: !4546, size: 64, offset: 7552)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tile_ops", file: !4319, line: 355, size: 384, elements: !4548)
!4548 = !{!4549, !4563, !4576, !4591, !4607, !4620}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "fb_settile", scope: !4547, file: !4319, line: 357, baseType: !4550, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{null, !4326, !4553}
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilemap", file: !4319, line: 306, size: 192, elements: !4555)
!4555 = !{!4556, !4557, !4558, !4559, !4560}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4554, file: !4319, line: 307, baseType: !154, size: 32)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4554, file: !4319, line: 308, baseType: !154, size: 32, offset: 32)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4554, file: !4319, line: 309, baseType: !154, size: 32, offset: 64)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4554, file: !4319, line: 310, baseType: !154, size: 32, offset: 96)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4554, file: !4319, line: 311, baseType: !4561, size: 64, offset: 128)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilecopy", scope: !4547, file: !4319, line: 362, baseType: !4564, size: 64, offset: 64)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{null, !4326, !4567}
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilearea", file: !4319, line: 326, size: 192, elements: !4569)
!4569 = !{!4570, !4571, !4572, !4573, !4574, !4575}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4568, file: !4319, line: 327, baseType: !154, size: 32)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4568, file: !4319, line: 328, baseType: !154, size: 32, offset: 32)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4568, file: !4319, line: 329, baseType: !154, size: 32, offset: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4568, file: !4319, line: 330, baseType: !154, size: 32, offset: 96)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4568, file: !4319, line: 331, baseType: !154, size: 32, offset: 128)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4568, file: !4319, line: 332, baseType: !154, size: 32, offset: 160)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilefill", scope: !4547, file: !4319, line: 364, baseType: !4577, size: 64, offset: 128)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{null, !4326, !4580}
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilerect", file: !4319, line: 315, size: 256, elements: !4582)
!4582 = !{!4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4581, file: !4319, line: 316, baseType: !154, size: 32)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4581, file: !4319, line: 317, baseType: !154, size: 32, offset: 32)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4581, file: !4319, line: 318, baseType: !154, size: 32, offset: 64)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4581, file: !4319, line: 319, baseType: !154, size: 32, offset: 96)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4581, file: !4319, line: 320, baseType: !154, size: 32, offset: 128)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4581, file: !4319, line: 321, baseType: !154, size: 32, offset: 160)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4581, file: !4319, line: 322, baseType: !154, size: 32, offset: 192)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4581, file: !4319, line: 323, baseType: !154, size: 32, offset: 224)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tileblit", scope: !4547, file: !4319, line: 366, baseType: !4592, size: 64, offset: 192)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{null, !4326, !4595}
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tileblit", file: !4319, line: 335, size: 320, elements: !4597)
!4597 = !{!4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4596, file: !4319, line: 336, baseType: !154, size: 32)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4596, file: !4319, line: 337, baseType: !154, size: 32, offset: 32)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4596, file: !4319, line: 338, baseType: !154, size: 32, offset: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4596, file: !4319, line: 339, baseType: !154, size: 32, offset: 96)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4596, file: !4319, line: 340, baseType: !154, size: 32, offset: 128)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4596, file: !4319, line: 341, baseType: !154, size: 32, offset: 160)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4596, file: !4319, line: 342, baseType: !154, size: 32, offset: 192)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !4596, file: !4319, line: 343, baseType: !4606, size: 64, offset: 256)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilecursor", scope: !4547, file: !4319, line: 368, baseType: !4608, size: 64, offset: 256)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{null, !4326, !4611}
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilecursor", file: !4319, line: 346, size: 192, elements: !4613)
!4613 = !{!4614, !4615, !4616, !4617, !4618, !4619}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4612, file: !4319, line: 347, baseType: !154, size: 32)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4612, file: !4319, line: 348, baseType: !154, size: 32, offset: 32)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4612, file: !4319, line: 349, baseType: !154, size: 32, offset: 64)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !4612, file: !4319, line: 350, baseType: !154, size: 32, offset: 96)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4612, file: !4319, line: 351, baseType: !154, size: 32, offset: 128)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4612, file: !4319, line: 352, baseType: !154, size: 32, offset: 160)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_tilemax", scope: !4547, file: !4319, line: 371, baseType: !4621, size: 64, offset: 320)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!143, !4326}
!4624 = !DIDerivedType(tag: DW_TAG_member, scope: !4327, file: !4319, line: 480, baseType: !4625, size: 64, offset: 7616)
!4625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4327, file: !4319, line: 480, size: 64, elements: !4626)
!4626 = !{!4627, !4628}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "screen_base", scope: !4625, file: !4319, line: 481, baseType: !214, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "screen_buffer", scope: !4625, file: !4319, line: 482, baseType: !214, size: 64)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "screen_size", scope: !4327, file: !4319, line: 484, baseType: !293, size: 64, offset: 7680)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "pseudo_palette", scope: !4327, file: !4319, line: 485, baseType: !141, size: 64, offset: 7744)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4327, file: !4319, line: 488, baseType: !152, size: 32, offset: 7808)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_par", scope: !4327, file: !4319, line: 489, baseType: !141, size: 64, offset: 7872)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !4327, file: !4319, line: 491, baseType: !141, size: 64, offset: 7936)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "apertures", scope: !4327, file: !4319, line: 501, baseType: !4635, size: 64, offset: 8000)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apertures_struct", file: !4319, line: 495, size: 64, elements: !4637)
!4637 = !{!4638, !4639}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4636, file: !4319, line: 496, baseType: !7, size: 32)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4636, file: !4319, line: 500, baseType: !4640, offset: 64)
!4640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4641, elements: !1902)
!4641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aperture", file: !4319, line: 497, size: 128, elements: !4642)
!4642 = !{!4643, !4644}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4641, file: !4319, line: 498, baseType: !319, size: 64)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4641, file: !4319, line: 499, baseType: !319, size: 64, offset: 64)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "skip_vt_switch", scope: !4327, file: !4319, line: 503, baseType: !640, size: 8, offset: 8064)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "fb_release", scope: !4318, file: !4319, line: 232, baseType: !4323, size: 64, offset: 128)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "fb_read", scope: !4318, file: !4319, line: 237, baseType: !4648, size: 64, offset: 192)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!468, !4326, !214, !483, !3071}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "fb_write", scope: !4318, file: !4319, line: 239, baseType: !4652, size: 64, offset: 256)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!468, !4326, !197, !483, !3071}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "fb_check_var", scope: !4318, file: !4319, line: 244, baseType: !4656, size: 64, offset: 320)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4657, size: 64)
!4657 = !DISubroutineType(types: !4658)
!4658 = !{!143, !4659, !4326}
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "fb_set_par", scope: !4318, file: !4319, line: 247, baseType: !4621, size: 64, offset: 384)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcolreg", scope: !4318, file: !4319, line: 250, baseType: !4662, size: 64, offset: 448)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!143, !7, !7, !7, !7, !7, !4326}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcmap", scope: !4318, file: !4319, line: 254, baseType: !4666, size: 64, offset: 512)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DISubroutineType(types: !4668)
!4668 = !{!143, !4669, !4326}
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !4318, file: !4319, line: 257, baseType: !4671, size: 64, offset: 576)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!143, !143, !4326}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "fb_pan_display", scope: !4318, file: !4319, line: 260, baseType: !4656, size: 64, offset: 640)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "fb_fillrect", scope: !4318, file: !4319, line: 263, baseType: !4676, size: 64, offset: 704)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{null, !4326, !4679}
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4681)
!4681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fillrect", file: !126, line: 351, size: 192, elements: !4682)
!4682 = !{!4683, !4684, !4685, !4686, !4687, !4688}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4681, file: !126, line: 352, baseType: !154, size: 32)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4681, file: !126, line: 353, baseType: !154, size: 32, offset: 32)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4681, file: !126, line: 354, baseType: !154, size: 32, offset: 64)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4681, file: !126, line: 355, baseType: !154, size: 32, offset: 96)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !4681, file: !126, line: 356, baseType: !154, size: 32, offset: 128)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4681, file: !126, line: 357, baseType: !154, size: 32, offset: 160)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "fb_copyarea", scope: !4318, file: !4319, line: 265, baseType: !4690, size: 64, offset: 768)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{null, !4326, !4693}
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4695)
!4695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_copyarea", file: !126, line: 342, size: 192, elements: !4696)
!4696 = !{!4697, !4698, !4699, !4700, !4701, !4702}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4695, file: !126, line: 343, baseType: !154, size: 32)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4695, file: !126, line: 344, baseType: !154, size: 32, offset: 32)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4695, file: !126, line: 345, baseType: !154, size: 32, offset: 64)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4695, file: !126, line: 346, baseType: !154, size: 32, offset: 96)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4695, file: !126, line: 347, baseType: !154, size: 32, offset: 128)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4695, file: !126, line: 348, baseType: !154, size: 32, offset: 160)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "fb_imageblit", scope: !4318, file: !4319, line: 267, baseType: !4704, size: 64, offset: 832)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{null, !4326, !4707}
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4709)
!4709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_image", file: !126, line: 360, size: 640, elements: !4710)
!4710 = !{!4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4709, file: !126, line: 361, baseType: !154, size: 32)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4709, file: !126, line: 362, baseType: !154, size: 32, offset: 32)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4709, file: !126, line: 363, baseType: !154, size: 32, offset: 64)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4709, file: !126, line: 364, baseType: !154, size: 32, offset: 96)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "fg_color", scope: !4709, file: !126, line: 365, baseType: !154, size: 32, offset: 128)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "bg_color", scope: !4709, file: !126, line: 366, baseType: !154, size: 32, offset: 160)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4709, file: !126, line: 367, baseType: !230, size: 8, offset: 192)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4709, file: !126, line: 368, baseType: !197, size: 64, offset: 256)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !4709, file: !126, line: 369, baseType: !4456, size: 320, offset: 320)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "fb_cursor", scope: !4318, file: !4319, line: 270, baseType: !4721, size: 64, offset: 896)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{!143, !4326, !4724}
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cursor", file: !126, line: 388, size: 832, elements: !4726)
!4726 = !{!4727, !4728, !4729, !4730, !4731, !4736}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4725, file: !126, line: 389, baseType: !222, size: 16)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4725, file: !126, line: 390, baseType: !222, size: 16, offset: 16)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4725, file: !126, line: 391, baseType: !222, size: 16, offset: 32)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4725, file: !126, line: 392, baseType: !197, size: 64, offset: 64)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "hot", scope: !4725, file: !126, line: 393, baseType: !4732, size: 32, offset: 128)
!4732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fbcurpos", file: !126, line: 384, size: 32, elements: !4733)
!4733 = !{!4734, !4735}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4732, file: !126, line: 385, baseType: !222, size: 16)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4732, file: !126, line: 385, baseType: !222, size: 16, offset: 16)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "image", scope: !4725, file: !126, line: 394, baseType: !4709, size: 640, offset: 192)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "fb_sync", scope: !4318, file: !4319, line: 273, baseType: !4621, size: 64, offset: 960)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "fb_ioctl", scope: !4318, file: !4319, line: 276, baseType: !4739, size: 64, offset: 1024)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!143, !4326, !7, !293}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "fb_compat_ioctl", scope: !4318, file: !4319, line: 280, baseType: !4739, size: 64, offset: 1088)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "fb_mmap", scope: !4318, file: !4319, line: 284, baseType: !4744, size: 64, offset: 1152)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!143, !4326, !1130}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_caps", scope: !4318, file: !4319, line: 287, baseType: !4748, size: 64, offset: 1216)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{null, !4326, !4751, !4659}
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_blit_caps", file: !4319, line: 144, size: 128, elements: !4753)
!4753 = !{!4754, !4755, !4756, !4757}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4752, file: !4319, line: 145, baseType: !152, size: 32)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4752, file: !4319, line: 146, baseType: !152, size: 32, offset: 32)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4752, file: !4319, line: 147, baseType: !152, size: 32, offset: 64)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4752, file: !4319, line: 148, baseType: !152, size: 32, offset: 96)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "fb_destroy", scope: !4318, file: !4319, line: 291, baseType: !4533, size: 64, offset: 1280)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_enter", scope: !4318, file: !4319, line: 294, baseType: !4621, size: 64, offset: 1344)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_leave", scope: !4318, file: !4319, line: 295, baseType: !4621, size: 64, offset: 1408)
!4761 = !DIGlobalVariableExpression(var: !4762, expr: !DIExpression())
!4762 = distinct !DIGlobalVariable(name: "pixsize", scope: !2, file: !3, line: 70, type: !4763, isLocal: true, isDefinition: true)
!4763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !580, size: 48, elements: !1806)
!4764 = !DIGlobalVariableExpression(var: !4765, expr: !DIExpression())
!4765 = distinct !DIGlobalVariable(name: "eightbits", scope: !2, file: !3, line: 322, type: !4766, isLocal: true, isDefinition: true)
!4766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4347)
!4767 = !DIGlobalVariableExpression(var: !4768, expr: !DIExpression())
!4768 = distinct !DIGlobalVariable(name: "nobits", scope: !2, file: !3, line: 323, type: !4766, isLocal: true, isDefinition: true)
!4769 = !DIGlobalVariableExpression(var: !4770, expr: !DIExpression())
!4770 = distinct !DIGlobalVariable(name: "defaultmode", scope: !2, file: !3, line: 163, type: !4771, isLocal: true, isDefinition: true)
!4771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4390)
!4772 = !DIGlobalVariableExpression(var: !4773, expr: !DIExpression())
!4773 = distinct !DIGlobalVariable(name: "mdivtab", scope: !2, file: !3, line: 206, type: !4774, isLocal: true, isDefinition: true)
!4774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !580, size: 512, elements: !442)
!4775 = !DIGlobalVariableExpression(var: !4776, expr: !DIExpression())
!4776 = distinct !DIGlobalVariable(name: "ndivtab", scope: !2, file: !3, line: 216, type: !4777, isLocal: true, isDefinition: true)
!4777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !580, size: 1272, elements: !4778)
!4778 = !{!4779}
!4779 = !DISubrange(count: 159)
!4780 = !DIGlobalVariableExpression(var: !4781, expr: !DIExpression())
!4781 = distinct !DIGlobalVariable(name: "watfmt", scope: !2, file: !3, line: 133, type: !4763, isLocal: true, isDefinition: true)
!4782 = !DIGlobalVariableExpression(var: !4783, expr: !DIExpression())
!4783 = distinct !DIGlobalVariable(name: "__param_str_mode_option", scope: !2, file: !3, line: 795, type: !187, isLocal: true, isDefinition: true)
!4784 = !{i32 7, !"Dwarf Version", i32 4}
!4785 = !{i32 2, !"Debug Info Version", i32 3}
!4786 = !{i32 1, !"wchar_size", i32 2}
!4787 = !{i32 1, !"Code Model", i32 2}
!4788 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4789 = distinct !DISubprogram(name: "gxt4500_init", scope: !3, file: !3, line: 775, type: !4790, scopeLine: 776, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !411)
!4790 = !DISubroutineType(types: !4791)
!4791 = !{!143}
!4792 = !DILocation(line: 778, column: 6, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4789, file: !3, line: 778, column: 6)
!4794 = !DILocation(line: 778, column: 6, scope: !4789)
!4795 = !DILocation(line: 779, column: 3, scope: !4793)
!4796 = !DILocation(line: 782, column: 9, scope: !4789)
!4797 = !DILocation(line: 782, column: 2, scope: !4789)
!4798 = !DILocation(line: 783, column: 1, scope: !4789)
!4799 = distinct !DISubprogram(name: "gxt4500_exit", scope: !3, file: !3, line: 786, type: !166, scopeLine: 787, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !411)
!4800 = !DILocation(line: 788, column: 2, scope: !4799)
!4801 = !DILocation(line: 789, column: 1, scope: !4799)
!4802 = distinct !DISubprogram(name: "gxt4500_probe", scope: !3, file: !3, line: 615, type: !296, scopeLine: 616, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !411)
!4803 = !DILocalVariable(name: "pdev", arg: 1, scope: !4802, file: !3, line: 615, type: !298)
!4804 = !DILocation(line: 615, column: 42, scope: !4802)
!4805 = !DILocalVariable(name: "ent", arg: 2, scope: !4802, file: !3, line: 615, type: !280)
!4806 = !DILocation(line: 615, column: 76, scope: !4802)
!4807 = !DILocalVariable(name: "err", scope: !4802, file: !3, line: 617, type: !143)
!4808 = !DILocation(line: 617, column: 6, scope: !4802)
!4809 = !DILocalVariable(name: "reg_phys", scope: !4802, file: !3, line: 618, type: !293)
!4810 = !DILocation(line: 618, column: 16, scope: !4802)
!4811 = !DILocalVariable(name: "fb_phys", scope: !4802, file: !3, line: 618, type: !293)
!4812 = !DILocation(line: 618, column: 26, scope: !4802)
!4813 = !DILocalVariable(name: "par", scope: !4802, file: !3, line: 619, type: !137)
!4814 = !DILocation(line: 619, column: 22, scope: !4802)
!4815 = !DILocalVariable(name: "info", scope: !4802, file: !3, line: 620, type: !4326)
!4816 = !DILocation(line: 620, column: 18, scope: !4802)
!4817 = !DILocalVariable(name: "var", scope: !4802, file: !3, line: 621, type: !4336)
!4818 = !DILocation(line: 621, column: 27, scope: !4802)
!4819 = !DILocalVariable(name: "cardtype", scope: !4802, file: !3, line: 622, type: !119)
!4820 = !DILocation(line: 622, column: 17, scope: !4802)
!4821 = !DILocation(line: 624, column: 26, scope: !4802)
!4822 = !DILocation(line: 624, column: 8, scope: !4802)
!4823 = !DILocation(line: 624, column: 6, scope: !4802)
!4824 = !DILocation(line: 625, column: 6, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 625, column: 6)
!4826 = !DILocation(line: 625, column: 6, scope: !4802)
!4827 = !DILocation(line: 626, column: 3, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4825, file: !3, line: 625, column: 11)
!4829 = !DILocation(line: 628, column: 10, scope: !4828)
!4830 = !DILocation(line: 628, column: 3, scope: !4828)
!4831 = !DILocation(line: 631, column: 13, scope: !4802)
!4832 = !DILocation(line: 631, column: 11, scope: !4802)
!4833 = !DILocation(line: 632, column: 7, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 632, column: 6)
!4835 = !DILocation(line: 632, column: 6, scope: !4802)
!4836 = !DILocation(line: 634, column: 3, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 633, column: 22)
!4838 = !DILocation(line: 635, column: 3, scope: !4837)
!4839 = !DILocation(line: 638, column: 12, scope: !4802)
!4840 = !DILocation(line: 638, column: 10, scope: !4802)
!4841 = !DILocation(line: 639, column: 7, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 639, column: 6)
!4843 = !DILocation(line: 639, column: 6, scope: !4802)
!4844 = !DILocation(line: 641, column: 3, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4842, file: !3, line: 640, column: 20)
!4846 = !DILocation(line: 642, column: 3, scope: !4845)
!4847 = !DILocation(line: 645, column: 56, scope: !4802)
!4848 = !DILocation(line: 645, column: 62, scope: !4802)
!4849 = !DILocation(line: 645, column: 9, scope: !4802)
!4850 = !DILocation(line: 645, column: 7, scope: !4802)
!4851 = !DILocation(line: 646, column: 7, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 646, column: 6)
!4853 = !DILocation(line: 646, column: 6, scope: !4802)
!4854 = !DILocation(line: 647, column: 3, scope: !4852)
!4855 = !DILocation(line: 649, column: 8, scope: !4802)
!4856 = !DILocation(line: 649, column: 14, scope: !4802)
!4857 = !DILocation(line: 649, column: 6, scope: !4802)
!4858 = !DILocation(line: 650, column: 13, scope: !4802)
!4859 = !DILocation(line: 650, column: 18, scope: !4802)
!4860 = !DILocation(line: 650, column: 11, scope: !4802)
!4861 = !DILocation(line: 651, column: 28, scope: !4802)
!4862 = !DILocation(line: 651, column: 19, scope: !4802)
!4863 = !DILocation(line: 651, column: 38, scope: !4802)
!4864 = !DILocation(line: 651, column: 2, scope: !4802)
!4865 = !DILocation(line: 651, column: 7, scope: !4802)
!4866 = !DILocation(line: 651, column: 17, scope: !4802)
!4867 = !DILocation(line: 652, column: 2, scope: !4802)
!4868 = !DILocation(line: 652, column: 8, scope: !4802)
!4869 = !DILocation(line: 652, column: 14, scope: !4802)
!4870 = !DILocation(line: 653, column: 10, scope: !4802)
!4871 = !DILocation(line: 653, column: 16, scope: !4802)
!4872 = !DILocation(line: 653, column: 20, scope: !4802)
!4873 = !DILocation(line: 653, column: 33, scope: !4802)
!4874 = !DILocation(line: 653, column: 24, scope: !4802)
!4875 = !DILocation(line: 653, column: 43, scope: !4802)
!4876 = !DILocation(line: 653, column: 2, scope: !4802)
!4877 = !DILocation(line: 655, column: 25, scope: !4802)
!4878 = !DILocation(line: 655, column: 30, scope: !4802)
!4879 = !DILocation(line: 655, column: 2, scope: !4802)
!4880 = !DILocation(line: 655, column: 8, scope: !4802)
!4881 = !DILocation(line: 655, column: 23, scope: !4802)
!4882 = !DILocation(line: 657, column: 25, scope: !4802)
!4883 = !DILocation(line: 657, column: 2, scope: !4802)
!4884 = !DILocation(line: 657, column: 8, scope: !4802)
!4885 = !DILocation(line: 657, column: 12, scope: !4802)
!4886 = !DILocation(line: 657, column: 23, scope: !4802)
!4887 = !DILocation(line: 658, column: 30, scope: !4802)
!4888 = !DILocation(line: 658, column: 14, scope: !4802)
!4889 = !DILocation(line: 658, column: 2, scope: !4802)
!4890 = !DILocation(line: 658, column: 7, scope: !4802)
!4891 = !DILocation(line: 658, column: 12, scope: !4802)
!4892 = !DILocation(line: 659, column: 7, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 659, column: 6)
!4894 = !DILocation(line: 659, column: 12, scope: !4893)
!4895 = !DILocation(line: 659, column: 6, scope: !4802)
!4896 = !DILocation(line: 660, column: 3, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 659, column: 18)
!4898 = !DILocation(line: 661, column: 3, scope: !4897)
!4899 = !DILocation(line: 664, column: 25, scope: !4802)
!4900 = !DILocation(line: 664, column: 2, scope: !4802)
!4901 = !DILocation(line: 664, column: 8, scope: !4802)
!4902 = !DILocation(line: 664, column: 12, scope: !4802)
!4903 = !DILocation(line: 664, column: 23, scope: !4802)
!4904 = !DILocation(line: 665, column: 23, scope: !4802)
!4905 = !DILocation(line: 665, column: 2, scope: !4802)
!4906 = !DILocation(line: 665, column: 8, scope: !4802)
!4907 = !DILocation(line: 665, column: 12, scope: !4802)
!4908 = !DILocation(line: 665, column: 21, scope: !4802)
!4909 = !DILocation(line: 666, column: 41, scope: !4802)
!4910 = !DILocation(line: 666, column: 22, scope: !4802)
!4911 = !DILocation(line: 666, column: 2, scope: !4802)
!4912 = !DILocation(line: 666, column: 8, scope: !4802)
!4913 = !DILocation(line: 666, column: 20, scope: !4802)
!4914 = !DILocation(line: 667, column: 7, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 667, column: 6)
!4916 = !DILocation(line: 667, column: 13, scope: !4915)
!4917 = !DILocation(line: 667, column: 6, scope: !4802)
!4918 = !DILocation(line: 668, column: 3, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 667, column: 26)
!4920 = !DILocation(line: 669, column: 3, scope: !4919)
!4921 = !DILocation(line: 672, column: 18, scope: !4802)
!4922 = !DILocation(line: 672, column: 24, scope: !4802)
!4923 = !DILocation(line: 672, column: 2, scope: !4802)
!4924 = !DILocation(line: 674, column: 36, scope: !4802)
!4925 = !DILocation(line: 674, column: 42, scope: !4802)
!4926 = !DILocation(line: 674, column: 46, scope: !4802)
!4927 = !DILocation(line: 675, column: 8, scope: !4802)
!4928 = !DILocation(line: 675, column: 14, scope: !4802)
!4929 = !DILocation(line: 675, column: 18, scope: !4802)
!4930 = !DILocation(line: 674, column: 19, scope: !4802)
!4931 = !DILocation(line: 674, column: 2, scope: !4802)
!4932 = !DILocation(line: 674, column: 7, scope: !4802)
!4933 = !DILocation(line: 674, column: 17, scope: !4802)
!4934 = !DILocation(line: 682, column: 25, scope: !4802)
!4935 = !DILocation(line: 682, column: 2, scope: !4802)
!4936 = !DILocation(line: 684, column: 25, scope: !4802)
!4937 = !DILocation(line: 684, column: 2, scope: !4802)
!4938 = !DILocation(line: 687, column: 2, scope: !4802)
!4939 = !DILocation(line: 687, column: 8, scope: !4802)
!4940 = !DILocation(line: 687, column: 14, scope: !4802)
!4941 = !DILocation(line: 688, column: 2, scope: !4802)
!4942 = !DILocation(line: 688, column: 8, scope: !4802)
!4943 = !DILocation(line: 688, column: 14, scope: !4802)
!4944 = !DILocation(line: 691, column: 23, scope: !4802)
!4945 = !DILocation(line: 691, column: 29, scope: !4802)
!4946 = !DILocation(line: 691, column: 8, scope: !4802)
!4947 = !DILocation(line: 691, column: 6, scope: !4802)
!4948 = !DILocation(line: 692, column: 6, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 692, column: 6)
!4950 = !DILocation(line: 692, column: 6, scope: !4802)
!4951 = !DILocation(line: 693, column: 3, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4949, file: !3, line: 692, column: 11)
!4953 = !DILocation(line: 694, column: 3, scope: !4952)
!4954 = !DILocation(line: 697, column: 34, scope: !4802)
!4955 = !DILocation(line: 697, column: 2, scope: !4802)
!4956 = !DILocation(line: 699, column: 26, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 699, column: 6)
!4958 = !DILocation(line: 699, column: 32, scope: !4957)
!4959 = !DILocation(line: 699, column: 7, scope: !4957)
!4960 = !DILocation(line: 699, column: 6, scope: !4802)
!4961 = !DILocation(line: 700, column: 3, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4957, file: !3, line: 699, column: 72)
!4963 = !DILocation(line: 701, column: 3, scope: !4962)
!4964 = !DILocation(line: 703, column: 2, scope: !4802)
!4965 = !DILocation(line: 703, column: 8, scope: !4802)
!4966 = !DILocation(line: 703, column: 14, scope: !4802)
!4967 = !DILocation(line: 704, column: 22, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 704, column: 6)
!4969 = !DILocation(line: 704, column: 6, scope: !4968)
!4970 = !DILocation(line: 704, column: 6, scope: !4802)
!4971 = !DILocation(line: 705, column: 3, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4968, file: !3, line: 704, column: 29)
!4973 = !DILocation(line: 706, column: 3, scope: !4972)
!4974 = !DILocation(line: 709, column: 27, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 709, column: 6)
!4976 = !DILocation(line: 709, column: 6, scope: !4975)
!4977 = !DILocation(line: 709, column: 33, scope: !4975)
!4978 = !DILocation(line: 709, column: 6, scope: !4802)
!4979 = !DILocation(line: 710, column: 3, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4975, file: !3, line: 709, column: 38)
!4981 = !DILocation(line: 711, column: 3, scope: !4980)
!4982 = !DILocation(line: 713, column: 2, scope: !4802)
!4983 = !DILocation(line: 715, column: 2, scope: !4802)
!4984 = !DILabel(scope: !4802, name: "err_free_cmap", file: !3, line: 717)
!4985 = !DILocation(line: 717, column: 2, scope: !4802)
!4986 = !DILocation(line: 718, column: 19, scope: !4802)
!4987 = !DILocation(line: 718, column: 25, scope: !4802)
!4988 = !DILocation(line: 718, column: 2, scope: !4802)
!4989 = !DILabel(scope: !4802, name: "err_unmap_all", file: !3, line: 719)
!4990 = !DILocation(line: 719, column: 2, scope: !4802)
!4991 = !DILocation(line: 720, column: 10, scope: !4802)
!4992 = !DILocation(line: 720, column: 16, scope: !4802)
!4993 = !DILocation(line: 720, column: 2, scope: !4802)
!4994 = !DILabel(scope: !4802, name: "err_unmap_regs", file: !3, line: 721)
!4995 = !DILocation(line: 721, column: 2, scope: !4802)
!4996 = !DILocation(line: 722, column: 10, scope: !4802)
!4997 = !DILocation(line: 722, column: 15, scope: !4802)
!4998 = !DILocation(line: 722, column: 2, scope: !4802)
!4999 = !DILabel(scope: !4802, name: "err_free_all", file: !3, line: 723)
!5000 = !DILocation(line: 723, column: 2, scope: !4802)
!5001 = !DILocation(line: 724, column: 22, scope: !4802)
!5002 = !DILocation(line: 724, column: 2, scope: !4802)
!5003 = !DILabel(scope: !4802, name: "err_free_fb", file: !3, line: 725)
!5004 = !DILocation(line: 725, column: 2, scope: !4802)
!5005 = !DILocation(line: 726, column: 2, scope: !4802)
!5006 = !DILabel(scope: !4802, name: "err_free_regs", file: !3, line: 727)
!5007 = !DILocation(line: 727, column: 2, scope: !4802)
!5008 = !DILocation(line: 728, column: 2, scope: !4802)
!5009 = !DILabel(scope: !4802, name: "err_nodev", file: !3, line: 729)
!5010 = !DILocation(line: 729, column: 2, scope: !4802)
!5011 = !DILocation(line: 730, column: 2, scope: !4802)
!5012 = !DILocation(line: 731, column: 1, scope: !4802)
!5013 = distinct !DISubprogram(name: "gxt4500_remove", scope: !3, file: !3, line: 733, type: !4241, scopeLine: 734, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !411)
!5014 = !DILocalVariable(name: "pdev", arg: 1, scope: !5013, file: !3, line: 733, type: !298)
!5015 = !DILocation(line: 733, column: 44, scope: !5013)
!5016 = !DILocalVariable(name: "info", scope: !5013, file: !3, line: 735, type: !4326)
!5017 = !DILocation(line: 735, column: 18, scope: !5013)
!5018 = !DILocation(line: 735, column: 41, scope: !5013)
!5019 = !DILocation(line: 735, column: 25, scope: !5013)
!5020 = !DILocalVariable(name: "par", scope: !5013, file: !3, line: 736, type: !137)
!5021 = !DILocation(line: 736, column: 22, scope: !5013)
!5022 = !DILocation(line: 738, column: 7, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5013, file: !3, line: 738, column: 6)
!5024 = !DILocation(line: 738, column: 6, scope: !5013)
!5025 = !DILocation(line: 739, column: 3, scope: !5023)
!5026 = !DILocation(line: 740, column: 8, scope: !5013)
!5027 = !DILocation(line: 740, column: 14, scope: !5013)
!5028 = !DILocation(line: 740, column: 6, scope: !5013)
!5029 = !DILocation(line: 741, column: 25, scope: !5013)
!5030 = !DILocation(line: 741, column: 2, scope: !5013)
!5031 = !DILocation(line: 742, column: 19, scope: !5013)
!5032 = !DILocation(line: 742, column: 24, scope: !5013)
!5033 = !DILocation(line: 742, column: 2, scope: !5013)
!5034 = !DILocation(line: 743, column: 19, scope: !5013)
!5035 = !DILocation(line: 743, column: 25, scope: !5013)
!5036 = !DILocation(line: 743, column: 2, scope: !5013)
!5037 = !DILocation(line: 744, column: 10, scope: !5013)
!5038 = !DILocation(line: 744, column: 15, scope: !5013)
!5039 = !DILocation(line: 744, column: 2, scope: !5013)
!5040 = !DILocation(line: 745, column: 10, scope: !5013)
!5041 = !DILocation(line: 745, column: 16, scope: !5013)
!5042 = !DILocation(line: 745, column: 2, scope: !5013)
!5043 = !DILocation(line: 746, column: 2, scope: !5013)
!5044 = !DILocation(line: 748, column: 2, scope: !5013)
!5045 = !DILocation(line: 750, column: 22, scope: !5013)
!5046 = !DILocation(line: 750, column: 2, scope: !5013)
!5047 = !DILocation(line: 751, column: 1, scope: !5013)
!5048 = distinct !DISubprogram(name: "pci_set_drvdata", scope: !269, file: !269, line: 1870, type: !5049, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !411)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{null, !298, !141}
!5051 = !DILocalVariable(name: "pdev", arg: 1, scope: !5048, file: !269, line: 1870, type: !298)
!5052 = !DILocation(line: 1870, column: 52, scope: !5048)
!5053 = !DILocalVariable(name: "data", arg: 2, scope: !5048, file: !269, line: 1870, type: !141)
!5054 = !DILocation(line: 1870, column: 64, scope: !5048)
!5055 = !DILocation(line: 1872, column: 19, scope: !5048)
!5056 = !DILocation(line: 1872, column: 25, scope: !5048)
!5057 = !DILocation(line: 1872, column: 30, scope: !5048)
!5058 = !DILocation(line: 1872, column: 2, scope: !5048)
!5059 = !DILocation(line: 1873, column: 1, scope: !5048)
!5060 = distinct !DISubprogram(name: "gxt4500_blank", scope: !3, file: !3, line: 563, type: !4672, scopeLine: 564, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !411)
!5061 = !DILocalVariable(name: "blank", arg: 1, scope: !5060, file: !3, line: 563, type: !143)
!5062 = !DILocation(line: 563, column: 30, scope: !5060)
!5063 = !DILocalVariable(name: "info", arg: 2, scope: !5060, file: !3, line: 563, type: !4326)
!5064 = !DILocation(line: 563, column: 53, scope: !5060)
!5065 = !DILocalVariable(name: "par", scope: !5060, file: !3, line: 565, type: !137)
!5066 = !DILocation(line: 565, column: 22, scope: !5060)
!5067 = !DILocation(line: 565, column: 28, scope: !5060)
!5068 = !DILocation(line: 565, column: 34, scope: !5060)
!5069 = !DILocalVariable(name: "ctrl", scope: !5060, file: !3, line: 566, type: !143)
!5070 = !DILocation(line: 566, column: 6, scope: !5060)
!5071 = !DILocalVariable(name: "dctl", scope: !5060, file: !3, line: 566, type: !143)
!5072 = !DILocation(line: 566, column: 12, scope: !5060)
!5073 = !DILocation(line: 568, column: 9, scope: !5060)
!5074 = !DILocation(line: 568, column: 7, scope: !5060)
!5075 = !DILocation(line: 569, column: 7, scope: !5060)
!5076 = !DILocation(line: 570, column: 9, scope: !5060)
!5077 = !DILocation(line: 570, column: 7, scope: !5060)
!5078 = !DILocation(line: 571, column: 7, scope: !5060)
!5079 = !DILocation(line: 572, column: 10, scope: !5060)
!5080 = !DILocation(line: 572, column: 2, scope: !5060)
!5081 = !DILocation(line: 574, column: 8, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5060, file: !3, line: 572, column: 17)
!5083 = !DILocation(line: 575, column: 3, scope: !5082)
!5084 = !DILocation(line: 577, column: 8, scope: !5082)
!5085 = !DILocation(line: 578, column: 3, scope: !5082)
!5086 = !DILocation(line: 580, column: 8, scope: !5082)
!5087 = !DILocation(line: 581, column: 3, scope: !5082)
!5088 = !DILocation(line: 583, column: 8, scope: !5082)
!5089 = !DILocation(line: 584, column: 3, scope: !5082)
!5090 = !DILocation(line: 586, column: 2, scope: !5082)
!5091 = !DILocation(line: 587, column: 2, scope: !5060)
!5092 = !DILocation(line: 588, column: 2, scope: !5060)
!5093 = !DILocation(line: 590, column: 2, scope: !5060)
!5094 = distinct !DISubprogram(name: "gxt4500_set_par", scope: !3, file: !3, line: 375, type: !4622, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !411)
!5095 = !DILocalVariable(name: "info", arg: 1, scope: !5094, file: !3, line: 375, type: !4326)
!5096 = !DILocation(line: 375, column: 44, scope: !5094)
!5097 = !DILocalVariable(name: "par", scope: !5094, file: !3, line: 377, type: !137)
!5098 = !DILocation(line: 377, column: 22, scope: !5094)
!5099 = !DILocation(line: 377, column: 28, scope: !5094)
!5100 = !DILocation(line: 377, column: 34, scope: !5094)
!5101 = !DILocalVariable(name: "var", scope: !5094, file: !3, line: 378, type: !4659)
!5102 = !DILocation(line: 378, column: 28, scope: !5094)
!5103 = !DILocation(line: 378, column: 35, scope: !5094)
!5104 = !DILocation(line: 378, column: 41, scope: !5094)
!5105 = !DILocalVariable(name: "err", scope: !5094, file: !3, line: 379, type: !143)
!5106 = !DILocation(line: 379, column: 6, scope: !5094)
!5107 = !DILocalVariable(name: "ctrlreg", scope: !5094, file: !3, line: 380, type: !152)
!5108 = !DILocation(line: 380, column: 6, scope: !5094)
!5109 = !DILocalVariable(name: "tmp", scope: !5094, file: !3, line: 380, type: !152)
!5110 = !DILocation(line: 380, column: 15, scope: !5094)
!5111 = !DILocalVariable(name: "dfa_ctl", scope: !5094, file: !3, line: 381, type: !7)
!5112 = !DILocation(line: 381, column: 15, scope: !5094)
!5113 = !DILocalVariable(name: "pixfmt", scope: !5094, file: !3, line: 381, type: !7)
!5114 = !DILocation(line: 381, column: 24, scope: !5094)
!5115 = !DILocalVariable(name: "stride", scope: !5094, file: !3, line: 381, type: !7)
!5116 = !DILocation(line: 381, column: 32, scope: !5094)
!5117 = !DILocalVariable(name: "wid_tiles", scope: !5094, file: !3, line: 382, type: !7)
!5118 = !DILocation(line: 382, column: 15, scope: !5094)
!5119 = !DILocalVariable(name: "i", scope: !5094, file: !3, line: 382, type: !7)
!5120 = !DILocation(line: 382, column: 26, scope: !5094)
!5121 = !DILocalVariable(name: "prefetch_pix", scope: !5094, file: !3, line: 383, type: !7)
!5122 = !DILocation(line: 383, column: 15, scope: !5094)
!5123 = !DILocalVariable(name: "htot", scope: !5094, file: !3, line: 383, type: !7)
!5124 = !DILocation(line: 383, column: 29, scope: !5094)
!5125 = !DILocalVariable(name: "save_par", scope: !5094, file: !3, line: 384, type: !138)
!5126 = !DILocation(line: 384, column: 21, scope: !5094)
!5127 = !DILocation(line: 386, column: 14, scope: !5094)
!5128 = !DILocation(line: 386, column: 13, scope: !5094)
!5129 = !DILocation(line: 387, column: 27, scope: !5094)
!5130 = !DILocation(line: 387, column: 32, scope: !5094)
!5131 = !DILocation(line: 387, column: 8, scope: !5094)
!5132 = !DILocation(line: 387, column: 6, scope: !5094)
!5133 = !DILocation(line: 388, column: 6, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 388, column: 6)
!5135 = !DILocation(line: 388, column: 6, scope: !5094)
!5136 = !DILocation(line: 389, column: 4, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5134, file: !3, line: 388, column: 11)
!5138 = !DILocation(line: 389, column: 10, scope: !5137)
!5139 = !DILocation(line: 390, column: 10, scope: !5137)
!5140 = !DILocation(line: 390, column: 3, scope: !5137)
!5141 = !DILocation(line: 394, column: 12, scope: !5094)
!5142 = !DILocation(line: 394, column: 10, scope: !5094)
!5143 = !DILocation(line: 395, column: 10, scope: !5094)
!5144 = !DILocation(line: 396, column: 2, scope: !5094)
!5145 = !DILocation(line: 399, column: 8, scope: !5094)
!5146 = !DILocation(line: 399, column: 28, scope: !5094)
!5147 = !DILocation(line: 399, column: 6, scope: !5094)
!5148 = !DILocation(line: 400, column: 6, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 400, column: 6)
!5150 = !DILocation(line: 400, column: 11, scope: !5149)
!5151 = !DILocation(line: 400, column: 17, scope: !5149)
!5152 = !DILocation(line: 400, column: 6, scope: !5094)
!5153 = !DILocation(line: 401, column: 7, scope: !5149)
!5154 = !DILocation(line: 401, column: 3, scope: !5149)
!5155 = !DILocation(line: 402, column: 6, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 402, column: 6)
!5157 = !DILocation(line: 402, column: 11, scope: !5156)
!5158 = !DILocation(line: 402, column: 17, scope: !5156)
!5159 = !DILocation(line: 402, column: 6, scope: !5094)
!5160 = !DILocation(line: 403, column: 7, scope: !5156)
!5161 = !DILocation(line: 403, column: 3, scope: !5156)
!5162 = !DILocation(line: 404, column: 11, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 404, column: 11)
!5164 = !DILocation(line: 404, column: 16, scope: !5163)
!5165 = !DILocation(line: 404, column: 22, scope: !5163)
!5166 = !DILocation(line: 404, column: 11, scope: !5156)
!5167 = !DILocation(line: 405, column: 7, scope: !5163)
!5168 = !DILocation(line: 405, column: 3, scope: !5163)
!5169 = !DILocation(line: 407, column: 7, scope: !5163)
!5170 = !DILocation(line: 408, column: 2, scope: !5094)
!5171 = !DILocation(line: 409, column: 2, scope: !5094)
!5172 = !DILocation(line: 410, column: 2, scope: !5094)
!5173 = !DILocation(line: 411, column: 14, scope: !5094)
!5174 = !DILocation(line: 411, column: 19, scope: !5094)
!5175 = !DILocation(line: 411, column: 12, scope: !5094)
!5176 = !DILocation(line: 411, column: 28, scope: !5094)
!5177 = !DILocation(line: 411, column: 41, scope: !5094)
!5178 = !DILocation(line: 411, column: 46, scope: !5094)
!5179 = !DILocation(line: 411, column: 39, scope: !5094)
!5180 = !DILocation(line: 411, column: 34, scope: !5094)
!5181 = !DILocation(line: 411, column: 6, scope: !5094)
!5182 = !DILocation(line: 412, column: 6, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 412, column: 6)
!5184 = !DILocation(line: 412, column: 11, scope: !5183)
!5185 = !DILocation(line: 412, column: 19, scope: !5183)
!5186 = !DILocation(line: 412, column: 24, scope: !5183)
!5187 = !DILocation(line: 412, column: 27, scope: !5183)
!5188 = !DILocation(line: 412, column: 32, scope: !5183)
!5189 = !DILocation(line: 412, column: 40, scope: !5183)
!5190 = !DILocation(line: 412, column: 6, scope: !5094)
!5191 = !DILocation(line: 414, column: 3, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5183, file: !3, line: 412, column: 46)
!5193 = !DILocation(line: 415, column: 3, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5195, file: !3, line: 415, column: 3)
!5195 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 415, column: 3)
!5196 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 415, column: 3)
!5197 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 415, column: 3)
!5198 = !DILocation(line: 416, column: 2, scope: !5192)
!5199 = !DILocation(line: 417, column: 2, scope: !5094)
!5200 = !DILocation(line: 418, column: 2, scope: !5094)
!5201 = !DILocation(line: 421, column: 2, scope: !5094)
!5202 = !DILocation(line: 424, column: 2, scope: !5094)
!5203 = !DILocation(line: 425, column: 2, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 425, column: 2)
!5205 = distinct !DILexicalBlock(scope: !5206, file: !3, line: 425, column: 2)
!5206 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 425, column: 2)
!5207 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 425, column: 2)
!5208 = !DILocation(line: 426, column: 2, scope: !5094)
!5209 = !DILocation(line: 429, column: 9, scope: !5094)
!5210 = !DILocation(line: 429, column: 14, scope: !5094)
!5211 = !DILocation(line: 429, column: 21, scope: !5094)
!5212 = !DILocation(line: 429, column: 26, scope: !5094)
!5213 = !DILocation(line: 429, column: 19, scope: !5094)
!5214 = !DILocation(line: 429, column: 40, scope: !5094)
!5215 = !DILocation(line: 429, column: 45, scope: !5094)
!5216 = !DILocation(line: 429, column: 38, scope: !5094)
!5217 = !DILocation(line: 430, column: 3, scope: !5094)
!5218 = !DILocation(line: 430, column: 8, scope: !5094)
!5219 = !DILocation(line: 429, column: 58, scope: !5094)
!5220 = !DILocation(line: 429, column: 7, scope: !5094)
!5221 = !DILocation(line: 431, column: 2, scope: !5094)
!5222 = !DILocation(line: 432, column: 2, scope: !5094)
!5223 = !DILocation(line: 433, column: 2, scope: !5094)
!5224 = !DILocation(line: 434, column: 2, scope: !5094)
!5225 = !DILocation(line: 436, column: 2, scope: !5094)
!5226 = !DILocation(line: 438, column: 2, scope: !5094)
!5227 = !DILocation(line: 441, column: 2, scope: !5094)
!5228 = !DILocation(line: 442, column: 2, scope: !5094)
!5229 = !DILocation(line: 443, column: 2, scope: !5094)
!5230 = !DILocation(line: 445, column: 27, scope: !5094)
!5231 = !DILocation(line: 445, column: 32, scope: !5094)
!5232 = !DILocation(line: 445, column: 25, scope: !5094)
!5233 = !DILocation(line: 445, column: 15, scope: !5094)
!5234 = !DILocation(line: 446, column: 6, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 446, column: 6)
!5236 = !DILocation(line: 446, column: 22, scope: !5235)
!5237 = !DILocation(line: 446, column: 19, scope: !5235)
!5238 = !DILocation(line: 446, column: 6, scope: !5094)
!5239 = !DILocation(line: 447, column: 18, scope: !5235)
!5240 = !DILocation(line: 447, column: 23, scope: !5235)
!5241 = !DILocation(line: 447, column: 16, scope: !5235)
!5242 = !DILocation(line: 447, column: 3, scope: !5235)
!5243 = !DILocation(line: 448, column: 2, scope: !5094)
!5244 = !DILocation(line: 449, column: 10, scope: !5094)
!5245 = !DILocation(line: 450, column: 2, scope: !5094)
!5246 = !DILocation(line: 453, column: 6, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 453, column: 6)
!5248 = !DILocation(line: 453, column: 11, scope: !5247)
!5249 = !DILocation(line: 453, column: 24, scope: !5247)
!5250 = !DILocation(line: 453, column: 6, scope: !5094)
!5251 = !DILocation(line: 454, column: 10, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5247, file: !3, line: 453, column: 32)
!5253 = !DILocation(line: 455, column: 11, scope: !5252)
!5254 = !DILocation(line: 456, column: 2, scope: !5252)
!5255 = !DILocation(line: 456, column: 13, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5247, file: !3, line: 456, column: 13)
!5257 = !DILocation(line: 456, column: 18, scope: !5256)
!5258 = !DILocation(line: 456, column: 31, scope: !5256)
!5259 = !DILocation(line: 456, column: 13, scope: !5247)
!5260 = !DILocation(line: 457, column: 10, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 456, column: 39)
!5262 = !DILocation(line: 458, column: 11, scope: !5261)
!5263 = !DILocation(line: 459, column: 2, scope: !5261)
!5264 = !DILocation(line: 460, column: 10, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 459, column: 9)
!5266 = !DILocation(line: 461, column: 11, scope: !5265)
!5267 = !DILocation(line: 465, column: 15, scope: !5094)
!5268 = !DILocation(line: 465, column: 20, scope: !5094)
!5269 = !DILocation(line: 465, column: 33, scope: !5094)
!5270 = !DILocation(line: 465, column: 39, scope: !5094)
!5271 = !DILocation(line: 465, column: 12, scope: !5094)
!5272 = !DILocation(line: 468, column: 2, scope: !5094)
!5273 = !DILocation(line: 469, column: 2, scope: !5094)
!5274 = !DILocation(line: 470, column: 2, scope: !5094)
!5275 = !DILocation(line: 471, column: 2, scope: !5094)
!5276 = !DILocation(line: 472, column: 2, scope: !5094)
!5277 = !DILocation(line: 473, column: 2, scope: !5094)
!5278 = !DILocation(line: 477, column: 11, scope: !5094)
!5279 = !DILocation(line: 477, column: 16, scope: !5094)
!5280 = !DILocation(line: 477, column: 9, scope: !5094)
!5281 = !DILocation(line: 478, column: 29, scope: !5094)
!5282 = !DILocation(line: 478, column: 27, scope: !5094)
!5283 = !DILocation(line: 478, column: 10, scope: !5094)
!5284 = !DILocation(line: 479, column: 2, scope: !5094)
!5285 = !DILocation(line: 486, column: 9, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 486, column: 2)
!5287 = !DILocation(line: 486, column: 7, scope: !5286)
!5288 = !DILocation(line: 486, column: 14, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5286, file: !3, line: 486, column: 2)
!5290 = !DILocation(line: 486, column: 16, scope: !5289)
!5291 = !DILocation(line: 486, column: 2, scope: !5286)
!5292 = !DILocation(line: 487, column: 3, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 486, column: 27)
!5294 = !DILocation(line: 488, column: 3, scope: !5293)
!5295 = !DILocation(line: 489, column: 3, scope: !5293)
!5296 = !DILocation(line: 490, column: 3, scope: !5293)
!5297 = !DILocation(line: 491, column: 2, scope: !5293)
!5298 = !DILocation(line: 486, column: 22, scope: !5289)
!5299 = !DILocation(line: 486, column: 2, scope: !5289)
!5300 = distinct !{!5300, !5291, !5301}
!5301 = !DILocation(line: 491, column: 2, scope: !5286)
!5302 = !DILocation(line: 494, column: 12, scope: !5094)
!5303 = !DILocation(line: 494, column: 35, scope: !5094)
!5304 = !DILocation(line: 494, column: 10, scope: !5094)
!5305 = !DILocation(line: 497, column: 6, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 497, column: 6)
!5307 = !DILocation(line: 497, column: 11, scope: !5306)
!5308 = !DILocation(line: 497, column: 16, scope: !5306)
!5309 = !DILocation(line: 497, column: 6, scope: !5094)
!5310 = !DILocation(line: 498, column: 11, scope: !5306)
!5311 = !DILocation(line: 498, column: 3, scope: !5306)
!5312 = !DILocation(line: 499, column: 8, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 499, column: 6)
!5314 = !DILocation(line: 499, column: 13, scope: !5313)
!5315 = !DILocation(line: 499, column: 18, scope: !5313)
!5316 = !DILocation(line: 499, column: 6, scope: !5094)
!5317 = !DILocation(line: 500, column: 11, scope: !5313)
!5318 = !DILocation(line: 500, column: 3, scope: !5313)
!5319 = !DILocation(line: 501, column: 8, scope: !5320)
!5320 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 501, column: 6)
!5321 = !DILocation(line: 501, column: 13, scope: !5320)
!5322 = !DILocation(line: 501, column: 18, scope: !5320)
!5323 = !DILocation(line: 501, column: 6, scope: !5094)
!5324 = !DILocation(line: 502, column: 11, scope: !5320)
!5325 = !DILocation(line: 502, column: 3, scope: !5320)
!5326 = !DILocation(line: 503, column: 2, scope: !5094)
!5327 = !DILocation(line: 505, column: 26, scope: !5094)
!5328 = !DILocation(line: 505, column: 43, scope: !5094)
!5329 = !DILocation(line: 505, column: 35, scope: !5094)
!5330 = !DILocation(line: 505, column: 33, scope: !5094)
!5331 = !DILocation(line: 505, column: 2, scope: !5094)
!5332 = !DILocation(line: 505, column: 8, scope: !5094)
!5333 = !DILocation(line: 505, column: 12, scope: !5094)
!5334 = !DILocation(line: 505, column: 24, scope: !5094)
!5335 = !DILocation(line: 506, column: 22, scope: !5094)
!5336 = !DILocation(line: 506, column: 29, scope: !5094)
!5337 = !DILocation(line: 506, column: 21, scope: !5094)
!5338 = !DILocation(line: 506, column: 2, scope: !5094)
!5339 = !DILocation(line: 506, column: 8, scope: !5094)
!5340 = !DILocation(line: 506, column: 12, scope: !5094)
!5341 = !DILocation(line: 506, column: 19, scope: !5094)
!5342 = !DILocation(line: 509, column: 2, scope: !5094)
!5343 = !DILocation(line: 510, column: 1, scope: !5094)
!5344 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !5345, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !411)
!5345 = !DISubroutineType(types: !5346)
!5346 = !{null, !380, !141}
!5347 = !DILocalVariable(name: "dev", arg: 1, scope: !5344, file: !73, line: 660, type: !380)
!5348 = !DILocation(line: 660, column: 51, scope: !5344)
!5349 = !DILocalVariable(name: "data", arg: 2, scope: !5344, file: !73, line: 660, type: !141)
!5350 = !DILocation(line: 660, column: 62, scope: !5344)
!5351 = !DILocation(line: 662, column: 21, scope: !5344)
!5352 = !DILocation(line: 662, column: 2, scope: !5344)
!5353 = !DILocation(line: 662, column: 7, scope: !5344)
!5354 = !DILocation(line: 662, column: 19, scope: !5344)
!5355 = !DILocation(line: 663, column: 1, scope: !5344)
!5356 = distinct !DISubprogram(name: "gxt4500_check_var", scope: !3, file: !3, line: 360, type: !4657, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !411)
!5357 = !DILocalVariable(name: "var", arg: 1, scope: !5356, file: !3, line: 360, type: !4659)
!5358 = !DILocation(line: 360, column: 56, scope: !5356)
!5359 = !DILocalVariable(name: "info", arg: 2, scope: !5356, file: !3, line: 361, type: !4326)
!5360 = !DILocation(line: 361, column: 25, scope: !5356)
!5361 = !DILocalVariable(name: "par", scope: !5356, file: !3, line: 363, type: !138)
!5362 = !DILocation(line: 363, column: 21, scope: !5356)
!5363 = !DILocalVariable(name: "err", scope: !5356, file: !3, line: 364, type: !143)
!5364 = !DILocation(line: 364, column: 6, scope: !5356)
!5365 = !DILocation(line: 366, column: 31, scope: !5356)
!5366 = !DILocation(line: 366, column: 37, scope: !5356)
!5367 = !DILocation(line: 366, column: 9, scope: !5356)
!5368 = !DILocation(line: 366, column: 8, scope: !5356)
!5369 = !DILocation(line: 367, column: 27, scope: !5356)
!5370 = !DILocation(line: 367, column: 8, scope: !5356)
!5371 = !DILocation(line: 367, column: 6, scope: !5356)
!5372 = !DILocation(line: 368, column: 7, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5356, file: !3, line: 368, column: 6)
!5374 = !DILocation(line: 368, column: 6, scope: !5356)
!5375 = !DILocation(line: 369, column: 19, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 368, column: 12)
!5377 = !DILocation(line: 369, column: 3, scope: !5376)
!5378 = !DILocation(line: 369, column: 8, scope: !5376)
!5379 = !DILocation(line: 369, column: 17, scope: !5376)
!5380 = !DILocation(line: 370, column: 25, scope: !5376)
!5381 = !DILocation(line: 370, column: 34, scope: !5376)
!5382 = !DILocation(line: 370, column: 3, scope: !5376)
!5383 = !DILocation(line: 371, column: 2, scope: !5376)
!5384 = !DILocation(line: 372, column: 9, scope: !5356)
!5385 = !DILocation(line: 372, column: 2, scope: !5356)
!5386 = distinct !DISubprogram(name: "gxt4500_setcolreg", scope: !3, file: !3, line: 512, type: !4663, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !411)
!5387 = !DILocalVariable(name: "reg", arg: 1, scope: !5386, file: !3, line: 512, type: !7)
!5388 = !DILocation(line: 512, column: 43, scope: !5386)
!5389 = !DILocalVariable(name: "red", arg: 2, scope: !5386, file: !3, line: 512, type: !7)
!5390 = !DILocation(line: 512, column: 61, scope: !5386)
!5391 = !DILocalVariable(name: "green", arg: 3, scope: !5386, file: !3, line: 513, type: !7)
!5392 = !DILocation(line: 513, column: 22, scope: !5386)
!5393 = !DILocalVariable(name: "blue", arg: 4, scope: !5386, file: !3, line: 513, type: !7)
!5394 = !DILocation(line: 513, column: 42, scope: !5386)
!5395 = !DILocalVariable(name: "transp", arg: 5, scope: !5386, file: !3, line: 514, type: !7)
!5396 = !DILocation(line: 514, column: 22, scope: !5386)
!5397 = !DILocalVariable(name: "info", arg: 6, scope: !5386, file: !3, line: 514, type: !4326)
!5398 = !DILocation(line: 514, column: 46, scope: !5386)
!5399 = !DILocalVariable(name: "cmap_entry", scope: !5386, file: !3, line: 516, type: !152)
!5400 = !DILocation(line: 516, column: 6, scope: !5386)
!5401 = !DILocalVariable(name: "par", scope: !5386, file: !3, line: 517, type: !137)
!5402 = !DILocation(line: 517, column: 22, scope: !5386)
!5403 = !DILocation(line: 517, column: 28, scope: !5386)
!5404 = !DILocation(line: 517, column: 34, scope: !5386)
!5405 = !DILocation(line: 519, column: 6, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5386, file: !3, line: 519, column: 6)
!5407 = !DILocation(line: 519, column: 10, scope: !5406)
!5408 = !DILocation(line: 519, column: 6, scope: !5386)
!5409 = !DILocation(line: 520, column: 3, scope: !5406)
!5410 = !DILocation(line: 521, column: 17, scope: !5386)
!5411 = !DILocation(line: 521, column: 24, scope: !5386)
!5412 = !DILocation(line: 521, column: 34, scope: !5386)
!5413 = !DILocation(line: 521, column: 45, scope: !5386)
!5414 = !DILocation(line: 521, column: 49, scope: !5386)
!5415 = !DILocation(line: 521, column: 59, scope: !5386)
!5416 = !DILocation(line: 521, column: 41, scope: !5386)
!5417 = !DILocation(line: 522, column: 4, scope: !5386)
!5418 = !DILocation(line: 522, column: 10, scope: !5386)
!5419 = !DILocation(line: 521, column: 65, scope: !5386)
!5420 = !DILocation(line: 522, column: 23, scope: !5386)
!5421 = !DILocation(line: 522, column: 28, scope: !5386)
!5422 = !DILocation(line: 522, column: 20, scope: !5386)
!5423 = !DILocation(line: 521, column: 13, scope: !5386)
!5424 = !DILocation(line: 523, column: 2, scope: !5386)
!5425 = !DILocation(line: 525, column: 6, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5386, file: !3, line: 525, column: 6)
!5427 = !DILocation(line: 525, column: 10, scope: !5426)
!5428 = !DILocation(line: 525, column: 15, scope: !5426)
!5429 = !DILocation(line: 525, column: 18, scope: !5426)
!5430 = !DILocation(line: 525, column: 23, scope: !5426)
!5431 = !DILocation(line: 525, column: 30, scope: !5426)
!5432 = !DILocation(line: 525, column: 6, scope: !5386)
!5433 = !DILocalVariable(name: "pal", scope: !5434, file: !3, line: 526, type: !355)
!5434 = distinct !DILexicalBlock(scope: !5426, file: !3, line: 525, column: 47)
!5435 = !DILocation(line: 526, column: 8, scope: !5434)
!5436 = !DILocation(line: 526, column: 14, scope: !5434)
!5437 = !DILocation(line: 526, column: 20, scope: !5434)
!5438 = !DILocalVariable(name: "val", scope: !5434, file: !3, line: 527, type: !152)
!5439 = !DILocation(line: 527, column: 7, scope: !5434)
!5440 = !DILocation(line: 527, column: 13, scope: !5434)
!5441 = !DILocation(line: 528, column: 11, scope: !5434)
!5442 = !DILocation(line: 528, column: 16, scope: !5434)
!5443 = !DILocation(line: 528, column: 3, scope: !5434)
!5444 = !DILocation(line: 530, column: 12, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 528, column: 24)
!5446 = !DILocation(line: 530, column: 16, scope: !5445)
!5447 = !DILocation(line: 530, column: 26, scope: !5445)
!5448 = !DILocation(line: 530, column: 30, scope: !5445)
!5449 = !DILocation(line: 530, column: 23, scope: !5445)
!5450 = !DILocation(line: 530, column: 8, scope: !5445)
!5451 = !DILocation(line: 531, column: 4, scope: !5445)
!5452 = !DILocation(line: 533, column: 12, scope: !5445)
!5453 = !DILocation(line: 533, column: 16, scope: !5445)
!5454 = !DILocation(line: 533, column: 26, scope: !5445)
!5455 = !DILocation(line: 533, column: 30, scope: !5445)
!5456 = !DILocation(line: 533, column: 23, scope: !5445)
!5457 = !DILocation(line: 533, column: 8, scope: !5445)
!5458 = !DILocation(line: 534, column: 4, scope: !5445)
!5459 = !DILocation(line: 536, column: 12, scope: !5445)
!5460 = !DILocation(line: 536, column: 16, scope: !5445)
!5461 = !DILocation(line: 536, column: 8, scope: !5445)
!5462 = !DILocation(line: 536, column: 4, scope: !5445)
!5463 = !DILocation(line: 539, column: 12, scope: !5445)
!5464 = !DILocation(line: 539, column: 16, scope: !5445)
!5465 = !DILocation(line: 539, column: 26, scope: !5445)
!5466 = !DILocation(line: 539, column: 30, scope: !5445)
!5467 = !DILocation(line: 539, column: 23, scope: !5445)
!5468 = !DILocation(line: 539, column: 8, scope: !5445)
!5469 = !DILocation(line: 540, column: 4, scope: !5445)
!5470 = !DILocation(line: 542, column: 14, scope: !5434)
!5471 = !DILocation(line: 542, column: 3, scope: !5434)
!5472 = !DILocation(line: 542, column: 7, scope: !5434)
!5473 = !DILocation(line: 542, column: 12, scope: !5434)
!5474 = !DILocation(line: 543, column: 2, scope: !5434)
!5475 = !DILocation(line: 545, column: 2, scope: !5386)
!5476 = !DILocation(line: 546, column: 1, scope: !5386)
!5477 = distinct !DISubprogram(name: "gxt4500_pan_display", scope: !3, file: !3, line: 548, type: !4657, scopeLine: 550, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !411)
!5478 = !DILocalVariable(name: "var", arg: 1, scope: !5477, file: !3, line: 548, type: !4659)
!5479 = !DILocation(line: 548, column: 58, scope: !5477)
!5480 = !DILocalVariable(name: "info", arg: 2, scope: !5477, file: !3, line: 549, type: !4326)
!5481 = !DILocation(line: 549, column: 27, scope: !5477)
!5482 = !DILocalVariable(name: "par", scope: !5477, file: !3, line: 551, type: !137)
!5483 = !DILocation(line: 551, column: 22, scope: !5477)
!5484 = !DILocation(line: 551, column: 28, scope: !5477)
!5485 = !DILocation(line: 551, column: 34, scope: !5477)
!5486 = !DILocation(line: 553, column: 6, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 553, column: 6)
!5488 = !DILocation(line: 553, column: 11, scope: !5487)
!5489 = !DILocation(line: 553, column: 19, scope: !5487)
!5490 = !DILocation(line: 553, column: 6, scope: !5477)
!5491 = !DILocation(line: 554, column: 3, scope: !5487)
!5492 = !DILocation(line: 555, column: 6, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 555, column: 6)
!5494 = !DILocation(line: 555, column: 11, scope: !5493)
!5495 = !DILocation(line: 555, column: 21, scope: !5493)
!5496 = !DILocation(line: 555, column: 27, scope: !5493)
!5497 = !DILocation(line: 555, column: 31, scope: !5493)
!5498 = !DILocation(line: 555, column: 19, scope: !5493)
!5499 = !DILocation(line: 555, column: 38, scope: !5493)
!5500 = !DILocation(line: 555, column: 44, scope: !5493)
!5501 = !DILocation(line: 555, column: 48, scope: !5493)
!5502 = !DILocation(line: 555, column: 36, scope: !5493)
!5503 = !DILocation(line: 555, column: 61, scope: !5493)
!5504 = !DILocation(line: 556, column: 6, scope: !5493)
!5505 = !DILocation(line: 556, column: 11, scope: !5493)
!5506 = !DILocation(line: 556, column: 21, scope: !5493)
!5507 = !DILocation(line: 556, column: 27, scope: !5493)
!5508 = !DILocation(line: 556, column: 31, scope: !5493)
!5509 = !DILocation(line: 556, column: 19, scope: !5493)
!5510 = !DILocation(line: 556, column: 38, scope: !5493)
!5511 = !DILocation(line: 556, column: 44, scope: !5493)
!5512 = !DILocation(line: 556, column: 48, scope: !5493)
!5513 = !DILocation(line: 556, column: 36, scope: !5493)
!5514 = !DILocation(line: 555, column: 6, scope: !5477)
!5515 = !DILocation(line: 557, column: 3, scope: !5493)
!5516 = !DILocation(line: 559, column: 2, scope: !5477)
!5517 = !DILocation(line: 560, column: 2, scope: !5477)
!5518 = !DILocation(line: 561, column: 1, scope: !5477)
!5519 = distinct !DISubprogram(name: "gxt4500_var_to_par", scope: !3, file: !3, line: 283, type: !5520, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !411)
!5520 = !DISubroutineType(types: !5521)
!5521 = !{!143, !4659, !137}
!5522 = !DILocalVariable(name: "var", arg: 1, scope: !5519, file: !3, line: 283, type: !4659)
!5523 = !DILocation(line: 283, column: 57, scope: !5519)
!5524 = !DILocalVariable(name: "par", arg: 2, scope: !5519, file: !3, line: 284, type: !137)
!5525 = !DILocation(line: 284, column: 30, scope: !5519)
!5526 = !DILocation(line: 286, column: 6, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 286, column: 6)
!5528 = !DILocation(line: 286, column: 11, scope: !5527)
!5529 = !DILocation(line: 286, column: 18, scope: !5527)
!5530 = !DILocation(line: 286, column: 23, scope: !5527)
!5531 = !DILocation(line: 286, column: 16, scope: !5527)
!5532 = !DILocation(line: 286, column: 33, scope: !5527)
!5533 = !DILocation(line: 286, column: 38, scope: !5527)
!5534 = !DILocation(line: 286, column: 31, scope: !5527)
!5535 = !DILocation(line: 286, column: 51, scope: !5527)
!5536 = !DILocation(line: 287, column: 6, scope: !5527)
!5537 = !DILocation(line: 287, column: 11, scope: !5527)
!5538 = !DILocation(line: 287, column: 18, scope: !5527)
!5539 = !DILocation(line: 287, column: 23, scope: !5527)
!5540 = !DILocation(line: 287, column: 16, scope: !5527)
!5541 = !DILocation(line: 287, column: 33, scope: !5527)
!5542 = !DILocation(line: 287, column: 38, scope: !5527)
!5543 = !DILocation(line: 287, column: 31, scope: !5527)
!5544 = !DILocation(line: 287, column: 51, scope: !5527)
!5545 = !DILocation(line: 288, column: 6, scope: !5527)
!5546 = !DILocation(line: 288, column: 11, scope: !5527)
!5547 = !DILocation(line: 288, column: 24, scope: !5527)
!5548 = !DILocation(line: 286, column: 6, scope: !5519)
!5549 = !DILocation(line: 289, column: 3, scope: !5527)
!5550 = !DILocation(line: 290, column: 7, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 290, column: 6)
!5552 = !DILocation(line: 290, column: 12, scope: !5551)
!5553 = !DILocation(line: 290, column: 18, scope: !5551)
!5554 = !DILocation(line: 290, column: 35, scope: !5551)
!5555 = !DILocation(line: 290, column: 6, scope: !5519)
!5556 = !DILocation(line: 291, column: 3, scope: !5551)
!5557 = !DILocation(line: 293, column: 15, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 293, column: 6)
!5559 = !DILocation(line: 293, column: 20, scope: !5558)
!5560 = !DILocation(line: 293, column: 30, scope: !5558)
!5561 = !DILocation(line: 293, column: 6, scope: !5558)
!5562 = !DILocation(line: 293, column: 35, scope: !5558)
!5563 = !DILocation(line: 293, column: 6, scope: !5519)
!5564 = !DILocation(line: 294, column: 3, scope: !5558)
!5565 = !DILocation(line: 296, column: 10, scope: !5519)
!5566 = !DILocation(line: 296, column: 15, scope: !5519)
!5567 = !DILocation(line: 296, column: 2, scope: !5519)
!5568 = !DILocation(line: 298, column: 7, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 298, column: 7)
!5570 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 296, column: 31)
!5571 = !DILocation(line: 298, column: 12, scope: !5569)
!5572 = !DILocation(line: 298, column: 19, scope: !5569)
!5573 = !DILocation(line: 298, column: 7, scope: !5570)
!5574 = !DILocation(line: 299, column: 4, scope: !5569)
!5575 = !DILocation(line: 299, column: 9, scope: !5569)
!5576 = !DILocation(line: 299, column: 16, scope: !5569)
!5577 = !DILocation(line: 301, column: 4, scope: !5569)
!5578 = !DILocation(line: 301, column: 9, scope: !5569)
!5579 = !DILocation(line: 301, column: 16, scope: !5569)
!5580 = !DILocation(line: 302, column: 3, scope: !5570)
!5581 = !DILocation(line: 304, column: 3, scope: !5570)
!5582 = !DILocation(line: 304, column: 8, scope: !5570)
!5583 = !DILocation(line: 304, column: 15, scope: !5570)
!5584 = !DILocation(line: 305, column: 3, scope: !5570)
!5585 = !DILocation(line: 307, column: 7, scope: !5586)
!5586 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 307, column: 7)
!5587 = !DILocation(line: 307, column: 12, scope: !5586)
!5588 = !DILocation(line: 307, column: 18, scope: !5586)
!5589 = !DILocation(line: 307, column: 25, scope: !5586)
!5590 = !DILocation(line: 307, column: 7, scope: !5570)
!5591 = !DILocation(line: 308, column: 4, scope: !5586)
!5592 = !DILocation(line: 308, column: 9, scope: !5586)
!5593 = !DILocation(line: 308, column: 16, scope: !5586)
!5594 = !DILocation(line: 310, column: 4, scope: !5586)
!5595 = !DILocation(line: 310, column: 9, scope: !5586)
!5596 = !DILocation(line: 310, column: 16, scope: !5586)
!5597 = !DILocation(line: 311, column: 3, scope: !5570)
!5598 = !DILocation(line: 313, column: 3, scope: !5570)
!5599 = !DILocation(line: 313, column: 8, scope: !5570)
!5600 = !DILocation(line: 313, column: 15, scope: !5570)
!5601 = !DILocation(line: 314, column: 3, scope: !5570)
!5602 = !DILocation(line: 316, column: 3, scope: !5570)
!5603 = !DILocation(line: 319, column: 2, scope: !5519)
!5604 = !DILocation(line: 320, column: 1, scope: !5519)
!5605 = distinct !DISubprogram(name: "calc_pixclock", scope: !3, file: !3, line: 277, type: !5606, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !411)
!5606 = !DISubroutineType(types: !5607)
!5607 = !{!143, !137}
!5608 = !DILocalVariable(name: "par", arg: 1, scope: !5605, file: !3, line: 277, type: !137)
!5609 = !DILocation(line: 277, column: 46, scope: !5605)
!5610 = !DILocation(line: 279, column: 9, scope: !5605)
!5611 = !DILocation(line: 279, column: 14, scope: !5605)
!5612 = !DILocation(line: 279, column: 26, scope: !5605)
!5613 = !DILocation(line: 279, column: 31, scope: !5605)
!5614 = !DILocation(line: 279, column: 24, scope: !5605)
!5615 = !DILocation(line: 279, column: 39, scope: !5605)
!5616 = !DILocation(line: 279, column: 44, scope: !5605)
!5617 = !DILocation(line: 279, column: 37, scope: !5605)
!5618 = !DILocation(line: 279, column: 54, scope: !5605)
!5619 = !DILocation(line: 279, column: 59, scope: !5605)
!5620 = !DILocation(line: 279, column: 52, scope: !5605)
!5621 = !DILocation(line: 280, column: 5, scope: !5605)
!5622 = !DILocation(line: 280, column: 10, scope: !5605)
!5623 = !DILocation(line: 280, column: 3, scope: !5605)
!5624 = !DILocation(line: 279, column: 2, scope: !5605)
!5625 = distinct !DISubprogram(name: "gxt4500_unpack_pixfmt", scope: !3, file: !3, line: 325, type: !5626, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !411)
!5626 = !DISubroutineType(types: !5627)
!5627 = !{null, !4659, !143}
!5628 = !DILocalVariable(name: "var", arg: 1, scope: !5625, file: !3, line: 325, type: !4659)
!5629 = !DILocation(line: 325, column: 61, scope: !5625)
!5630 = !DILocalVariable(name: "pixfmt", arg: 2, scope: !5625, file: !3, line: 326, type: !143)
!5631 = !DILocation(line: 326, column: 11, scope: !5625)
!5632 = !DILocation(line: 328, column: 32, scope: !5625)
!5633 = !DILocation(line: 328, column: 24, scope: !5625)
!5634 = !DILocation(line: 328, column: 40, scope: !5625)
!5635 = !DILocation(line: 328, column: 2, scope: !5625)
!5636 = !DILocation(line: 328, column: 7, scope: !5625)
!5637 = !DILocation(line: 328, column: 22, scope: !5625)
!5638 = !DILocation(line: 329, column: 2, scope: !5625)
!5639 = !DILocation(line: 329, column: 7, scope: !5625)
!5640 = !DILocation(line: 329, column: 13, scope: !5625)
!5641 = !DILocation(line: 330, column: 2, scope: !5625)
!5642 = !DILocation(line: 330, column: 7, scope: !5625)
!5643 = !DILocation(line: 330, column: 15, scope: !5625)
!5644 = !DILocation(line: 331, column: 2, scope: !5625)
!5645 = !DILocation(line: 331, column: 7, scope: !5625)
!5646 = !DILocation(line: 331, column: 14, scope: !5625)
!5647 = !DILocation(line: 332, column: 2, scope: !5625)
!5648 = !DILocation(line: 332, column: 7, scope: !5625)
!5649 = !DILocation(line: 332, column: 16, scope: !5625)
!5650 = !DILocation(line: 334, column: 10, scope: !5625)
!5651 = !DILocation(line: 334, column: 2, scope: !5625)
!5652 = !DILocation(line: 336, column: 3, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 334, column: 18)
!5654 = !DILocation(line: 336, column: 8, scope: !5653)
!5655 = !DILocation(line: 336, column: 12, scope: !5653)
!5656 = !DILocation(line: 336, column: 19, scope: !5653)
!5657 = !DILocation(line: 337, column: 3, scope: !5653)
!5658 = !DILocation(line: 337, column: 8, scope: !5653)
!5659 = !DILocation(line: 337, column: 14, scope: !5653)
!5660 = !DILocation(line: 337, column: 21, scope: !5653)
!5661 = !DILocation(line: 338, column: 3, scope: !5653)
!5662 = !DILocation(line: 338, column: 8, scope: !5653)
!5663 = !DILocation(line: 338, column: 13, scope: !5653)
!5664 = !DILocation(line: 338, column: 20, scope: !5653)
!5665 = !DILocation(line: 339, column: 3, scope: !5653)
!5666 = !DILocation(line: 341, column: 3, scope: !5653)
!5667 = !DILocation(line: 341, column: 8, scope: !5653)
!5668 = !DILocation(line: 341, column: 12, scope: !5653)
!5669 = !DILocation(line: 341, column: 19, scope: !5653)
!5670 = !DILocation(line: 342, column: 3, scope: !5653)
!5671 = !DILocation(line: 342, column: 8, scope: !5653)
!5672 = !DILocation(line: 342, column: 14, scope: !5653)
!5673 = !DILocation(line: 342, column: 21, scope: !5653)
!5674 = !DILocation(line: 343, column: 3, scope: !5653)
!5675 = !DILocation(line: 343, column: 8, scope: !5653)
!5676 = !DILocation(line: 343, column: 13, scope: !5653)
!5677 = !DILocation(line: 343, column: 20, scope: !5653)
!5678 = !DILocation(line: 344, column: 3, scope: !5653)
!5679 = !DILocation(line: 344, column: 8, scope: !5653)
!5680 = !DILocation(line: 344, column: 15, scope: !5653)
!5681 = !DILocation(line: 344, column: 22, scope: !5653)
!5682 = !DILocation(line: 345, column: 3, scope: !5653)
!5683 = !DILocation(line: 347, column: 3, scope: !5653)
!5684 = !DILocation(line: 347, column: 8, scope: !5653)
!5685 = !DILocation(line: 347, column: 15, scope: !5653)
!5686 = !DILocation(line: 347, column: 22, scope: !5653)
!5687 = !DILocation(line: 348, column: 3, scope: !5653)
!5688 = !DILocation(line: 350, column: 6, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 350, column: 6)
!5690 = !DILocation(line: 350, column: 13, scope: !5689)
!5691 = !DILocation(line: 350, column: 6, scope: !5625)
!5692 = !DILocation(line: 351, column: 3, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5689, file: !3, line: 350, column: 30)
!5694 = !DILocation(line: 351, column: 8, scope: !5693)
!5695 = !DILocation(line: 351, column: 13, scope: !5693)
!5696 = !DILocation(line: 351, column: 20, scope: !5693)
!5697 = !DILocation(line: 352, column: 23, scope: !5693)
!5698 = !DILocation(line: 352, column: 28, scope: !5693)
!5699 = !DILocation(line: 352, column: 33, scope: !5693)
!5700 = !DILocation(line: 352, column: 3, scope: !5693)
!5701 = !DILocation(line: 352, column: 8, scope: !5693)
!5702 = !DILocation(line: 352, column: 14, scope: !5693)
!5703 = !DILocation(line: 352, column: 21, scope: !5693)
!5704 = !DILocation(line: 353, column: 21, scope: !5693)
!5705 = !DILocation(line: 353, column: 26, scope: !5693)
!5706 = !DILocation(line: 353, column: 32, scope: !5693)
!5707 = !DILocation(line: 353, column: 41, scope: !5693)
!5708 = !DILocation(line: 353, column: 46, scope: !5693)
!5709 = !DILocation(line: 353, column: 52, scope: !5693)
!5710 = !DILocation(line: 353, column: 39, scope: !5693)
!5711 = !DILocation(line: 353, column: 3, scope: !5693)
!5712 = !DILocation(line: 353, column: 8, scope: !5693)
!5713 = !DILocation(line: 353, column: 12, scope: !5693)
!5714 = !DILocation(line: 353, column: 19, scope: !5693)
!5715 = !DILocation(line: 354, column: 7, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5693, file: !3, line: 354, column: 7)
!5717 = !DILocation(line: 354, column: 12, scope: !5716)
!5718 = !DILocation(line: 354, column: 19, scope: !5716)
!5719 = !DILocation(line: 354, column: 7, scope: !5693)
!5720 = !DILocation(line: 356, column: 5, scope: !5716)
!5721 = !DILocation(line: 356, column: 10, scope: !5716)
!5722 = !DILocation(line: 356, column: 14, scope: !5716)
!5723 = !DILocation(line: 356, column: 23, scope: !5716)
!5724 = !DILocation(line: 356, column: 28, scope: !5716)
!5725 = !DILocation(line: 356, column: 32, scope: !5716)
!5726 = !DILocation(line: 356, column: 21, scope: !5716)
!5727 = !DILocation(line: 355, column: 4, scope: !5716)
!5728 = !DILocation(line: 355, column: 9, scope: !5716)
!5729 = !DILocation(line: 355, column: 16, scope: !5716)
!5730 = !DILocation(line: 355, column: 23, scope: !5716)
!5731 = !DILocation(line: 357, column: 2, scope: !5693)
!5732 = !DILocation(line: 358, column: 1, scope: !5625)
!5733 = distinct !DISubprogram(name: "calc_pll", scope: !3, file: !3, line: 236, type: !5734, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !411)
!5734 = !DISubroutineType(types: !5735)
!5735 = !{!143, !143, !137}
!5736 = !DILocalVariable(name: "period_ps", arg: 1, scope: !5733, file: !3, line: 236, type: !143)
!5737 = !DILocation(line: 236, column: 25, scope: !5733)
!5738 = !DILocalVariable(name: "par", arg: 2, scope: !5733, file: !3, line: 236, type: !137)
!5739 = !DILocation(line: 236, column: 56, scope: !5733)
!5740 = !DILocalVariable(name: "m", scope: !5733, file: !3, line: 238, type: !143)
!5741 = !DILocation(line: 238, column: 6, scope: !5733)
!5742 = !DILocalVariable(name: "n", scope: !5733, file: !3, line: 238, type: !143)
!5743 = !DILocation(line: 238, column: 9, scope: !5733)
!5744 = !DILocalVariable(name: "pdiv1", scope: !5733, file: !3, line: 238, type: !143)
!5745 = !DILocation(line: 238, column: 12, scope: !5733)
!5746 = !DILocalVariable(name: "pdiv2", scope: !5733, file: !3, line: 238, type: !143)
!5747 = !DILocation(line: 238, column: 19, scope: !5733)
!5748 = !DILocalVariable(name: "postdiv", scope: !5733, file: !3, line: 238, type: !143)
!5749 = !DILocation(line: 238, column: 26, scope: !5733)
!5750 = !DILocalVariable(name: "pll_period", scope: !5733, file: !3, line: 239, type: !143)
!5751 = !DILocation(line: 239, column: 6, scope: !5733)
!5752 = !DILocalVariable(name: "best_error", scope: !5733, file: !3, line: 239, type: !143)
!5753 = !DILocation(line: 239, column: 18, scope: !5733)
!5754 = !DILocalVariable(name: "t", scope: !5733, file: !3, line: 239, type: !143)
!5755 = !DILocation(line: 239, column: 30, scope: !5733)
!5756 = !DILocalVariable(name: "intf", scope: !5733, file: !3, line: 239, type: !143)
!5757 = !DILocation(line: 239, column: 33, scope: !5733)
!5758 = !DILocation(line: 242, column: 6, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 242, column: 6)
!5760 = !DILocation(line: 242, column: 16, scope: !5759)
!5761 = !DILocation(line: 242, column: 23, scope: !5759)
!5762 = !DILocation(line: 242, column: 26, scope: !5759)
!5763 = !DILocation(line: 242, column: 36, scope: !5759)
!5764 = !DILocation(line: 242, column: 6, scope: !5733)
!5765 = !DILocation(line: 243, column: 3, scope: !5759)
!5766 = !DILocation(line: 245, column: 13, scope: !5733)
!5767 = !DILocation(line: 246, column: 13, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 246, column: 2)
!5769 = !DILocation(line: 246, column: 7, scope: !5768)
!5770 = !DILocation(line: 246, column: 18, scope: !5771)
!5771 = distinct !DILexicalBlock(scope: !5768, file: !3, line: 246, column: 2)
!5772 = !DILocation(line: 246, column: 24, scope: !5771)
!5773 = !DILocation(line: 246, column: 2, scope: !5768)
!5774 = !DILocation(line: 247, column: 14, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5776, file: !3, line: 247, column: 3)
!5776 = distinct !DILexicalBlock(scope: !5771, file: !3, line: 246, column: 39)
!5777 = !DILocation(line: 247, column: 8, scope: !5775)
!5778 = !DILocation(line: 247, column: 19, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5775, file: !3, line: 247, column: 3)
!5780 = !DILocation(line: 247, column: 28, scope: !5779)
!5781 = !DILocation(line: 247, column: 25, scope: !5779)
!5782 = !DILocation(line: 247, column: 3, scope: !5775)
!5783 = !DILocation(line: 248, column: 14, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5779, file: !3, line: 247, column: 44)
!5785 = !DILocation(line: 248, column: 22, scope: !5784)
!5786 = !DILocation(line: 248, column: 20, scope: !5784)
!5787 = !DILocation(line: 248, column: 12, scope: !5784)
!5788 = !DILocation(line: 249, column: 17, scope: !5784)
!5789 = !DILocation(line: 249, column: 15, scope: !5784)
!5790 = !DILocation(line: 251, column: 8, scope: !5791)
!5791 = distinct !DILexicalBlock(scope: !5784, file: !3, line: 251, column: 8)
!5792 = !DILocation(line: 251, column: 19, scope: !5791)
!5793 = !DILocation(line: 251, column: 26, scope: !5791)
!5794 = !DILocation(line: 251, column: 29, scope: !5791)
!5795 = !DILocation(line: 251, column: 40, scope: !5791)
!5796 = !DILocation(line: 251, column: 8, scope: !5784)
!5797 = !DILocation(line: 252, column: 5, scope: !5791)
!5798 = !DILocation(line: 253, column: 11, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5784, file: !3, line: 253, column: 4)
!5800 = !DILocation(line: 253, column: 9, scope: !5799)
!5801 = !DILocation(line: 253, column: 16, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5799, file: !3, line: 253, column: 4)
!5803 = !DILocation(line: 253, column: 18, scope: !5802)
!5804 = !DILocation(line: 253, column: 4, scope: !5799)
!5805 = !DILocation(line: 254, column: 12, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5802, file: !3, line: 253, column: 30)
!5807 = !DILocation(line: 254, column: 16, scope: !5806)
!5808 = !DILocation(line: 254, column: 21, scope: !5806)
!5809 = !DILocation(line: 254, column: 14, scope: !5806)
!5810 = !DILocation(line: 254, column: 10, scope: !5806)
!5811 = !DILocation(line: 255, column: 9, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 255, column: 9)
!5813 = !DILocation(line: 255, column: 14, scope: !5812)
!5814 = !DILocation(line: 255, column: 9, scope: !5806)
!5815 = !DILocation(line: 256, column: 6, scope: !5812)
!5816 = !DILocation(line: 257, column: 9, scope: !5806)
!5817 = !DILocation(line: 257, column: 16, scope: !5806)
!5818 = !DILocation(line: 257, column: 14, scope: !5806)
!5819 = !DILocation(line: 257, column: 26, scope: !5806)
!5820 = !DILocation(line: 257, column: 24, scope: !5806)
!5821 = !DILocation(line: 257, column: 7, scope: !5806)
!5822 = !DILocation(line: 258, column: 9, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 258, column: 9)
!5824 = !DILocation(line: 258, column: 11, scope: !5823)
!5825 = !DILocation(line: 258, column: 15, scope: !5823)
!5826 = !DILocation(line: 258, column: 18, scope: !5823)
!5827 = !DILocation(line: 258, column: 20, scope: !5823)
!5828 = !DILocation(line: 258, column: 9, scope: !5806)
!5829 = !DILocation(line: 259, column: 6, scope: !5823)
!5830 = !DILocation(line: 260, column: 9, scope: !5806)
!5831 = !DILocation(line: 260, column: 14, scope: !5806)
!5832 = !DILocation(line: 260, column: 26, scope: !5806)
!5833 = !DILocation(line: 260, column: 24, scope: !5806)
!5834 = !DILocation(line: 260, column: 30, scope: !5806)
!5835 = !DILocation(line: 260, column: 28, scope: !5806)
!5836 = !DILocation(line: 260, column: 40, scope: !5806)
!5837 = !DILocation(line: 260, column: 38, scope: !5806)
!5838 = !DILocation(line: 260, column: 7, scope: !5806)
!5839 = !DILocation(line: 261, column: 10, scope: !5806)
!5840 = !DILocation(line: 261, column: 7, scope: !5806)
!5841 = !DILocation(line: 262, column: 9, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 262, column: 9)
!5843 = !DILocation(line: 262, column: 11, scope: !5842)
!5844 = !DILocation(line: 262, column: 16, scope: !5842)
!5845 = !DILocation(line: 262, column: 19, scope: !5842)
!5846 = !DILocation(line: 262, column: 23, scope: !5842)
!5847 = !DILocation(line: 262, column: 21, scope: !5842)
!5848 = !DILocation(line: 262, column: 9, scope: !5806)
!5849 = !DILocation(line: 263, column: 19, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 262, column: 35)
!5851 = !DILocation(line: 263, column: 6, scope: !5850)
!5852 = !DILocation(line: 263, column: 11, scope: !5850)
!5853 = !DILocation(line: 263, column: 17, scope: !5850)
!5854 = !DILocation(line: 264, column: 19, scope: !5850)
!5855 = !DILocation(line: 264, column: 6, scope: !5850)
!5856 = !DILocation(line: 264, column: 11, scope: !5850)
!5857 = !DILocation(line: 264, column: 17, scope: !5850)
!5858 = !DILocation(line: 265, column: 21, scope: !5850)
!5859 = !DILocation(line: 265, column: 6, scope: !5850)
!5860 = !DILocation(line: 265, column: 11, scope: !5850)
!5861 = !DILocation(line: 265, column: 19, scope: !5850)
!5862 = !DILocation(line: 266, column: 21, scope: !5850)
!5863 = !DILocation(line: 266, column: 6, scope: !5850)
!5864 = !DILocation(line: 266, column: 11, scope: !5850)
!5865 = !DILocation(line: 266, column: 19, scope: !5850)
!5866 = !DILocation(line: 267, column: 19, scope: !5850)
!5867 = !DILocation(line: 267, column: 17, scope: !5850)
!5868 = !DILocation(line: 268, column: 5, scope: !5850)
!5869 = !DILocation(line: 269, column: 4, scope: !5806)
!5870 = !DILocation(line: 253, column: 25, scope: !5802)
!5871 = !DILocation(line: 253, column: 4, scope: !5802)
!5872 = distinct !{!5872, !5804, !5873}
!5873 = !DILocation(line: 269, column: 4, scope: !5799)
!5874 = !DILocation(line: 270, column: 3, scope: !5784)
!5875 = !DILocation(line: 247, column: 35, scope: !5779)
!5876 = !DILocation(line: 247, column: 3, scope: !5779)
!5877 = distinct !{!5877, !5782, !5878}
!5878 = !DILocation(line: 270, column: 3, scope: !5775)
!5879 = !DILocation(line: 271, column: 2, scope: !5776)
!5880 = !DILocation(line: 246, column: 30, scope: !5771)
!5881 = !DILocation(line: 246, column: 2, scope: !5771)
!5882 = distinct !{!5882, !5773, !5883}
!5883 = !DILocation(line: 271, column: 2, scope: !5768)
!5884 = !DILocation(line: 272, column: 6, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 272, column: 6)
!5886 = !DILocation(line: 272, column: 17, scope: !5885)
!5887 = !DILocation(line: 272, column: 6, scope: !5733)
!5888 = !DILocation(line: 273, column: 3, scope: !5885)
!5889 = !DILocation(line: 274, column: 2, scope: !5733)
!5890 = !DILocation(line: 275, column: 1, scope: !5733)
!5891 = distinct !DISubprogram(name: "writel", scope: !5892, file: !5892, line: 67, type: !5893, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !411)
!5892 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!5893 = !DISubroutineType(types: !5894)
!5894 = !{null, !7, !5895}
!5895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5896, size: 64)
!5896 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5897 = !DILocalVariable(name: "val", arg: 1, scope: !5891, file: !5892, line: 67, type: !7)
!5898 = !DILocation(line: 67, column: 1, scope: !5891)
!5899 = !DILocalVariable(name: "addr", arg: 2, scope: !5891, file: !5892, line: 67, type: !5895)
!5900 = !{i32 -2141463214}
!5901 = distinct !DISubprogram(name: "readl", scope: !5892, file: !5892, line: 59, type: !5902, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !411)
!5902 = !DISubroutineType(types: !5903)
!5903 = !{!7, !5904}
!5904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5905, size: 64)
!5905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5896)
!5906 = !DILocalVariable(name: "addr", arg: 1, scope: !5901, file: !5892, line: 59, type: !5904)
!5907 = !DILocation(line: 59, column: 1, scope: !5901)
!5908 = !DILocalVariable(name: "ret", scope: !5901, file: !5892, line: 59, type: !7)
!5909 = !{i32 -2141465607}
!5910 = distinct !DISubprogram(name: "pci_get_drvdata", scope: !269, file: !269, line: 1865, type: !5911, scopeLine: 1866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !411)
!5911 = !DISubroutineType(types: !5912)
!5912 = !{!141, !298}
!5913 = !DILocalVariable(name: "pdev", arg: 1, scope: !5910, file: !269, line: 1865, type: !298)
!5914 = !DILocation(line: 1865, column: 53, scope: !5910)
!5915 = !DILocation(line: 1867, column: 26, scope: !5910)
!5916 = !DILocation(line: 1867, column: 32, scope: !5910)
!5917 = !DILocation(line: 1867, column: 9, scope: !5910)
!5918 = !DILocation(line: 1867, column: 2, scope: !5910)
!5919 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !5920, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !411)
!5920 = !DISubroutineType(types: !5921)
!5921 = !{!141, !3885}
!5922 = !DILocalVariable(name: "dev", arg: 1, scope: !5919, file: !73, line: 655, type: !3885)
!5923 = !DILocation(line: 655, column: 58, scope: !5919)
!5924 = !DILocation(line: 657, column: 9, scope: !5919)
!5925 = !DILocation(line: 657, column: 14, scope: !5919)
!5926 = !DILocation(line: 657, column: 2, scope: !5919)
