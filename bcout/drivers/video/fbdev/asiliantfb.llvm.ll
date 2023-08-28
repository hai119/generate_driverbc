; ModuleID = '../bcout/drivers/video/fbdev/asiliantfb.llvm.bc'
source_filename = "drivers/video/fbdev/asiliantfb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_asiliantfb_init6:\09\09\09"
module asm ".long\09asiliantfb_init - .\09\09\09"
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
%struct.fb_fix_screeninfo = type { [16 x i8], i64, i32, i32, i32, i32, i16, i16, i16, i32, i64, i32, i32, i16, [2 x i16] }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_ops = type { %struct.module*, i32 (%struct.fb_info*, i32)*, i32 (%struct.fb_info*, i32)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i64 (%struct.fb_info*, i8*, i64, i64*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (i32, i32, i32, i32, i32, %struct.fb_info*)*, i32 (%struct.fb_cmap*, %struct.fb_info*)*, i32 (i32, %struct.fb_info*)*, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)*, void (%struct.fb_info*, %struct.fb_fillrect*)*, void (%struct.fb_info*, %struct.fb_copyarea*)*, void (%struct.fb_info*, %struct.fb_image*)*, i32 (%struct.fb_info*, %struct.fb_cursor*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, i32, i64)*, i32 (%struct.fb_info*, %struct.vm_area_struct*)*, void (%struct.fb_info*, %struct.fb_blit_caps*, %struct.fb_var_screeninfo*)*, void (%struct.fb_info*)*, i32 (%struct.fb_info*)*, i32 (%struct.fb_info*)* }
%struct.fb_info = type { %struct.atomic_t, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, %struct.fb_videomode*, %struct.backlight_device*, %struct.mutex, [128 x i8], %struct.delayed_work, %struct.fb_deferred_io*, %struct.fb_ops*, %struct.device*, %struct.device*, i32, %struct.fb_tile_ops*, %union.anon.66, i64, i8*, i32, i8*, i8*, %struct.apertures_struct*, i8 }
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
%union.anon.66 = type { i8* }
%struct.apertures_struct = type { i32, [0 x %struct.aperture] }
%struct.aperture = type { i64, i64 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i8, i8*, %struct.fb_cmap }
%struct.fb_cursor = type { i16, i16, i16, i8*, %struct.fbcurpos, %struct.fb_image }
%struct.fbcurpos = type { i16, i16 }
%struct.fb_blit_caps = type { i32, i32, i32, i32 }
%struct.chips_init_reg = type { i8, i8 }

@__UNIQUE_ID___addressable_asiliantfb_init244 = internal global i8* bitcast (i32 ()* @asiliantfb_init to i8*), section ".discard.addressable", align 8, !dbg !0
@asiliantfb_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([2 x %struct.pci_device_id], [2 x %struct.pci_device_id]* @asiliantfb_pci_tbl, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @asiliantfb_pci_init, void (%struct.pci_dev*)* @asiliantfb_remove, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !146
@__UNIQUE_ID_file245 = internal constant [47 x i8] c"asiliantfb.file=drivers/video/fbdev/asiliantfb\00", section ".modinfo", align 1, !dbg !134
@__UNIQUE_ID_license246 = internal constant [23 x i8] c"asiliantfb.license=GPL\00", section ".modinfo", align 1, !dbg !141
@.str = private unnamed_addr constant [11 x i8] c"asiliantfb\00", align 1
@asiliantfb_pci_tbl = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4140, i32 192, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4178
@iomem_resource = external dso_local global %struct.resource, align 8
@asiliantfb_fix = internal constant %struct.fb_fix_screeninfo { [16 x i8] c"Asiliant 69000\00\00", i64 0, i32 2097152, i32 0, i32 0, i32 3, i16 0, i16 0, i16 0, i32 640, i64 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, align 8, !dbg !4181
@asiliantfb_var = internal constant %struct.fb_var_screeninfo { i32 640, i32 480, i32 640, i32 480, i32 0, i32 0, i32 8, i32 0, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield { i32 0, i32 8, i32 0 }, %struct.fb_bitfield zeroinitializer, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 39722, i32 48, i32 16, i32 33, i32 10, i32 96, i32 2, i32 0, i32 0, i32 0, i32 0, [4 x i32] zeroinitializer }, align 4, !dbg !4203
@asiliantfb_ops = internal constant %struct.fb_ops { %struct.module* null, i32 (%struct.fb_info*, i32)* null, i32 (%struct.fb_info*, i32)* null, i64 (%struct.fb_info*, i8*, i64, i64*)* null, i64 (%struct.fb_info*, i8*, i64, i64*)* null, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @asiliantfb_check_var, i32 (%struct.fb_info*)* @asiliantfb_set_par, i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @asiliantfb_setcolreg, i32 (%struct.fb_cmap*, %struct.fb_info*)* null, i32 (i32, %struct.fb_info*)* null, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* null, void (%struct.fb_info*, %struct.fb_fillrect*)* @cfb_fillrect, void (%struct.fb_info*, %struct.fb_copyarea*)* @cfb_copyarea, void (%struct.fb_info*, %struct.fb_image*)* @cfb_imageblit, i32 (%struct.fb_info*, %struct.fb_cursor*)* null, i32 (%struct.fb_info*)* null, i32 (%struct.fb_info*, i32, i64)* null, i32 (%struct.fb_info*, i32, i64)* null, i32 (%struct.fb_info*, %struct.vm_area_struct*)* null, void (%struct.fb_info*, %struct.fb_blit_caps*, %struct.fb_var_screeninfo*)* null, void (%struct.fb_info*)* null, i32 (%struct.fb_info*)* null, i32 (%struct.fb_info*)* null }, align 8, !dbg !4243
@.str.1 = private unnamed_addr constant [44 x i8] c"\013C&T 69000 fb failed to alloc cmap memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"\013C&T 69000 framebuffer failed to register\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"\016fb%d: Asiliant 69000 frame buffer (%dK RAM detected)\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"\013asiliantfb dotclock must be between 3.125 and 220MHz\0A\00", align 1
@chips_init_xr = internal global [17 x %struct.chips_init_reg] [%struct.chips_init_reg { i8 -50, i8 0 }, %struct.chips_init_reg { i8 -52, i8 -56 }, %struct.chips_init_reg { i8 -51, i8 18 }, %struct.chips_init_reg { i8 -50, i8 -112 }, %struct.chips_init_reg { i8 -60, i8 -47 }, %struct.chips_init_reg { i8 -59, i8 118 }, %struct.chips_init_reg { i8 -57, i8 32 }, %struct.chips_init_reg { i8 -49, i8 6 }, %struct.chips_init_reg { i8 9, i8 1 }, %struct.chips_init_reg { i8 10, i8 2 }, %struct.chips_init_reg { i8 11, i8 1 }, %struct.chips_init_reg { i8 64, i8 3 }, %struct.chips_init_reg { i8 -128, i8 -126 }, %struct.chips_init_reg { i8 -127, i8 18 }, %struct.chips_init_reg { i8 -126, i8 8 }, %struct.chips_init_reg { i8 -48, i8 15 }, %struct.chips_init_reg { i8 -47, i8 1 }], align 16, !dbg !4654
@chips_init_sr = internal global [4 x %struct.chips_init_reg] [%struct.chips_init_reg { i8 0, i8 3 }, %struct.chips_init_reg { i8 1, i8 1 }, %struct.chips_init_reg { i8 2, i8 15 }, %struct.chips_init_reg { i8 4, i8 14 }], align 1, !dbg !4661
@chips_init_gr = internal global [4 x %struct.chips_init_reg] [%struct.chips_init_reg { i8 3, i8 0 }, %struct.chips_init_reg { i8 5, i8 0 }, %struct.chips_init_reg { i8 6, i8 1 }, %struct.chips_init_reg { i8 8, i8 0 }], align 1, !dbg !4664
@chips_init_ar = internal global [4 x %struct.chips_init_reg] [%struct.chips_init_reg { i8 16, i8 1 }, %struct.chips_init_reg { i8 17, i8 0 }, %struct.chips_init_reg { i8 18, i8 15 }, %struct.chips_init_reg { i8 19, i8 0 }], align 1, !dbg !4666
@chips_init_cr = internal global [7 x %struct.chips_init_reg] [%struct.chips_init_reg { i8 12, i8 0 }, %struct.chips_init_reg { i8 13, i8 0 }, %struct.chips_init_reg { i8 64, i8 0 }, %struct.chips_init_reg { i8 65, i8 0 }, %struct.chips_init_reg { i8 20, i8 0 }, %struct.chips_init_reg { i8 23, i8 -29 }, %struct.chips_init_reg { i8 112, i8 0 }], align 1, !dbg !4668
@chips_init_fr = internal global [35 x %struct.chips_init_reg] [%struct.chips_init_reg { i8 1, i8 2 }, %struct.chips_init_reg { i8 3, i8 8 }, %struct.chips_init_reg { i8 8, i8 -52 }, %struct.chips_init_reg { i8 10, i8 8 }, %struct.chips_init_reg { i8 24, i8 0 }, %struct.chips_init_reg { i8 30, i8 -128 }, %struct.chips_init_reg { i8 64, i8 -125 }, %struct.chips_init_reg { i8 65, i8 0 }, %struct.chips_init_reg { i8 72, i8 19 }, %struct.chips_init_reg { i8 77, i8 96 }, %struct.chips_init_reg { i8 78, i8 15 }, %struct.chips_init_reg { i8 11, i8 1 }, %struct.chips_init_reg { i8 33, i8 81 }, %struct.chips_init_reg { i8 34, i8 29 }, %struct.chips_init_reg { i8 35, i8 95 }, %struct.chips_init_reg { i8 32, i8 79 }, %struct.chips_init_reg { i8 52, i8 0 }, %struct.chips_init_reg { i8 36, i8 81 }, %struct.chips_init_reg { i8 37, i8 0 }, %struct.chips_init_reg { i8 39, i8 11 }, %struct.chips_init_reg { i8 38, i8 0 }, %struct.chips_init_reg { i8 55, i8 -128 }, %struct.chips_init_reg { i8 51, i8 11 }, %struct.chips_init_reg { i8 53, i8 17 }, %struct.chips_init_reg { i8 54, i8 2 }, %struct.chips_init_reg { i8 49, i8 -22 }, %struct.chips_init_reg { i8 50, i8 12 }, %struct.chips_init_reg { i8 48, i8 -33 }, %struct.chips_init_reg { i8 16, i8 12 }, %struct.chips_init_reg { i8 17, i8 -32 }, %struct.chips_init_reg { i8 18, i8 80 }, %struct.chips_init_reg { i8 19, i8 0 }, %struct.chips_init_reg { i8 22, i8 3 }, %struct.chips_init_reg { i8 23, i8 -67 }, %struct.chips_init_reg { i8 26, i8 0 }], align 16, !dbg !4673
@llvm.used = appending global [4 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_asiliantfb_init244 to i8*), i8* bitcast (void ()* @asiliantfb_exit to i8*), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__UNIQUE_ID_file245, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__UNIQUE_ID_license246, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @asiliantfb_init() #0 section ".init.text" !dbg !4683 {
entry:
  %retval = alloca i32, align 4
  %call = call i32 @fb_get_options(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** null) #6, !dbg !4686
  %tobool = icmp ne i32 %call, 0, !dbg !4686
  br i1 %tobool, label %if.then, label %if.end, !dbg !4688

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4689
  br label %return, !dbg !4689

if.end:                                           ; preds = %entry
  %call1 = call i32 @__pci_register_driver(%struct.pci_driver* @asiliantfb_driver, %struct.module* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)) #6, !dbg !4690
  store i32 %call1, i32* %retval, align 4, !dbg !4691
  br label %return, !dbg !4691

return:                                           ; preds = %if.end, %if.then
  %0 = load i32, i32* %retval, align 4, !dbg !4692
  ret i32 %0, !dbg !4692
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @asiliantfb_exit() #0 section ".exit.text" !dbg !4693 {
entry:
  call void @pci_unregister_driver(%struct.pci_driver* @asiliantfb_driver) #6, !dbg !4694
  ret void, !dbg !4695
}

; Function Attrs: noredzone
declare dso_local void @pci_unregister_driver(%struct.pci_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @fb_get_options(i8*, i8**) #1

; Function Attrs: noredzone
declare dso_local i32 @__pci_register_driver(%struct.pci_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @asiliantfb_pci_init(%struct.pci_dev* %dp, %struct.pci_device_id* %ent) #2 !dbg !4696 {
entry:
  %retval = alloca i32, align 4
  %dp.addr = alloca %struct.pci_dev*, align 8
  %ent.addr = alloca %struct.pci_device_id*, align 8
  %addr = alloca i64, align 8
  %size = alloca i64, align 8
  %p = alloca %struct.fb_info*, align 8
  %err = alloca i32, align 4
  store %struct.pci_dev* %dp, %struct.pci_dev** %dp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dp.addr, metadata !4697, metadata !DIExpression()), !dbg !4698
  store %struct.pci_device_id* %ent, %struct.pci_device_id** %ent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %ent.addr, metadata !4699, metadata !DIExpression()), !dbg !4700
  call void @llvm.dbg.declare(metadata i64* %addr, metadata !4701, metadata !DIExpression()), !dbg !4702
  call void @llvm.dbg.declare(metadata i64* %size, metadata !4703, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.declare(metadata %struct.fb_info** %p, metadata !4705, metadata !DIExpression()), !dbg !4706
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4707, metadata !DIExpression()), !dbg !4708
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dp.addr, align 8, !dbg !4709
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 44, !dbg !4711
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !4709
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 3, !dbg !4712
  %1 = load i64, i64* %flags, align 8, !dbg !4712
  %and = and i64 %1, 512, !dbg !4713
  %cmp = icmp eq i64 %and, 0, !dbg !4714
  br i1 %cmp, label %if.then, label %if.end, !dbg !4715

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4716
  br label %return, !dbg !4716

if.end:                                           ; preds = %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dp.addr, align 8, !dbg !4717
  %resource1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 44, !dbg !4717
  %arrayidx2 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource1, i64 0, i64 0, !dbg !4717
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx2, i32 0, i32 0, !dbg !4717
  %3 = load i64, i64* %start, align 8, !dbg !4717
  store i64 %3, i64* %addr, align 8, !dbg !4718
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dp.addr, align 8, !dbg !4719
  %resource3 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 44, !dbg !4719
  %arrayidx4 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource3, i64 0, i64 0, !dbg !4719
  %start5 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx4, i32 0, i32 0, !dbg !4719
  %5 = load i64, i64* %start5, align 8, !dbg !4719
  %cmp6 = icmp eq i64 %5, 0, !dbg !4719
  br i1 %cmp6, label %land.lhs.true, label %cond.false, !dbg !4719

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dp.addr, align 8, !dbg !4719
  %resource7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 44, !dbg !4719
  %arrayidx8 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource7, i64 0, i64 0, !dbg !4719
  %end = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx8, i32 0, i32 1, !dbg !4719
  %7 = load i64, i64* %end, align 8, !dbg !4719
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dp.addr, align 8, !dbg !4719
  %resource9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 44, !dbg !4719
  %arrayidx10 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource9, i64 0, i64 0, !dbg !4719
  %start11 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx10, i32 0, i32 0, !dbg !4719
  %9 = load i64, i64* %start11, align 8, !dbg !4719
  %cmp12 = icmp eq i64 %7, %9, !dbg !4719
  br i1 %cmp12, label %cond.true, label %cond.false, !dbg !4719

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end, !dbg !4719

cond.false:                                       ; preds = %land.lhs.true, %if.end
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dp.addr, align 8, !dbg !4719
  %resource13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 44, !dbg !4719
  %arrayidx14 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource13, i64 0, i64 0, !dbg !4719
  %end15 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx14, i32 0, i32 1, !dbg !4719
  %11 = load i64, i64* %end15, align 8, !dbg !4719
  %12 = load %struct.pci_dev*, %struct.pci_dev** %dp.addr, align 8, !dbg !4719
  %resource16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 44, !dbg !4719
  %arrayidx17 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource16, i64 0, i64 0, !dbg !4719
  %start18 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx17, i32 0, i32 0, !dbg !4719
  %13 = load i64, i64* %start18, align 8, !dbg !4719
  %sub = sub i64 %11, %13, !dbg !4719
  %add = add i64 %sub, 1, !dbg !4719
  br label %cond.end, !dbg !4719

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %add, %cond.false ], !dbg !4719
  store i64 %cond, i64* %size, align 8, !dbg !4720
  %14 = load i64, i64* %addr, align 8, !dbg !4721
  %cmp19 = icmp eq i64 %14, 0, !dbg !4723
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !4724

if.then20:                                        ; preds = %cond.end
  store i32 -19, i32* %retval, align 4, !dbg !4725
  br label %return, !dbg !4725

if.end21:                                         ; preds = %cond.end
  %15 = load i64, i64* %addr, align 8, !dbg !4726
  %16 = load i64, i64* %size, align 8, !dbg !4726
  %call = call %struct.resource* @__request_region(%struct.resource* @iomem_resource, i64 %15, i64 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0) #6, !dbg !4726
  %tobool = icmp ne %struct.resource* %call, null, !dbg !4726
  br i1 %tobool, label %if.end23, label %if.then22, !dbg !4728

if.then22:                                        ; preds = %if.end21
  store i32 -16, i32* %retval, align 4, !dbg !4729
  br label %return, !dbg !4729

if.end23:                                         ; preds = %if.end21
  %17 = load %struct.pci_dev*, %struct.pci_dev** %dp.addr, align 8, !dbg !4730
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 41, !dbg !4731
  %call24 = call %struct.fb_info* @framebuffer_alloc(i64 64, %struct.device* %dev) #6, !dbg !4732
  store %struct.fb_info* %call24, %struct.fb_info** %p, align 8, !dbg !4733
  %18 = load %struct.fb_info*, %struct.fb_info** %p, align 8, !dbg !4734
  %tobool25 = icmp ne %struct.fb_info* %18, null, !dbg !4734
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !4736

if.then26:                                        ; preds = %if.end23
  %19 = load i64, i64* %addr, align 8, !dbg !4737
  %20 = load i64, i64* %size, align 8, !dbg !4737
  call void @__release_region(%struct.resource* @iomem_resource, i64 %19, i64 %20) #6, !dbg !4737
  store i32 -12, i32* %retval, align 4, !dbg !4739
  br label %return, !dbg !4739

if.end27:                                         ; preds = %if.end23
  %21 = load %struct.fb_info*, %struct.fb_info** %p, align 8, !dbg !4740
  %par = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 30, !dbg !4741
  %22 = load i8*, i8** %par, align 8, !dbg !4741
  %23 = load %struct.fb_info*, %struct.fb_info** %p, align 8, !dbg !4742
  %pseudo_palette = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 27, !dbg !4743
  store i8* %22, i8** %pseudo_palette, align 8, !dbg !4744
  %24 = load %struct.fb_info*, %struct.fb_info** %p, align 8, !dbg !4745
  %par28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 30, !dbg !4746
  store i8* null, i8** %par28, align 8, !dbg !4747
  %25 = load i64, i64* %addr, align 8, !dbg !4748
  %call29 = call i8* @ioremap(i64 %25, i64 8388608) #6, !dbg !4749
  %26 = load %struct.fb_info*, %struct.fb_info** %p, align 8, !dbg !4750
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 25, !dbg !4751
  %screen_base = bitcast %union.anon.66* %27 to i8**, !dbg !4751
  store i8* %call29, i8** %screen_base, align 8, !dbg !4752
  %28 = load %struct.fb_info*, %struct.fb_info** %p, align 8, !dbg !4753
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 25, !dbg !4755
  %screen_base30 = bitcast %union.anon.66* %29 to i8**, !dbg !4755
  %30 = load i8*, i8** %screen_base30, align 8, !dbg !4755
  %cmp31 = icmp eq i8* %30, null, !dbg !4756
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !4757

if.then32:                                        ; preds = %if.end27
  %31 = load i64, i64* %addr, align 8, !dbg !4758
  %32 = load i64, i64* %size, align 8, !dbg !4758
  call void @__release_region(%struct.resource* @iomem_resource, i64 %31, i64 %32) #6, !dbg !4758
  %33 = load %struct.fb_info*, %struct.fb_info** %p, align 8, !dbg !4760
  call void @framebuffer_release(%struct.fb_info* %33) #6, !dbg !4761
  store i32 -12, i32* %retval, align 4, !dbg !4762
  br label %return, !dbg !4762

if.end33:                                         ; preds = %if.end27
  %34 = load %struct.pci_dev*, %struct.pci_dev** %dp.addr, align 8, !dbg !4763
  %call34 = call i32 @pci_write_config_dword(%struct.pci_dev* %34, i32 4, i32 41943171) #6, !dbg !4764
  %35 = load %struct.fb_info*, %struct.fb_info** %p, align 8, !dbg !4765
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 25, !dbg !4766
  %screen_base35 = bitcast %union.anon.66* %36 to i8**, !dbg !4766
  %37 = load i8*, i8** %screen_base35, align 8, !dbg !4766
  %add.ptr = getelementptr i8, i8* %37, i64 4196228, !dbg !4767
  call void @writeb(i8 zeroext 3, i8* %add.ptr) #6, !dbg !4768
  %38 = load %struct.fb_info*, %struct.fb_info** %p, align 8, !dbg !4769
  %39 = load i64, i64* %addr, align 8, !dbg !4770
  %call36 = call i32 @init_asiliant(%struct.fb_info* %38, i64 %39) #6, !dbg !4771
  store i32 %call36, i32* %err, align 4, !dbg !4772
  %40 = load i32, i32* %err, align 4, !dbg !4773
  %tobool37 = icmp ne i32 %40, 0, !dbg !4773
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !4775

if.then38:                                        ; preds = %if.end33
  %41 = load %struct.fb_info*, %struct.fb_info** %p, align 8, !dbg !4776
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 25, !dbg !4778
  %screen_base39 = bitcast %union.anon.66* %42 to i8**, !dbg !4778
  %43 = load i8*, i8** %screen_base39, align 8, !dbg !4778
  call void @iounmap(i8* %43) #6, !dbg !4779
  %44 = load i64, i64* %addr, align 8, !dbg !4780
  %45 = load i64, i64* %size, align 8, !dbg !4780
  call void @__release_region(%struct.resource* @iomem_resource, i64 %44, i64 %45) #6, !dbg !4780
  %46 = load %struct.fb_info*, %struct.fb_info** %p, align 8, !dbg !4781
  call void @framebuffer_release(%struct.fb_info* %46) #6, !dbg !4782
  %47 = load i32, i32* %err, align 4, !dbg !4783
  store i32 %47, i32* %retval, align 4, !dbg !4784
  br label %return, !dbg !4784

if.end40:                                         ; preds = %if.end33
  %48 = load %struct.pci_dev*, %struct.pci_dev** %dp.addr, align 8, !dbg !4785
  %49 = load %struct.fb_info*, %struct.fb_info** %p, align 8, !dbg !4786
  %50 = bitcast %struct.fb_info* %49 to i8*, !dbg !4786
  call void @pci_set_drvdata(%struct.pci_dev* %48, i8* %50) #6, !dbg !4787
  store i32 0, i32* %retval, align 4, !dbg !4788
  br label %return, !dbg !4788

return:                                           ; preds = %if.end40, %if.then38, %if.then32, %if.then26, %if.then22, %if.then20, %if.then
  %51 = load i32, i32* %retval, align 4, !dbg !4789
  ret i32 %51, !dbg !4789
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @asiliantfb_remove(%struct.pci_dev* %dp) #2 !dbg !4790 {
entry:
  %dp.addr = alloca %struct.pci_dev*, align 8
  %p = alloca %struct.fb_info*, align 8
  store %struct.pci_dev* %dp, %struct.pci_dev** %dp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dp.addr, metadata !4791, metadata !DIExpression()), !dbg !4792
  call void @llvm.dbg.declare(metadata %struct.fb_info** %p, metadata !4793, metadata !DIExpression()), !dbg !4794
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dp.addr, align 8, !dbg !4795
  %call = call i8* @pci_get_drvdata(%struct.pci_dev* %0) #6, !dbg !4796
  %1 = bitcast i8* %call to %struct.fb_info*, !dbg !4796
  store %struct.fb_info* %1, %struct.fb_info** %p, align 8, !dbg !4794
  %2 = load %struct.fb_info*, %struct.fb_info** %p, align 8, !dbg !4797
  call void @unregister_framebuffer(%struct.fb_info* %2) #6, !dbg !4798
  %3 = load %struct.fb_info*, %struct.fb_info** %p, align 8, !dbg !4799
  %cmap = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 12, !dbg !4800
  call void @fb_dealloc_cmap(%struct.fb_cmap* %cmap) #6, !dbg !4801
  %4 = load %struct.fb_info*, %struct.fb_info** %p, align 8, !dbg !4802
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 25, !dbg !4803
  %screen_base = bitcast %union.anon.66* %5 to i8**, !dbg !4803
  %6 = load i8*, i8** %screen_base, align 8, !dbg !4803
  call void @iounmap(i8* %6) #6, !dbg !4804
  %7 = load %struct.pci_dev*, %struct.pci_dev** %dp.addr, align 8, !dbg !4805
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 44, !dbg !4805
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 0, !dbg !4805
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !4805
  %8 = load i64, i64* %start, align 8, !dbg !4805
  %9 = load %struct.pci_dev*, %struct.pci_dev** %dp.addr, align 8, !dbg !4805
  %resource1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 44, !dbg !4805
  %arrayidx2 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource1, i64 0, i64 0, !dbg !4805
  %start3 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx2, i32 0, i32 0, !dbg !4805
  %10 = load i64, i64* %start3, align 8, !dbg !4805
  %cmp = icmp eq i64 %10, 0, !dbg !4805
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !4805

land.lhs.true:                                    ; preds = %entry
  %11 = load %struct.pci_dev*, %struct.pci_dev** %dp.addr, align 8, !dbg !4805
  %resource4 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 44, !dbg !4805
  %arrayidx5 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource4, i64 0, i64 0, !dbg !4805
  %end = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx5, i32 0, i32 1, !dbg !4805
  %12 = load i64, i64* %end, align 8, !dbg !4805
  %13 = load %struct.pci_dev*, %struct.pci_dev** %dp.addr, align 8, !dbg !4805
  %resource6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 44, !dbg !4805
  %arrayidx7 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource6, i64 0, i64 0, !dbg !4805
  %start8 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx7, i32 0, i32 0, !dbg !4805
  %14 = load i64, i64* %start8, align 8, !dbg !4805
  %cmp9 = icmp eq i64 %12, %14, !dbg !4805
  br i1 %cmp9, label %cond.true, label %cond.false, !dbg !4805

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end, !dbg !4805

cond.false:                                       ; preds = %land.lhs.true, %entry
  %15 = load %struct.pci_dev*, %struct.pci_dev** %dp.addr, align 8, !dbg !4805
  %resource10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 44, !dbg !4805
  %arrayidx11 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource10, i64 0, i64 0, !dbg !4805
  %end12 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx11, i32 0, i32 1, !dbg !4805
  %16 = load i64, i64* %end12, align 8, !dbg !4805
  %17 = load %struct.pci_dev*, %struct.pci_dev** %dp.addr, align 8, !dbg !4805
  %resource13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 44, !dbg !4805
  %arrayidx14 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource13, i64 0, i64 0, !dbg !4805
  %start15 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx14, i32 0, i32 0, !dbg !4805
  %18 = load i64, i64* %start15, align 8, !dbg !4805
  %sub = sub i64 %16, %18, !dbg !4805
  %add = add i64 %sub, 1, !dbg !4805
  br label %cond.end, !dbg !4805

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %add, %cond.false ], !dbg !4805
  call void @__release_region(%struct.resource* @iomem_resource, i64 %8, i64 %cond) #6, !dbg !4805
  %19 = load %struct.fb_info*, %struct.fb_info** %p, align 8, !dbg !4806
  call void @framebuffer_release(%struct.fb_info* %19) #6, !dbg !4807
  ret void, !dbg !4808
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local %struct.resource* @__request_region(%struct.resource*, i64, i64, i8*, i32) #1

; Function Attrs: noredzone
declare dso_local %struct.fb_info* @framebuffer_alloc(i64, %struct.device*) #1

; Function Attrs: noredzone
declare dso_local void @__release_region(%struct.resource*, i64, i64) #1

; Function Attrs: noredzone
declare dso_local i8* @ioremap(i64, i64) #1

; Function Attrs: noredzone
declare dso_local void @framebuffer_release(%struct.fb_info*) #1

; Function Attrs: noredzone
declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writeb(i8 zeroext %val, i8* %addr) #2 !dbg !4809 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca i8*, align 8
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !4815, metadata !DIExpression()), !dbg !4816
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !4817, metadata !DIExpression()), !dbg !4816
  %0 = load i8, i8* %val.addr, align 1, !dbg !4816
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !4816
  call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %0, i8* %1) #7, !dbg !4816, !srcloc !4818
  ret void, !dbg !4816
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @init_asiliant(%struct.fb_info* %p, i64 %addr) #2 !dbg !4819 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.fb_info*, align 8
  %addr.addr = alloca i64, align 8
  %err = alloca i32, align 4
  store %struct.fb_info* %p, %struct.fb_info** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %p.addr, metadata !4822, metadata !DIExpression()), !dbg !4823
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !4824, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4826, metadata !DIExpression()), !dbg !4827
  %0 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !4828
  %fix = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 7, !dbg !4829
  %1 = bitcast %struct.fb_fix_screeninfo* %fix to i8*, !dbg !4830
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @asiliantfb_fix, i32 0, i32 0, i32 0), i64 80, i1 false), !dbg !4830
  %2 = load i64, i64* %addr.addr, align 8, !dbg !4831
  %3 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !4832
  %fix1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 7, !dbg !4833
  %smem_start = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix1, i32 0, i32 1, !dbg !4834
  store i64 %2, i64* %smem_start, align 8, !dbg !4835
  %4 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !4836
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 6, !dbg !4837
  %5 = bitcast %struct.fb_var_screeninfo* %var to i8*, !dbg !4838
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 4 bitcast (%struct.fb_var_screeninfo* @asiliantfb_var to i8*), i64 160, i1 false), !dbg !4838
  %6 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !4839
  %fbops = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 20, !dbg !4840
  store %struct.fb_ops* @asiliantfb_ops, %struct.fb_ops** %fbops, align 8, !dbg !4841
  %7 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !4842
  %flags = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 2, !dbg !4843
  store i32 0, i32* %flags, align 8, !dbg !4844
  %8 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !4845
  %cmap = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 12, !dbg !4846
  %call = call i32 @fb_alloc_cmap(%struct.fb_cmap* %cmap, i32 256, i32 0) #6, !dbg !4847
  store i32 %call, i32* %err, align 4, !dbg !4848
  %9 = load i32, i32* %err, align 4, !dbg !4849
  %tobool = icmp ne i32 %9, 0, !dbg !4849
  br i1 %tobool, label %if.then, label %if.end, !dbg !4851

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !4852
  %10 = load i32, i32* %err, align 4, !dbg !4854
  store i32 %10, i32* %retval, align 4, !dbg !4855
  br label %return, !dbg !4855

if.end:                                           ; preds = %entry
  %11 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !4856
  %call3 = call i32 @register_framebuffer(%struct.fb_info* %11) #6, !dbg !4857
  store i32 %call3, i32* %err, align 4, !dbg !4858
  %12 = load i32, i32* %err, align 4, !dbg !4859
  %cmp = icmp slt i32 %12, 0, !dbg !4861
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !4862

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !4863
  %13 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !4865
  %cmap6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 12, !dbg !4866
  call void @fb_dealloc_cmap(%struct.fb_cmap* %cmap6) #6, !dbg !4867
  %14 = load i32, i32* %err, align 4, !dbg !4868
  store i32 %14, i32* %retval, align 4, !dbg !4869
  br label %return, !dbg !4869

if.end7:                                          ; preds = %if.end
  %15 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !4870
  %node = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 1, !dbg !4870
  %16 = load i32, i32* %node, align 4, !dbg !4870
  %17 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !4870
  %fix8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 7, !dbg !4870
  %smem_len = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix8, i32 0, i32 2, !dbg !4870
  %18 = load i32, i32* %smem_len, align 8, !dbg !4870
  %div = udiv i32 %18, 1024, !dbg !4870
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %16, i32 %div) #8, !dbg !4870
  %19 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !4871
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 25, !dbg !4871
  %screen_base = bitcast %union.anon.66* %20 to i8**, !dbg !4871
  %21 = load i8*, i8** %screen_base, align 8, !dbg !4871
  %add.ptr = getelementptr i8, i8* %21, i64 4194304, !dbg !4871
  %add.ptr10 = getelementptr i8, i8* %add.ptr, i64 1932, !dbg !4872
  call void @writeb(i8 zeroext -1, i8* %add.ptr10) #6, !dbg !4873
  %22 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !4874
  call void @chips_hw_init(%struct.fb_info* %22) #6, !dbg !4875
  store i32 0, i32* %retval, align 4, !dbg !4876
  br label %return, !dbg !4876

return:                                           ; preds = %if.end7, %if.then4, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !4877
  ret i32 %23, !dbg !4877
}

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci_set_drvdata(%struct.pci_dev* %pdev, i8* %data) #2 !dbg !4878 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !4881, metadata !DIExpression()), !dbg !4882
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4883, metadata !DIExpression()), !dbg !4884
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !4885
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !4886
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4887
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #6, !dbg !4888
  ret void, !dbg !4889
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local i32 @fb_alloc_cmap(%struct.fb_cmap*, i32, i32) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #5

; Function Attrs: noredzone
declare dso_local i32 @register_framebuffer(%struct.fb_info*) #1

; Function Attrs: noredzone
declare dso_local void @fb_dealloc_cmap(%struct.fb_cmap*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @chips_hw_init(%struct.fb_info* %p) #2 !dbg !4890 {
entry:
  %p.addr = alloca %struct.fb_info*, align 8
  %i = alloca i32, align 4
  store %struct.fb_info* %p, %struct.fb_info** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %p.addr, metadata !4891, metadata !DIExpression()), !dbg !4892
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4893, metadata !DIExpression()), !dbg !4894
  store i32 0, i32* %i, align 4, !dbg !4895
  br label %for.cond, !dbg !4897

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !4898
  %conv = sext i32 %0 to i64, !dbg !4898
  %cmp = icmp ult i64 %conv, 17, !dbg !4900
  br i1 %cmp, label %for.body, label %for.end, !dbg !4901

for.body:                                         ; preds = %for.cond
  %1 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !4902
  %2 = load i32, i32* %i, align 4, !dbg !4902
  %idxprom = sext i32 %2 to i64, !dbg !4902
  %arrayidx = getelementptr [17 x %struct.chips_init_reg], [17 x %struct.chips_init_reg]* @chips_init_xr, i64 0, i64 %idxprom, !dbg !4902
  %addr = getelementptr inbounds %struct.chips_init_reg, %struct.chips_init_reg* %arrayidx, i32 0, i32 0, !dbg !4902
  %3 = load i8, i8* %addr, align 2, !dbg !4902
  %4 = load i32, i32* %i, align 4, !dbg !4902
  %idxprom2 = sext i32 %4 to i64, !dbg !4902
  %arrayidx3 = getelementptr [17 x %struct.chips_init_reg], [17 x %struct.chips_init_reg]* @chips_init_xr, i64 0, i64 %idxprom2, !dbg !4902
  %data = getelementptr inbounds %struct.chips_init_reg, %struct.chips_init_reg* %arrayidx3, i32 0, i32 1, !dbg !4902
  %5 = load i8, i8* %data, align 1, !dbg !4902
  call void @mm_write_xr(%struct.fb_info* %1, i8 zeroext %3, i8 zeroext %5) #6, !dbg !4902
  br label %for.inc, !dbg !4902

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !4903
  %inc = add i32 %6, 1, !dbg !4903
  store i32 %inc, i32* %i, align 4, !dbg !4903
  br label %for.cond, !dbg !4904, !llvm.loop !4905

for.end:                                          ; preds = %for.cond
  %7 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !4907
  call void @mm_write_xr(%struct.fb_info* %7, i8 zeroext -127, i8 zeroext 18) #6, !dbg !4907
  %8 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !4908
  call void @mm_write_xr(%struct.fb_info* %8, i8 zeroext -126, i8 zeroext 8) #6, !dbg !4908
  %9 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !4909
  call void @mm_write_xr(%struct.fb_info* %9, i8 zeroext 32, i8 zeroext 0) #6, !dbg !4909
  store i32 0, i32* %i, align 4, !dbg !4910
  br label %for.cond4, !dbg !4912

for.cond4:                                        ; preds = %for.inc15, %for.end
  %10 = load i32, i32* %i, align 4, !dbg !4913
  %conv5 = sext i32 %10 to i64, !dbg !4913
  %cmp6 = icmp ult i64 %conv5, 4, !dbg !4915
  br i1 %cmp6, label %for.body8, label %for.end17, !dbg !4916

for.body8:                                        ; preds = %for.cond4
  %11 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !4917
  %12 = load i32, i32* %i, align 4, !dbg !4917
  %idxprom9 = sext i32 %12 to i64, !dbg !4917
  %arrayidx10 = getelementptr [4 x %struct.chips_init_reg], [4 x %struct.chips_init_reg]* @chips_init_sr, i64 0, i64 %idxprom9, !dbg !4917
  %addr11 = getelementptr inbounds %struct.chips_init_reg, %struct.chips_init_reg* %arrayidx10, i32 0, i32 0, !dbg !4917
  %13 = load i8, i8* %addr11, align 1, !dbg !4917
  %14 = load i32, i32* %i, align 4, !dbg !4917
  %idxprom12 = sext i32 %14 to i64, !dbg !4917
  %arrayidx13 = getelementptr [4 x %struct.chips_init_reg], [4 x %struct.chips_init_reg]* @chips_init_sr, i64 0, i64 %idxprom12, !dbg !4917
  %data14 = getelementptr inbounds %struct.chips_init_reg, %struct.chips_init_reg* %arrayidx13, i32 0, i32 1, !dbg !4917
  %15 = load i8, i8* %data14, align 1, !dbg !4917
  call void @mm_write_sr(%struct.fb_info* %11, i8 zeroext %13, i8 zeroext %15) #6, !dbg !4917
  br label %for.inc15, !dbg !4917

for.inc15:                                        ; preds = %for.body8
  %16 = load i32, i32* %i, align 4, !dbg !4918
  %inc16 = add i32 %16, 1, !dbg !4918
  store i32 %inc16, i32* %i, align 4, !dbg !4918
  br label %for.cond4, !dbg !4919, !llvm.loop !4920

for.end17:                                        ; preds = %for.cond4
  store i32 0, i32* %i, align 4, !dbg !4922
  br label %for.cond18, !dbg !4924

for.cond18:                                       ; preds = %for.inc29, %for.end17
  %17 = load i32, i32* %i, align 4, !dbg !4925
  %conv19 = sext i32 %17 to i64, !dbg !4925
  %cmp20 = icmp ult i64 %conv19, 4, !dbg !4927
  br i1 %cmp20, label %for.body22, label %for.end31, !dbg !4928

for.body22:                                       ; preds = %for.cond18
  %18 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !4929
  %19 = load i32, i32* %i, align 4, !dbg !4929
  %idxprom23 = sext i32 %19 to i64, !dbg !4929
  %arrayidx24 = getelementptr [4 x %struct.chips_init_reg], [4 x %struct.chips_init_reg]* @chips_init_gr, i64 0, i64 %idxprom23, !dbg !4929
  %addr25 = getelementptr inbounds %struct.chips_init_reg, %struct.chips_init_reg* %arrayidx24, i32 0, i32 0, !dbg !4929
  %20 = load i8, i8* %addr25, align 1, !dbg !4929
  %21 = load i32, i32* %i, align 4, !dbg !4929
  %idxprom26 = sext i32 %21 to i64, !dbg !4929
  %arrayidx27 = getelementptr [4 x %struct.chips_init_reg], [4 x %struct.chips_init_reg]* @chips_init_gr, i64 0, i64 %idxprom26, !dbg !4929
  %data28 = getelementptr inbounds %struct.chips_init_reg, %struct.chips_init_reg* %arrayidx27, i32 0, i32 1, !dbg !4929
  %22 = load i8, i8* %data28, align 1, !dbg !4929
  call void @mm_write_gr(%struct.fb_info* %18, i8 zeroext %20, i8 zeroext %22) #6, !dbg !4929
  br label %for.inc29, !dbg !4929

for.inc29:                                        ; preds = %for.body22
  %23 = load i32, i32* %i, align 4, !dbg !4930
  %inc30 = add i32 %23, 1, !dbg !4930
  store i32 %inc30, i32* %i, align 4, !dbg !4930
  br label %for.cond18, !dbg !4931, !llvm.loop !4932

for.end31:                                        ; preds = %for.cond18
  store i32 0, i32* %i, align 4, !dbg !4934
  br label %for.cond32, !dbg !4936

for.cond32:                                       ; preds = %for.inc43, %for.end31
  %24 = load i32, i32* %i, align 4, !dbg !4937
  %conv33 = sext i32 %24 to i64, !dbg !4937
  %cmp34 = icmp ult i64 %conv33, 4, !dbg !4939
  br i1 %cmp34, label %for.body36, label %for.end45, !dbg !4940

for.body36:                                       ; preds = %for.cond32
  %25 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !4941
  %26 = load i32, i32* %i, align 4, !dbg !4941
  %idxprom37 = sext i32 %26 to i64, !dbg !4941
  %arrayidx38 = getelementptr [4 x %struct.chips_init_reg], [4 x %struct.chips_init_reg]* @chips_init_ar, i64 0, i64 %idxprom37, !dbg !4941
  %addr39 = getelementptr inbounds %struct.chips_init_reg, %struct.chips_init_reg* %arrayidx38, i32 0, i32 0, !dbg !4941
  %27 = load i8, i8* %addr39, align 1, !dbg !4941
  %28 = load i32, i32* %i, align 4, !dbg !4941
  %idxprom40 = sext i32 %28 to i64, !dbg !4941
  %arrayidx41 = getelementptr [4 x %struct.chips_init_reg], [4 x %struct.chips_init_reg]* @chips_init_ar, i64 0, i64 %idxprom40, !dbg !4941
  %data42 = getelementptr inbounds %struct.chips_init_reg, %struct.chips_init_reg* %arrayidx41, i32 0, i32 1, !dbg !4941
  %29 = load i8, i8* %data42, align 1, !dbg !4941
  call void @mm_write_ar(%struct.fb_info* %25, i8 zeroext %27, i8 zeroext %29) #6, !dbg !4941
  br label %for.inc43, !dbg !4941

for.inc43:                                        ; preds = %for.body36
  %30 = load i32, i32* %i, align 4, !dbg !4942
  %inc44 = add i32 %30, 1, !dbg !4942
  store i32 %inc44, i32* %i, align 4, !dbg !4942
  br label %for.cond32, !dbg !4943, !llvm.loop !4944

for.end45:                                        ; preds = %for.cond32
  %31 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !4946
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 25, !dbg !4946
  %screen_base = bitcast %union.anon.66* %32 to i8**, !dbg !4946
  %33 = load i8*, i8** %screen_base, align 8, !dbg !4946
  %add.ptr = getelementptr i8, i8* %33, i64 4194304, !dbg !4946
  %add.ptr46 = getelementptr i8, i8* %add.ptr, i64 1920, !dbg !4947
  call void @writeb(i8 zeroext 32, i8* %add.ptr46) #6, !dbg !4948
  store i32 0, i32* %i, align 4, !dbg !4949
  br label %for.cond47, !dbg !4951

for.cond47:                                       ; preds = %for.inc58, %for.end45
  %34 = load i32, i32* %i, align 4, !dbg !4952
  %conv48 = sext i32 %34 to i64, !dbg !4952
  %cmp49 = icmp ult i64 %conv48, 7, !dbg !4954
  br i1 %cmp49, label %for.body51, label %for.end60, !dbg !4955

for.body51:                                       ; preds = %for.cond47
  %35 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !4956
  %36 = load i32, i32* %i, align 4, !dbg !4956
  %idxprom52 = sext i32 %36 to i64, !dbg !4956
  %arrayidx53 = getelementptr [7 x %struct.chips_init_reg], [7 x %struct.chips_init_reg]* @chips_init_cr, i64 0, i64 %idxprom52, !dbg !4956
  %addr54 = getelementptr inbounds %struct.chips_init_reg, %struct.chips_init_reg* %arrayidx53, i32 0, i32 0, !dbg !4956
  %37 = load i8, i8* %addr54, align 1, !dbg !4956
  %38 = load i32, i32* %i, align 4, !dbg !4956
  %idxprom55 = sext i32 %38 to i64, !dbg !4956
  %arrayidx56 = getelementptr [7 x %struct.chips_init_reg], [7 x %struct.chips_init_reg]* @chips_init_cr, i64 0, i64 %idxprom55, !dbg !4956
  %data57 = getelementptr inbounds %struct.chips_init_reg, %struct.chips_init_reg* %arrayidx56, i32 0, i32 1, !dbg !4956
  %39 = load i8, i8* %data57, align 1, !dbg !4956
  call void @mm_write_cr(%struct.fb_info* %35, i8 zeroext %37, i8 zeroext %39) #6, !dbg !4956
  br label %for.inc58, !dbg !4956

for.inc58:                                        ; preds = %for.body51
  %40 = load i32, i32* %i, align 4, !dbg !4957
  %inc59 = add i32 %40, 1, !dbg !4957
  store i32 %inc59, i32* %i, align 4, !dbg !4957
  br label %for.cond47, !dbg !4958, !llvm.loop !4959

for.end60:                                        ; preds = %for.cond47
  store i32 0, i32* %i, align 4, !dbg !4961
  br label %for.cond61, !dbg !4963

for.cond61:                                       ; preds = %for.inc72, %for.end60
  %41 = load i32, i32* %i, align 4, !dbg !4964
  %conv62 = sext i32 %41 to i64, !dbg !4964
  %cmp63 = icmp ult i64 %conv62, 35, !dbg !4966
  br i1 %cmp63, label %for.body65, label %for.end74, !dbg !4967

for.body65:                                       ; preds = %for.cond61
  %42 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !4968
  %43 = load i32, i32* %i, align 4, !dbg !4968
  %idxprom66 = sext i32 %43 to i64, !dbg !4968
  %arrayidx67 = getelementptr [35 x %struct.chips_init_reg], [35 x %struct.chips_init_reg]* @chips_init_fr, i64 0, i64 %idxprom66, !dbg !4968
  %addr68 = getelementptr inbounds %struct.chips_init_reg, %struct.chips_init_reg* %arrayidx67, i32 0, i32 0, !dbg !4968
  %44 = load i8, i8* %addr68, align 2, !dbg !4968
  %45 = load i32, i32* %i, align 4, !dbg !4968
  %idxprom69 = sext i32 %45 to i64, !dbg !4968
  %arrayidx70 = getelementptr [35 x %struct.chips_init_reg], [35 x %struct.chips_init_reg]* @chips_init_fr, i64 0, i64 %idxprom69, !dbg !4968
  %data71 = getelementptr inbounds %struct.chips_init_reg, %struct.chips_init_reg* %arrayidx70, i32 0, i32 1, !dbg !4968
  %46 = load i8, i8* %data71, align 1, !dbg !4968
  call void @mm_write_fr(%struct.fb_info* %42, i8 zeroext %44, i8 zeroext %46) #6, !dbg !4968
  br label %for.inc72, !dbg !4968

for.inc72:                                        ; preds = %for.body65
  %47 = load i32, i32* %i, align 4, !dbg !4969
  %inc73 = add i32 %47, 1, !dbg !4969
  store i32 %inc73, i32* %i, align 4, !dbg !4969
  br label %for.cond61, !dbg !4970, !llvm.loop !4971

for.end74:                                        ; preds = %for.cond61
  ret void, !dbg !4973
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @asiliantfb_check_var(%struct.fb_var_screeninfo* %var, %struct.fb_info* %p) #2 !dbg !4974 {
entry:
  %retval = alloca i32, align 4
  %var.addr = alloca %struct.fb_var_screeninfo*, align 8
  %p.addr = alloca %struct.fb_info*, align 8
  %Ftarget = alloca i64, align 8
  %ratio = alloca i64, align 8
  %remainder = alloca i64, align 8
  store %struct.fb_var_screeninfo* %var, %struct.fb_var_screeninfo** %var.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo** %var.addr, metadata !4975, metadata !DIExpression()), !dbg !4976
  store %struct.fb_info* %p, %struct.fb_info** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %p.addr, metadata !4977, metadata !DIExpression()), !dbg !4978
  call void @llvm.dbg.declare(metadata i64* %Ftarget, metadata !4979, metadata !DIExpression()), !dbg !4980
  call void @llvm.dbg.declare(metadata i64* %ratio, metadata !4981, metadata !DIExpression()), !dbg !4982
  call void @llvm.dbg.declare(metadata i64* %remainder, metadata !4983, metadata !DIExpression()), !dbg !4984
  %0 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !4985
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %0, i32 0, i32 17, !dbg !4986
  %1 = load i32, i32* %pixclock, align 4, !dbg !4986
  %div = udiv i32 1000000, %1, !dbg !4987
  %conv = zext i32 %div to i64, !dbg !4988
  store i64 %conv, i64* %ratio, align 8, !dbg !4989
  %2 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !4990
  %pixclock1 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %2, i32 0, i32 17, !dbg !4991
  %3 = load i32, i32* %pixclock1, align 4, !dbg !4991
  %rem = urem i32 1000000, %3, !dbg !4992
  %conv2 = zext i32 %rem to i64, !dbg !4993
  store i64 %conv2, i64* %remainder, align 8, !dbg !4994
  %4 = load i64, i64* %ratio, align 8, !dbg !4995
  %mul = mul i64 1000000, %4, !dbg !4996
  %5 = load i64, i64* %remainder, align 8, !dbg !4997
  %mul3 = mul i64 1000000, %5, !dbg !4998
  %6 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !4999
  %pixclock4 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 17, !dbg !5000
  %7 = load i32, i32* %pixclock4, align 4, !dbg !5000
  %conv5 = zext i32 %7 to i64, !dbg !4999
  %div6 = udiv i64 %mul3, %conv5, !dbg !5001
  %add = add i64 %mul, %div6, !dbg !5002
  store i64 %add, i64* %Ftarget, align 8, !dbg !5003
  %8 = load i64, i64* %Ftarget, align 8, !dbg !5004
  %cmp = icmp ugt i64 %8, 220000000, !dbg !5006
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5007

lor.lhs.false:                                    ; preds = %entry
  %9 = load i64, i64* %Ftarget, align 8, !dbg !5008
  %cmp8 = icmp ult i64 %9, 3125000, !dbg !5009
  br i1 %cmp8, label %if.then, label %if.end, !dbg !5010

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !5011
  store i32 -6, i32* %retval, align 4, !dbg !5013
  br label %return, !dbg !5013

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5014
  %xres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 0, !dbg !5015
  %11 = load i32, i32* %xres, align 4, !dbg !5015
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5016
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 2, !dbg !5017
  store i32 %11, i32* %xres_virtual, align 4, !dbg !5018
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5019
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 1, !dbg !5020
  %14 = load i32, i32* %yres, align 4, !dbg !5020
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5021
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 3, !dbg !5022
  store i32 %14, i32* %yres_virtual, align 4, !dbg !5023
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5024
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 6, !dbg !5026
  %17 = load i32, i32* %bits_per_pixel, align 4, !dbg !5026
  %cmp10 = icmp eq i32 %17, 24, !dbg !5027
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !5028

if.then12:                                        ; preds = %if.end
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5029
  %red = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 8, !dbg !5031
  %offset = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red, i32 0, i32 0, !dbg !5032
  store i32 16, i32* %offset, align 4, !dbg !5033
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5034
  %green = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 9, !dbg !5035
  %offset13 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green, i32 0, i32 0, !dbg !5036
  store i32 8, i32* %offset13, align 4, !dbg !5037
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5038
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 10, !dbg !5039
  %offset14 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %blue, i32 0, i32 0, !dbg !5040
  store i32 0, i32* %offset14, align 4, !dbg !5041
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5042
  %green15 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 9, !dbg !5043
  %length = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green15, i32 0, i32 1, !dbg !5044
  store i32 8, i32* %length, align 4, !dbg !5045
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5046
  %blue16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 10, !dbg !5047
  %length17 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %blue16, i32 0, i32 1, !dbg !5048
  store i32 8, i32* %length17, align 4, !dbg !5049
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5050
  %red18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 8, !dbg !5051
  %length19 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red18, i32 0, i32 1, !dbg !5052
  store i32 8, i32* %length19, align 4, !dbg !5053
  br label %if.end58, !dbg !5054

if.else:                                          ; preds = %if.end
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5055
  %bits_per_pixel20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %24, i32 0, i32 6, !dbg !5057
  %25 = load i32, i32* %bits_per_pixel20, align 4, !dbg !5057
  %cmp21 = icmp eq i32 %25, 16, !dbg !5058
  br i1 %cmp21, label %if.then23, label %if.else39, !dbg !5059

if.then23:                                        ; preds = %if.else
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5060
  %red24 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 8, !dbg !5062
  %offset25 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red24, i32 0, i32 0, !dbg !5063
  %27 = load i32, i32* %offset25, align 4, !dbg !5063
  switch i32 %27, label %sw.default [
    i32 11, label %sw.bb
    i32 10, label %sw.bb28
  ], !dbg !5064

sw.bb:                                            ; preds = %if.then23
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5065
  %green26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 9, !dbg !5067
  %length27 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green26, i32 0, i32 1, !dbg !5068
  store i32 6, i32* %length27, align 4, !dbg !5069
  br label %sw.epilog, !dbg !5070

sw.bb28:                                          ; preds = %if.then23
  %29 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5071
  %green29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %29, i32 0, i32 9, !dbg !5072
  %length30 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green29, i32 0, i32 1, !dbg !5073
  store i32 5, i32* %length30, align 4, !dbg !5074
  br label %sw.epilog, !dbg !5075

sw.default:                                       ; preds = %if.then23
  store i32 -22, i32* %retval, align 4, !dbg !5076
  br label %return, !dbg !5076

sw.epilog:                                        ; preds = %sw.bb28, %sw.bb
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5077
  %green31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 9, !dbg !5078
  %offset32 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green31, i32 0, i32 0, !dbg !5079
  store i32 5, i32* %offset32, align 4, !dbg !5080
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5081
  %blue33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 10, !dbg !5082
  %offset34 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %blue33, i32 0, i32 0, !dbg !5083
  store i32 0, i32* %offset34, align 4, !dbg !5084
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5085
  %blue35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 10, !dbg !5086
  %length36 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %blue35, i32 0, i32 1, !dbg !5087
  store i32 5, i32* %length36, align 4, !dbg !5088
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5089
  %red37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 8, !dbg !5090
  %length38 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red37, i32 0, i32 1, !dbg !5091
  store i32 5, i32* %length38, align 4, !dbg !5092
  br label %if.end57, !dbg !5093

if.else39:                                        ; preds = %if.else
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5094
  %bits_per_pixel40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 6, !dbg !5096
  %35 = load i32, i32* %bits_per_pixel40, align 4, !dbg !5096
  %cmp41 = icmp eq i32 %35, 8, !dbg !5097
  br i1 %cmp41, label %if.then43, label %if.end56, !dbg !5098

if.then43:                                        ; preds = %if.else39
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5099
  %blue44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %36, i32 0, i32 10, !dbg !5101
  %offset45 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %blue44, i32 0, i32 0, !dbg !5102
  store i32 0, i32* %offset45, align 4, !dbg !5103
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5104
  %green46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %37, i32 0, i32 9, !dbg !5105
  %offset47 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green46, i32 0, i32 0, !dbg !5106
  store i32 0, i32* %offset47, align 4, !dbg !5107
  %38 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5108
  %red48 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %38, i32 0, i32 8, !dbg !5109
  %offset49 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red48, i32 0, i32 0, !dbg !5110
  store i32 0, i32* %offset49, align 4, !dbg !5111
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5112
  %blue50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 10, !dbg !5113
  %length51 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %blue50, i32 0, i32 1, !dbg !5114
  store i32 8, i32* %length51, align 4, !dbg !5115
  %40 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5116
  %green52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %40, i32 0, i32 9, !dbg !5117
  %length53 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green52, i32 0, i32 1, !dbg !5118
  store i32 8, i32* %length53, align 4, !dbg !5119
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5120
  %red54 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 8, !dbg !5121
  %length55 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red54, i32 0, i32 1, !dbg !5122
  store i32 8, i32* %length55, align 4, !dbg !5123
  br label %if.end56, !dbg !5124

if.end56:                                         ; preds = %if.then43, %if.else39
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %sw.epilog
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then12
  store i32 0, i32* %retval, align 4, !dbg !5125
  br label %return, !dbg !5125

return:                                           ; preds = %if.end58, %sw.default, %if.then
  %42 = load i32, i32* %retval, align 4, !dbg !5126
  ret i32 %42, !dbg !5126
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @asiliantfb_set_par(%struct.fb_info* %p) #2 !dbg !5127 {
entry:
  %p.addr = alloca %struct.fb_info*, align 8
  %dclk2_m = alloca i8, align 1
  %dclk2_n = alloca i8, align 1
  %dclk2_div = alloca i8, align 1
  store %struct.fb_info* %p, %struct.fb_info** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %p.addr, metadata !5128, metadata !DIExpression()), !dbg !5129
  call void @llvm.dbg.declare(metadata i8* %dclk2_m, metadata !5130, metadata !DIExpression()), !dbg !5131
  call void @llvm.dbg.declare(metadata i8* %dclk2_n, metadata !5132, metadata !DIExpression()), !dbg !5133
  call void @llvm.dbg.declare(metadata i8* %dclk2_div, metadata !5134, metadata !DIExpression()), !dbg !5135
  %0 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5136
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 6, !dbg !5137
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 17, !dbg !5138
  call void @asiliant_calc_dclk2(i32* %pixclock, i8* %dclk2_m, i8* %dclk2_n, i8* %dclk2_div) #6, !dbg !5139
  %1 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5140
  %var1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %1, i32 0, i32 6, !dbg !5142
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var1, i32 0, i32 6, !dbg !5143
  %2 = load i32, i32* %bits_per_pixel, align 8, !dbg !5143
  %cmp = icmp eq i32 %2, 24, !dbg !5144
  br i1 %cmp, label %if.then, label %if.else, !dbg !5145

if.then:                                          ; preds = %entry
  %3 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5146
  call void @mm_write_xr(%struct.fb_info* %3, i8 zeroext -127, i8 zeroext 22) #6, !dbg !5146
  %4 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5148
  call void @mm_write_xr(%struct.fb_info* %4, i8 zeroext -126, i8 zeroext 0) #6, !dbg !5148
  %5 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5149
  call void @mm_write_xr(%struct.fb_info* %5, i8 zeroext 32, i8 zeroext 32) #6, !dbg !5149
  br label %if.end17, !dbg !5150

if.else:                                          ; preds = %entry
  %6 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5151
  %var2 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 6, !dbg !5153
  %bits_per_pixel3 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var2, i32 0, i32 6, !dbg !5154
  %7 = load i32, i32* %bits_per_pixel3, align 8, !dbg !5154
  %cmp4 = icmp eq i32 %7, 16, !dbg !5155
  br i1 %cmp4, label %if.then5, label %if.else10, !dbg !5156

if.then5:                                         ; preds = %if.else
  %8 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5157
  %var6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 6, !dbg !5160
  %red = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var6, i32 0, i32 8, !dbg !5161
  %offset = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red, i32 0, i32 0, !dbg !5162
  %9 = load i32, i32* %offset, align 8, !dbg !5162
  %cmp7 = icmp eq i32 %9, 11, !dbg !5163
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !5164

if.then8:                                         ; preds = %if.then5
  %10 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5165
  call void @mm_write_xr(%struct.fb_info* %10, i8 zeroext -127, i8 zeroext 21) #6, !dbg !5165
  br label %if.end, !dbg !5165

if.else9:                                         ; preds = %if.then5
  %11 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5166
  call void @mm_write_xr(%struct.fb_info* %11, i8 zeroext -127, i8 zeroext 20) #6, !dbg !5166
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then8
  %12 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5167
  call void @mm_write_xr(%struct.fb_info* %12, i8 zeroext -126, i8 zeroext 0) #6, !dbg !5167
  %13 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5168
  call void @mm_write_xr(%struct.fb_info* %13, i8 zeroext 32, i8 zeroext 16) #6, !dbg !5168
  br label %if.end16, !dbg !5169

if.else10:                                        ; preds = %if.else
  %14 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5170
  %var11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 6, !dbg !5172
  %bits_per_pixel12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var11, i32 0, i32 6, !dbg !5173
  %15 = load i32, i32* %bits_per_pixel12, align 8, !dbg !5173
  %cmp13 = icmp eq i32 %15, 8, !dbg !5174
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !5175

if.then14:                                        ; preds = %if.else10
  %16 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5176
  call void @mm_write_xr(%struct.fb_info* %16, i8 zeroext 10, i8 zeroext 2) #6, !dbg !5176
  %17 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5178
  call void @mm_write_xr(%struct.fb_info* %17, i8 zeroext -127, i8 zeroext 18) #6, !dbg !5178
  %18 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5179
  call void @mm_write_xr(%struct.fb_info* %18, i8 zeroext -126, i8 zeroext 0) #6, !dbg !5179
  %19 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5180
  call void @mm_write_xr(%struct.fb_info* %19, i8 zeroext 32, i8 zeroext 0) #6, !dbg !5180
  br label %if.end15, !dbg !5181

if.end15:                                         ; preds = %if.then14, %if.else10
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then
  %20 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5182
  %var18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 6, !dbg !5183
  %xres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var18, i32 0, i32 0, !dbg !5184
  %21 = load i32, i32* %xres, align 8, !dbg !5184
  %22 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5185
  %var19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 6, !dbg !5186
  %bits_per_pixel20 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var19, i32 0, i32 6, !dbg !5187
  %23 = load i32, i32* %bits_per_pixel20, align 8, !dbg !5187
  %shr = lshr i32 %23, 3, !dbg !5188
  %mul = mul i32 %21, %shr, !dbg !5189
  %24 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5190
  %fix = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 7, !dbg !5191
  %line_length = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix, i32 0, i32 9, !dbg !5192
  store i32 %mul, i32* %line_length, align 8, !dbg !5193
  %25 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5194
  %var21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 6, !dbg !5195
  %bits_per_pixel22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var21, i32 0, i32 6, !dbg !5196
  %26 = load i32, i32* %bits_per_pixel22, align 8, !dbg !5196
  %cmp23 = icmp eq i32 %26, 8, !dbg !5197
  %27 = zext i1 %cmp23 to i64, !dbg !5198
  %cond = select i1 %cmp23, i32 3, i32 2, !dbg !5198
  %28 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5199
  %fix24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 7, !dbg !5200
  %visual = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix24, i32 0, i32 5, !dbg !5201
  store i32 %cond, i32* %visual, align 4, !dbg !5202
  %29 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5203
  %30 = load i8, i8* %dclk2_m, align 1, !dbg !5203
  call void @mm_write_xr(%struct.fb_info* %29, i8 zeroext -60, i8 zeroext %30) #6, !dbg !5203
  %31 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5204
  %32 = load i8, i8* %dclk2_n, align 1, !dbg !5204
  call void @mm_write_xr(%struct.fb_info* %31, i8 zeroext -59, i8 zeroext %32) #6, !dbg !5204
  %33 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5205
  %34 = load i8, i8* %dclk2_div, align 1, !dbg !5205
  call void @mm_write_xr(%struct.fb_info* %33, i8 zeroext -57, i8 zeroext %34) #6, !dbg !5205
  %35 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5206
  call void @asiliant_set_timing(%struct.fb_info* %35) #6, !dbg !5207
  ret i32 0, !dbg !5208
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @asiliantfb_setcolreg(i32 %regno, i32 %red, i32 %green, i32 %blue, i32 %transp, %struct.fb_info* %p) #2 !dbg !5209 {
entry:
  %retval = alloca i32, align 4
  %regno.addr = alloca i32, align 4
  %red.addr = alloca i32, align 4
  %green.addr = alloca i32, align 4
  %blue.addr = alloca i32, align 4
  %transp.addr = alloca i32, align 4
  %p.addr = alloca %struct.fb_info*, align 8
  store i32 %regno, i32* %regno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %regno.addr, metadata !5213, metadata !DIExpression()), !dbg !5214
  store i32 %red, i32* %red.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %red.addr, metadata !5215, metadata !DIExpression()), !dbg !5216
  store i32 %green, i32* %green.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %green.addr, metadata !5217, metadata !DIExpression()), !dbg !5218
  store i32 %blue, i32* %blue.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %blue.addr, metadata !5219, metadata !DIExpression()), !dbg !5220
  store i32 %transp, i32* %transp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %transp.addr, metadata !5221, metadata !DIExpression()), !dbg !5222
  store %struct.fb_info* %p, %struct.fb_info** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %p.addr, metadata !5223, metadata !DIExpression()), !dbg !5224
  %0 = load i32, i32* %regno.addr, align 4, !dbg !5225
  %cmp = icmp ugt i32 %0, 255, !dbg !5227
  br i1 %cmp, label %if.then, label %if.end, !dbg !5228

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !5229
  br label %return, !dbg !5229

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %red.addr, align 4, !dbg !5230
  %shr = lshr i32 %1, 8, !dbg !5230
  store i32 %shr, i32* %red.addr, align 4, !dbg !5230
  %2 = load i32, i32* %green.addr, align 4, !dbg !5231
  %shr1 = lshr i32 %2, 8, !dbg !5231
  store i32 %shr1, i32* %green.addr, align 4, !dbg !5231
  %3 = load i32, i32* %blue.addr, align 4, !dbg !5232
  %shr2 = lshr i32 %3, 8, !dbg !5232
  store i32 %shr2, i32* %blue.addr, align 4, !dbg !5232
  %4 = load i32, i32* %regno.addr, align 4, !dbg !5233
  %conv = trunc i32 %4 to i8, !dbg !5233
  %5 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5234
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 25, !dbg !5234
  %screen_base = bitcast %union.anon.66* %6 to i8**, !dbg !5234
  %7 = load i8*, i8** %screen_base, align 8, !dbg !5234
  %add.ptr = getelementptr i8, i8* %7, i64 4194304, !dbg !5234
  %add.ptr3 = getelementptr i8, i8* %add.ptr, i64 1936, !dbg !5235
  call void @writeb(i8 zeroext %conv, i8* %add.ptr3) #6, !dbg !5236
  call void @__const_udelay(i64 4295) #6, !dbg !5237
  %8 = load i32, i32* %red.addr, align 4, !dbg !5242
  %conv4 = trunc i32 %8 to i8, !dbg !5242
  %9 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5243
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 25, !dbg !5243
  %screen_base5 = bitcast %union.anon.66* %10 to i8**, !dbg !5243
  %11 = load i8*, i8** %screen_base5, align 8, !dbg !5243
  %add.ptr6 = getelementptr i8, i8* %11, i64 4194304, !dbg !5243
  %add.ptr7 = getelementptr i8, i8* %add.ptr6, i64 1937, !dbg !5244
  call void @writeb(i8 zeroext %conv4, i8* %add.ptr7) #6, !dbg !5245
  %12 = load i32, i32* %green.addr, align 4, !dbg !5246
  %conv8 = trunc i32 %12 to i8, !dbg !5246
  %13 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5247
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 25, !dbg !5247
  %screen_base9 = bitcast %union.anon.66* %14 to i8**, !dbg !5247
  %15 = load i8*, i8** %screen_base9, align 8, !dbg !5247
  %add.ptr10 = getelementptr i8, i8* %15, i64 4194304, !dbg !5247
  %add.ptr11 = getelementptr i8, i8* %add.ptr10, i64 1937, !dbg !5248
  call void @writeb(i8 zeroext %conv8, i8* %add.ptr11) #6, !dbg !5249
  %16 = load i32, i32* %blue.addr, align 4, !dbg !5250
  %conv12 = trunc i32 %16 to i8, !dbg !5250
  %17 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5251
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 25, !dbg !5251
  %screen_base13 = bitcast %union.anon.66* %18 to i8**, !dbg !5251
  %19 = load i8*, i8** %screen_base13, align 8, !dbg !5251
  %add.ptr14 = getelementptr i8, i8* %19, i64 4194304, !dbg !5251
  %add.ptr15 = getelementptr i8, i8* %add.ptr14, i64 1937, !dbg !5252
  call void @writeb(i8 zeroext %conv12, i8* %add.ptr15) #6, !dbg !5253
  %20 = load i32, i32* %regno.addr, align 4, !dbg !5254
  %cmp16 = icmp ult i32 %20, 16, !dbg !5256
  br i1 %cmp16, label %if.then18, label %if.end45, !dbg !5257

if.then18:                                        ; preds = %if.end
  %21 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5258
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 6, !dbg !5260
  %red19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 8, !dbg !5261
  %offset = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red19, i32 0, i32 0, !dbg !5262
  %22 = load i32, i32* %offset, align 8, !dbg !5262
  switch i32 %22, label %sw.epilog [
    i32 10, label %sw.bb
    i32 11, label %sw.bb25
    i32 16, label %sw.bb37
  ], !dbg !5263

sw.bb:                                            ; preds = %if.then18
  %23 = load i32, i32* %red.addr, align 4, !dbg !5264
  %and = and i32 %23, 248, !dbg !5266
  %shl = shl i32 %and, 7, !dbg !5267
  %24 = load i32, i32* %green.addr, align 4, !dbg !5268
  %and20 = and i32 %24, 248, !dbg !5269
  %shl21 = shl i32 %and20, 2, !dbg !5270
  %or = or i32 %shl, %shl21, !dbg !5271
  %25 = load i32, i32* %blue.addr, align 4, !dbg !5272
  %and22 = and i32 %25, 248, !dbg !5273
  %shr23 = lshr i32 %and22, 3, !dbg !5274
  %or24 = or i32 %or, %shr23, !dbg !5275
  %26 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5276
  %pseudo_palette = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 27, !dbg !5277
  %27 = load i8*, i8** %pseudo_palette, align 8, !dbg !5277
  %28 = bitcast i8* %27 to i32*, !dbg !5278
  %29 = load i32, i32* %regno.addr, align 4, !dbg !5279
  %idxprom = zext i32 %29 to i64, !dbg !5280
  %arrayidx = getelementptr i32, i32* %28, i64 %idxprom, !dbg !5280
  store i32 %or24, i32* %arrayidx, align 4, !dbg !5281
  br label %sw.epilog, !dbg !5282

sw.bb25:                                          ; preds = %if.then18
  %30 = load i32, i32* %red.addr, align 4, !dbg !5283
  %and26 = and i32 %30, 248, !dbg !5284
  %shl27 = shl i32 %and26, 8, !dbg !5285
  %31 = load i32, i32* %green.addr, align 4, !dbg !5286
  %and28 = and i32 %31, 252, !dbg !5287
  %shl29 = shl i32 %and28, 3, !dbg !5288
  %or30 = or i32 %shl27, %shl29, !dbg !5289
  %32 = load i32, i32* %blue.addr, align 4, !dbg !5290
  %and31 = and i32 %32, 248, !dbg !5291
  %shr32 = lshr i32 %and31, 3, !dbg !5292
  %or33 = or i32 %or30, %shr32, !dbg !5293
  %33 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5294
  %pseudo_palette34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 27, !dbg !5295
  %34 = load i8*, i8** %pseudo_palette34, align 8, !dbg !5295
  %35 = bitcast i8* %34 to i32*, !dbg !5296
  %36 = load i32, i32* %regno.addr, align 4, !dbg !5297
  %idxprom35 = zext i32 %36 to i64, !dbg !5298
  %arrayidx36 = getelementptr i32, i32* %35, i64 %idxprom35, !dbg !5298
  store i32 %or33, i32* %arrayidx36, align 4, !dbg !5299
  br label %sw.epilog, !dbg !5300

sw.bb37:                                          ; preds = %if.then18
  %37 = load i32, i32* %red.addr, align 4, !dbg !5301
  %shl38 = shl i32 %37, 16, !dbg !5302
  %38 = load i32, i32* %green.addr, align 4, !dbg !5303
  %shl39 = shl i32 %38, 8, !dbg !5304
  %or40 = or i32 %shl38, %shl39, !dbg !5305
  %39 = load i32, i32* %blue.addr, align 4, !dbg !5306
  %or41 = or i32 %or40, %39, !dbg !5307
  %40 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5308
  %pseudo_palette42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 27, !dbg !5309
  %41 = load i8*, i8** %pseudo_palette42, align 8, !dbg !5309
  %42 = bitcast i8* %41 to i32*, !dbg !5310
  %43 = load i32, i32* %regno.addr, align 4, !dbg !5311
  %idxprom43 = zext i32 %43 to i64, !dbg !5312
  %arrayidx44 = getelementptr i32, i32* %42, i64 %idxprom43, !dbg !5312
  store i32 %or41, i32* %arrayidx44, align 4, !dbg !5313
  br label %sw.epilog, !dbg !5314

sw.epilog:                                        ; preds = %if.then18, %sw.bb37, %sw.bb25, %sw.bb
  br label %if.end45, !dbg !5315

if.end45:                                         ; preds = %sw.epilog, %if.end
  store i32 0, i32* %retval, align 4, !dbg !5316
  br label %return, !dbg !5316

return:                                           ; preds = %if.end45, %if.then
  %44 = load i32, i32* %retval, align 4, !dbg !5317
  ret i32 %44, !dbg !5317
}

; Function Attrs: noredzone
declare dso_local void @cfb_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #1

; Function Attrs: noredzone
declare dso_local void @cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

; Function Attrs: noredzone
declare dso_local void @cfb_imageblit(%struct.fb_info*, %struct.fb_image*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @asiliant_calc_dclk2(i32* %ppixclock, i8* %dclk2_m, i8* %dclk2_n, i8* %dclk2_div) #2 !dbg !5318 {
entry:
  %ppixclock.addr = alloca i32*, align 8
  %dclk2_m.addr = alloca i8*, align 8
  %dclk2_n.addr = alloca i8*, align 8
  %dclk2_div.addr = alloca i8*, align 8
  %pixclock = alloca i32, align 4
  %Ftarget = alloca i32, align 4
  %n = alloca i32, align 4
  %best_error = alloca i32, align 4
  %best_m = alloca i32, align 4
  %best_n = alloca i32, align 4
  %ratio = alloca i32, align 4
  %remainder = alloca i32, align 4
  %divisor = alloca i8, align 1
  %m = alloca i32, align 4
  %new_error = alloca i32, align 4
  %new_error34 = alloca i32, align 4
  store i32* %ppixclock, i32** %ppixclock.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ppixclock.addr, metadata !5321, metadata !DIExpression()), !dbg !5322
  store i8* %dclk2_m, i8** %dclk2_m.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dclk2_m.addr, metadata !5323, metadata !DIExpression()), !dbg !5324
  store i8* %dclk2_n, i8** %dclk2_n.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dclk2_n.addr, metadata !5325, metadata !DIExpression()), !dbg !5326
  store i8* %dclk2_div, i8** %dclk2_div.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dclk2_div.addr, metadata !5327, metadata !DIExpression()), !dbg !5328
  call void @llvm.dbg.declare(metadata i32* %pixclock, metadata !5329, metadata !DIExpression()), !dbg !5330
  %0 = load i32*, i32** %ppixclock.addr, align 8, !dbg !5331
  %1 = load i32, i32* %0, align 4, !dbg !5332
  store i32 %1, i32* %pixclock, align 4, !dbg !5330
  call void @llvm.dbg.declare(metadata i32* %Ftarget, metadata !5333, metadata !DIExpression()), !dbg !5334
  %2 = load i32, i32* %pixclock, align 4, !dbg !5335
  %div = udiv i32 1000000, %2, !dbg !5336
  %mul = mul i32 1000000, %div, !dbg !5337
  store i32 %mul, i32* %Ftarget, align 4, !dbg !5334
  call void @llvm.dbg.declare(metadata i32* %n, metadata !5338, metadata !DIExpression()), !dbg !5339
  call void @llvm.dbg.declare(metadata i32* %best_error, metadata !5340, metadata !DIExpression()), !dbg !5341
  store i32 -1, i32* %best_error, align 4, !dbg !5341
  call void @llvm.dbg.declare(metadata i32* %best_m, metadata !5342, metadata !DIExpression()), !dbg !5343
  store i32 -1, i32* %best_m, align 4, !dbg !5343
  call void @llvm.dbg.declare(metadata i32* %best_n, metadata !5344, metadata !DIExpression()), !dbg !5345
  store i32 -1, i32* %best_n, align 4, !dbg !5345
  call void @llvm.dbg.declare(metadata i32* %ratio, metadata !5346, metadata !DIExpression()), !dbg !5347
  call void @llvm.dbg.declare(metadata i32* %remainder, metadata !5348, metadata !DIExpression()), !dbg !5349
  call void @llvm.dbg.declare(metadata i8* %divisor, metadata !5350, metadata !DIExpression()), !dbg !5351
  store i8 0, i8* %divisor, align 1, !dbg !5351
  %3 = load i32, i32* %pixclock, align 4, !dbg !5352
  %div1 = udiv i32 1000000, %3, !dbg !5353
  store i32 %div1, i32* %ratio, align 4, !dbg !5354
  %4 = load i32, i32* %pixclock, align 4, !dbg !5355
  %rem = urem i32 1000000, %4, !dbg !5356
  store i32 %rem, i32* %remainder, align 4, !dbg !5357
  %5 = load i32, i32* %ratio, align 4, !dbg !5358
  %mul2 = mul i32 1000000, %5, !dbg !5359
  %6 = load i32, i32* %remainder, align 4, !dbg !5360
  %mul3 = mul i32 1000000, %6, !dbg !5361
  %7 = load i32, i32* %pixclock, align 4, !dbg !5362
  %div4 = udiv i32 %mul3, %7, !dbg !5363
  %add = add i32 %mul2, %div4, !dbg !5364
  store i32 %add, i32* %Ftarget, align 4, !dbg !5365
  br label %while.cond, !dbg !5366

while.cond:                                       ; preds = %while.body, %entry
  %8 = load i32, i32* %Ftarget, align 4, !dbg !5367
  %cmp = icmp ult i32 %8, 100000000, !dbg !5368
  br i1 %cmp, label %while.body, label %while.end, !dbg !5366

while.body:                                       ; preds = %while.cond
  %9 = load i8, i8* %divisor, align 1, !dbg !5369
  %conv = zext i8 %9 to i32, !dbg !5369
  %add5 = add i32 %conv, 16, !dbg !5369
  %conv6 = trunc i32 %add5 to i8, !dbg !5369
  store i8 %conv6, i8* %divisor, align 1, !dbg !5369
  %10 = load i32, i32* %Ftarget, align 4, !dbg !5371
  %shl = shl i32 %10, 1, !dbg !5371
  store i32 %shl, i32* %Ftarget, align 4, !dbg !5371
  br label %while.cond, !dbg !5366, !llvm.loop !5372

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %Ftarget, align 4, !dbg !5374
  %div7 = udiv i32 %11, 14318180, !dbg !5375
  store i32 %div7, i32* %ratio, align 4, !dbg !5376
  %12 = load i32, i32* %Ftarget, align 4, !dbg !5377
  %rem8 = urem i32 %12, 14318180, !dbg !5378
  store i32 %rem8, i32* %remainder, align 4, !dbg !5379
  store i32 3, i32* %n, align 4, !dbg !5380
  br label %for.cond, !dbg !5382

for.cond:                                         ; preds = %for.inc, %while.end
  %13 = load i32, i32* %n, align 4, !dbg !5383
  %cmp9 = icmp ule i32 %13, 257, !dbg !5385
  br i1 %cmp9, label %for.body, label %for.end, !dbg !5386

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %m, metadata !5387, metadata !DIExpression()), !dbg !5389
  %14 = load i32, i32* %n, align 4, !dbg !5390
  %15 = load i32, i32* %ratio, align 4, !dbg !5391
  %mul11 = mul i32 %14, %15, !dbg !5392
  %16 = load i32, i32* %n, align 4, !dbg !5393
  %17 = load i32, i32* %remainder, align 4, !dbg !5394
  %mul12 = mul i32 %16, %17, !dbg !5395
  %div13 = udiv i32 %mul12, 14318180, !dbg !5396
  %add14 = add i32 %mul11, %div13, !dbg !5397
  store i32 %add14, i32* %m, align 4, !dbg !5389
  %18 = load i32, i32* %m, align 4, !dbg !5398
  %cmp15 = icmp uge i32 %18, 3, !dbg !5400
  br i1 %cmp15, label %land.lhs.true, label %if.else, !dbg !5401

land.lhs.true:                                    ; preds = %for.body
  %19 = load i32, i32* %m, align 4, !dbg !5402
  %cmp17 = icmp ule i32 %19, 257, !dbg !5403
  br i1 %cmp17, label %if.then, label %if.else, !dbg !5404

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i32* %new_error, metadata !5405, metadata !DIExpression()), !dbg !5407
  %20 = load i32, i32* %Ftarget, align 4, !dbg !5408
  %21 = load i32, i32* %n, align 4, !dbg !5409
  %mul19 = mul i32 %20, %21, !dbg !5410
  %22 = load i32, i32* %m, align 4, !dbg !5411
  %mul20 = mul i32 14318180, %22, !dbg !5412
  %cmp21 = icmp uge i32 %mul19, %mul20, !dbg !5413
  br i1 %cmp21, label %cond.true, label %cond.false, !dbg !5408

cond.true:                                        ; preds = %if.then
  %23 = load i32, i32* %Ftarget, align 4, !dbg !5414
  %24 = load i32, i32* %n, align 4, !dbg !5415
  %mul23 = mul i32 %23, %24, !dbg !5416
  %25 = load i32, i32* %m, align 4, !dbg !5417
  %mul24 = mul i32 14318180, %25, !dbg !5418
  %sub = sub i32 %mul23, %mul24, !dbg !5419
  br label %cond.end, !dbg !5408

cond.false:                                       ; preds = %if.then
  %26 = load i32, i32* %m, align 4, !dbg !5420
  %mul25 = mul i32 14318180, %26, !dbg !5421
  %27 = load i32, i32* %Ftarget, align 4, !dbg !5422
  %28 = load i32, i32* %n, align 4, !dbg !5423
  %mul26 = mul i32 %27, %28, !dbg !5424
  %sub27 = sub i32 %mul25, %mul26, !dbg !5425
  br label %cond.end, !dbg !5408

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %sub27, %cond.false ], !dbg !5408
  store i32 %cond, i32* %new_error, align 4, !dbg !5407
  %29 = load i32, i32* %new_error, align 4, !dbg !5426
  %30 = load i32, i32* %best_error, align 4, !dbg !5428
  %cmp28 = icmp ult i32 %29, %30, !dbg !5429
  br i1 %cmp28, label %if.then30, label %if.end, !dbg !5430

if.then30:                                        ; preds = %cond.end
  %31 = load i32, i32* %n, align 4, !dbg !5431
  store i32 %31, i32* %best_n, align 4, !dbg !5433
  %32 = load i32, i32* %m, align 4, !dbg !5434
  store i32 %32, i32* %best_m, align 4, !dbg !5435
  %33 = load i32, i32* %new_error, align 4, !dbg !5436
  store i32 %33, i32* %best_error, align 4, !dbg !5437
  br label %if.end, !dbg !5438

if.end:                                           ; preds = %if.then30, %cond.end
  br label %if.end56, !dbg !5439

if.else:                                          ; preds = %land.lhs.true, %for.body
  %34 = load i32, i32* %m, align 4, !dbg !5440
  %cmp31 = icmp ule i32 %34, 1028, !dbg !5442
  br i1 %cmp31, label %if.then33, label %if.end55, !dbg !5443

if.then33:                                        ; preds = %if.else
  call void @llvm.dbg.declare(metadata i32* %new_error34, metadata !5444, metadata !DIExpression()), !dbg !5446
  %35 = load i32, i32* %Ftarget, align 4, !dbg !5447
  %36 = load i32, i32* %n, align 4, !dbg !5448
  %mul35 = mul i32 %35, %36, !dbg !5449
  %37 = load i32, i32* %m, align 4, !dbg !5450
  %and = and i32 %37, -4, !dbg !5451
  %mul36 = mul i32 14318180, %and, !dbg !5452
  %cmp37 = icmp uge i32 %mul35, %mul36, !dbg !5453
  br i1 %cmp37, label %cond.true39, label %cond.false44, !dbg !5447

cond.true39:                                      ; preds = %if.then33
  %38 = load i32, i32* %Ftarget, align 4, !dbg !5454
  %39 = load i32, i32* %n, align 4, !dbg !5455
  %mul40 = mul i32 %38, %39, !dbg !5456
  %40 = load i32, i32* %m, align 4, !dbg !5457
  %and41 = and i32 %40, -4, !dbg !5458
  %mul42 = mul i32 14318180, %and41, !dbg !5459
  %sub43 = sub i32 %mul40, %mul42, !dbg !5460
  br label %cond.end49, !dbg !5447

cond.false44:                                     ; preds = %if.then33
  %41 = load i32, i32* %m, align 4, !dbg !5461
  %and45 = and i32 %41, -4, !dbg !5462
  %mul46 = mul i32 14318180, %and45, !dbg !5463
  %42 = load i32, i32* %Ftarget, align 4, !dbg !5464
  %43 = load i32, i32* %n, align 4, !dbg !5465
  %mul47 = mul i32 %42, %43, !dbg !5466
  %sub48 = sub i32 %mul46, %mul47, !dbg !5467
  br label %cond.end49, !dbg !5447

cond.end49:                                       ; preds = %cond.false44, %cond.true39
  %cond50 = phi i32 [ %sub43, %cond.true39 ], [ %sub48, %cond.false44 ], !dbg !5447
  store i32 %cond50, i32* %new_error34, align 4, !dbg !5446
  %44 = load i32, i32* %new_error34, align 4, !dbg !5468
  %45 = load i32, i32* %best_error, align 4, !dbg !5470
  %cmp51 = icmp ult i32 %44, %45, !dbg !5471
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !5472

if.then53:                                        ; preds = %cond.end49
  %46 = load i32, i32* %n, align 4, !dbg !5473
  store i32 %46, i32* %best_n, align 4, !dbg !5475
  %47 = load i32, i32* %m, align 4, !dbg !5476
  store i32 %47, i32* %best_m, align 4, !dbg !5477
  %48 = load i32, i32* %new_error34, align 4, !dbg !5478
  store i32 %48, i32* %best_error, align 4, !dbg !5479
  br label %if.end54, !dbg !5480

if.end54:                                         ; preds = %if.then53, %cond.end49
  br label %if.end55, !dbg !5481

if.end55:                                         ; preds = %if.end54, %if.else
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end
  br label %for.inc, !dbg !5482

for.inc:                                          ; preds = %if.end56
  %49 = load i32, i32* %n, align 4, !dbg !5483
  %inc = add i32 %49, 1, !dbg !5483
  store i32 %inc, i32* %n, align 4, !dbg !5483
  br label %for.cond, !dbg !5484, !llvm.loop !5485

for.end:                                          ; preds = %for.cond
  %50 = load i32, i32* %best_m, align 4, !dbg !5487
  %cmp57 = icmp ugt i32 %50, 257, !dbg !5489
  br i1 %cmp57, label %if.then59, label %if.else60, !dbg !5490

if.then59:                                        ; preds = %for.end
  %51 = load i32, i32* %best_m, align 4, !dbg !5491
  %shr = lshr i32 %51, 2, !dbg !5491
  store i32 %shr, i32* %best_m, align 4, !dbg !5491
  br label %if.end63, !dbg !5492

if.else60:                                        ; preds = %for.end
  %52 = load i8, i8* %divisor, align 1, !dbg !5493
  %conv61 = zext i8 %52 to i32, !dbg !5493
  %or = or i32 %conv61, 4, !dbg !5493
  %conv62 = trunc i32 %or to i8, !dbg !5493
  store i8 %conv62, i8* %divisor, align 1, !dbg !5493
  br label %if.end63

if.end63:                                         ; preds = %if.else60, %if.then59
  %53 = load i32, i32* %best_m, align 4, !dbg !5494
  %sub64 = sub i32 %53, 2, !dbg !5495
  %conv65 = trunc i32 %sub64 to i8, !dbg !5494
  %54 = load i8*, i8** %dclk2_m.addr, align 8, !dbg !5496
  store i8 %conv65, i8* %54, align 1, !dbg !5497
  %55 = load i32, i32* %best_n, align 4, !dbg !5498
  %sub66 = sub i32 %55, 2, !dbg !5499
  %conv67 = trunc i32 %sub66 to i8, !dbg !5498
  %56 = load i8*, i8** %dclk2_n.addr, align 8, !dbg !5500
  store i8 %conv67, i8* %56, align 1, !dbg !5501
  %57 = load i8, i8* %divisor, align 1, !dbg !5502
  %58 = load i8*, i8** %dclk2_div.addr, align 8, !dbg !5503
  store i8 %57, i8* %58, align 1, !dbg !5504
  %59 = load i32, i32* %pixclock, align 4, !dbg !5505
  %60 = load i32*, i32** %ppixclock.addr, align 8, !dbg !5506
  store i32 %59, i32* %60, align 4, !dbg !5507
  ret void, !dbg !5508
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mm_write_xr(%struct.fb_info* %p, i8 zeroext %reg, i8 zeroext %data) #2 !dbg !5509 {
entry:
  %p.addr = alloca %struct.fb_info*, align 8
  %reg.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  store %struct.fb_info* %p, %struct.fb_info** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %p.addr, metadata !5512, metadata !DIExpression()), !dbg !5513
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !5514, metadata !DIExpression()), !dbg !5515
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !5516, metadata !DIExpression()), !dbg !5517
  br label %do.body, !dbg !5518

do.body:                                          ; preds = %entry
  %0 = load i8, i8* %reg.addr, align 1, !dbg !5519
  %1 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5519
  %2 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %1, i32 0, i32 25, !dbg !5519
  %screen_base = bitcast %union.anon.66* %2 to i8**, !dbg !5519
  %3 = load i8*, i8** %screen_base, align 8, !dbg !5519
  %add.ptr = getelementptr i8, i8* %3, i64 4194304, !dbg !5519
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 1964, !dbg !5519
  call void @writeb(i8 zeroext %0, i8* %add.ptr1) #6, !dbg !5519
  %4 = load i8, i8* %data.addr, align 1, !dbg !5519
  %5 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5519
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 25, !dbg !5519
  %screen_base2 = bitcast %union.anon.66* %6 to i8**, !dbg !5519
  %7 = load i8*, i8** %screen_base2, align 8, !dbg !5519
  %add.ptr3 = getelementptr i8, i8* %7, i64 4194304, !dbg !5519
  %add.ptr4 = getelementptr i8, i8* %add.ptr3, i64 1965, !dbg !5519
  call void @writeb(i8 zeroext %4, i8* %add.ptr4) #6, !dbg !5519
  br label %do.end, !dbg !5519

do.end:                                           ; preds = %do.body
  ret void, !dbg !5521
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @asiliant_set_timing(%struct.fb_info* %p) #2 !dbg !5522 {
entry:
  %p.addr = alloca %struct.fb_info*, align 8
  %hd = alloca i32, align 4
  %hs = alloca i32, align 4
  %he = alloca i32, align 4
  %ht = alloca i32, align 4
  %vd = alloca i32, align 4
  %vs = alloca i32, align 4
  %ve = alloca i32, align 4
  %vt = alloca i32, align 4
  %wd = alloca i32, align 4
  store %struct.fb_info* %p, %struct.fb_info** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %p.addr, metadata !5523, metadata !DIExpression()), !dbg !5524
  call void @llvm.dbg.declare(metadata i32* %hd, metadata !5525, metadata !DIExpression()), !dbg !5526
  %0 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5527
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 6, !dbg !5528
  %xres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var, i32 0, i32 0, !dbg !5529
  %1 = load i32, i32* %xres, align 8, !dbg !5529
  %div = udiv i32 %1, 8, !dbg !5530
  store i32 %div, i32* %hd, align 4, !dbg !5526
  call void @llvm.dbg.declare(metadata i32* %hs, metadata !5531, metadata !DIExpression()), !dbg !5532
  %2 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5533
  %var1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %2, i32 0, i32 6, !dbg !5534
  %xres2 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var1, i32 0, i32 0, !dbg !5535
  %3 = load i32, i32* %xres2, align 8, !dbg !5535
  %4 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5536
  %var3 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 6, !dbg !5537
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var3, i32 0, i32 19, !dbg !5538
  %5 = load i32, i32* %right_margin, align 4, !dbg !5538
  %add = add i32 %3, %5, !dbg !5539
  %div4 = udiv i32 %add, 8, !dbg !5540
  store i32 %div4, i32* %hs, align 4, !dbg !5532
  call void @llvm.dbg.declare(metadata i32* %he, metadata !5541, metadata !DIExpression()), !dbg !5542
  %6 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5543
  %var5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 6, !dbg !5544
  %xres6 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var5, i32 0, i32 0, !dbg !5545
  %7 = load i32, i32* %xres6, align 8, !dbg !5545
  %8 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5546
  %var7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 6, !dbg !5547
  %right_margin8 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var7, i32 0, i32 19, !dbg !5548
  %9 = load i32, i32* %right_margin8, align 4, !dbg !5548
  %add9 = add i32 %7, %9, !dbg !5549
  %10 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5550
  %var10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 6, !dbg !5551
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var10, i32 0, i32 22, !dbg !5552
  %11 = load i32, i32* %hsync_len, align 8, !dbg !5552
  %add11 = add i32 %add9, %11, !dbg !5553
  %div12 = udiv i32 %add11, 8, !dbg !5554
  store i32 %div12, i32* %he, align 4, !dbg !5542
  call void @llvm.dbg.declare(metadata i32* %ht, metadata !5555, metadata !DIExpression()), !dbg !5556
  %12 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5557
  %var13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 6, !dbg !5558
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var13, i32 0, i32 18, !dbg !5559
  %13 = load i32, i32* %left_margin, align 8, !dbg !5559
  %14 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5560
  %var14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 6, !dbg !5561
  %xres15 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var14, i32 0, i32 0, !dbg !5562
  %15 = load i32, i32* %xres15, align 8, !dbg !5562
  %add16 = add i32 %13, %15, !dbg !5563
  %16 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5564
  %var17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 6, !dbg !5565
  %right_margin18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var17, i32 0, i32 19, !dbg !5566
  %17 = load i32, i32* %right_margin18, align 4, !dbg !5566
  %add19 = add i32 %add16, %17, !dbg !5567
  %18 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5568
  %var20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 6, !dbg !5569
  %hsync_len21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var20, i32 0, i32 22, !dbg !5570
  %19 = load i32, i32* %hsync_len21, align 8, !dbg !5570
  %add22 = add i32 %add19, %19, !dbg !5571
  %div23 = udiv i32 %add22, 8, !dbg !5572
  store i32 %div23, i32* %ht, align 4, !dbg !5556
  call void @llvm.dbg.declare(metadata i32* %vd, metadata !5573, metadata !DIExpression()), !dbg !5574
  %20 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5575
  %var24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 6, !dbg !5576
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var24, i32 0, i32 1, !dbg !5577
  %21 = load i32, i32* %yres, align 4, !dbg !5577
  store i32 %21, i32* %vd, align 4, !dbg !5574
  call void @llvm.dbg.declare(metadata i32* %vs, metadata !5578, metadata !DIExpression()), !dbg !5579
  %22 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5580
  %var25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 6, !dbg !5581
  %yres26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var25, i32 0, i32 1, !dbg !5582
  %23 = load i32, i32* %yres26, align 4, !dbg !5582
  %24 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5583
  %var27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 6, !dbg !5584
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var27, i32 0, i32 21, !dbg !5585
  %25 = load i32, i32* %lower_margin, align 4, !dbg !5585
  %add28 = add i32 %23, %25, !dbg !5586
  store i32 %add28, i32* %vs, align 4, !dbg !5579
  call void @llvm.dbg.declare(metadata i32* %ve, metadata !5587, metadata !DIExpression()), !dbg !5588
  %26 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5589
  %var29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 6, !dbg !5590
  %yres30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var29, i32 0, i32 1, !dbg !5591
  %27 = load i32, i32* %yres30, align 4, !dbg !5591
  %28 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5592
  %var31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 6, !dbg !5593
  %lower_margin32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var31, i32 0, i32 21, !dbg !5594
  %29 = load i32, i32* %lower_margin32, align 4, !dbg !5594
  %add33 = add i32 %27, %29, !dbg !5595
  %30 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5596
  %var34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 6, !dbg !5597
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var34, i32 0, i32 23, !dbg !5598
  %31 = load i32, i32* %vsync_len, align 4, !dbg !5598
  %add35 = add i32 %add33, %31, !dbg !5599
  store i32 %add35, i32* %ve, align 4, !dbg !5588
  call void @llvm.dbg.declare(metadata i32* %vt, metadata !5600, metadata !DIExpression()), !dbg !5601
  %32 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5602
  %var36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 6, !dbg !5603
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var36, i32 0, i32 20, !dbg !5604
  %33 = load i32, i32* %upper_margin, align 8, !dbg !5604
  %34 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5605
  %var37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 6, !dbg !5606
  %yres38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var37, i32 0, i32 1, !dbg !5607
  %35 = load i32, i32* %yres38, align 4, !dbg !5607
  %add39 = add i32 %33, %35, !dbg !5608
  %36 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5609
  %var40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 6, !dbg !5610
  %lower_margin41 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var40, i32 0, i32 21, !dbg !5611
  %37 = load i32, i32* %lower_margin41, align 4, !dbg !5611
  %add42 = add i32 %add39, %37, !dbg !5612
  %38 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5613
  %var43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 6, !dbg !5614
  %vsync_len44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var43, i32 0, i32 23, !dbg !5615
  %39 = load i32, i32* %vsync_len44, align 4, !dbg !5615
  %add45 = add i32 %add42, %39, !dbg !5616
  store i32 %add45, i32* %vt, align 4, !dbg !5601
  call void @llvm.dbg.declare(metadata i32* %wd, metadata !5617, metadata !DIExpression()), !dbg !5618
  %40 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5619
  %var46 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 6, !dbg !5620
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var46, i32 0, i32 2, !dbg !5621
  %41 = load i32, i32* %xres_virtual, align 8, !dbg !5621
  %42 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5622
  %var47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 6, !dbg !5623
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var47, i32 0, i32 6, !dbg !5624
  %43 = load i32, i32* %bits_per_pixel, align 8, !dbg !5624
  %add48 = add i32 %43, 7, !dbg !5625
  %div49 = udiv i32 %add48, 8, !dbg !5626
  %mul = mul i32 %41, %div49, !dbg !5627
  %div50 = udiv i32 %mul, 8, !dbg !5628
  store i32 %div50, i32* %wd, align 4, !dbg !5618
  %44 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5629
  %var51 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 6, !dbg !5631
  %xres52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var51, i32 0, i32 0, !dbg !5632
  %45 = load i32, i32* %xres52, align 8, !dbg !5632
  %cmp = icmp eq i32 %45, 640, !dbg !5633
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !5634

land.lhs.true:                                    ; preds = %entry
  %46 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5635
  %var53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 6, !dbg !5636
  %yres54 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var53, i32 0, i32 1, !dbg !5637
  %47 = load i32, i32* %yres54, align 4, !dbg !5637
  %cmp55 = icmp eq i32 %47, 480, !dbg !5638
  br i1 %cmp55, label %land.lhs.true56, label %if.else, !dbg !5639

land.lhs.true56:                                  ; preds = %land.lhs.true
  %48 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5640
  %var57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 6, !dbg !5641
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var57, i32 0, i32 17, !dbg !5642
  %49 = load i32, i32* %pixclock, align 4, !dbg !5642
  %cmp58 = icmp eq i32 %49, 39722, !dbg !5643
  br i1 %cmp58, label %if.then, label %if.else, !dbg !5644

if.then:                                          ; preds = %land.lhs.true56
  %50 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5645
  call void @mm_write_fr(%struct.fb_info* %50, i8 zeroext 1, i8 zeroext 2) #6, !dbg !5645
  br label %if.end, !dbg !5647

if.else:                                          ; preds = %land.lhs.true56, %land.lhs.true, %entry
  %51 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5648
  call void @mm_write_fr(%struct.fb_info* %51, i8 zeroext 1, i8 zeroext 1) #6, !dbg !5648
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %52 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5650
  %53 = load i32, i32* %ve, align 4, !dbg !5650
  %sub = sub i32 %53, 1, !dbg !5650
  %and = and i32 %sub, 15, !dbg !5650
  %conv = trunc i32 %and to i8, !dbg !5650
  call void @mm_write_cr(%struct.fb_info* %52, i8 zeroext 17, i8 zeroext %conv) #6, !dbg !5650
  %54 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5651
  %55 = load i32, i32* %ht, align 4, !dbg !5651
  %sub59 = sub i32 %55, 5, !dbg !5651
  %and60 = and i32 %sub59, 255, !dbg !5651
  %conv61 = trunc i32 %and60 to i8, !dbg !5651
  call void @mm_write_cr(%struct.fb_info* %54, i8 zeroext 0, i8 zeroext %conv61) #6, !dbg !5651
  %56 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5652
  %57 = load i32, i32* %hd, align 4, !dbg !5652
  %sub62 = sub i32 %57, 1, !dbg !5652
  %conv63 = trunc i32 %sub62 to i8, !dbg !5652
  call void @mm_write_cr(%struct.fb_info* %56, i8 zeroext 1, i8 zeroext %conv63) #6, !dbg !5652
  %58 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5653
  %59 = load i32, i32* %hd, align 4, !dbg !5653
  %conv64 = trunc i32 %59 to i8, !dbg !5653
  call void @mm_write_cr(%struct.fb_info* %58, i8 zeroext 2, i8 zeroext %conv64) #6, !dbg !5653
  %60 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5654
  %61 = load i32, i32* %ht, align 4, !dbg !5654
  %sub65 = sub i32 %61, 1, !dbg !5654
  %and66 = and i32 %sub65, 31, !dbg !5654
  %or = or i32 %and66, 128, !dbg !5654
  %conv67 = trunc i32 %or to i8, !dbg !5654
  call void @mm_write_cr(%struct.fb_info* %60, i8 zeroext 3, i8 zeroext %conv67) #6, !dbg !5654
  %62 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5655
  %63 = load i32, i32* %hs, align 4, !dbg !5655
  %conv68 = trunc i32 %63 to i8, !dbg !5655
  call void @mm_write_cr(%struct.fb_info* %62, i8 zeroext 4, i8 zeroext %conv68) #6, !dbg !5655
  %64 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5656
  %65 = load i32, i32* %ht, align 4, !dbg !5656
  %sub69 = sub i32 %65, 1, !dbg !5656
  %and70 = and i32 %sub69, 32, !dbg !5656
  %shl = shl i32 %and70, 2, !dbg !5656
  %66 = load i32, i32* %he, align 4, !dbg !5656
  %and71 = and i32 %66, 31, !dbg !5656
  %or72 = or i32 %shl, %and71, !dbg !5656
  %conv73 = trunc i32 %or72 to i8, !dbg !5656
  call void @mm_write_cr(%struct.fb_info* %64, i8 zeroext 5, i8 zeroext %conv73) #6, !dbg !5656
  %67 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5657
  %68 = load i32, i32* %ht, align 4, !dbg !5657
  %sub74 = sub i32 %68, 1, !dbg !5657
  %and75 = and i32 %sub74, 192, !dbg !5657
  %conv76 = trunc i32 %and75 to i8, !dbg !5657
  call void @mm_write_cr(%struct.fb_info* %67, i8 zeroext 60, i8 zeroext %conv76) #6, !dbg !5657
  %69 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5658
  %70 = load i32, i32* %vt, align 4, !dbg !5658
  %sub77 = sub i32 %70, 2, !dbg !5658
  %and78 = and i32 %sub77, 255, !dbg !5658
  %conv79 = trunc i32 %and78 to i8, !dbg !5658
  call void @mm_write_cr(%struct.fb_info* %69, i8 zeroext 6, i8 zeroext %conv79) #6, !dbg !5658
  %71 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5659
  %72 = load i32, i32* %vt, align 4, !dbg !5659
  %sub80 = sub i32 %72, 2, !dbg !5659
  %shr = lshr i32 %sub80, 8, !dbg !5659
  %conv81 = trunc i32 %shr to i8, !dbg !5659
  call void @mm_write_cr(%struct.fb_info* %71, i8 zeroext 48, i8 zeroext %conv81) #6, !dbg !5659
  %73 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5660
  call void @mm_write_cr(%struct.fb_info* %73, i8 zeroext 7, i8 zeroext 0) #6, !dbg !5660
  %74 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5661
  call void @mm_write_cr(%struct.fb_info* %74, i8 zeroext 8, i8 zeroext 0) #6, !dbg !5661
  %75 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5662
  call void @mm_write_cr(%struct.fb_info* %75, i8 zeroext 9, i8 zeroext 0) #6, !dbg !5662
  %76 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5663
  %77 = load i32, i32* %vs, align 4, !dbg !5663
  %sub82 = sub i32 %77, 1, !dbg !5663
  %and83 = and i32 %sub82, 255, !dbg !5663
  %conv84 = trunc i32 %and83 to i8, !dbg !5663
  call void @mm_write_cr(%struct.fb_info* %76, i8 zeroext 16, i8 zeroext %conv84) #6, !dbg !5663
  %78 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5664
  %79 = load i32, i32* %vs, align 4, !dbg !5664
  %sub85 = sub i32 %79, 1, !dbg !5664
  %shr86 = lshr i32 %sub85, 8, !dbg !5664
  %and87 = and i32 %shr86, 15, !dbg !5664
  %conv88 = trunc i32 %and87 to i8, !dbg !5664
  call void @mm_write_cr(%struct.fb_info* %78, i8 zeroext 50, i8 zeroext %conv88) #6, !dbg !5664
  %80 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5665
  %81 = load i32, i32* %ve, align 4, !dbg !5665
  %sub89 = sub i32 %81, 1, !dbg !5665
  %and90 = and i32 %sub89, 15, !dbg !5665
  %or91 = or i32 %and90, 128, !dbg !5665
  %conv92 = trunc i32 %or91 to i8, !dbg !5665
  call void @mm_write_cr(%struct.fb_info* %80, i8 zeroext 17, i8 zeroext %conv92) #6, !dbg !5665
  %82 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5666
  %83 = load i32, i32* %vd, align 4, !dbg !5666
  %sub93 = sub i32 %83, 1, !dbg !5666
  %and94 = and i32 %sub93, 255, !dbg !5666
  %conv95 = trunc i32 %and94 to i8, !dbg !5666
  call void @mm_write_cr(%struct.fb_info* %82, i8 zeroext 18, i8 zeroext %conv95) #6, !dbg !5666
  %84 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5667
  %85 = load i32, i32* %vd, align 4, !dbg !5667
  %sub96 = sub i32 %85, 1, !dbg !5667
  %and97 = and i32 %sub96, 3840, !dbg !5667
  %shr98 = lshr i32 %and97, 8, !dbg !5667
  %conv99 = trunc i32 %shr98 to i8, !dbg !5667
  call void @mm_write_cr(%struct.fb_info* %84, i8 zeroext 49, i8 zeroext %conv99) #6, !dbg !5667
  %86 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5668
  %87 = load i32, i32* %wd, align 4, !dbg !5668
  %and100 = and i32 %87, 255, !dbg !5668
  %conv101 = trunc i32 %and100 to i8, !dbg !5668
  call void @mm_write_cr(%struct.fb_info* %86, i8 zeroext 19, i8 zeroext %conv101) #6, !dbg !5668
  %88 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5669
  %89 = load i32, i32* %wd, align 4, !dbg !5669
  %and102 = and i32 %89, 3840, !dbg !5669
  %shr103 = lshr i32 %and102, 8, !dbg !5669
  %conv104 = trunc i32 %shr103 to i8, !dbg !5669
  call void @mm_write_cr(%struct.fb_info* %88, i8 zeroext 65, i8 zeroext %conv104) #6, !dbg !5669
  %90 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5670
  %91 = load i32, i32* %vs, align 4, !dbg !5670
  %sub105 = sub i32 %91, 1, !dbg !5670
  %and106 = and i32 %sub105, 255, !dbg !5670
  %conv107 = trunc i32 %and106 to i8, !dbg !5670
  call void @mm_write_cr(%struct.fb_info* %90, i8 zeroext 21, i8 zeroext %conv107) #6, !dbg !5670
  %92 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5671
  %93 = load i32, i32* %vs, align 4, !dbg !5671
  %sub108 = sub i32 %93, 1, !dbg !5671
  %shr109 = lshr i32 %sub108, 8, !dbg !5671
  %and110 = and i32 %shr109, 15, !dbg !5671
  %conv111 = trunc i32 %and110 to i8, !dbg !5671
  call void @mm_write_cr(%struct.fb_info* %92, i8 zeroext 51, i8 zeroext %conv111) #6, !dbg !5671
  %94 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5672
  %95 = load i32, i32* %ht, align 4, !dbg !5672
  %sub112 = sub i32 %95, 5, !dbg !5672
  %and113 = and i32 %sub112, 256, !dbg !5672
  %shr114 = lshr i32 %and113, 8, !dbg !5672
  %conv115 = trunc i32 %shr114 to i8, !dbg !5672
  call void @mm_write_cr(%struct.fb_info* %94, i8 zeroext 56, i8 zeroext %conv115) #6, !dbg !5672
  %96 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5673
  %97 = load i32, i32* %vt, align 4, !dbg !5673
  %sub116 = sub i32 %97, 1, !dbg !5673
  %and117 = and i32 %sub116, 255, !dbg !5673
  %conv118 = trunc i32 %and117 to i8, !dbg !5673
  call void @mm_write_cr(%struct.fb_info* %96, i8 zeroext 22, i8 zeroext %conv118) #6, !dbg !5673
  %98 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5674
  call void @mm_write_cr(%struct.fb_info* %98, i8 zeroext 24, i8 zeroext 0) #6, !dbg !5674
  %99 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5675
  %var119 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %99, i32 0, i32 6, !dbg !5677
  %xres120 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var119, i32 0, i32 0, !dbg !5678
  %100 = load i32, i32* %xres120, align 8, !dbg !5678
  %cmp121 = icmp eq i32 %100, 640, !dbg !5679
  br i1 %cmp121, label %if.then123, label %if.else125, !dbg !5680

if.then123:                                       ; preds = %if.end
  %101 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5681
  %102 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %101, i32 0, i32 25, !dbg !5681
  %screen_base = bitcast %union.anon.66* %102 to i8**, !dbg !5681
  %103 = load i8*, i8** %screen_base, align 8, !dbg !5681
  %add.ptr = getelementptr i8, i8* %103, i64 4194304, !dbg !5681
  %add.ptr124 = getelementptr i8, i8* %add.ptr, i64 1924, !dbg !5683
  call void @writeb(i8 zeroext -57, i8* %add.ptr124) #6, !dbg !5684
  br label %if.end129, !dbg !5685

if.else125:                                       ; preds = %if.end
  %104 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5686
  %105 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %104, i32 0, i32 25, !dbg !5686
  %screen_base126 = bitcast %union.anon.66* %105 to i8**, !dbg !5686
  %106 = load i8*, i8** %screen_base126, align 8, !dbg !5686
  %add.ptr127 = getelementptr i8, i8* %106, i64 4194304, !dbg !5686
  %add.ptr128 = getelementptr i8, i8* %add.ptr127, i64 1924, !dbg !5688
  call void @writeb(i8 zeroext 7, i8* %add.ptr128) #6, !dbg !5689
  br label %if.end129

if.end129:                                        ; preds = %if.else125, %if.then123
  ret void, !dbg !5690
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mm_write_fr(%struct.fb_info* %p, i8 zeroext %reg, i8 zeroext %data) #2 !dbg !5691 {
entry:
  %p.addr = alloca %struct.fb_info*, align 8
  %reg.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  store %struct.fb_info* %p, %struct.fb_info** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %p.addr, metadata !5692, metadata !DIExpression()), !dbg !5693
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !5694, metadata !DIExpression()), !dbg !5695
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !5696, metadata !DIExpression()), !dbg !5697
  br label %do.body, !dbg !5698

do.body:                                          ; preds = %entry
  %0 = load i8, i8* %reg.addr, align 1, !dbg !5699
  %1 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5699
  %2 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %1, i32 0, i32 25, !dbg !5699
  %screen_base = bitcast %union.anon.66* %2 to i8**, !dbg !5699
  %3 = load i8*, i8** %screen_base, align 8, !dbg !5699
  %add.ptr = getelementptr i8, i8* %3, i64 4194304, !dbg !5699
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 1952, !dbg !5699
  call void @writeb(i8 zeroext %0, i8* %add.ptr1) #6, !dbg !5699
  %4 = load i8, i8* %data.addr, align 1, !dbg !5699
  %5 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5699
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 25, !dbg !5699
  %screen_base2 = bitcast %union.anon.66* %6 to i8**, !dbg !5699
  %7 = load i8*, i8** %screen_base2, align 8, !dbg !5699
  %add.ptr3 = getelementptr i8, i8* %7, i64 4194304, !dbg !5699
  %add.ptr4 = getelementptr i8, i8* %add.ptr3, i64 1953, !dbg !5699
  call void @writeb(i8 zeroext %4, i8* %add.ptr4) #6, !dbg !5699
  br label %do.end, !dbg !5699

do.end:                                           ; preds = %do.body
  ret void, !dbg !5701
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mm_write_cr(%struct.fb_info* %p, i8 zeroext %reg, i8 zeroext %data) #2 !dbg !5702 {
entry:
  %p.addr = alloca %struct.fb_info*, align 8
  %reg.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  store %struct.fb_info* %p, %struct.fb_info** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %p.addr, metadata !5703, metadata !DIExpression()), !dbg !5704
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !5705, metadata !DIExpression()), !dbg !5706
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !5707, metadata !DIExpression()), !dbg !5708
  br label %do.body, !dbg !5709

do.body:                                          ; preds = %entry
  %0 = load i8, i8* %reg.addr, align 1, !dbg !5710
  %1 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5710
  %2 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %1, i32 0, i32 25, !dbg !5710
  %screen_base = bitcast %union.anon.66* %2 to i8**, !dbg !5710
  %3 = load i8*, i8** %screen_base, align 8, !dbg !5710
  %add.ptr = getelementptr i8, i8* %3, i64 4194304, !dbg !5710
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 1960, !dbg !5710
  call void @writeb(i8 zeroext %0, i8* %add.ptr1) #6, !dbg !5710
  %4 = load i8, i8* %data.addr, align 1, !dbg !5710
  %5 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5710
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 25, !dbg !5710
  %screen_base2 = bitcast %union.anon.66* %6 to i8**, !dbg !5710
  %7 = load i8*, i8** %screen_base2, align 8, !dbg !5710
  %add.ptr3 = getelementptr i8, i8* %7, i64 4194304, !dbg !5710
  %add.ptr4 = getelementptr i8, i8* %add.ptr3, i64 1961, !dbg !5710
  call void @writeb(i8 zeroext %4, i8* %add.ptr4) #6, !dbg !5710
  br label %do.end, !dbg !5710

do.end:                                           ; preds = %do.body
  ret void, !dbg !5712
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mm_write_sr(%struct.fb_info* %p, i8 zeroext %reg, i8 zeroext %data) #2 !dbg !5713 {
entry:
  %p.addr = alloca %struct.fb_info*, align 8
  %reg.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  store %struct.fb_info* %p, %struct.fb_info** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %p.addr, metadata !5714, metadata !DIExpression()), !dbg !5715
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !5716, metadata !DIExpression()), !dbg !5717
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !5718, metadata !DIExpression()), !dbg !5719
  br label %do.body, !dbg !5720

do.body:                                          ; preds = %entry
  %0 = load i8, i8* %reg.addr, align 1, !dbg !5721
  %1 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5721
  %2 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %1, i32 0, i32 25, !dbg !5721
  %screen_base = bitcast %union.anon.66* %2 to i8**, !dbg !5721
  %3 = load i8*, i8** %screen_base, align 8, !dbg !5721
  %add.ptr = getelementptr i8, i8* %3, i64 4194304, !dbg !5721
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 1928, !dbg !5721
  call void @writeb(i8 zeroext %0, i8* %add.ptr1) #6, !dbg !5721
  %4 = load i8, i8* %data.addr, align 1, !dbg !5721
  %5 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5721
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 25, !dbg !5721
  %screen_base2 = bitcast %union.anon.66* %6 to i8**, !dbg !5721
  %7 = load i8*, i8** %screen_base2, align 8, !dbg !5721
  %add.ptr3 = getelementptr i8, i8* %7, i64 4194304, !dbg !5721
  %add.ptr4 = getelementptr i8, i8* %add.ptr3, i64 1929, !dbg !5721
  call void @writeb(i8 zeroext %4, i8* %add.ptr4) #6, !dbg !5721
  br label %do.end, !dbg !5721

do.end:                                           ; preds = %do.body
  ret void, !dbg !5723
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mm_write_gr(%struct.fb_info* %p, i8 zeroext %reg, i8 zeroext %data) #2 !dbg !5724 {
entry:
  %p.addr = alloca %struct.fb_info*, align 8
  %reg.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  store %struct.fb_info* %p, %struct.fb_info** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %p.addr, metadata !5725, metadata !DIExpression()), !dbg !5726
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !5727, metadata !DIExpression()), !dbg !5728
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !5729, metadata !DIExpression()), !dbg !5730
  br label %do.body, !dbg !5731

do.body:                                          ; preds = %entry
  %0 = load i8, i8* %reg.addr, align 1, !dbg !5732
  %1 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5732
  %2 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %1, i32 0, i32 25, !dbg !5732
  %screen_base = bitcast %union.anon.66* %2 to i8**, !dbg !5732
  %3 = load i8*, i8** %screen_base, align 8, !dbg !5732
  %add.ptr = getelementptr i8, i8* %3, i64 4194304, !dbg !5732
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 1948, !dbg !5732
  call void @writeb(i8 zeroext %0, i8* %add.ptr1) #6, !dbg !5732
  %4 = load i8, i8* %data.addr, align 1, !dbg !5732
  %5 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5732
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 25, !dbg !5732
  %screen_base2 = bitcast %union.anon.66* %6 to i8**, !dbg !5732
  %7 = load i8*, i8** %screen_base2, align 8, !dbg !5732
  %add.ptr3 = getelementptr i8, i8* %7, i64 4194304, !dbg !5732
  %add.ptr4 = getelementptr i8, i8* %add.ptr3, i64 1949, !dbg !5732
  call void @writeb(i8 zeroext %4, i8* %add.ptr4) #6, !dbg !5732
  br label %do.end, !dbg !5732

do.end:                                           ; preds = %do.body
  ret void, !dbg !5734
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mm_write_ar(%struct.fb_info* %p, i8 zeroext %reg, i8 zeroext %data) #2 !dbg !5735 {
entry:
  %p.addr = alloca %struct.fb_info*, align 8
  %reg.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  store %struct.fb_info* %p, %struct.fb_info** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %p.addr, metadata !5736, metadata !DIExpression()), !dbg !5737
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !5738, metadata !DIExpression()), !dbg !5739
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !5740, metadata !DIExpression()), !dbg !5741
  %0 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5742
  %1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 25, !dbg !5742
  %screen_base = bitcast %union.anon.66* %1 to i8**, !dbg !5742
  %2 = load i8*, i8** %screen_base, align 8, !dbg !5742
  %add.ptr = getelementptr i8, i8* %2, i64 4194304, !dbg !5742
  %add.ptr1 = getelementptr i8, i8* %add.ptr, i64 1972, !dbg !5743
  %call = call zeroext i8 @readb(i8* %add.ptr1) #6, !dbg !5744
  br label %do.body, !dbg !5745

do.body:                                          ; preds = %entry
  %3 = load i8, i8* %reg.addr, align 1, !dbg !5746
  %4 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5746
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 25, !dbg !5746
  %screen_base2 = bitcast %union.anon.66* %5 to i8**, !dbg !5746
  %6 = load i8*, i8** %screen_base2, align 8, !dbg !5746
  %add.ptr3 = getelementptr i8, i8* %6, i64 4194304, !dbg !5746
  %add.ptr4 = getelementptr i8, i8* %add.ptr3, i64 1920, !dbg !5746
  call void @writeb(i8 zeroext %3, i8* %add.ptr4) #6, !dbg !5746
  %7 = load i8, i8* %data.addr, align 1, !dbg !5746
  %8 = load %struct.fb_info*, %struct.fb_info** %p.addr, align 8, !dbg !5746
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 25, !dbg !5746
  %screen_base5 = bitcast %union.anon.66* %9 to i8**, !dbg !5746
  %10 = load i8*, i8** %screen_base5, align 8, !dbg !5746
  %add.ptr6 = getelementptr i8, i8* %10, i64 4194304, !dbg !5746
  %add.ptr7 = getelementptr i8, i8* %add.ptr6, i64 1920, !dbg !5746
  call void @writeb(i8 zeroext %7, i8* %add.ptr7) #6, !dbg !5746
  br label %do.end, !dbg !5746

do.end:                                           ; preds = %do.body
  ret void, !dbg !5748
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @readb(i8* %addr) #2 !dbg !5749 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i8, align 1
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5754, metadata !DIExpression()), !dbg !5755
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !5756, metadata !DIExpression()), !dbg !5755
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5755
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0) #7, !dbg !5755, !srcloc !5757
  store i8 %1, i8* %ret, align 1, !dbg !5755
  %2 = load i8, i8* %ret, align 1, !dbg !5755
  ret i8 %2, !dbg !5755
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !5758 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5761, metadata !DIExpression()), !dbg !5762
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5763, metadata !DIExpression()), !dbg !5764
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5765
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5766
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5767
  store i8* %0, i8** %driver_data, align 8, !dbg !5768
  ret void, !dbg !5769
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_get_drvdata(%struct.pci_dev* %pdev) #2 !dbg !5770 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5773, metadata !DIExpression()), !dbg !5774
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5775
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !5776
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #6, !dbg !5777
  ret i8* %call, !dbg !5778
}

; Function Attrs: noredzone
declare dso_local void @unregister_framebuffer(%struct.fb_info*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !5779 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5782, metadata !DIExpression()), !dbg !5783
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5784
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5785
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5785
  ret i8* %1, !dbg !5786
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone }
attributes #7 = { nounwind }
attributes #8 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4678, !4679, !4680, !4681}
!llvm.ident = !{!4682}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_asiliantfb_init244", scope: !2, file: !3, line: 617, type: !123, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !119, globals: !133, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/video/fbdev/asiliantfb.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !114}
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
!119 = !{!120, !123, !124, !127, !132}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !122, line: 76, flags: DIFlagFwdDecl)
!122 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !126)
!126 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !129, line: 21, baseType: !130)
!129 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !131, line: 27, baseType: !7)
!131 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!132 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!133 = !{!0, !134, !141, !146, !4178, !4181, !4203, !4243, !4652, !4654, !4661, !4664, !4666, !4668, !4673}
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file245", scope: !2, file: !3, line: 624, type: !136, isLocal: true, isDefinition: true, align: 8)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 376, elements: !139)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!138 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!139 = !{!140}
!140 = !DISubrange(count: 47)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license246", scope: !2, file: !3, line: 624, type: !143, isLocal: true, isDefinition: true, align: 8)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 184, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 23)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "asiliantfb_driver", scope: !2, file: !3, line: 602, type: !148, isLocal: true, isDefinition: true)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !149, line: 858, size: 2048, elements: !150)
!149 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!150 = !{!151, !158, !160, !175, !4136, !4140, !4144, !4148, !4149, !4153, !4171, !4172, !4173}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !148, file: !149, line: 859, baseType: !152, size: 128)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !153, line: 178, size: 128, elements: !154)
!153 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!154 = !{!155, !157}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !152, file: !153, line: 179, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !152, file: !153, line: 179, baseType: !156, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !148, file: !149, line: 860, baseType: !159, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !148, file: !149, line: 861, baseType: !161, size: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !164, line: 38, size: 256, elements: !165)
!164 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!165 = !{!166, !167, !168, !169, !170, !171, !172}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !163, file: !164, line: 39, baseType: !130, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !163, file: !164, line: 39, baseType: !130, size: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !163, file: !164, line: 40, baseType: !130, size: 32, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !163, file: !164, line: 40, baseType: !130, size: 32, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !163, file: !164, line: 41, baseType: !130, size: 32, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !163, file: !164, line: 41, baseType: !130, size: 32, offset: 160)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !163, file: !164, line: 42, baseType: !173, size: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !164, line: 14, baseType: !174)
!174 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !148, file: !149, line: 862, baseType: !176, size: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!132, !179, !161}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !149, line: 309, size: 19264, elements: !181)
!181 = !{!182, !183, !4001, !4002, !4003, !4004, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4033, !4034, !4035, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4059, !4060, !4061, !4062, !4064, !4065, !4066, !4067, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4110, !4111, !4112, !4113, !4114, !4115, !4117, !4118, !4119, !4122, !4129, !4130, !4131, !4132, !4133, !4134, !4135}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !180, file: !149, line: 310, baseType: !152, size: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !180, file: !149, line: 311, baseType: !184, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !149, line: 605, size: 8064, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192, !193, !214, !215, !216, !240, !243, !244, !248, !249, !250, !251, !252, !256, !258, !260, !3997, !3998, !3999, !4000}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !185, file: !149, line: 606, baseType: !152, size: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !185, file: !149, line: 607, baseType: !184, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !185, file: !149, line: 608, baseType: !152, size: 128, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !185, file: !149, line: 609, baseType: !152, size: 128, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !185, file: !149, line: 610, baseType: !179, size: 64, offset: 448)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !185, file: !149, line: 611, baseType: !152, size: 128, offset: 512)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !185, file: !149, line: 613, baseType: !194, size: 256, offset: 640)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 256, elements: !212)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !197, line: 20, size: 512, elements: !198)
!197 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!198 = !{!199, !205, !206, !207, !208, !209, !210, !211}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !196, file: !197, line: 21, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !153, line: 158, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !153, line: 153, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !129, line: 23, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !131, line: 31, baseType: !204)
!204 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !196, file: !197, line: 22, baseType: !200, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !197, line: 23, baseType: !159, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !196, file: !197, line: 24, baseType: !174, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !196, file: !197, line: 25, baseType: !174, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !196, file: !197, line: 26, baseType: !195, size: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !196, file: !197, line: 26, baseType: !195, size: 64, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !196, file: !197, line: 26, baseType: !195, size: 64, offset: 448)
!212 = !{!213}
!213 = !DISubrange(count: 4)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !185, file: !149, line: 614, baseType: !152, size: 128, offset: 896)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !185, file: !149, line: 615, baseType: !196, size: 512, offset: 1024)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !185, file: !149, line: 617, baseType: !217, size: 64, offset: 1536)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !149, line: 731, size: 320, elements: !219)
!219 = !{!220, !224, !228, !232, !236}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !218, file: !149, line: 732, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!132, !184}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !218, file: !149, line: 733, baseType: !225, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !184}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !218, file: !149, line: 734, baseType: !229, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!123, !184, !7, !132}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !218, file: !149, line: 735, baseType: !233, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!132, !184, !7, !132, !132, !127}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !218, file: !149, line: 736, baseType: !237, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!132, !184, !7, !132, !132, !128}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !185, file: !149, line: 618, baseType: !241, size: 64, offset: 1600)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !149, line: 537, flags: DIFlagFwdDecl)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !185, file: !149, line: 619, baseType: !123, size: 64, offset: 1664)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !185, file: !149, line: 620, baseType: !245, size: 64, offset: 1728)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !247, line: 123, flags: DIFlagFwdDecl)
!247 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!248 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !185, file: !149, line: 622, baseType: !126, size: 8, offset: 1792)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !185, file: !149, line: 623, baseType: !126, size: 8, offset: 1800)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !185, file: !149, line: 624, baseType: !126, size: 8, offset: 1808)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !185, file: !149, line: 625, baseType: !126, size: 8, offset: 1816)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !185, file: !149, line: 630, baseType: !253, size: 384, offset: 1824)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 384, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 48)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !185, file: !149, line: 632, baseType: !257, size: 16, offset: 2208)
!257 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !185, file: !149, line: 633, baseType: !259, size: 16, offset: 2224)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !149, line: 237, baseType: !257)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !185, file: !149, line: 634, baseType: !261, size: 64, offset: 2240)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !263)
!263 = !{!264, !3453, !3454, !3457, !3458, !3509, !3598, !3599, !3600, !3601, !3602, !3611, !3716, !3729, !3924, !3925, !3929, !3931, !3932, !3933, !3937, !3943, !3944, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3985, !3986, !3987, !3990, !3993, !3994, !3995, !3996}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !262, file: !73, line: 462, baseType: !265, size: 512)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !266, line: 64, size: 512, elements: !267)
!266 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!267 = !{!268, !269, !270, !272, !332, !3314, !3447, !3448, !3449, !3450, !3451, !3452}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !266, line: 65, baseType: !159, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !265, file: !266, line: 66, baseType: !152, size: 128, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !265, file: !266, line: 67, baseType: !271, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !265, file: !266, line: 68, baseType: !273, size: 64, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !266, line: 192, size: 704, elements: !275)
!275 = !{!276, !277, !293, !294}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !274, file: !266, line: 193, baseType: !152, size: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !274, file: !266, line: 194, baseType: !278, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !279, line: 83, baseType: !280)
!279 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !279, line: 71, elements: !281)
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, scope: !280, file: !279, line: 72, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !280, file: !279, line: 72, elements: !284)
!284 = !{!285}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !283, file: !279, line: 73, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !279, line: 20, elements: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !286, file: !279, line: 21, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !290, line: 25, baseType: !291)
!290 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !290, line: 25, elements: !292)
!292 = !{}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !274, file: !266, line: 195, baseType: !265, size: 512, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !274, file: !266, line: 196, baseType: !295, size: 64, offset: 640)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !266, line: 156, size: 192, elements: !298)
!298 = !{!299, !304, !309}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !297, file: !266, line: 157, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!132, !273, !271}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !297, file: !266, line: 158, baseType: !305, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!159, !273, !271}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !297, file: !266, line: 159, baseType: !310, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!132, !273, !271, !314}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !266, line: 148, size: 20736, elements: !316)
!316 = !{!317, !322, !326, !327, !331}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !315, file: !266, line: 149, baseType: !318, size: 192)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 192, elements: !320)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!320 = !{!321}
!321 = !DISubrange(count: 3)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !315, file: !266, line: 150, baseType: !323, size: 4096, offset: 192)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 4096, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !315, file: !266, line: 151, baseType: !132, size: 32, offset: 4288)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !315, file: !266, line: 152, baseType: !328, size: 16384, offset: 4320)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 16384, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 2048)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !315, file: !266, line: 153, baseType: !132, size: 32, offset: 20704)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !265, file: !266, line: 69, baseType: !333, size: 64, offset: 320)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !266, line: 138, size: 448, elements: !335)
!335 = !{!336, !340, !368, !370, !3276, !3304, !3308}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !334, file: !266, line: 139, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !271}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !334, file: !266, line: 140, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !344, line: 230, size: 128, elements: !345)
!344 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!345 = !{!346, !361}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !343, file: !344, line: 231, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!350, !271, !355, !319}
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !153, line: 60, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !352, line: 73, baseType: !353)
!352 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !352, line: 15, baseType: !354)
!354 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !344, line: 30, size: 128, elements: !357)
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !356, file: !344, line: 31, baseType: !159, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !356, file: !344, line: 32, baseType: !360, size: 16, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !153, line: 19, baseType: !257)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !343, file: !344, line: 232, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!350, !271, !355, !159, !365}
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !153, line: 55, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !352, line: 72, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !352, line: 16, baseType: !174)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !334, file: !266, line: 141, baseType: !369, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !334, file: !266, line: 142, baseType: !371, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !344, line: 84, size: 320, elements: !375)
!375 = !{!376, !377, !381, !3273, !3274}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !374, file: !344, line: 85, baseType: !159, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !374, file: !344, line: 86, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!360, !271, !355, !132}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !374, file: !344, line: 88, baseType: !382, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!360, !271, !385, !132}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !344, line: 168, size: 448, elements: !387)
!387 = !{!388, !389, !390, !391, !3268, !3269}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !386, file: !344, line: 169, baseType: !356, size: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !386, file: !344, line: 170, baseType: !365, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !386, file: !344, line: 171, baseType: !123, size: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !386, file: !344, line: 172, baseType: !392, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!350, !395, !271, !385, !319, !566, !365}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !397)
!397 = !{!398, !416, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3251, !3252, !3261, !3262, !3263, !3264, !3265, !3266, !3267}
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
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !153, line: 216, size: 128, align: 64, elements: !409)
!409 = !{!410, !412}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !408, file: !153, line: 217, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !408, file: !153, line: 218, baseType: !413, size: 64, offset: 64)
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
!427 = !{!428, !429, !439, !447, !448, !463, !3201, !3203, !3215, !3216, !3217, !3218, !3219, !3225, !3226, !3227}
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
!450 = !{!451, !460}
!451 = !DIDerivedType(tag: DW_TAG_member, scope: !449, file: !423, line: 48, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !449, file: !423, line: 48, size: 64, elements: !453)
!453 = !{!454, !459}
!454 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !423, line: 49, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !452, file: !423, line: 49, size: 64, elements: !456)
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !455, file: !423, line: 50, baseType: !128, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !455, file: !423, line: 50, baseType: !128, size: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !452, file: !423, line: 52, baseType: !202, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !449, file: !423, line: 54, baseType: !461, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !426, file: !423, line: 96, baseType: !464, size: 64, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !466)
!466 = !{!467, !468, !469, !477, !484, !485, !633, !2912, !2913, !2914, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !3177, !3185, !3186, !3187, !3197, !3198, !3199, !3200}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !465, file: !44, line: 611, baseType: !360, size: 16)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !465, file: !44, line: 612, baseType: !257, size: 16, offset: 16)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !465, file: !44, line: 613, baseType: !470, size: 32, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !471, line: 23, baseType: !472)
!471 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !471, line: 21, size: 32, elements: !473)
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !472, file: !471, line: 22, baseType: !475, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !153, line: 32, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !352, line: 49, baseType: !7)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !465, file: !44, line: 614, baseType: !478, size: 32, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !471, line: 28, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !471, line: 26, size: 32, elements: !480)
!480 = !{!481}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !479, file: !471, line: 27, baseType: !482, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !153, line: 33, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !352, line: 50, baseType: !7)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !465, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !465, file: !44, line: 622, baseType: !486, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !489)
!489 = !{!490, !494, !507, !511, !517, !521, !527, !531, !535, !539, !543, !544, !550, !554, !580, !609, !613, !619, !624, !628, !629}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !488, file: !44, line: 1865, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!425, !464, !425, !7}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !488, file: !44, line: 1866, baseType: !495, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!159, !425, !464, !498}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !500, line: 10, size: 128, elements: !501)
!500 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!501 = !{!502, !506}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !499, file: !500, line: 11, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !123}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !499, file: !500, line: 12, baseType: !123, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !488, file: !44, line: 1867, baseType: !508, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!132, !464, !132}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !488, file: !44, line: 1868, baseType: !512, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!515, !464, !132}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !488, file: !44, line: 1870, baseType: !518, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!132, !425, !319, !132}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !488, file: !44, line: 1872, baseType: !522, size: 64, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!132, !464, !425, !360, !525}
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !153, line: 30, baseType: !526)
!526 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !488, file: !44, line: 1873, baseType: !528, size: 64, offset: 384)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!132, !425, !464, !425}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !488, file: !44, line: 1874, baseType: !532, size: 64, offset: 448)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!132, !464, !425}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !488, file: !44, line: 1875, baseType: !536, size: 64, offset: 512)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!132, !464, !425, !159}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !488, file: !44, line: 1876, baseType: !540, size: 64, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!132, !464, !425, !360}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !488, file: !44, line: 1877, baseType: !532, size: 64, offset: 640)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !488, file: !44, line: 1878, baseType: !545, size: 64, offset: 704)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!132, !464, !425, !360, !548}
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !153, line: 16, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !153, line: 13, baseType: !128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !488, file: !44, line: 1879, baseType: !551, size: 64, offset: 768)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!132, !464, !425, !464, !425, !7}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !488, file: !44, line: 1881, baseType: !555, size: 64, offset: 832)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!132, !425, !558}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !560)
!560 = !{!561, !562, !563, !564, !565, !569, !577, !578, !579}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !559, file: !44, line: 220, baseType: !7, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !559, file: !44, line: 221, baseType: !360, size: 16, offset: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !559, file: !44, line: 222, baseType: !470, size: 32, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !559, file: !44, line: 223, baseType: !478, size: 32, offset: 96)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !559, file: !44, line: 224, baseType: !566, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !153, line: 46, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !352, line: 88, baseType: !568)
!568 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !559, file: !44, line: 225, baseType: !570, size: 128, offset: 192)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !571, line: 13, size: 128, elements: !572)
!571 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!572 = !{!573, !576}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !570, file: !571, line: 14, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !571, line: 8, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !131, line: 30, baseType: !568)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !570, file: !571, line: 15, baseType: !354, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !559, file: !44, line: 226, baseType: !570, size: 128, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !559, file: !44, line: 227, baseType: !570, size: 128, offset: 448)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !559, file: !44, line: 234, baseType: !395, size: 64, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !488, file: !44, line: 1882, baseType: !581, size: 64, offset: 896)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!132, !584, !586, !128, !7}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !588, line: 22, size: 1152, elements: !589)
!588 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!589 = !{!590, !591, !592, !593, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !587, file: !588, line: 23, baseType: !128, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !587, file: !588, line: 24, baseType: !360, size: 16, offset: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !587, file: !588, line: 25, baseType: !7, size: 32, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !587, file: !588, line: 26, baseType: !594, size: 32, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !153, line: 104, baseType: !128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !587, file: !588, line: 27, baseType: !202, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !587, file: !588, line: 28, baseType: !202, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !587, file: !588, line: 37, baseType: !202, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !587, file: !588, line: 38, baseType: !548, size: 32, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !587, file: !588, line: 39, baseType: !548, size: 32, offset: 352)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !587, file: !588, line: 40, baseType: !470, size: 32, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !587, file: !588, line: 41, baseType: !478, size: 32, offset: 416)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !587, file: !588, line: 42, baseType: !566, size: 64, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !587, file: !588, line: 43, baseType: !570, size: 128, offset: 512)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !587, file: !588, line: 44, baseType: !570, size: 128, offset: 640)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !587, file: !588, line: 45, baseType: !570, size: 128, offset: 768)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !587, file: !588, line: 46, baseType: !570, size: 128, offset: 896)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !587, file: !588, line: 47, baseType: !202, size: 64, offset: 1024)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !587, file: !588, line: 48, baseType: !202, size: 64, offset: 1088)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !488, file: !44, line: 1883, baseType: !610, size: 64, offset: 960)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!350, !425, !319, !365}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !488, file: !44, line: 1884, baseType: !614, size: 64, offset: 1024)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!132, !464, !617, !202, !202}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !488, file: !44, line: 1886, baseType: !620, size: 64, offset: 1088)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!132, !464, !623, !132}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !488, file: !44, line: 1887, baseType: !625, size: 64, offset: 1152)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!132, !464, !425, !395, !7, !360}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !488, file: !44, line: 1890, baseType: !540, size: 64, offset: 1216)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !488, file: !44, line: 1891, baseType: !630, size: 64, offset: 1280)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!132, !464, !515, !132}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !465, file: !44, line: 623, baseType: !634, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !636)
!636 = !{!637, !638, !639, !640, !641, !642, !689, !2519, !2601, !2684, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2700, !2704, !2705, !2708, !2709, !2712, !2713, !2714, !2755, !2782, !2783, !2784, !2785, !2786, !2787, !2790, !2792, !2799, !2800, !2802, !2803, !2804, !2863, !2864, !2879, !2880, !2881, !2882, !2883, !2886, !2887, !2888, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !635, file: !44, line: 1417, baseType: !152, size: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !635, file: !44, line: 1418, baseType: !548, size: 32, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !635, file: !44, line: 1419, baseType: !126, size: 8, offset: 160)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !635, file: !44, line: 1420, baseType: !174, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !635, file: !44, line: 1421, baseType: !566, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !635, file: !44, line: 1422, baseType: !643, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !645)
!645 = !{!646, !647, !648, !655, !659, !663, !667, !668, !669, !679, !682, !683, !684, !686, !687, !688}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !644, file: !44, line: 2229, baseType: !159, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !644, file: !44, line: 2230, baseType: !132, size: 32, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !644, file: !44, line: 2238, baseType: !649, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!132, !652}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !654, line: 28, flags: DIFlagFwdDecl)
!654 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!655 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !644, file: !44, line: 2239, baseType: !656, size: 64, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !644, file: !44, line: 2240, baseType: !660, size: 64, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!425, !643, !132, !159, !123}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !644, file: !44, line: 2242, baseType: !664, size: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !634}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !644, file: !44, line: 2243, baseType: !120, size: 64, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !644, file: !44, line: 2244, baseType: !643, size: 64, offset: 448)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !644, file: !44, line: 2245, baseType: !670, size: 64, offset: 512)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !153, line: 182, size: 64, elements: !671)
!671 = !{!672}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !670, file: !153, line: 183, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !153, line: 186, size: 128, elements: !675)
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !674, file: !153, line: 187, baseType: !673, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !674, file: !153, line: 187, baseType: !678, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !644, file: !44, line: 2247, baseType: !680, offset: 576)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !681, line: 187, elements: !292)
!681 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!682 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !644, file: !44, line: 2248, baseType: !680, offset: 576)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !644, file: !44, line: 2249, baseType: !680, offset: 576)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !644, file: !44, line: 2250, baseType: !685, offset: 576)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, elements: !320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !644, file: !44, line: 2252, baseType: !680, offset: 576)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !644, file: !44, line: 2253, baseType: !680, offset: 576)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !644, file: !44, line: 2254, baseType: !680, offset: 576)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !635, file: !44, line: 1423, baseType: !690, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !693)
!693 = !{!694, !698, !702, !703, !707, !713, !717, !718, !719, !723, !727, !728, !729, !730, !736, !741, !742, !749, !750, !751, !752, !2503, !2518}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !692, file: !44, line: 1936, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!464, !634}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !692, file: !44, line: 1937, baseType: !699, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !464}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !692, file: !44, line: 1938, baseType: !699, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !692, file: !44, line: 1940, baseType: !704, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !464, !132}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !692, file: !44, line: 1941, baseType: !708, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!132, !464, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !692, file: !44, line: 1942, baseType: !714, size: 64, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!132, !464}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !692, file: !44, line: 1943, baseType: !699, size: 64, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !692, file: !44, line: 1944, baseType: !664, size: 64, offset: 448)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !692, file: !44, line: 1945, baseType: !720, size: 64, offset: 512)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!132, !634, !132}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !692, file: !44, line: 1946, baseType: !724, size: 64, offset: 576)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!132, !634}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !692, file: !44, line: 1947, baseType: !724, size: 64, offset: 640)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !692, file: !44, line: 1948, baseType: !724, size: 64, offset: 704)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !692, file: !44, line: 1949, baseType: !724, size: 64, offset: 768)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !692, file: !44, line: 1950, baseType: !731, size: 64, offset: 832)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!132, !425, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !692, file: !44, line: 1951, baseType: !737, size: 64, offset: 896)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!132, !634, !740, !319}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !692, file: !44, line: 1952, baseType: !664, size: 64, offset: 960)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !692, file: !44, line: 1954, baseType: !743, size: 64, offset: 1024)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!132, !746, !425}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !748, line: 539, flags: DIFlagFwdDecl)
!748 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!749 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !692, file: !44, line: 1955, baseType: !743, size: 64, offset: 1088)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !692, file: !44, line: 1956, baseType: !743, size: 64, offset: 1152)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !692, file: !44, line: 1957, baseType: !743, size: 64, offset: 1216)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !692, file: !44, line: 1963, baseType: !753, size: 64, offset: 1280)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!132, !634, !756, !779}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !758, line: 68, size: 512, align: 128, elements: !759)
!758 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!759 = !{!760, !761, !2495, !2502}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !757, file: !758, line: 69, baseType: !174, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, scope: !757, file: !758, line: 77, baseType: !762, size: 320, offset: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !757, file: !758, line: 77, size: 320, elements: !763)
!763 = !{!764, !952, !957, !985, !993, !999, !2426, !2494}
!764 = !DIDerivedType(tag: DW_TAG_member, scope: !762, file: !758, line: 78, baseType: !765, size: 320)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !762, file: !758, line: 78, size: 320, elements: !766)
!766 = !{!767, !768, !950, !951}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !765, file: !758, line: 84, baseType: !152, size: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !765, file: !758, line: 86, baseType: !769, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !771)
!771 = !{!772, !773, !781, !782, !787, !802, !818, !819, !820, !821, !943, !944, !947, !948, !949}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !770, file: !44, line: 452, baseType: !464, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !770, file: !44, line: 453, baseType: !774, size: 128, offset: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !775, line: 292, size: 128, elements: !776)
!775 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!776 = !{!777, !778, !780}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !774, file: !775, line: 293, baseType: !278)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !774, file: !775, line: 295, baseType: !779, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !153, line: 148, baseType: !7)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !774, file: !775, line: 296, baseType: !123, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !770, file: !44, line: 454, baseType: !779, size: 32, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !770, file: !44, line: 455, baseType: !783, size: 32, offset: 224)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !153, line: 168, baseType: !784)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !153, line: 166, size: 32, elements: !785)
!785 = !{!786}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !784, file: !153, line: 167, baseType: !132, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !770, file: !44, line: 460, baseType: !788, size: 128, offset: 256)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !789, line: 125, size: 128, elements: !790)
!789 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!790 = !{!791, !801}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !788, file: !789, line: 126, baseType: !792, size: 64)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !789, line: 31, size: 64, elements: !793)
!793 = !{!794}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !792, file: !789, line: 32, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !789, line: 24, size: 192, align: 64, elements: !797)
!797 = !{!798, !799, !800}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !796, file: !789, line: 25, baseType: !174, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !796, file: !789, line: 26, baseType: !795, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !796, file: !789, line: 27, baseType: !795, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !788, file: !789, line: 127, baseType: !795, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !770, file: !44, line: 461, baseType: !803, size: 256, offset: 384)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !804, line: 35, size: 256, elements: !805)
!804 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!805 = !{!806, !814, !815, !817}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !803, file: !804, line: 36, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !808, line: 13, baseType: !809)
!808 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !153, line: 175, baseType: !810)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !153, line: 173, size: 64, elements: !811)
!811 = !{!812}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !810, file: !153, line: 174, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !129, line: 22, baseType: !575)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !803, file: !804, line: 42, baseType: !807, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !803, file: !804, line: 46, baseType: !816, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !279, line: 29, baseType: !286)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !803, file: !804, line: 47, baseType: !152, size: 128, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !770, file: !44, line: 462, baseType: !174, size: 64, offset: 640)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !770, file: !44, line: 463, baseType: !174, size: 64, offset: 704)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !770, file: !44, line: 464, baseType: !174, size: 64, offset: 768)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !770, file: !44, line: 465, baseType: !822, size: 64, offset: 832)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !825)
!825 = !{!826, !830, !834, !838, !842, !846, !852, !858, !862, !867, !871, !875, !879, !907, !911, !917, !918, !919, !923, !928, !932, !939}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !824, file: !44, line: 368, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!132, !756, !711}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !824, file: !44, line: 369, baseType: !831, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!132, !395, !756}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !824, file: !44, line: 372, baseType: !835, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!132, !769, !711}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !824, file: !44, line: 375, baseType: !839, size: 64, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!132, !756}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !824, file: !44, line: 381, baseType: !843, size: 64, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!132, !395, !769, !156, !7}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !824, file: !44, line: 383, baseType: !847, size: 64, offset: 320)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !850}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !824, file: !44, line: 385, baseType: !853, size: 64, offset: 384)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!132, !395, !769, !566, !7, !7, !856, !857}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !824, file: !44, line: 388, baseType: !859, size: 64, offset: 448)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!132, !395, !769, !566, !7, !7, !756, !123}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !824, file: !44, line: 393, baseType: !863, size: 64, offset: 512)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!866, !769, !866}
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !153, line: 125, baseType: !202)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !824, file: !44, line: 394, baseType: !868, size: 64, offset: 576)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{null, !756, !7, !7}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !824, file: !44, line: 395, baseType: !872, size: 64, offset: 640)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!132, !756, !779}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !824, file: !44, line: 396, baseType: !876, size: 64, offset: 704)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{null, !756}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !824, file: !44, line: 397, baseType: !880, size: 64, offset: 768)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!350, !883, !905}
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !885)
!885 = !{!886, !887, !888, !892, !893, !894, !897, !898}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !884, file: !44, line: 321, baseType: !395, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !884, file: !44, line: 326, baseType: !566, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !884, file: !44, line: 327, baseType: !889, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !883, !354, !354}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !884, file: !44, line: 328, baseType: !123, size: 64, offset: 192)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !884, file: !44, line: 329, baseType: !132, size: 32, offset: 256)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !884, file: !44, line: 330, baseType: !895, size: 16, offset: 288)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !129, line: 19, baseType: !896)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !131, line: 24, baseType: !257)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !884, file: !44, line: 331, baseType: !895, size: 16, offset: 304)
!898 = !DIDerivedType(tag: DW_TAG_member, scope: !884, file: !44, line: 332, baseType: !899, size: 64, offset: 320)
!899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !884, file: !44, line: 332, size: 64, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !899, file: !44, line: 333, baseType: !7, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !899, file: !44, line: 334, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !824, file: !44, line: 402, baseType: !908, size: 64, offset: 832)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{!132, !769, !756, !756, !5}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !824, file: !44, line: 404, baseType: !912, size: 64, offset: 896)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!525, !756, !915}
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !916, line: 305, baseType: !7)
!916 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!917 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !824, file: !44, line: 405, baseType: !876, size: 64, offset: 960)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !824, file: !44, line: 406, baseType: !839, size: 64, offset: 1024)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !824, file: !44, line: 407, baseType: !920, size: 64, offset: 1088)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!132, !756, !174, !174}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !824, file: !44, line: 409, baseType: !924, size: 64, offset: 1152)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !756, !927, !927}
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !824, file: !44, line: 410, baseType: !929, size: 64, offset: 1216)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!132, !769, !756}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !824, file: !44, line: 413, baseType: !933, size: 64, offset: 1280)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!132, !936, !395, !938}
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !824, file: !44, line: 415, baseType: !940, size: 64, offset: 1344)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{null, !395}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !770, file: !44, line: 466, baseType: !174, size: 64, offset: 896)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !770, file: !44, line: 467, baseType: !945, size: 32, offset: 960)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !946, line: 8, baseType: !128)
!946 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!947 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !770, file: !44, line: 468, baseType: !278, offset: 992)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !770, file: !44, line: 469, baseType: !152, size: 128, offset: 1024)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !770, file: !44, line: 470, baseType: !123, size: 64, offset: 1152)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !765, file: !758, line: 87, baseType: !174, size: 64, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !765, file: !758, line: 94, baseType: !174, size: 64, offset: 256)
!952 = !DIDerivedType(tag: DW_TAG_member, scope: !762, file: !758, line: 96, baseType: !953, size: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !762, file: !758, line: 96, size: 64, elements: !954)
!954 = !{!955}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !953, file: !758, line: 101, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !153, line: 143, baseType: !202)
!957 = !DIDerivedType(tag: DW_TAG_member, scope: !762, file: !758, line: 103, baseType: !958, size: 320)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !762, file: !758, line: 103, size: 320, elements: !959)
!959 = !{!960, !970, !973, !974}
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !958, file: !758, line: 104, baseType: !961, size: 128)
!961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !958, file: !758, line: 104, size: 128, elements: !962)
!962 = !{!963, !964}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !961, file: !758, line: 105, baseType: !152, size: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !961, file: !758, line: 106, baseType: !965, size: 128)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !961, file: !758, line: 106, size: 128, elements: !966)
!966 = !{!967, !968, !969}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !965, file: !758, line: 107, baseType: !756, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !965, file: !758, line: 109, baseType: !132, size: 32, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !965, file: !758, line: 110, baseType: !132, size: 32, offset: 96)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !958, file: !758, line: 117, baseType: !971, size: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !758, line: 117, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !958, file: !758, line: 119, baseType: !123, size: 64, offset: 192)
!974 = !DIDerivedType(tag: DW_TAG_member, scope: !958, file: !758, line: 120, baseType: !975, size: 64, offset: 256)
!975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !958, file: !758, line: 120, size: 64, elements: !976)
!976 = !{!977, !978, !979}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !975, file: !758, line: 121, baseType: !123, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !975, file: !758, line: 122, baseType: !174, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, scope: !975, file: !758, line: 123, baseType: !980, size: 32)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !975, file: !758, line: 123, size: 32, elements: !981)
!981 = !{!982, !983, !984}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !980, file: !758, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !980, file: !758, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !980, file: !758, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !762, file: !758, line: 130, baseType: !986, size: 192)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !762, file: !758, line: 130, size: 192, elements: !987)
!987 = !{!988, !989, !990, !991, !992}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !986, file: !758, line: 131, baseType: !174, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !986, file: !758, line: 134, baseType: !126, size: 8, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !986, file: !758, line: 135, baseType: !126, size: 8, offset: 72)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !986, file: !758, line: 136, baseType: !783, size: 32, offset: 96)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !986, file: !758, line: 137, baseType: !7, size: 32, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, scope: !762, file: !758, line: 139, baseType: !994, size: 256)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !762, file: !758, line: 139, size: 256, elements: !995)
!995 = !{!996, !997, !998}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !994, file: !758, line: 140, baseType: !174, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !994, file: !758, line: 141, baseType: !783, size: 32, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !994, file: !758, line: 143, baseType: !152, size: 128, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !762, file: !758, line: 145, baseType: !1000, size: 256)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !762, file: !758, line: 145, size: 256, elements: !1001)
!1001 = !{!1002, !1003, !1005, !1006, !2425}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1000, file: !758, line: 146, baseType: !174, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1000, file: !758, line: 147, baseType: !1004, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !748, line: 509, baseType: !756)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1000, file: !758, line: 148, baseType: !174, size: 64, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !758, line: 149, baseType: !1007, size: 64, offset: 192)
!1007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1000, file: !758, line: 149, size: 64, elements: !1008)
!1008 = !{!1009, !2424}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1007, file: !758, line: 150, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !758, line: 388, size: 7296, elements: !1012)
!1012 = !{!1013, !2420}
!1013 = !DIDerivedType(tag: DW_TAG_member, scope: !1011, file: !758, line: 389, baseType: !1014, size: 7296)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1011, file: !758, line: 389, size: 7296, elements: !1015)
!1015 = !{!1016, !1134, !1135, !1136, !1140, !1141, !1142, !1143, !1144, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1185, !1191, !1194, !1240, !1241, !2404, !2405, !2408, !2409, !2410, !2413, !2414, !2415, !2418, !2419}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1014, file: !758, line: 390, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !758, line: 305, size: 1472, elements: !1019)
!1019 = !{!1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1034, !1035, !1040, !1041, !1044, !1128, !1129, !1130, !1131, !1132}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1018, file: !758, line: 308, baseType: !174, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1018, file: !758, line: 309, baseType: !174, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1018, file: !758, line: 313, baseType: !1017, size: 64, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1018, file: !758, line: 313, baseType: !1017, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1018, file: !758, line: 315, baseType: !796, size: 192, align: 64, offset: 256)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1018, file: !758, line: 323, baseType: !174, size: 64, offset: 448)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1018, file: !758, line: 327, baseType: !1010, size: 64, offset: 512)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1018, file: !758, line: 333, baseType: !1028, size: 64, offset: 576)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !748, line: 284, baseType: !1029)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !748, line: 284, size: 64, elements: !1030)
!1030 = !{!1031}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1029, file: !748, line: 284, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1033, line: 19, baseType: !174)
!1033 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1018, file: !758, line: 334, baseType: !174, size: 64, offset: 640)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1018, file: !758, line: 343, baseType: !1036, size: 256, offset: 704)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1018, file: !758, line: 340, size: 256, elements: !1037)
!1037 = !{!1038, !1039}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1036, file: !758, line: 341, baseType: !796, size: 192, align: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1036, file: !758, line: 342, baseType: !174, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1018, file: !758, line: 351, baseType: !152, size: 128, offset: 960)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1018, file: !758, line: 353, baseType: !1042, size: 64, offset: 1088)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !758, line: 353, flags: DIFlagFwdDecl)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1018, file: !758, line: 356, baseType: !1045, size: 64, offset: 1152)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1047)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1048)
!1048 = !{!1049, !1053, !1054, !1058, !1062, !1102, !1106, !1110, !1114, !1115, !1116, !1120, !1124}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1047, file: !14, line: 558, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !1017}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1047, file: !14, line: 559, baseType: !1050, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1047, file: !14, line: 560, baseType: !1055, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!132, !1017, !174}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1047, file: !14, line: 561, baseType: !1059, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!132, !1017}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1047, file: !14, line: 562, baseType: !1063, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !758, line: 682, baseType: !7)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1069)
!1069 = !{!1070, !1071, !1072, !1073, !1074, !1075, !1082, !1089, !1095, !1096, !1097, !1099, !1101}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1068, file: !14, line: 509, baseType: !1017, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1068, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1068, file: !14, line: 511, baseType: !779, size: 32, offset: 96)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1068, file: !14, line: 512, baseType: !174, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1068, file: !14, line: 513, baseType: !174, size: 64, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1068, file: !14, line: 514, baseType: !1076, size: 64, offset: 256)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !748, line: 385, baseType: !1078)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !748, line: 385, size: 64, elements: !1079)
!1079 = !{!1080}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1078, file: !748, line: 385, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1033, line: 15, baseType: !174)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1068, file: !14, line: 516, baseType: !1083, size: 64, offset: 320)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !748, line: 359, baseType: !1085)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !748, line: 359, size: 64, elements: !1086)
!1086 = !{!1087}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1085, file: !748, line: 359, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1033, line: 16, baseType: !174)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1068, file: !14, line: 519, baseType: !1090, size: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1033, line: 21, baseType: !1091)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1033, line: 21, size: 64, elements: !1092)
!1092 = !{!1093}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1091, file: !1033, line: 21, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1033, line: 14, baseType: !174)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1068, file: !14, line: 521, baseType: !756, size: 64, offset: 448)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1068, file: !14, line: 522, baseType: !756, size: 64, offset: 512)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1068, file: !14, line: 528, baseType: !1098, size: 64, offset: 576)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1068, file: !14, line: 532, baseType: !1100, size: 64, offset: 640)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1068, file: !14, line: 536, baseType: !1004, size: 64, offset: 704)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1047, file: !14, line: 563, baseType: !1103, size: 64, offset: 320)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!1066, !1067, !13}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1047, file: !14, line: 565, baseType: !1107, size: 64, offset: 384)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{null, !1067, !174, !174}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1047, file: !14, line: 567, baseType: !1111, size: 64, offset: 448)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!174, !1017}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1047, file: !14, line: 571, baseType: !1063, size: 64, offset: 512)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1047, file: !14, line: 574, baseType: !1063, size: 64, offset: 576)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1047, file: !14, line: 579, baseType: !1117, size: 64, offset: 640)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!132, !1017, !174, !123, !132, !132}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1047, file: !14, line: 585, baseType: !1121, size: 64, offset: 704)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!159, !1017}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1047, file: !14, line: 615, baseType: !1125, size: 64, offset: 768)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!756, !1017, !174}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1018, file: !758, line: 359, baseType: !174, size: 64, offset: 1216)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1018, file: !758, line: 361, baseType: !395, size: 64, offset: 1280)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1018, file: !758, line: 362, baseType: !123, size: 64, offset: 1344)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1018, file: !758, line: 365, baseType: !807, size: 64, offset: 1408)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1018, file: !758, line: 373, baseType: !1133, offset: 1472)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !758, line: 296, elements: !292)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1014, file: !758, line: 391, baseType: !792, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1014, file: !758, line: 392, baseType: !202, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1014, file: !758, line: 394, baseType: !1137, size: 64, offset: 192)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!174, !395, !174, !174, !174, !174}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1014, file: !758, line: 398, baseType: !174, size: 64, offset: 256)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1014, file: !758, line: 399, baseType: !174, size: 64, offset: 320)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1014, file: !758, line: 405, baseType: !174, size: 64, offset: 384)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1014, file: !758, line: 406, baseType: !174, size: 64, offset: 448)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1014, file: !758, line: 407, baseType: !1145, size: 64, offset: 512)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !748, line: 286, baseType: !1147)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !748, line: 286, size: 64, elements: !1148)
!1148 = !{!1149}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1147, file: !748, line: 286, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1033, line: 18, baseType: !174)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1014, file: !758, line: 416, baseType: !783, size: 32, offset: 576)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1014, file: !758, line: 428, baseType: !783, size: 32, offset: 608)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1014, file: !758, line: 437, baseType: !783, size: 32, offset: 640)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1014, file: !758, line: 447, baseType: !783, size: 32, offset: 672)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1014, file: !758, line: 450, baseType: !807, size: 64, offset: 704)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1014, file: !758, line: 452, baseType: !132, size: 32, offset: 768)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1014, file: !758, line: 454, baseType: !278, offset: 800)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1014, file: !758, line: 457, baseType: !803, size: 256, offset: 832)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1014, file: !758, line: 459, baseType: !152, size: 128, offset: 1088)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1014, file: !758, line: 466, baseType: !174, size: 64, offset: 1216)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1014, file: !758, line: 467, baseType: !174, size: 64, offset: 1280)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1014, file: !758, line: 469, baseType: !174, size: 64, offset: 1344)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1014, file: !758, line: 470, baseType: !174, size: 64, offset: 1408)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1014, file: !758, line: 471, baseType: !809, size: 64, offset: 1472)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1014, file: !758, line: 472, baseType: !174, size: 64, offset: 1536)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1014, file: !758, line: 473, baseType: !174, size: 64, offset: 1600)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1014, file: !758, line: 474, baseType: !174, size: 64, offset: 1664)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1014, file: !758, line: 475, baseType: !174, size: 64, offset: 1728)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1014, file: !758, line: 477, baseType: !278, offset: 1792)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1014, file: !758, line: 478, baseType: !174, size: 64, offset: 1792)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1014, file: !758, line: 478, baseType: !174, size: 64, offset: 1856)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1014, file: !758, line: 478, baseType: !174, size: 64, offset: 1920)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1014, file: !758, line: 478, baseType: !174, size: 64, offset: 1984)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1014, file: !758, line: 479, baseType: !174, size: 64, offset: 2048)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1014, file: !758, line: 479, baseType: !174, size: 64, offset: 2112)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1014, file: !758, line: 479, baseType: !174, size: 64, offset: 2176)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1014, file: !758, line: 480, baseType: !174, size: 64, offset: 2240)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1014, file: !758, line: 480, baseType: !174, size: 64, offset: 2304)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1014, file: !758, line: 480, baseType: !174, size: 64, offset: 2368)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1014, file: !758, line: 480, baseType: !174, size: 64, offset: 2432)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1014, file: !758, line: 482, baseType: !1182, size: 2816, offset: 2496)
!1182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 2816, elements: !1183)
!1183 = !{!1184}
!1184 = !DISubrange(count: 44)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1014, file: !758, line: 488, baseType: !1186, size: 256, offset: 5312)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1187, line: 60, size: 256, elements: !1188)
!1187 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1188 = !{!1189}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1186, file: !1187, line: 61, baseType: !1190, size: 256)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 256, elements: !212)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1014, file: !758, line: 490, baseType: !1192, size: 64, offset: 5568)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !758, line: 490, flags: DIFlagFwdDecl)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1014, file: !758, line: 493, baseType: !1195, size: 896, offset: 5632)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1196, line: 53, baseType: !1197)
!1196 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1196, line: 13, size: 896, elements: !1198)
!1198 = !{!1199, !1200, !1201, !1202, !1205, !1206, !1213, !1214, !1234, !1235, !1236}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1197, file: !1196, line: 18, baseType: !202, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1197, file: !1196, line: 28, baseType: !809, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1197, file: !1196, line: 31, baseType: !803, size: 256, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1197, file: !1196, line: 32, baseType: !1203, size: 64, offset: 384)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1196, line: 32, flags: DIFlagFwdDecl)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1197, file: !1196, line: 37, baseType: !257, size: 16, offset: 448)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1197, file: !1196, line: 40, baseType: !1207, size: 192, offset: 512)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1208, line: 53, size: 192, elements: !1209)
!1208 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1209 = !{!1210, !1211, !1212}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1207, file: !1208, line: 54, baseType: !807, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1207, file: !1208, line: 55, baseType: !278, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1207, file: !1208, line: 59, baseType: !152, size: 128, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1197, file: !1196, line: 41, baseType: !123, size: 64, offset: 704)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1197, file: !1196, line: 42, baseType: !1215, size: 64, offset: 768)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1217)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1218, line: 13, size: 896, elements: !1219)
!1218 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1219 = !{!1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1217, file: !1218, line: 14, baseType: !123, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1217, file: !1218, line: 15, baseType: !174, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1217, file: !1218, line: 17, baseType: !174, size: 64, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1217, file: !1218, line: 17, baseType: !174, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1217, file: !1218, line: 19, baseType: !354, size: 64, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1217, file: !1218, line: 21, baseType: !354, size: 64, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1217, file: !1218, line: 22, baseType: !354, size: 64, offset: 384)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1217, file: !1218, line: 23, baseType: !354, size: 64, offset: 448)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1217, file: !1218, line: 24, baseType: !354, size: 64, offset: 512)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1217, file: !1218, line: 25, baseType: !354, size: 64, offset: 576)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1217, file: !1218, line: 26, baseType: !354, size: 64, offset: 640)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1217, file: !1218, line: 27, baseType: !354, size: 64, offset: 704)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1217, file: !1218, line: 28, baseType: !354, size: 64, offset: 768)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1217, file: !1218, line: 29, baseType: !354, size: 64, offset: 832)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1197, file: !1196, line: 44, baseType: !783, size: 32, offset: 832)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1197, file: !1196, line: 50, baseType: !895, size: 16, offset: 864)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1197, file: !1196, line: 51, baseType: !1237, size: 16, offset: 880)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !129, line: 18, baseType: !1238)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !131, line: 23, baseType: !1239)
!1239 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1014, file: !758, line: 495, baseType: !174, size: 64, offset: 6528)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1014, file: !758, line: 497, baseType: !1242, size: 64, offset: 6592)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !758, line: 381, size: 384, elements: !1244)
!1244 = !{!1245, !1246, !2403}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1243, file: !758, line: 382, baseType: !783, size: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1243, file: !758, line: 383, baseType: !1247, size: 128, offset: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !758, line: 376, size: 128, elements: !1248)
!1248 = !{!1249, !2401}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1247, file: !758, line: 377, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1252, line: 640, size: 48640, elements: !1253)
!1252 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1253 = !{!1254, !1260, !1262, !1263, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1280, !1298, !1309, !1394, !1395, !1396, !1407, !1408, !1410, !1411, !1412, !1413, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1491, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1566, !1568, !1569, !1570, !1582, !1583, !1584, !1585, !1586, !1587, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1611, !1616, !1798, !1799, !1800, !1801, !1805, !1808, !1811, !1814, !1817, !1843, !1944, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1990, !1991, !1992, !1993, !1994, !1999, !2000, !2001, !2004, !2005, !2008, !2011, !2014, !2017, !2060, !2063, !2064, !2143, !2144, !2147, !2148, !2151, !2152, !2153, !2157, !2158, !2159, !2172, !2173, !2174, !2184, !2189, !2192, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1251, file: !1252, line: 646, baseType: !1255, size: 128)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1256, line: 56, size: 128, elements: !1257)
!1256 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1257 = !{!1258, !1259}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1255, file: !1256, line: 57, baseType: !174, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1255, file: !1256, line: 58, baseType: !128, size: 32, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1251, file: !1252, line: 649, baseType: !1261, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !354)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1251, file: !1252, line: 657, baseType: !123, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1251, file: !1252, line: 658, baseType: !1264, size: 32, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1265, line: 113, baseType: !1266)
!1265 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1265, line: 111, size: 32, elements: !1267)
!1267 = !{!1268}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1266, file: !1265, line: 112, baseType: !783, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1251, file: !1252, line: 660, baseType: !7, size: 32, offset: 288)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1251, file: !1252, line: 661, baseType: !7, size: 32, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1251, file: !1252, line: 684, baseType: !132, size: 32, offset: 352)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1251, file: !1252, line: 686, baseType: !132, size: 32, offset: 384)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1251, file: !1252, line: 687, baseType: !132, size: 32, offset: 416)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1251, file: !1252, line: 688, baseType: !132, size: 32, offset: 448)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1251, file: !1252, line: 689, baseType: !7, size: 32, offset: 480)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1251, file: !1252, line: 691, baseType: !1277, size: 64, offset: 512)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1279)
!1279 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1252, line: 691, flags: DIFlagFwdDecl)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1251, file: !1252, line: 692, baseType: !1281, size: 832, offset: 576)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1252, line: 451, size: 832, elements: !1282)
!1282 = !{!1283, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1281, file: !1252, line: 453, baseType: !1284, size: 128)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1252, line: 325, size: 128, elements: !1285)
!1285 = !{!1286, !1287}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1284, file: !1252, line: 326, baseType: !174, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1284, file: !1252, line: 327, baseType: !128, size: 32, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1281, file: !1252, line: 454, baseType: !796, size: 192, align: 64, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1281, file: !1252, line: 455, baseType: !152, size: 128, offset: 320)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1281, file: !1252, line: 456, baseType: !7, size: 32, offset: 448)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1281, file: !1252, line: 458, baseType: !202, size: 64, offset: 512)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1281, file: !1252, line: 459, baseType: !202, size: 64, offset: 576)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1281, file: !1252, line: 460, baseType: !202, size: 64, offset: 640)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1281, file: !1252, line: 461, baseType: !202, size: 64, offset: 704)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1281, file: !1252, line: 463, baseType: !202, size: 64, offset: 768)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1281, file: !1252, line: 465, baseType: !1297, offset: 832)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1252, line: 415, elements: !292)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1251, file: !1252, line: 693, baseType: !1299, size: 384, offset: 1408)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1252, line: 489, size: 384, elements: !1300)
!1300 = !{!1301, !1302, !1303, !1304, !1305, !1306, !1307}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1299, file: !1252, line: 490, baseType: !152, size: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1299, file: !1252, line: 491, baseType: !174, size: 64, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1299, file: !1252, line: 492, baseType: !174, size: 64, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1299, file: !1252, line: 493, baseType: !7, size: 32, offset: 256)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1299, file: !1252, line: 494, baseType: !257, size: 16, offset: 288)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1299, file: !1252, line: 495, baseType: !257, size: 16, offset: 304)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1299, file: !1252, line: 497, baseType: !1308, size: 64, offset: 320)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1251, file: !1252, line: 697, baseType: !1310, size: 1792, offset: 1792)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1252, line: 507, size: 1792, elements: !1311)
!1311 = !{!1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1391, !1392}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1310, file: !1252, line: 508, baseType: !796, size: 192, align: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1310, file: !1252, line: 515, baseType: !202, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1310, file: !1252, line: 516, baseType: !202, size: 64, offset: 256)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1310, file: !1252, line: 517, baseType: !202, size: 64, offset: 320)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1310, file: !1252, line: 518, baseType: !202, size: 64, offset: 384)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1310, file: !1252, line: 519, baseType: !202, size: 64, offset: 448)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1310, file: !1252, line: 526, baseType: !813, size: 64, offset: 512)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1310, file: !1252, line: 527, baseType: !202, size: 64, offset: 576)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1310, file: !1252, line: 528, baseType: !7, size: 32, offset: 640)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1310, file: !1252, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1310, file: !1252, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1310, file: !1252, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1310, file: !1252, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1310, file: !1252, line: 563, baseType: !1326, size: 512, offset: 704)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1327)
!1327 = !{!1328, !1336, !1337, !1342, !1385, !1388, !1389, !1390}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1326, file: !20, line: 119, baseType: !1329, size: 256)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1330, line: 9, size: 256, elements: !1331)
!1330 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1331 = !{!1332, !1333}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1329, file: !1330, line: 10, baseType: !796, size: 192, align: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1329, file: !1330, line: 11, baseType: !1334, size: 64, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1335, line: 29, baseType: !813)
!1335 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1326, file: !20, line: 120, baseType: !1334, size: 64, offset: 256)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1326, file: !20, line: 121, baseType: !1338, size: 64, offset: 320)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!19, !1341}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1326, file: !20, line: 122, baseType: !1343, size: 64, offset: 384)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1345)
!1345 = !{!1346, !1366, !1367, !1370, !1375, !1376, !1380, !1384}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1344, file: !20, line: 160, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1349)
!1349 = !{!1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1348, file: !20, line: 215, baseType: !816)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1348, file: !20, line: 216, baseType: !7, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1348, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1348, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1348, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1348, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1348, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1348, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1348, file: !20, line: 233, baseType: !1334, size: 64, offset: 128)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1348, file: !20, line: 234, baseType: !1341, size: 64, offset: 192)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1348, file: !20, line: 235, baseType: !1334, size: 64, offset: 256)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1348, file: !20, line: 236, baseType: !1341, size: 64, offset: 320)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1348, file: !20, line: 237, baseType: !1363, size: 4096, offset: 512)
!1363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1344, size: 4096, elements: !1364)
!1364 = !{!1365}
!1365 = !DISubrange(count: 8)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1344, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1344, file: !20, line: 162, baseType: !1368, size: 32, offset: 96)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !153, line: 27, baseType: !1369)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !352, line: 96, baseType: !132)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1344, file: !20, line: 163, baseType: !1371, size: 32, offset: 128)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !431, line: 276, baseType: !1372)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !431, line: 276, size: 32, elements: !1373)
!1373 = !{!1374}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1372, file: !431, line: 276, baseType: !435, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1344, file: !20, line: 164, baseType: !1341, size: 64, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1344, file: !20, line: 165, baseType: !1377, size: 128, offset: 256)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1330, line: 14, size: 128, elements: !1378)
!1378 = !{!1379}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1377, file: !1330, line: 15, baseType: !788, size: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1344, file: !20, line: 166, baseType: !1381, size: 64, offset: 384)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!1334}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1344, file: !20, line: 167, baseType: !1334, size: 64, offset: 448)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1326, file: !20, line: 123, baseType: !1386, size: 8, offset: 448)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !129, line: 17, baseType: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !131, line: 21, baseType: !126)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1326, file: !20, line: 124, baseType: !1386, size: 8, offset: 456)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1326, file: !20, line: 125, baseType: !1386, size: 8, offset: 464)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1326, file: !20, line: 126, baseType: !1386, size: 8, offset: 472)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1310, file: !1252, line: 572, baseType: !1326, size: 512, offset: 1216)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1310, file: !1252, line: 580, baseType: !1393, size: 64, offset: 1728)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1251, file: !1252, line: 721, baseType: !7, size: 32, offset: 3584)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1251, file: !1252, line: 722, baseType: !132, size: 32, offset: 3616)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1251, file: !1252, line: 723, baseType: !1397, size: 64, offset: 3648)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1399)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1400, line: 17, baseType: !1401)
!1400 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1400, line: 17, size: 64, elements: !1402)
!1402 = !{!1403}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1401, file: !1400, line: 17, baseType: !1404, size: 64)
!1404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 64, elements: !1405)
!1405 = !{!1406}
!1406 = !DISubrange(count: 1)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1251, file: !1252, line: 724, baseType: !1399, size: 64, offset: 3712)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1251, file: !1252, line: 749, baseType: !1409, offset: 3776)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1252, line: 290, elements: !292)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1251, file: !1252, line: 751, baseType: !152, size: 128, offset: 3776)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1251, file: !1252, line: 757, baseType: !1010, size: 64, offset: 3904)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1251, file: !1252, line: 758, baseType: !1010, size: 64, offset: 3968)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1251, file: !1252, line: 761, baseType: !1414, size: 320, offset: 4032)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1187, line: 34, size: 320, elements: !1415)
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1414, file: !1187, line: 35, baseType: !202, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1414, file: !1187, line: 36, baseType: !1418, size: 256, offset: 64)
!1418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1017, size: 256, elements: !212)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1251, file: !1252, line: 766, baseType: !132, size: 32, offset: 4352)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1251, file: !1252, line: 767, baseType: !132, size: 32, offset: 4384)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1251, file: !1252, line: 768, baseType: !132, size: 32, offset: 4416)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1251, file: !1252, line: 770, baseType: !132, size: 32, offset: 4448)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1251, file: !1252, line: 772, baseType: !174, size: 64, offset: 4480)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1251, file: !1252, line: 775, baseType: !7, size: 32, offset: 4544)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1251, file: !1252, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1251, file: !1252, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1251, file: !1252, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1251, file: !1252, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1251, file: !1252, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1251, file: !1252, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1251, file: !1252, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1251, file: !1252, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1251, file: !1252, line: 831, baseType: !174, size: 64, offset: 4672)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1251, file: !1252, line: 833, baseType: !1435, size: 384, offset: 4736)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1436)
!1436 = !{!1437, !1442}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1435, file: !25, line: 26, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!354, !1441}
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, scope: !1435, file: !25, line: 27, baseType: !1443, size: 320, offset: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1435, file: !25, line: 27, size: 320, elements: !1444)
!1444 = !{!1445, !1454, !1481}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1443, file: !25, line: 36, baseType: !1446, size: 320)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1443, file: !25, line: 29, size: 320, elements: !1447)
!1447 = !{!1448, !1449, !1450, !1451, !1452, !1453}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1446, file: !25, line: 30, baseType: !127, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1446, file: !25, line: 31, baseType: !128, size: 32, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1446, file: !25, line: 32, baseType: !128, size: 32, offset: 96)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1446, file: !25, line: 33, baseType: !128, size: 32, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1446, file: !25, line: 34, baseType: !202, size: 64, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1446, file: !25, line: 35, baseType: !127, size: 64, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1443, file: !25, line: 46, baseType: !1455, size: 192)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1443, file: !25, line: 38, size: 192, elements: !1456)
!1456 = !{!1457, !1458, !1459, !1480}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1455, file: !25, line: 39, baseType: !1368, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1455, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, scope: !1455, file: !25, line: 41, baseType: !1460, size: 64, offset: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1455, file: !25, line: 41, size: 64, elements: !1461)
!1461 = !{!1462, !1470}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1460, file: !25, line: 42, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1465, line: 7, size: 128, elements: !1466)
!1465 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1466 = !{!1467, !1469}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1464, file: !1465, line: 8, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !352, line: 93, baseType: !568)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1464, file: !1465, line: 9, baseType: !568, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1460, file: !25, line: 43, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1473, line: 7, size: 64, elements: !1474)
!1473 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1474 = !{!1475, !1479}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1472, file: !1473, line: 8, baseType: !1476, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1473, line: 5, baseType: !1477)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !129, line: 20, baseType: !1478)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !131, line: 26, baseType: !132)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1472, file: !1473, line: 9, baseType: !1477, size: 32, offset: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1455, file: !25, line: 45, baseType: !202, size: 64, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1443, file: !25, line: 54, baseType: !1482, size: 256)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1443, file: !25, line: 48, size: 256, elements: !1483)
!1483 = !{!1484, !1487, !1488, !1489, !1490}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1482, file: !25, line: 49, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1482, file: !25, line: 50, baseType: !132, size: 32, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1482, file: !25, line: 51, baseType: !132, size: 32, offset: 96)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1482, file: !25, line: 52, baseType: !174, size: 64, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1482, file: !25, line: 53, baseType: !174, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1251, file: !1252, line: 835, baseType: !1492, size: 32, offset: 5120)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !153, line: 22, baseType: !1493)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !352, line: 28, baseType: !132)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1251, file: !1252, line: 836, baseType: !1492, size: 32, offset: 5152)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1251, file: !1252, line: 840, baseType: !174, size: 64, offset: 5184)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1251, file: !1252, line: 849, baseType: !1250, size: 64, offset: 5248)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1251, file: !1252, line: 852, baseType: !1250, size: 64, offset: 5312)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1251, file: !1252, line: 857, baseType: !152, size: 128, offset: 5376)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1251, file: !1252, line: 858, baseType: !152, size: 128, offset: 5504)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1251, file: !1252, line: 859, baseType: !1250, size: 64, offset: 5632)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1251, file: !1252, line: 867, baseType: !152, size: 128, offset: 5696)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1251, file: !1252, line: 868, baseType: !152, size: 128, offset: 5824)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1251, file: !1252, line: 871, baseType: !1504, size: 64, offset: 5952)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1506)
!1506 = !{!1507, !1508, !1509, !1510, !1512, !1513, !1520, !1521}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1505, file: !53, line: 61, baseType: !1264, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1505, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1505, file: !53, line: 63, baseType: !278, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1505, file: !53, line: 65, baseType: !1511, size: 256, offset: 64)
!1511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 256, elements: !212)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1505, file: !53, line: 66, baseType: !670, size: 64, offset: 320)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1505, file: !53, line: 68, baseType: !1514, size: 128, offset: 384)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1515, line: 40, baseType: !1516)
!1515 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1515, line: 36, size: 128, elements: !1517)
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1516, file: !1515, line: 37, baseType: !278)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1516, file: !1515, line: 38, baseType: !152, size: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1505, file: !53, line: 69, baseType: !408, size: 128, align: 64, offset: 512)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1505, file: !53, line: 70, baseType: !1522, size: 128, offset: 640)
!1522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1523, size: 128, elements: !1405)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1524)
!1524 = !{!1525, !1526}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1523, file: !53, line: 55, baseType: !132, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1523, file: !53, line: 56, baseType: !1527, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1529, line: 20, size: 1088, elements: !1530)
!1529 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/lizy2001/genbc/linux")
!1530 = !{!1531, !1536, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1552, !1555, !1556}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1528, file: !1529, line: 21, baseType: !1532, size: 32)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1533, line: 19, size: 32, elements: !1534)
!1533 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1534 = !{!1535}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1532, file: !1533, line: 20, baseType: !1264, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1528, file: !1529, line: 22, baseType: !1537, size: 192, offset: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1538, line: 19, size: 192, elements: !1539)
!1538 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1539 = !{!1540, !1541, !1542}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1537, file: !1538, line: 20, baseType: !774, size: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1537, file: !1538, line: 21, baseType: !7, size: 32, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1537, file: !1538, line: 22, baseType: !7, size: 32, offset: 160)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1528, file: !1529, line: 23, baseType: !408, size: 128, align: 64, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1528, file: !1529, line: 24, baseType: !7, size: 32, offset: 384)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1528, file: !1529, line: 25, baseType: !1250, size: 64, offset: 448)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1528, file: !1529, line: 26, baseType: !971, size: 64, offset: 512)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1528, file: !1529, line: 27, baseType: !7, size: 32, offset: 576)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1528, file: !1529, line: 28, baseType: !1527, size: 64, offset: 640)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1528, file: !1529, line: 32, baseType: !1550, size: 64, offset: 704)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !471, line: 18, flags: DIFlagFwdDecl)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1528, file: !1529, line: 33, baseType: !1553, size: 64, offset: 768)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1529, line: 33, flags: DIFlagFwdDecl)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1528, file: !1529, line: 34, baseType: !132, size: 32, offset: 832)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1528, file: !1529, line: 35, baseType: !1557, size: 192, offset: 896)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1558, line: 7, size: 192, elements: !1559)
!1558 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!1559 = !{!1560, !1561, !1565}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1557, file: !1558, line: 8, baseType: !807, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1557, file: !1558, line: 9, baseType: !1562, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1564)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1558, line: 5, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1557, file: !1558, line: 10, baseType: !7, size: 32, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1251, file: !1252, line: 872, baseType: !1567, size: 512, offset: 6016)
!1567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 512, elements: !212)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1251, file: !1252, line: 873, baseType: !152, size: 128, offset: 6528)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1251, file: !1252, line: 874, baseType: !152, size: 128, offset: 6656)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1251, file: !1252, line: 876, baseType: !1571, size: 64, offset: 6784)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1573, line: 26, size: 192, elements: !1574)
!1573 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1574 = !{!1575, !1576}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1572, file: !1573, line: 27, baseType: !7, size: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1572, file: !1573, line: 28, baseType: !1577, size: 128, offset: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1578, line: 43, size: 128, elements: !1579)
!1578 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1577, file: !1578, line: 44, baseType: !816)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1577, file: !1578, line: 45, baseType: !152, size: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1251, file: !1252, line: 879, baseType: !740, size: 64, offset: 6848)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1251, file: !1252, line: 882, baseType: !740, size: 64, offset: 6912)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1251, file: !1252, line: 884, baseType: !202, size: 64, offset: 6976)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1251, file: !1252, line: 885, baseType: !202, size: 64, offset: 7040)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1251, file: !1252, line: 890, baseType: !202, size: 64, offset: 7104)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1251, file: !1252, line: 891, baseType: !1588, size: 128, offset: 7168)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1252, line: 242, size: 128, elements: !1589)
!1589 = !{!1590, !1591, !1592}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1588, file: !1252, line: 244, baseType: !202, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1588, file: !1252, line: 245, baseType: !202, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1588, file: !1252, line: 246, baseType: !816, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1251, file: !1252, line: 900, baseType: !174, size: 64, offset: 7296)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1251, file: !1252, line: 901, baseType: !174, size: 64, offset: 7360)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1251, file: !1252, line: 904, baseType: !202, size: 64, offset: 7424)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1251, file: !1252, line: 907, baseType: !202, size: 64, offset: 7488)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1251, file: !1252, line: 910, baseType: !174, size: 64, offset: 7552)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1251, file: !1252, line: 911, baseType: !174, size: 64, offset: 7616)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1251, file: !1252, line: 914, baseType: !1600, size: 640, offset: 7680)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1601, line: 123, size: 640, elements: !1602)
!1601 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1602 = !{!1603, !1609, !1610}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1600, file: !1601, line: 124, baseType: !1604, size: 576)
!1604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1605, size: 576, elements: !320)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1601, line: 108, size: 192, elements: !1606)
!1606 = !{!1607, !1608}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1605, file: !1601, line: 109, baseType: !202, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1605, file: !1601, line: 110, baseType: !1377, size: 128, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1600, file: !1601, line: 125, baseType: !7, size: 32, offset: 576)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1600, file: !1601, line: 126, baseType: !7, size: 32, offset: 608)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1251, file: !1252, line: 917, baseType: !1612, size: 192, offset: 8320)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1601, line: 134, size: 192, elements: !1613)
!1613 = !{!1614, !1615}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1612, file: !1601, line: 135, baseType: !408, size: 128, align: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1612, file: !1601, line: 136, baseType: !7, size: 32, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1251, file: !1252, line: 923, baseType: !1617, size: 64, offset: 8512)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1619)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1620, line: 111, size: 1280, elements: !1621)
!1620 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1621 = !{!1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1641, !1642, !1643, !1644, !1645, !1646, !1753, !1754, !1755, !1756, !1782, !1783, !1793}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1619, file: !1620, line: 112, baseType: !783, size: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1619, file: !1620, line: 120, baseType: !470, size: 32, offset: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1619, file: !1620, line: 121, baseType: !478, size: 32, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1619, file: !1620, line: 122, baseType: !470, size: 32, offset: 96)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1619, file: !1620, line: 123, baseType: !478, size: 32, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1619, file: !1620, line: 124, baseType: !470, size: 32, offset: 160)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1619, file: !1620, line: 125, baseType: !478, size: 32, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1619, file: !1620, line: 126, baseType: !470, size: 32, offset: 224)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1619, file: !1620, line: 127, baseType: !478, size: 32, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1619, file: !1620, line: 128, baseType: !7, size: 32, offset: 288)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1619, file: !1620, line: 129, baseType: !1633, size: 64, offset: 320)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1634, line: 26, baseType: !1635)
!1634 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1634, line: 24, size: 64, elements: !1636)
!1636 = !{!1637}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1635, file: !1634, line: 25, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 64, elements: !1639)
!1639 = !{!1640}
!1640 = !DISubrange(count: 2)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1619, file: !1620, line: 130, baseType: !1633, size: 64, offset: 384)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1619, file: !1620, line: 131, baseType: !1633, size: 64, offset: 448)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1619, file: !1620, line: 132, baseType: !1633, size: 64, offset: 512)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1619, file: !1620, line: 133, baseType: !1633, size: 64, offset: 576)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1619, file: !1620, line: 135, baseType: !126, size: 8, offset: 640)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1619, file: !1620, line: 137, baseType: !1647, size: 64, offset: 704)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1649, line: 189, size: 1664, elements: !1650)
!1649 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1650 = !{!1651, !1652, !1655, !1660, !1661, !1664, !1665, !1670, !1671, !1672, !1673, !1675, !1676, !1677, !1678, !1679, !1717, !1738}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1648, file: !1649, line: 190, baseType: !1264, size: 32)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1648, file: !1649, line: 191, baseType: !1653, size: 32, offset: 32)
!1653 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1649, line: 28, baseType: !1654)
!1654 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !153, line: 98, baseType: !1477)
!1655 = !DIDerivedType(tag: DW_TAG_member, scope: !1648, file: !1649, line: 192, baseType: !1656, size: 192, offset: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1648, file: !1649, line: 192, size: 192, elements: !1657)
!1657 = !{!1658, !1659}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1656, file: !1649, line: 193, baseType: !152, size: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1656, file: !1649, line: 194, baseType: !796, size: 192, align: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1648, file: !1649, line: 199, baseType: !803, size: 256, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1648, file: !1649, line: 200, baseType: !1662, size: 64, offset: 512)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1649, line: 200, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1648, file: !1649, line: 201, baseType: !123, size: 64, offset: 576)
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1648, file: !1649, line: 202, baseType: !1666, size: 64, offset: 640)
!1666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1648, file: !1649, line: 202, size: 64, elements: !1667)
!1667 = !{!1668, !1669}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1666, file: !1649, line: 203, baseType: !574, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1666, file: !1649, line: 204, baseType: !574, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1648, file: !1649, line: 206, baseType: !574, size: 64, offset: 704)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1648, file: !1649, line: 207, baseType: !470, size: 32, offset: 768)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1648, file: !1649, line: 208, baseType: !478, size: 32, offset: 800)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1648, file: !1649, line: 209, baseType: !1674, size: 32, offset: 832)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1649, line: 31, baseType: !594)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1648, file: !1649, line: 210, baseType: !257, size: 16, offset: 864)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1648, file: !1649, line: 211, baseType: !257, size: 16, offset: 880)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1648, file: !1649, line: 215, baseType: !1239, size: 16, offset: 896)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1648, file: !1649, line: 222, baseType: !174, size: 64, offset: 960)
!1679 = !DIDerivedType(tag: DW_TAG_member, scope: !1648, file: !1649, line: 239, baseType: !1680, size: 320, offset: 1024)
!1680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1648, file: !1649, line: 239, size: 320, elements: !1681)
!1681 = !{!1682, !1709}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1680, file: !1649, line: 240, baseType: !1683, size: 320)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1649, line: 108, size: 320, elements: !1684)
!1684 = !{!1685, !1686, !1698, !1701, !1708}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1683, file: !1649, line: 110, baseType: !174, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1683, file: !1649, line: 111, baseType: !1687, size: 64, offset: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1683, file: !1649, line: 111, size: 64, elements: !1688)
!1688 = !{!1689, !1697}
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1687, file: !1649, line: 112, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1687, file: !1649, line: 112, size: 64, elements: !1691)
!1691 = !{!1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1690, file: !1649, line: 114, baseType: !895, size: 16)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1690, file: !1649, line: 115, baseType: !1694, size: 48, offset: 16)
!1694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 48, elements: !1695)
!1695 = !{!1696}
!1696 = !DISubrange(count: 6)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1687, file: !1649, line: 121, baseType: !174, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1683, file: !1649, line: 123, baseType: !1699, size: 64, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1649, line: 96, flags: DIFlagFwdDecl)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1683, file: !1649, line: 124, baseType: !1702, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1649, line: 102, size: 192, elements: !1704)
!1704 = !{!1705, !1706, !1707}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1703, file: !1649, line: 103, baseType: !408, size: 128, align: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1703, file: !1649, line: 104, baseType: !1264, size: 32, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1703, file: !1649, line: 105, baseType: !525, size: 8, offset: 160)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1683, file: !1649, line: 125, baseType: !159, size: 64, offset: 256)
!1709 = !DIDerivedType(tag: DW_TAG_member, scope: !1680, file: !1649, line: 241, baseType: !1710, size: 320)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1680, file: !1649, line: 241, size: 320, elements: !1711)
!1711 = !{!1712, !1713, !1714, !1715, !1716}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1710, file: !1649, line: 242, baseType: !174, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1710, file: !1649, line: 243, baseType: !174, size: 64, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1710, file: !1649, line: 244, baseType: !1699, size: 64, offset: 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1710, file: !1649, line: 245, baseType: !1702, size: 64, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1710, file: !1649, line: 246, baseType: !319, size: 64, offset: 256)
!1717 = !DIDerivedType(tag: DW_TAG_member, scope: !1648, file: !1649, line: 254, baseType: !1718, size: 256, offset: 1344)
!1718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1648, file: !1649, line: 254, size: 256, elements: !1719)
!1719 = !{!1720, !1726}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1718, file: !1649, line: 255, baseType: !1721, size: 256)
!1721 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1649, line: 128, size: 256, elements: !1722)
!1722 = !{!1723, !1724}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1721, file: !1649, line: 129, baseType: !123, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1721, file: !1649, line: 130, baseType: !1725, size: 256)
!1725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 256, elements: !212)
!1726 = !DIDerivedType(tag: DW_TAG_member, scope: !1718, file: !1649, line: 256, baseType: !1727, size: 256)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1718, file: !1649, line: 256, size: 256, elements: !1728)
!1728 = !{!1729, !1730}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1727, file: !1649, line: 258, baseType: !152, size: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1727, file: !1649, line: 259, baseType: !1731, size: 128, offset: 128)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1732, line: 22, size: 128, elements: !1733)
!1732 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1733 = !{!1734, !1737}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1731, file: !1732, line: 23, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1732, line: 23, flags: DIFlagFwdDecl)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1731, file: !1732, line: 24, baseType: !174, size: 64, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1648, file: !1649, line: 274, baseType: !1739, size: 64, offset: 1600)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1649, line: 170, size: 192, elements: !1741)
!1741 = !{!1742, !1751, !1752}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1740, file: !1649, line: 171, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1649, line: 165, baseType: !1744)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!132, !1647, !1747, !1749, !1647}
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1700)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1721)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1740, file: !1649, line: 172, baseType: !1647, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1740, file: !1649, line: 173, baseType: !1699, size: 64, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1619, file: !1620, line: 138, baseType: !1647, size: 64, offset: 768)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1619, file: !1620, line: 139, baseType: !1647, size: 64, offset: 832)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1619, file: !1620, line: 140, baseType: !1647, size: 64, offset: 896)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1619, file: !1620, line: 145, baseType: !1757, size: 64, offset: 960)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1759, line: 13, size: 896, elements: !1760)
!1759 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1760 = !{!1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1758, file: !1759, line: 14, baseType: !1264, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1758, file: !1759, line: 15, baseType: !783, size: 32, offset: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1758, file: !1759, line: 16, baseType: !783, size: 32, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1758, file: !1759, line: 21, baseType: !807, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1758, file: !1759, line: 27, baseType: !174, size: 64, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1758, file: !1759, line: 28, baseType: !174, size: 64, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1758, file: !1759, line: 29, baseType: !807, size: 64, offset: 320)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1758, file: !1759, line: 32, baseType: !674, size: 128, offset: 384)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1758, file: !1759, line: 33, baseType: !470, size: 32, offset: 512)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1758, file: !1759, line: 37, baseType: !807, size: 64, offset: 576)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1758, file: !1759, line: 44, baseType: !1772, size: 256, offset: 640)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1773, line: 15, size: 256, elements: !1774)
!1773 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1774 = !{!1775, !1776, !1777, !1778, !1779, !1780, !1781}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1772, file: !1773, line: 16, baseType: !816)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1772, file: !1773, line: 18, baseType: !132, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1772, file: !1773, line: 19, baseType: !132, size: 32, offset: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1772, file: !1773, line: 20, baseType: !132, size: 32, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1772, file: !1773, line: 21, baseType: !132, size: 32, offset: 96)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1772, file: !1773, line: 22, baseType: !174, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1772, file: !1773, line: 23, baseType: !174, size: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1619, file: !1620, line: 146, baseType: !1550, size: 64, offset: 1024)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1619, file: !1620, line: 147, baseType: !1784, size: 64, offset: 1088)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1620, line: 25, size: 64, elements: !1786)
!1786 = !{!1787, !1788, !1789}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1785, file: !1620, line: 26, baseType: !783, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1785, file: !1620, line: 27, baseType: !132, size: 32, offset: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1785, file: !1620, line: 28, baseType: !1790, offset: 64)
!1790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !478, elements: !1791)
!1791 = !{!1792}
!1792 = !DISubrange(count: 0)
!1793 = !DIDerivedType(tag: DW_TAG_member, scope: !1619, file: !1620, line: 149, baseType: !1794, size: 128, offset: 1152)
!1794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1619, file: !1620, line: 149, size: 128, elements: !1795)
!1795 = !{!1796, !1797}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1794, file: !1620, line: 150, baseType: !132, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1794, file: !1620, line: 151, baseType: !408, size: 128, align: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1251, file: !1252, line: 926, baseType: !1617, size: 64, offset: 8576)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1251, file: !1252, line: 929, baseType: !1617, size: 64, offset: 8640)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1251, file: !1252, line: 933, baseType: !1647, size: 64, offset: 8704)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1251, file: !1252, line: 943, baseType: !1802, size: 128, offset: 8768)
!1802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 128, elements: !1803)
!1803 = !{!1804}
!1804 = !DISubrange(count: 16)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1251, file: !1252, line: 945, baseType: !1806, size: 64, offset: 8896)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1252, line: 49, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1251, file: !1252, line: 956, baseType: !1809, size: 64, offset: 8960)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1252, line: 45, flags: DIFlagFwdDecl)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1251, file: !1252, line: 959, baseType: !1812, size: 64, offset: 9024)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1252, line: 959, flags: DIFlagFwdDecl)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1251, file: !1252, line: 962, baseType: !1815, size: 64, offset: 9088)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1252, line: 66, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1251, file: !1252, line: 966, baseType: !1818, size: 64, offset: 9152)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1820, line: 31, size: 576, elements: !1821)
!1820 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!1821 = !{!1822, !1823, !1826, !1829, !1832, !1833, !1836, !1839, !1840}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1819, file: !1820, line: 32, baseType: !783, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1819, file: !1820, line: 33, baseType: !1824, size: 64, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1820, line: 9, flags: DIFlagFwdDecl)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1819, file: !1820, line: 34, baseType: !1827, size: 64, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1820, line: 10, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1819, file: !1820, line: 35, baseType: !1830, size: 64, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1820, line: 8, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1819, file: !1820, line: 36, baseType: !1527, size: 64, offset: 256)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1819, file: !1820, line: 37, baseType: !1834, size: 64, offset: 320)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1649, line: 34, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1819, file: !1820, line: 38, baseType: !1837, size: 64, offset: 384)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1820, line: 38, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1819, file: !1820, line: 39, baseType: !1837, size: 64, offset: 448)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1819, file: !1820, line: 40, baseType: !1841, size: 64, offset: 512)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1820, line: 12, flags: DIFlagFwdDecl)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1251, file: !1252, line: 969, baseType: !1844, size: 64, offset: 9216)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1846, line: 82, size: 7296, elements: !1847)
!1846 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1847 = !{!1848, !1849, !1850, !1851, !1852, !1853, !1854, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1883, !1892, !1893, !1895, !1896, !1897, !1900, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1930, !1931, !1938, !1939, !1940, !1941, !1942, !1943}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1845, file: !1846, line: 83, baseType: !1264, size: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1845, file: !1846, line: 84, baseType: !783, size: 32, offset: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1845, file: !1846, line: 85, baseType: !132, size: 32, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1845, file: !1846, line: 86, baseType: !152, size: 128, offset: 128)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1845, file: !1846, line: 88, baseType: !1514, size: 128, offset: 256)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1845, file: !1846, line: 91, baseType: !1250, size: 64, offset: 384)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1845, file: !1846, line: 94, baseType: !1855, size: 192, offset: 448)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1856, line: 30, size: 192, elements: !1857)
!1856 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1857 = !{!1858, !1859}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1855, file: !1856, line: 31, baseType: !152, size: 128)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1855, file: !1856, line: 32, baseType: !1860, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1861, line: 25, baseType: !1862)
!1861 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1861, line: 23, size: 64, elements: !1863)
!1863 = !{!1864}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1862, file: !1861, line: 24, baseType: !1404, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1845, file: !1846, line: 97, baseType: !670, size: 64, offset: 640)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1845, file: !1846, line: 100, baseType: !132, size: 32, offset: 704)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1845, file: !1846, line: 106, baseType: !132, size: 32, offset: 736)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1845, file: !1846, line: 107, baseType: !1250, size: 64, offset: 768)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1845, file: !1846, line: 110, baseType: !132, size: 32, offset: 832)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1845, file: !1846, line: 111, baseType: !7, size: 32, offset: 864)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1845, file: !1846, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1845, file: !1846, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1845, file: !1846, line: 128, baseType: !132, size: 32, offset: 928)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1845, file: !1846, line: 129, baseType: !152, size: 128, offset: 960)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1845, file: !1846, line: 132, baseType: !1326, size: 512, offset: 1088)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1845, file: !1846, line: 133, baseType: !1334, size: 64, offset: 1600)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1845, file: !1846, line: 140, baseType: !1878, size: 256, offset: 1664)
!1878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1879, size: 256, elements: !1639)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1846, line: 38, size: 128, elements: !1880)
!1880 = !{!1881, !1882}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1879, file: !1846, line: 39, baseType: !202, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1879, file: !1846, line: 40, baseType: !202, size: 64, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1845, file: !1846, line: 146, baseType: !1884, size: 192, offset: 1920)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1846, line: 66, size: 192, elements: !1885)
!1885 = !{!1886}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1884, file: !1846, line: 67, baseType: !1887, size: 192)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1846, line: 47, size: 192, elements: !1888)
!1888 = !{!1889, !1890, !1891}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1887, file: !1846, line: 48, baseType: !809, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1887, file: !1846, line: 49, baseType: !809, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1887, file: !1846, line: 50, baseType: !809, size: 64, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1845, file: !1846, line: 150, baseType: !1600, size: 640, offset: 2112)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1845, file: !1846, line: 153, baseType: !1894, size: 256, offset: 2752)
!1894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1504, size: 256, elements: !212)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1845, file: !1846, line: 159, baseType: !1504, size: 64, offset: 3008)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1845, file: !1846, line: 162, baseType: !132, size: 32, offset: 3072)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1845, file: !1846, line: 164, baseType: !1898, size: 64, offset: 3136)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1846, line: 164, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1845, file: !1846, line: 175, baseType: !1901, size: 32, offset: 3200)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !431, line: 805, baseType: !1902)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !431, line: 798, size: 32, elements: !1903)
!1903 = !{!1904, !1905}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1902, file: !431, line: 803, baseType: !430, size: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1902, file: !431, line: 804, baseType: !278, offset: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1845, file: !1846, line: 176, baseType: !202, size: 64, offset: 3264)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1845, file: !1846, line: 176, baseType: !202, size: 64, offset: 3328)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1845, file: !1846, line: 176, baseType: !202, size: 64, offset: 3392)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1845, file: !1846, line: 176, baseType: !202, size: 64, offset: 3456)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1845, file: !1846, line: 177, baseType: !202, size: 64, offset: 3520)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1845, file: !1846, line: 178, baseType: !202, size: 64, offset: 3584)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1845, file: !1846, line: 179, baseType: !1588, size: 128, offset: 3648)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1845, file: !1846, line: 180, baseType: !174, size: 64, offset: 3776)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1845, file: !1846, line: 180, baseType: !174, size: 64, offset: 3840)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1845, file: !1846, line: 180, baseType: !174, size: 64, offset: 3904)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1845, file: !1846, line: 180, baseType: !174, size: 64, offset: 3968)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1845, file: !1846, line: 181, baseType: !174, size: 64, offset: 4032)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1845, file: !1846, line: 181, baseType: !174, size: 64, offset: 4096)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1845, file: !1846, line: 181, baseType: !174, size: 64, offset: 4160)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1845, file: !1846, line: 181, baseType: !174, size: 64, offset: 4224)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1845, file: !1846, line: 182, baseType: !174, size: 64, offset: 4288)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1845, file: !1846, line: 182, baseType: !174, size: 64, offset: 4352)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1845, file: !1846, line: 182, baseType: !174, size: 64, offset: 4416)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1845, file: !1846, line: 182, baseType: !174, size: 64, offset: 4480)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1845, file: !1846, line: 183, baseType: !174, size: 64, offset: 4544)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1845, file: !1846, line: 183, baseType: !174, size: 64, offset: 4608)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1845, file: !1846, line: 184, baseType: !1928, offset: 4672)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1929, line: 12, elements: !292)
!1929 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1845, file: !1846, line: 192, baseType: !204, size: 64, offset: 4672)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1845, file: !1846, line: 203, baseType: !1932, size: 2048, offset: 4736)
!1932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1933, size: 2048, elements: !1803)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1934, line: 43, size: 128, elements: !1935)
!1934 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1935 = !{!1936, !1937}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1933, file: !1934, line: 44, baseType: !367, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1933, file: !1934, line: 45, baseType: !367, size: 64, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1845, file: !1846, line: 220, baseType: !525, size: 8, offset: 6784)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1845, file: !1846, line: 221, baseType: !1239, size: 16, offset: 6800)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1845, file: !1846, line: 222, baseType: !1239, size: 16, offset: 6816)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1845, file: !1846, line: 224, baseType: !1010, size: 64, offset: 6848)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1845, file: !1846, line: 227, baseType: !1207, size: 192, offset: 6912)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1845, file: !1846, line: 233, baseType: !1207, size: 192, offset: 7104)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1251, file: !1252, line: 970, baseType: !1945, size: 64, offset: 9280)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1846, line: 20, size: 16576, elements: !1947)
!1947 = !{!1948, !1949, !1950, !1951}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1946, file: !1846, line: 21, baseType: !278)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1946, file: !1846, line: 22, baseType: !1264, size: 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1946, file: !1846, line: 23, baseType: !1514, size: 128, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1946, file: !1846, line: 24, baseType: !1952, size: 16384, offset: 192)
!1952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1953, size: 16384, elements: !324)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1856, line: 49, size: 256, elements: !1954)
!1954 = !{!1955}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1953, file: !1856, line: 50, baseType: !1956, size: 256)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1856, line: 35, size: 256, elements: !1957)
!1957 = !{!1958, !1965, !1966, !1972}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1956, file: !1856, line: 37, baseType: !1959, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1960, line: 19, baseType: !1961)
!1960 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1960, line: 18, baseType: !1963)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{null, !132}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1956, file: !1856, line: 38, baseType: !174, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1956, file: !1856, line: 44, baseType: !1967, size: 64, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1960, line: 22, baseType: !1968)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1960, line: 21, baseType: !1970)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1956, file: !1856, line: 46, baseType: !1860, size: 64, offset: 192)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1251, file: !1252, line: 971, baseType: !1860, size: 64, offset: 9344)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1251, file: !1252, line: 972, baseType: !1860, size: 64, offset: 9408)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1251, file: !1252, line: 974, baseType: !1860, size: 64, offset: 9472)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1251, file: !1252, line: 975, baseType: !1855, size: 192, offset: 9536)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1251, file: !1252, line: 976, baseType: !174, size: 64, offset: 9728)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1251, file: !1252, line: 977, baseType: !365, size: 64, offset: 9792)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1251, file: !1252, line: 978, baseType: !7, size: 32, offset: 9856)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1251, file: !1252, line: 980, baseType: !411, size: 64, offset: 9920)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1251, file: !1252, line: 989, baseType: !1982, size: 128, offset: 9984)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1983, line: 35, size: 128, elements: !1984)
!1983 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1984 = !{!1985, !1986, !1987}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1982, file: !1983, line: 36, baseType: !132, size: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1982, file: !1983, line: 37, baseType: !783, size: 32, offset: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1982, file: !1983, line: 38, baseType: !1988, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1983, line: 23, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1251, file: !1252, line: 992, baseType: !202, size: 64, offset: 10112)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1251, file: !1252, line: 993, baseType: !202, size: 64, offset: 10176)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1251, file: !1252, line: 996, baseType: !278, offset: 10240)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1251, file: !1252, line: 999, baseType: !816, offset: 10240)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1251, file: !1252, line: 1001, baseType: !1995, size: 64, offset: 10240)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1252, line: 636, size: 64, elements: !1996)
!1996 = !{!1997}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1995, file: !1252, line: 637, baseType: !1998, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1251, file: !1252, line: 1005, baseType: !788, size: 128, offset: 10304)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1251, file: !1252, line: 1007, baseType: !1250, size: 64, offset: 10432)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1251, file: !1252, line: 1009, baseType: !2002, size: 64, offset: 10496)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1252, line: 1009, flags: DIFlagFwdDecl)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1251, file: !1252, line: 1043, baseType: !123, size: 64, offset: 10560)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1251, file: !1252, line: 1046, baseType: !2006, size: 64, offset: 10624)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1252, line: 41, flags: DIFlagFwdDecl)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1251, file: !1252, line: 1050, baseType: !2009, size: 64, offset: 10688)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1252, line: 42, flags: DIFlagFwdDecl)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1251, file: !1252, line: 1054, baseType: !2012, size: 64, offset: 10752)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1252, line: 55, flags: DIFlagFwdDecl)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1251, file: !1252, line: 1056, baseType: !2015, size: 64, offset: 10816)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1252, line: 40, flags: DIFlagFwdDecl)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1251, file: !1252, line: 1058, baseType: !2018, size: 64, offset: 10880)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2020, line: 99, size: 704, elements: !2021)
!2020 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2021 = !{!2022, !2023, !2024, !2025, !2026, !2027, !2028, !2047, !2048}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2019, file: !2020, line: 100, baseType: !807, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2019, file: !2020, line: 101, baseType: !783, size: 32, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2019, file: !2020, line: 102, baseType: !783, size: 32, offset: 96)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2019, file: !2020, line: 105, baseType: !278, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2019, file: !2020, line: 107, baseType: !257, size: 16, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2019, file: !2020, line: 109, baseType: !774, size: 128, offset: 192)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2019, file: !2020, line: 110, baseType: !2029, size: 64, offset: 320)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2020, line: 73, size: 448, elements: !2031)
!2031 = !{!2032, !2035, !2036, !2041, !2046}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2030, file: !2020, line: 74, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2020, line: 74, flags: DIFlagFwdDecl)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2030, file: !2020, line: 75, baseType: !2018, size: 64, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, scope: !2030, file: !2020, line: 83, baseType: !2037, size: 128, offset: 128)
!2037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2030, file: !2020, line: 83, size: 128, elements: !2038)
!2038 = !{!2039, !2040}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2037, file: !2020, line: 84, baseType: !152, size: 128)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2037, file: !2020, line: 85, baseType: !971, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, scope: !2030, file: !2020, line: 87, baseType: !2042, size: 128, offset: 256)
!2042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2030, file: !2020, line: 87, size: 128, elements: !2043)
!2043 = !{!2044, !2045}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2042, file: !2020, line: 88, baseType: !674, size: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2042, file: !2020, line: 89, baseType: !408, size: 128, align: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2030, file: !2020, line: 92, baseType: !7, size: 32, offset: 384)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2019, file: !2020, line: 111, baseType: !670, size: 64, offset: 384)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2019, file: !2020, line: 113, baseType: !2049, size: 256, offset: 448)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2050, line: 102, size: 256, elements: !2051)
!2050 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2051 = !{!2052, !2053, !2054}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2049, file: !2050, line: 103, baseType: !807, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2049, file: !2050, line: 104, baseType: !152, size: 128, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2049, file: !2050, line: 105, baseType: !2055, size: 64, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2050, line: 21, baseType: !2056)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{null, !2059}
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1251, file: !1252, line: 1061, baseType: !2061, size: 64, offset: 10944)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1252, line: 43, flags: DIFlagFwdDecl)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1251, file: !1252, line: 1064, baseType: !174, size: 64, offset: 11008)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1251, file: !1252, line: 1065, baseType: !2065, size: 64, offset: 11072)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1856, line: 14, baseType: !2067)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1856, line: 12, size: 384, elements: !2068)
!2068 = !{!2069}
!2069 = !DIDerivedType(tag: DW_TAG_member, scope: !2067, file: !1856, line: 13, baseType: !2070, size: 384)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2067, file: !1856, line: 13, size: 384, elements: !2071)
!2071 = !{!2072, !2073, !2074, !2075}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2070, file: !1856, line: 13, baseType: !132, size: 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2070, file: !1856, line: 13, baseType: !132, size: 32, offset: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2070, file: !1856, line: 13, baseType: !132, size: 32, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2070, file: !1856, line: 13, baseType: !2076, size: 256, offset: 128)
!2076 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2077, line: 32, size: 256, elements: !2078)
!2077 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2078 = !{!2079, !2084, !2097, !2103, !2112, !2132, !2137}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2076, file: !2077, line: 37, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2076, file: !2077, line: 34, size: 64, elements: !2081)
!2081 = !{!2082, !2083}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2080, file: !2077, line: 35, baseType: !1493, size: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2080, file: !2077, line: 36, baseType: !476, size: 32, offset: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2076, file: !2077, line: 45, baseType: !2085, size: 192)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2076, file: !2077, line: 40, size: 192, elements: !2086)
!2086 = !{!2087, !2089, !2090, !2096}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2085, file: !2077, line: 41, baseType: !2088, size: 32)
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !352, line: 95, baseType: !132)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2085, file: !2077, line: 42, baseType: !132, size: 32, offset: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2085, file: !2077, line: 43, baseType: !2091, size: 64, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2077, line: 11, baseType: !2092)
!2092 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2077, line: 8, size: 64, elements: !2093)
!2093 = !{!2094, !2095}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2092, file: !2077, line: 9, baseType: !132, size: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2092, file: !2077, line: 10, baseType: !123, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2085, file: !2077, line: 44, baseType: !132, size: 32, offset: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2076, file: !2077, line: 52, baseType: !2098, size: 128)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2076, file: !2077, line: 48, size: 128, elements: !2099)
!2099 = !{!2100, !2101, !2102}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2098, file: !2077, line: 49, baseType: !1493, size: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2098, file: !2077, line: 50, baseType: !476, size: 32, offset: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2098, file: !2077, line: 51, baseType: !2091, size: 64, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2076, file: !2077, line: 61, baseType: !2104, size: 256)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2076, file: !2077, line: 55, size: 256, elements: !2105)
!2105 = !{!2106, !2107, !2108, !2109, !2111}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2104, file: !2077, line: 56, baseType: !1493, size: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2104, file: !2077, line: 57, baseType: !476, size: 32, offset: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2104, file: !2077, line: 58, baseType: !132, size: 32, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2104, file: !2077, line: 59, baseType: !2110, size: 64, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !352, line: 94, baseType: !353)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2104, file: !2077, line: 60, baseType: !2110, size: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2076, file: !2077, line: 95, baseType: !2113, size: 256)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2076, file: !2077, line: 64, size: 256, elements: !2114)
!2114 = !{!2115, !2116}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2113, file: !2077, line: 65, baseType: !123, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, scope: !2113, file: !2077, line: 77, baseType: !2117, size: 192, offset: 64)
!2117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2113, file: !2077, line: 77, size: 192, elements: !2118)
!2118 = !{!2119, !2120, !2127}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2117, file: !2077, line: 82, baseType: !1239, size: 16)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2117, file: !2077, line: 88, baseType: !2121, size: 192)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2117, file: !2077, line: 84, size: 192, elements: !2122)
!2122 = !{!2123, !2125, !2126}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2121, file: !2077, line: 85, baseType: !2124, size: 64)
!2124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !1364)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2121, file: !2077, line: 86, baseType: !123, size: 64, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2121, file: !2077, line: 87, baseType: !123, size: 64, offset: 128)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2117, file: !2077, line: 93, baseType: !2128, size: 96)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2117, file: !2077, line: 90, size: 96, elements: !2129)
!2129 = !{!2130, !2131}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2128, file: !2077, line: 91, baseType: !2124, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2128, file: !2077, line: 92, baseType: !130, size: 32, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2076, file: !2077, line: 101, baseType: !2133, size: 128)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2076, file: !2077, line: 98, size: 128, elements: !2134)
!2134 = !{!2135, !2136}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2133, file: !2077, line: 99, baseType: !354, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2133, file: !2077, line: 100, baseType: !132, size: 32, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2076, file: !2077, line: 108, baseType: !2138, size: 128)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2076, file: !2077, line: 104, size: 128, elements: !2139)
!2139 = !{!2140, !2141, !2142}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2138, file: !2077, line: 105, baseType: !123, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2138, file: !2077, line: 106, baseType: !132, size: 32, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2138, file: !2077, line: 107, baseType: !7, size: 32, offset: 96)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1251, file: !1252, line: 1067, baseType: !1928, offset: 11136)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1251, file: !1252, line: 1099, baseType: !2145, size: 64, offset: 11136)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1252, line: 56, flags: DIFlagFwdDecl)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1251, file: !1252, line: 1103, baseType: !152, size: 128, offset: 11200)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1251, file: !1252, line: 1104, baseType: !2149, size: 64, offset: 11328)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1252, line: 46, flags: DIFlagFwdDecl)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1251, file: !1252, line: 1105, baseType: !1207, size: 192, offset: 11392)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1251, file: !1252, line: 1106, baseType: !7, size: 32, offset: 11584)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1251, file: !1252, line: 1109, baseType: !2154, size: 128, offset: 11648)
!2154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2155, size: 128, elements: !1639)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1252, line: 51, flags: DIFlagFwdDecl)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1251, file: !1252, line: 1110, baseType: !1207, size: 192, offset: 11776)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1251, file: !1252, line: 1111, baseType: !152, size: 128, offset: 11968)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1251, file: !1252, line: 1173, baseType: !2160, size: 64, offset: 12096)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2162, line: 62, size: 256, align: 256, elements: !2163)
!2162 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2163 = !{!2164, !2165, !2166, !2171}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2161, file: !2162, line: 75, baseType: !130, size: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2161, file: !2162, line: 90, baseType: !130, size: 32, offset: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2161, file: !2162, line: 124, baseType: !2167, size: 64, offset: 64)
!2167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2161, file: !2162, line: 109, size: 64, elements: !2168)
!2168 = !{!2169, !2170}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2167, file: !2162, line: 110, baseType: !203, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2167, file: !2162, line: 112, baseType: !203, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2161, file: !2162, line: 144, baseType: !130, size: 32, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1251, file: !1252, line: 1174, baseType: !128, size: 32, offset: 12160)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1251, file: !1252, line: 1179, baseType: !174, size: 64, offset: 12224)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1251, file: !1252, line: 1182, baseType: !2175, size: 128, offset: 12288)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1187, line: 76, size: 128, elements: !2176)
!2176 = !{!2177, !2182, !2183}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2175, file: !1187, line: 85, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2179, line: 7, size: 64, elements: !2180)
!2179 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2180 = !{!2181}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2178, file: !2179, line: 12, baseType: !1401, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2175, file: !1187, line: 88, baseType: !525, size: 8, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2175, file: !1187, line: 95, baseType: !525, size: 8, offset: 72)
!2184 = !DIDerivedType(tag: DW_TAG_member, scope: !1251, file: !1252, line: 1184, baseType: !2185, size: 128, offset: 12416)
!2185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1251, file: !1252, line: 1184, size: 128, elements: !2186)
!2186 = !{!2187, !2188}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2185, file: !1252, line: 1185, baseType: !1264, size: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2185, file: !1252, line: 1186, baseType: !408, size: 128, align: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1251, file: !1252, line: 1190, baseType: !2190, size: 64, offset: 12544)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1252, line: 53, flags: DIFlagFwdDecl)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1251, file: !1252, line: 1192, baseType: !2193, size: 128, offset: 12608)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1187, line: 64, size: 128, elements: !2194)
!2194 = !{!2195, !2196, !2197}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2193, file: !1187, line: 65, baseType: !756, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2193, file: !1187, line: 67, baseType: !130, size: 32, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2193, file: !1187, line: 68, baseType: !130, size: 32, offset: 96)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1251, file: !1252, line: 1206, baseType: !132, size: 32, offset: 12736)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1251, file: !1252, line: 1207, baseType: !132, size: 32, offset: 12768)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1251, file: !1252, line: 1209, baseType: !174, size: 64, offset: 12800)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1251, file: !1252, line: 1219, baseType: !202, size: 64, offset: 12864)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1251, file: !1252, line: 1220, baseType: !202, size: 64, offset: 12928)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1251, file: !1252, line: 1317, baseType: !132, size: 32, offset: 12992)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1251, file: !1252, line: 1319, baseType: !1250, size: 64, offset: 13056)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1251, file: !1252, line: 1322, baseType: !2206, size: 64, offset: 13120)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2208, line: 56, size: 512, elements: !2209)
!2208 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2209 = !{!2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2207, file: !2208, line: 57, baseType: !2206, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2207, file: !2208, line: 58, baseType: !123, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2207, file: !2208, line: 59, baseType: !174, size: 64, offset: 128)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2207, file: !2208, line: 60, baseType: !174, size: 64, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2207, file: !2208, line: 61, baseType: !856, size: 64, offset: 256)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2207, file: !2208, line: 62, baseType: !7, size: 32, offset: 320)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2207, file: !2208, line: 63, baseType: !201, size: 64, offset: 384)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2207, file: !2208, line: 64, baseType: !2218, size: 64, offset: 448)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1251, file: !1252, line: 1326, baseType: !1264, size: 32, offset: 13184)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1251, file: !1252, line: 1342, baseType: !123, size: 64, offset: 13248)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1251, file: !1252, line: 1343, baseType: !203, size: 64, offset: 13312)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1251, file: !1252, line: 1344, baseType: !202, size: 64, offset: 13376)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1251, file: !1252, line: 1345, baseType: !203, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1251, file: !1252, line: 1346, baseType: !203, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1251, file: !1252, line: 1347, baseType: !203, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1251, file: !1252, line: 1348, baseType: !408, size: 128, align: 64, offset: 13504)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1251, file: !1252, line: 1358, baseType: !2229, size: 34816, offset: 13824)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2230, line: 485, size: 34816, elements: !2231)
!2230 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2231 = !{!2232, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2261, !2262, !2263, !2264, !2265, !2266, !2269, !2270, !2271}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2229, file: !2230, line: 487, baseType: !2233, size: 192)
!2233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2234, size: 192, elements: !320)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2235, line: 16, size: 64, elements: !2236)
!2235 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2236 = !{!2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2234, file: !2235, line: 17, baseType: !895, size: 16)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2234, file: !2235, line: 18, baseType: !895, size: 16, offset: 16)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2234, file: !2235, line: 19, baseType: !895, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2234, file: !2235, line: 19, baseType: !895, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2234, file: !2235, line: 19, baseType: !895, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2234, file: !2235, line: 19, baseType: !895, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2234, file: !2235, line: 19, baseType: !895, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2234, file: !2235, line: 20, baseType: !895, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2234, file: !2235, line: 20, baseType: !895, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2234, file: !2235, line: 20, baseType: !895, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2234, file: !2235, line: 20, baseType: !895, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2234, file: !2235, line: 20, baseType: !895, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2234, file: !2235, line: 20, baseType: !895, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2229, file: !2230, line: 491, baseType: !174, size: 64, offset: 192)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2229, file: !2230, line: 495, baseType: !257, size: 16, offset: 256)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2229, file: !2230, line: 496, baseType: !257, size: 16, offset: 272)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2229, file: !2230, line: 497, baseType: !257, size: 16, offset: 288)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2229, file: !2230, line: 498, baseType: !257, size: 16, offset: 304)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2229, file: !2230, line: 502, baseType: !174, size: 64, offset: 320)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2229, file: !2230, line: 503, baseType: !174, size: 64, offset: 384)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2229, file: !2230, line: 514, baseType: !2258, size: 256, offset: 448)
!2258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2259, size: 256, elements: !212)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2230, line: 483, flags: DIFlagFwdDecl)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2229, file: !2230, line: 516, baseType: !174, size: 64, offset: 704)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2229, file: !2230, line: 518, baseType: !174, size: 64, offset: 768)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2229, file: !2230, line: 520, baseType: !174, size: 64, offset: 832)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2229, file: !2230, line: 521, baseType: !174, size: 64, offset: 896)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2229, file: !2230, line: 522, baseType: !174, size: 64, offset: 960)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2229, file: !2230, line: 528, baseType: !2267, size: 64, offset: 1024)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2230, line: 10, flags: DIFlagFwdDecl)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2229, file: !2230, line: 535, baseType: !174, size: 64, offset: 1088)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2229, file: !2230, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2229, file: !2230, line: 540, baseType: !2272, size: 33280, offset: 1536)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2273, line: 317, size: 33280, elements: !2274)
!2273 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2274 = !{!2275, !2276, !2277}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2272, file: !2273, line: 330, baseType: !7, size: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2272, file: !2273, line: 337, baseType: !174, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2272, file: !2273, line: 348, baseType: !2278, size: 32768, offset: 512)
!2278 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2273, line: 304, size: 32768, elements: !2279)
!2279 = !{!2280, !2295, !2334, !2384, !2397}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2278, file: !2273, line: 305, baseType: !2281, size: 896)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2273, line: 12, size: 896, elements: !2282)
!2282 = !{!2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2294}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2281, file: !2273, line: 13, baseType: !128, size: 32)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2281, file: !2273, line: 14, baseType: !128, size: 32, offset: 32)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2281, file: !2273, line: 15, baseType: !128, size: 32, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2281, file: !2273, line: 16, baseType: !128, size: 32, offset: 96)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2281, file: !2273, line: 17, baseType: !128, size: 32, offset: 128)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2281, file: !2273, line: 18, baseType: !128, size: 32, offset: 160)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2281, file: !2273, line: 19, baseType: !128, size: 32, offset: 192)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2281, file: !2273, line: 22, baseType: !2291, size: 640, offset: 224)
!2291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 640, elements: !2292)
!2292 = !{!2293}
!2293 = !DISubrange(count: 20)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2281, file: !2273, line: 25, baseType: !128, size: 32, offset: 864)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2278, file: !2273, line: 306, baseType: !2296, size: 4096, align: 128)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2273, line: 34, size: 4096, align: 128, elements: !2297)
!2297 = !{!2298, !2299, !2300, !2301, !2302, !2317, !2318, !2319, !2323, !2325, !2329}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2296, file: !2273, line: 35, baseType: !895, size: 16)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2296, file: !2273, line: 36, baseType: !895, size: 16, offset: 16)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2296, file: !2273, line: 37, baseType: !895, size: 16, offset: 32)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2296, file: !2273, line: 38, baseType: !895, size: 16, offset: 48)
!2302 = !DIDerivedType(tag: DW_TAG_member, scope: !2296, file: !2273, line: 39, baseType: !2303, size: 128, offset: 64)
!2303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2296, file: !2273, line: 39, size: 128, elements: !2304)
!2304 = !{!2305, !2310}
!2305 = !DIDerivedType(tag: DW_TAG_member, scope: !2303, file: !2273, line: 40, baseType: !2306, size: 128)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2303, file: !2273, line: 40, size: 128, elements: !2307)
!2307 = !{!2308, !2309}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2306, file: !2273, line: 41, baseType: !202, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2306, file: !2273, line: 42, baseType: !202, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, scope: !2303, file: !2273, line: 44, baseType: !2311, size: 128)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2303, file: !2273, line: 44, size: 128, elements: !2312)
!2312 = !{!2313, !2314, !2315, !2316}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2311, file: !2273, line: 45, baseType: !128, size: 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2311, file: !2273, line: 46, baseType: !128, size: 32, offset: 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2311, file: !2273, line: 47, baseType: !128, size: 32, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2311, file: !2273, line: 48, baseType: !128, size: 32, offset: 96)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2296, file: !2273, line: 51, baseType: !128, size: 32, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2296, file: !2273, line: 52, baseType: !128, size: 32, offset: 224)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2296, file: !2273, line: 55, baseType: !2320, size: 1024, offset: 256)
!2320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 1024, elements: !2321)
!2321 = !{!2322}
!2322 = !DISubrange(count: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2296, file: !2273, line: 58, baseType: !2324, size: 2048, offset: 1280)
!2324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 2048, elements: !324)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2296, file: !2273, line: 60, baseType: !2326, size: 384, offset: 3328)
!2326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 384, elements: !2327)
!2327 = !{!2328}
!2328 = !DISubrange(count: 12)
!2329 = !DIDerivedType(tag: DW_TAG_member, scope: !2296, file: !2273, line: 62, baseType: !2330, size: 384, offset: 3712)
!2330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2296, file: !2273, line: 62, size: 384, elements: !2331)
!2331 = !{!2332, !2333}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2330, file: !2273, line: 63, baseType: !2326, size: 384)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2330, file: !2273, line: 64, baseType: !2326, size: 384)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2278, file: !2273, line: 307, baseType: !2335, size: 1088)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2273, line: 79, size: 1088, elements: !2336)
!2336 = !{!2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2383}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2335, file: !2273, line: 80, baseType: !128, size: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2335, file: !2273, line: 81, baseType: !128, size: 32, offset: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2335, file: !2273, line: 82, baseType: !128, size: 32, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2335, file: !2273, line: 83, baseType: !128, size: 32, offset: 96)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2335, file: !2273, line: 84, baseType: !128, size: 32, offset: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2335, file: !2273, line: 85, baseType: !128, size: 32, offset: 160)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2335, file: !2273, line: 86, baseType: !128, size: 32, offset: 192)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2335, file: !2273, line: 88, baseType: !2291, size: 640, offset: 224)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2335, file: !2273, line: 89, baseType: !1386, size: 8, offset: 864)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2335, file: !2273, line: 90, baseType: !1386, size: 8, offset: 872)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2335, file: !2273, line: 91, baseType: !1386, size: 8, offset: 880)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2335, file: !2273, line: 92, baseType: !1386, size: 8, offset: 888)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2335, file: !2273, line: 93, baseType: !1386, size: 8, offset: 896)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2335, file: !2273, line: 94, baseType: !1386, size: 8, offset: 904)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2335, file: !2273, line: 95, baseType: !2352, size: 64, offset: 960)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2354, line: 11, size: 128, elements: !2355)
!2354 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2355 = !{!2356, !2357}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2353, file: !2354, line: 12, baseType: !354, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2353, file: !2354, line: 13, baseType: !2358, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2360, line: 56, size: 1344, elements: !2361)
!2360 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2361 = !{!2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2359, file: !2360, line: 61, baseType: !174, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2359, file: !2360, line: 62, baseType: !174, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2359, file: !2360, line: 63, baseType: !174, size: 64, offset: 128)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2359, file: !2360, line: 64, baseType: !174, size: 64, offset: 192)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2359, file: !2360, line: 65, baseType: !174, size: 64, offset: 256)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2359, file: !2360, line: 66, baseType: !174, size: 64, offset: 320)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2359, file: !2360, line: 68, baseType: !174, size: 64, offset: 384)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2359, file: !2360, line: 69, baseType: !174, size: 64, offset: 448)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2359, file: !2360, line: 70, baseType: !174, size: 64, offset: 512)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2359, file: !2360, line: 71, baseType: !174, size: 64, offset: 576)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2359, file: !2360, line: 72, baseType: !174, size: 64, offset: 640)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2359, file: !2360, line: 73, baseType: !174, size: 64, offset: 704)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2359, file: !2360, line: 74, baseType: !174, size: 64, offset: 768)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2359, file: !2360, line: 75, baseType: !174, size: 64, offset: 832)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2359, file: !2360, line: 76, baseType: !174, size: 64, offset: 896)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2359, file: !2360, line: 81, baseType: !174, size: 64, offset: 960)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2359, file: !2360, line: 83, baseType: !174, size: 64, offset: 1024)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2359, file: !2360, line: 84, baseType: !174, size: 64, offset: 1088)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2359, file: !2360, line: 85, baseType: !174, size: 64, offset: 1152)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2359, file: !2360, line: 86, baseType: !174, size: 64, offset: 1216)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2359, file: !2360, line: 87, baseType: !174, size: 64, offset: 1280)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2335, file: !2273, line: 96, baseType: !128, size: 32, offset: 1024)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2278, file: !2273, line: 308, baseType: !2385, size: 4608, align: 512)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2273, line: 289, size: 4608, align: 512, elements: !2386)
!2386 = !{!2387, !2388, !2395}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2385, file: !2273, line: 290, baseType: !2296, size: 4096, align: 128)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2385, file: !2273, line: 291, baseType: !2389, size: 512, offset: 4096)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2273, line: 268, size: 512, elements: !2390)
!2390 = !{!2391, !2392, !2393}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2389, file: !2273, line: 269, baseType: !202, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2389, file: !2273, line: 270, baseType: !202, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2389, file: !2273, line: 271, baseType: !2394, size: 384, offset: 128)
!2394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 384, elements: !1695)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2385, file: !2273, line: 292, baseType: !2396, offset: 4608)
!2396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1386, elements: !1791)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2278, file: !2273, line: 309, baseType: !2398, size: 32768)
!2398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1386, size: 32768, elements: !2399)
!2399 = !{!2400}
!2400 = !DISubrange(count: 4096)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1247, file: !758, line: 378, baseType: !2402, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1243, file: !758, line: 384, baseType: !1572, size: 192, offset: 192)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1014, file: !758, line: 500, baseType: !278, offset: 6656)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1014, file: !758, line: 501, baseType: !2406, size: 64, offset: 6656)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !758, line: 387, flags: DIFlagFwdDecl)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1014, file: !758, line: 516, baseType: !1550, size: 64, offset: 6720)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1014, file: !758, line: 519, baseType: !395, size: 64, offset: 6784)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1014, file: !758, line: 521, baseType: !2411, size: 64, offset: 6848)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !758, line: 521, flags: DIFlagFwdDecl)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1014, file: !758, line: 545, baseType: !783, size: 32, offset: 6912)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1014, file: !758, line: 548, baseType: !525, size: 8, offset: 6944)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1014, file: !758, line: 550, baseType: !2416, offset: 6952)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2417, line: 142, elements: !292)
!2417 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1014, file: !758, line: 554, baseType: !2049, size: 256, offset: 6976)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1014, file: !758, line: 557, baseType: !128, size: 32, offset: 7232)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1011, file: !758, line: 565, baseType: !2421, offset: 7296)
!2421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, elements: !2422)
!2422 = !{!2423}
!2423 = !DISubrange(count: -1)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1007, file: !758, line: 151, baseType: !783, size: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1000, file: !758, line: 156, baseType: !278, offset: 256)
!2426 = !DIDerivedType(tag: DW_TAG_member, scope: !762, file: !758, line: 159, baseType: !2427, size: 128)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !762, file: !758, line: 159, size: 128, elements: !2428)
!2428 = !{!2429, !2493}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2427, file: !758, line: 161, baseType: !2430, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2432)
!2432 = !{!2433, !2443, !2464, !2465, !2466, !2467, !2468, !2480, !2481, !2482}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2431, file: !31, line: 111, baseType: !2434, size: 384)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2435)
!2435 = !{!2436, !2438, !2439, !2440, !2441, !2442}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2434, file: !31, line: 20, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2434, file: !31, line: 21, baseType: !2437, size: 64, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2434, file: !31, line: 22, baseType: !2437, size: 64, offset: 128)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2434, file: !31, line: 23, baseType: !174, size: 64, offset: 192)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2434, file: !31, line: 24, baseType: !174, size: 64, offset: 256)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2434, file: !31, line: 25, baseType: !174, size: 64, offset: 320)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2431, file: !31, line: 112, baseType: !2444, size: 64, offset: 384)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2446, line: 105, size: 128, elements: !2447)
!2446 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2447 = !{!2448, !2449}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2445, file: !2446, line: 110, baseType: !174, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2445, file: !2446, line: 118, baseType: !2450, size: 64, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2446, line: 95, size: 448, elements: !2452)
!2452 = !{!2453, !2454, !2459, !2460, !2461, !2462, !2463}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2451, file: !2446, line: 96, baseType: !807, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2451, file: !2446, line: 97, baseType: !2455, size: 64, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2446, line: 60, baseType: !2457)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{null, !2444}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2451, file: !2446, line: 98, baseType: !2455, size: 64, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2451, file: !2446, line: 99, baseType: !525, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2451, file: !2446, line: 100, baseType: !525, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2451, file: !2446, line: 101, baseType: !408, size: 128, align: 64, offset: 256)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2451, file: !2446, line: 102, baseType: !2444, size: 64, offset: 384)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2431, file: !31, line: 113, baseType: !2445, size: 128, offset: 448)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2431, file: !31, line: 114, baseType: !1572, size: 192, offset: 576)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2431, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2431, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2431, file: !31, line: 117, baseType: !2469, size: 64, offset: 832)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2471)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2472)
!2472 = !{!2473, !2474, !2478, !2479}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2471, file: !31, line: 73, baseType: !876, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2471, file: !31, line: 78, baseType: !2475, size: 64, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{null, !2430}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2471, file: !31, line: 83, baseType: !2475, size: 64, offset: 128)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2471, file: !31, line: 89, baseType: !1063, size: 64, offset: 192)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2431, file: !31, line: 118, baseType: !123, size: 64, offset: 896)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2431, file: !31, line: 119, baseType: !132, size: 32, offset: 960)
!2482 = !DIDerivedType(tag: DW_TAG_member, scope: !2431, file: !31, line: 120, baseType: !2483, size: 128, offset: 1024)
!2483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2431, file: !31, line: 120, size: 128, elements: !2484)
!2484 = !{!2485, !2491}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2483, file: !31, line: 121, baseType: !2486, size: 128)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2487, line: 6, size: 128, elements: !2488)
!2487 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2488 = !{!2489, !2490}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2486, file: !2487, line: 7, baseType: !202, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2486, file: !2487, line: 8, baseType: !202, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2483, file: !31, line: 122, baseType: !2492)
!2492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2486, elements: !1791)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2427, file: !758, line: 162, baseType: !123, size: 64, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !762, file: !758, line: 176, baseType: !408, size: 128, align: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, scope: !757, file: !758, line: 179, baseType: !2496, size: 32, offset: 384)
!2496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !757, file: !758, line: 179, size: 32, elements: !2497)
!2497 = !{!2498, !2499, !2500, !2501}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2496, file: !758, line: 184, baseType: !783, size: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2496, file: !758, line: 192, baseType: !7, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2496, file: !758, line: 194, baseType: !7, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2496, file: !758, line: 195, baseType: !132, size: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !757, file: !758, line: 199, baseType: !783, size: 32, offset: 416)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !692, file: !44, line: 1964, baseType: !2504, size: 64, offset: 1344)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!354, !634, !2507}
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2509, line: 12, size: 256, elements: !2510)
!2509 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2510 = !{!2511, !2512, !2513, !2514, !2515}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2508, file: !2509, line: 13, baseType: !779, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2508, file: !2509, line: 16, baseType: !132, size: 32, offset: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2508, file: !2509, line: 23, baseType: !174, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2508, file: !2509, line: 30, baseType: !174, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2508, file: !2509, line: 33, baseType: !2516, size: 64, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !758, line: 27, flags: DIFlagFwdDecl)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !692, file: !44, line: 1966, baseType: !2504, size: 64, offset: 1408)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !635, file: !44, line: 1424, baseType: !2520, size: 64, offset: 448)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2522)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2523)
!2523 = !{!2524, !2570, !2574, !2578, !2579, !2580, !2581, !2582, !2587, !2592, !2596}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2522, file: !38, line: 323, baseType: !2525, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!132, !2528}
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2530)
!2530 = !{!2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2555, !2556, !2557}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2529, file: !38, line: 295, baseType: !674, size: 128)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2529, file: !38, line: 296, baseType: !152, size: 128, offset: 128)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2529, file: !38, line: 297, baseType: !152, size: 128, offset: 256)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2529, file: !38, line: 298, baseType: !152, size: 128, offset: 384)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2529, file: !38, line: 299, baseType: !1207, size: 192, offset: 512)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2529, file: !38, line: 300, baseType: !278, offset: 704)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2529, file: !38, line: 301, baseType: !783, size: 32, offset: 704)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2529, file: !38, line: 302, baseType: !634, size: 64, offset: 768)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2529, file: !38, line: 303, baseType: !2540, size: 64, offset: 832)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2541)
!2541 = !{!2542, !2554}
!2542 = !DIDerivedType(tag: DW_TAG_member, scope: !2540, file: !38, line: 69, baseType: !2543, size: 32)
!2543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2540, file: !38, line: 69, size: 32, elements: !2544)
!2544 = !{!2545, !2546, !2547}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2543, file: !38, line: 70, baseType: !470, size: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2543, file: !38, line: 71, baseType: !478, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2543, file: !38, line: 72, baseType: !2548, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2549, line: 24, baseType: !2550)
!2549 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2549, line: 22, size: 32, elements: !2551)
!2551 = !{!2552}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2550, file: !2549, line: 23, baseType: !2553, size: 32)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2549, line: 20, baseType: !476)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2540, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2529, file: !38, line: 304, baseType: !566, size: 64, offset: 896)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2529, file: !38, line: 305, baseType: !174, size: 64, offset: 960)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2529, file: !38, line: 306, baseType: !2558, size: 576, offset: 1024)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2559)
!2559 = !{!2560, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2558, file: !38, line: 206, baseType: !2561, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !568)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2558, file: !38, line: 207, baseType: !2561, size: 64, offset: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2558, file: !38, line: 208, baseType: !2561, size: 64, offset: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2558, file: !38, line: 209, baseType: !2561, size: 64, offset: 192)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2558, file: !38, line: 210, baseType: !2561, size: 64, offset: 256)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2558, file: !38, line: 211, baseType: !2561, size: 64, offset: 320)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2558, file: !38, line: 212, baseType: !2561, size: 64, offset: 384)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2558, file: !38, line: 213, baseType: !574, size: 64, offset: 448)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2558, file: !38, line: 214, baseType: !574, size: 64, offset: 512)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2522, file: !38, line: 324, baseType: !2571, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!2528, !634, !132}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2522, file: !38, line: 325, baseType: !2575, size: 64, offset: 128)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{null, !2528}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2522, file: !38, line: 326, baseType: !2525, size: 64, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2522, file: !38, line: 327, baseType: !2525, size: 64, offset: 256)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2522, file: !38, line: 328, baseType: !2525, size: 64, offset: 320)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2522, file: !38, line: 329, baseType: !720, size: 64, offset: 384)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2522, file: !38, line: 332, baseType: !2583, size: 64, offset: 448)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!2586, !464}
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2522, file: !38, line: 333, baseType: !2588, size: 64, offset: 512)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!132, !464, !2591}
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2522, file: !38, line: 335, baseType: !2593, size: 64, offset: 576)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!132, !464, !2586}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2522, file: !38, line: 337, baseType: !2597, size: 64, offset: 640)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!132, !634, !2600}
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !635, file: !44, line: 1425, baseType: !2602, size: 64, offset: 512)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2604)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2605)
!2605 = !{!2606, !2610, !2611, !2615, !2616, !2617, !2632, !2655, !2659, !2660, !2683}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2604, file: !38, line: 429, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!132, !634, !132, !132, !584}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2604, file: !38, line: 430, baseType: !720, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2604, file: !38, line: 431, baseType: !2612, size: 64, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!132, !634, !7}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2604, file: !38, line: 432, baseType: !2612, size: 64, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2604, file: !38, line: 433, baseType: !720, size: 64, offset: 256)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2604, file: !38, line: 434, baseType: !2618, size: 64, offset: 320)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!132, !634, !132, !2621}
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2623)
!2623 = !{!2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2622, file: !38, line: 416, baseType: !132, size: 32)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2622, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2622, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2622, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2622, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2622, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2622, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2622, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2604, file: !38, line: 435, baseType: !2633, size: 64, offset: 384)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!132, !634, !2540, !2636}
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2638)
!2638 = !{!2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2637, file: !38, line: 344, baseType: !132, size: 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2637, file: !38, line: 345, baseType: !202, size: 64, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2637, file: !38, line: 346, baseType: !202, size: 64, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2637, file: !38, line: 347, baseType: !202, size: 64, offset: 192)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2637, file: !38, line: 348, baseType: !202, size: 64, offset: 256)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2637, file: !38, line: 349, baseType: !202, size: 64, offset: 320)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2637, file: !38, line: 350, baseType: !202, size: 64, offset: 384)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2637, file: !38, line: 351, baseType: !813, size: 64, offset: 448)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2637, file: !38, line: 353, baseType: !813, size: 64, offset: 512)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2637, file: !38, line: 354, baseType: !132, size: 32, offset: 576)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2637, file: !38, line: 355, baseType: !132, size: 32, offset: 608)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2637, file: !38, line: 356, baseType: !202, size: 64, offset: 640)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2637, file: !38, line: 357, baseType: !202, size: 64, offset: 704)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2637, file: !38, line: 358, baseType: !202, size: 64, offset: 768)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2637, file: !38, line: 359, baseType: !813, size: 64, offset: 832)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2637, file: !38, line: 360, baseType: !132, size: 32, offset: 896)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2604, file: !38, line: 436, baseType: !2656, size: 64, offset: 448)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!132, !634, !2600, !2636}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2604, file: !38, line: 438, baseType: !2633, size: 64, offset: 512)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2604, file: !38, line: 439, baseType: !2661, size: 64, offset: 576)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!132, !634, !2664}
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2666)
!2666 = !{!2667, !2668}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2665, file: !38, line: 410, baseType: !7, size: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2665, file: !38, line: 411, baseType: !2669, size: 1344, offset: 64)
!2669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2670, size: 1344, elements: !320)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2671)
!2671 = !{!2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2682}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2670, file: !38, line: 396, baseType: !7, size: 32)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2670, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2670, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2670, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2670, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2670, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2670, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2670, file: !38, line: 404, baseType: !204, size: 64, offset: 256)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2670, file: !38, line: 405, baseType: !2681, size: 64, offset: 320)
!2681 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !153, line: 126, baseType: !202)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2670, file: !38, line: 406, baseType: !2681, size: 64, offset: 384)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2604, file: !38, line: 440, baseType: !2612, size: 64, offset: 640)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !635, file: !44, line: 1426, baseType: !2685, size: 64, offset: 576)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2687)
!2687 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !635, file: !44, line: 1427, baseType: !174, size: 64, offset: 640)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !635, file: !44, line: 1428, baseType: !174, size: 64, offset: 704)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !635, file: !44, line: 1429, baseType: !174, size: 64, offset: 768)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !635, file: !44, line: 1430, baseType: !425, size: 64, offset: 832)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !635, file: !44, line: 1431, baseType: !803, size: 256, offset: 896)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !635, file: !44, line: 1432, baseType: !132, size: 32, offset: 1152)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !635, file: !44, line: 1433, baseType: !783, size: 32, offset: 1184)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !635, file: !44, line: 1437, baseType: !2696, size: 64, offset: 1216)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2699)
!2699 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !635, file: !44, line: 1449, baseType: !2701, size: 64, offset: 1280)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !441, line: 34, size: 64, elements: !2702)
!2702 = !{!2703}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2701, file: !441, line: 35, baseType: !444, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !635, file: !44, line: 1450, baseType: !152, size: 128, offset: 1344)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !635, file: !44, line: 1451, baseType: !2706, size: 64, offset: 1472)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !635, file: !44, line: 1452, baseType: !2015, size: 64, offset: 1536)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !635, file: !44, line: 1453, baseType: !2710, size: 64, offset: 1600)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !635, file: !44, line: 1454, baseType: !674, size: 128, offset: 1664)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !635, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !635, file: !44, line: 1456, baseType: !2715, size: 2432, offset: 1856)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2716)
!2716 = !{!2717, !2718, !2719, !2721, !2753}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2715, file: !38, line: 519, baseType: !7, size: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2715, file: !38, line: 520, baseType: !803, size: 256, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2715, file: !38, line: 521, baseType: !2720, size: 192, offset: 320)
!2720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 192, elements: !320)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2715, file: !38, line: 522, baseType: !2722, size: 1728, offset: 512)
!2722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2723, size: 1728, elements: !320)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2724)
!2724 = !{!2725, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2723, file: !38, line: 223, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2728)
!2728 = !{!2729, !2730, !2743, !2744}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2727, file: !38, line: 444, baseType: !132, size: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2727, file: !38, line: 445, baseType: !2731, size: 64, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2733)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2734)
!2734 = !{!2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2733, file: !38, line: 311, baseType: !720, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2733, file: !38, line: 312, baseType: !720, size: 64, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2733, file: !38, line: 313, baseType: !720, size: 64, offset: 128)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2733, file: !38, line: 314, baseType: !720, size: 64, offset: 192)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2733, file: !38, line: 315, baseType: !2525, size: 64, offset: 256)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2733, file: !38, line: 316, baseType: !2525, size: 64, offset: 320)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2733, file: !38, line: 317, baseType: !2525, size: 64, offset: 384)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2733, file: !38, line: 318, baseType: !2597, size: 64, offset: 448)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2727, file: !38, line: 446, baseType: !120, size: 64, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2727, file: !38, line: 447, baseType: !2726, size: 64, offset: 192)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2723, file: !38, line: 224, baseType: !132, size: 32, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2723, file: !38, line: 226, baseType: !152, size: 128, offset: 128)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2723, file: !38, line: 227, baseType: !174, size: 64, offset: 256)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2723, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2723, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2723, file: !38, line: 230, baseType: !2561, size: 64, offset: 384)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2723, file: !38, line: 231, baseType: !2561, size: 64, offset: 448)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2723, file: !38, line: 232, baseType: !123, size: 64, offset: 512)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2715, file: !38, line: 523, baseType: !2754, size: 192, offset: 2240)
!2754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2731, size: 192, elements: !320)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !635, file: !44, line: 1458, baseType: !2756, size: 2112, offset: 4288)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2757)
!2757 = !{!2758, !2759, !2760}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2756, file: !44, line: 1411, baseType: !132, size: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2756, file: !44, line: 1412, baseType: !1514, size: 128, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2756, file: !44, line: 1413, baseType: !2761, size: 1920, offset: 192)
!2761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2762, size: 1920, elements: !320)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2763, line: 12, size: 640, elements: !2764)
!2763 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2764 = !{!2765, !2773, !2775, !2780, !2781}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2762, file: !2763, line: 13, baseType: !2766, size: 320)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2767, line: 17, size: 320, elements: !2768)
!2767 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2768 = !{!2769, !2770, !2771, !2772}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2766, file: !2767, line: 18, baseType: !132, size: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2766, file: !2767, line: 19, baseType: !132, size: 32, offset: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2766, file: !2767, line: 20, baseType: !1514, size: 128, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2766, file: !2767, line: 22, baseType: !408, size: 128, align: 64, offset: 192)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2762, file: !2763, line: 14, baseType: !2774, size: 64, offset: 320)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2762, file: !2763, line: 15, baseType: !2776, size: 64, offset: 384)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2777, line: 16, size: 64, elements: !2778)
!2777 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2778 = !{!2779}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2776, file: !2777, line: 17, baseType: !1250, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2762, file: !2763, line: 16, baseType: !1514, size: 128, offset: 448)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2762, file: !2763, line: 17, baseType: !783, size: 32, offset: 576)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !635, file: !44, line: 1465, baseType: !123, size: 64, offset: 6400)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !635, file: !44, line: 1468, baseType: !128, size: 32, offset: 6464)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !635, file: !44, line: 1470, baseType: !574, size: 64, offset: 6528)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !635, file: !44, line: 1471, baseType: !574, size: 64, offset: 6592)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !635, file: !44, line: 1473, baseType: !130, size: 32, offset: 6656)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !635, file: !44, line: 1474, baseType: !2788, size: 64, offset: 6720)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !635, file: !44, line: 1477, baseType: !2791, size: 256, offset: 6784)
!2791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 256, elements: !2321)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !635, file: !44, line: 1478, baseType: !2793, size: 128, offset: 7040)
!2793 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2794, line: 18, baseType: !2795)
!2794 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2794, line: 16, size: 128, elements: !2796)
!2796 = !{!2797}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2795, file: !2794, line: 17, baseType: !2798, size: 128)
!2798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1387, size: 128, elements: !1803)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !635, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !635, file: !44, line: 1481, baseType: !2801, size: 32, offset: 7200)
!2801 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !153, line: 150, baseType: !7)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !635, file: !44, line: 1487, baseType: !1207, size: 192, offset: 7232)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !635, file: !44, line: 1493, baseType: !159, size: 64, offset: 7424)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !635, file: !44, line: 1495, baseType: !2805, size: 64, offset: 7488)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2807)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !423, line: 135, size: 1024, align: 512, elements: !2808)
!2808 = !{!2809, !2813, !2814, !2821, !2827, !2831, !2835, !2839, !2840, !2844, !2848, !2853, !2857}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2807, file: !423, line: 136, baseType: !2810, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!132, !425, !7}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2807, file: !423, line: 137, baseType: !2810, size: 64, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2807, file: !423, line: 138, baseType: !2815, size: 64, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!132, !2818, !2820}
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2807, file: !423, line: 139, baseType: !2822, size: 64, offset: 192)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!132, !2818, !7, !159, !2825}
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2807, file: !423, line: 141, baseType: !2828, size: 64, offset: 256)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!132, !2818}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2807, file: !423, line: 142, baseType: !2832, size: 64, offset: 320)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!132, !425}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2807, file: !423, line: 143, baseType: !2836, size: 64, offset: 384)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{null, !425}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2807, file: !423, line: 144, baseType: !2836, size: 64, offset: 448)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2807, file: !423, line: 145, baseType: !2841, size: 64, offset: 512)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{null, !425, !464}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2807, file: !423, line: 146, baseType: !2845, size: 64, offset: 576)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!319, !425, !319, !132}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2807, file: !423, line: 147, baseType: !2849, size: 64, offset: 640)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!421, !2852}
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2807, file: !423, line: 148, baseType: !2854, size: 64, offset: 704)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!132, !584, !525}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2807, file: !423, line: 149, baseType: !2858, size: 64, offset: 768)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!425, !425, !2861}
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !635, file: !44, line: 1500, baseType: !132, size: 32, offset: 7552)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !635, file: !44, line: 1502, baseType: !2865, size: 448, offset: 7616)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2509, line: 60, size: 448, elements: !2866)
!2866 = !{!2867, !2872, !2873, !2874, !2875, !2876, !2877}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2865, file: !2509, line: 61, baseType: !2868, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!174, !2871, !2507}
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2865, file: !2509, line: 63, baseType: !2868, size: 64, offset: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2865, file: !2509, line: 66, baseType: !354, size: 64, offset: 128)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2865, file: !2509, line: 67, baseType: !132, size: 32, offset: 192)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2865, file: !2509, line: 68, baseType: !7, size: 32, offset: 224)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2865, file: !2509, line: 71, baseType: !152, size: 128, offset: 256)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2865, file: !2509, line: 77, baseType: !2878, size: 64, offset: 384)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !635, file: !44, line: 1505, baseType: !807, size: 64, offset: 8064)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !635, file: !44, line: 1508, baseType: !807, size: 64, offset: 8128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !635, file: !44, line: 1511, baseType: !132, size: 32, offset: 8192)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !635, file: !44, line: 1514, baseType: !945, size: 32, offset: 8224)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !635, file: !44, line: 1517, baseType: !2884, size: 64, offset: 8256)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2050, line: 18, flags: DIFlagFwdDecl)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !635, file: !44, line: 1518, baseType: !670, size: 64, offset: 8320)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !635, file: !44, line: 1525, baseType: !1550, size: 64, offset: 8384)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !635, file: !44, line: 1532, baseType: !2889, size: 64, offset: 8448)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2890, line: 52, size: 64, elements: !2891)
!2890 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2891 = !{!2892}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2889, file: !2890, line: 53, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2890, line: 40, size: 256, elements: !2895)
!2895 = !{!2896, !2897, !2902}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2894, file: !2890, line: 42, baseType: !278)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2894, file: !2890, line: 44, baseType: !2898, size: 192)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2890, line: 28, size: 192, elements: !2899)
!2899 = !{!2900, !2901}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2898, file: !2890, line: 29, baseType: !152, size: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2898, file: !2890, line: 31, baseType: !354, size: 64, offset: 128)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2894, file: !2890, line: 49, baseType: !354, size: 64, offset: 192)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !635, file: !44, line: 1533, baseType: !2889, size: 64, offset: 8512)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !635, file: !44, line: 1534, baseType: !408, size: 128, align: 64, offset: 8576)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !635, file: !44, line: 1535, baseType: !2049, size: 256, offset: 8704)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !635, file: !44, line: 1537, baseType: !1207, size: 192, offset: 8960)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !635, file: !44, line: 1542, baseType: !132, size: 32, offset: 9152)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !635, file: !44, line: 1545, baseType: !278, offset: 9184)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !635, file: !44, line: 1546, baseType: !152, size: 128, offset: 9216)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !635, file: !44, line: 1548, baseType: !278, offset: 9344)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !635, file: !44, line: 1549, baseType: !152, size: 128, offset: 9344)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !465, file: !44, line: 624, baseType: !769, size: 64, offset: 256)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !465, file: !44, line: 631, baseType: !174, size: 64, offset: 320)
!2914 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !44, line: 639, baseType: !2915, size: 32, offset: 384)
!2915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !465, file: !44, line: 639, size: 32, elements: !2916)
!2916 = !{!2917, !2919}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2915, file: !44, line: 640, baseType: !2918, size: 32)
!2918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2915, file: !44, line: 641, baseType: !7, size: 32)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !465, file: !44, line: 643, baseType: !548, size: 32, offset: 416)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !465, file: !44, line: 644, baseType: !566, size: 64, offset: 448)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !465, file: !44, line: 645, baseType: !570, size: 128, offset: 512)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !465, file: !44, line: 646, baseType: !570, size: 128, offset: 640)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !465, file: !44, line: 647, baseType: !570, size: 128, offset: 768)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !465, file: !44, line: 648, baseType: !278, offset: 896)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !465, file: !44, line: 649, baseType: !257, size: 16, offset: 896)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !465, file: !44, line: 650, baseType: !1386, size: 8, offset: 912)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !465, file: !44, line: 651, baseType: !1386, size: 8, offset: 920)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !465, file: !44, line: 652, baseType: !2681, size: 64, offset: 960)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !465, file: !44, line: 659, baseType: !174, size: 64, offset: 1024)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !465, file: !44, line: 660, baseType: !803, size: 256, offset: 1088)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !465, file: !44, line: 662, baseType: !174, size: 64, offset: 1344)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !465, file: !44, line: 663, baseType: !174, size: 64, offset: 1408)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !465, file: !44, line: 665, baseType: !674, size: 128, offset: 1472)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !465, file: !44, line: 666, baseType: !152, size: 128, offset: 1600)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !465, file: !44, line: 675, baseType: !152, size: 128, offset: 1728)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !465, file: !44, line: 676, baseType: !152, size: 128, offset: 1856)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !465, file: !44, line: 677, baseType: !152, size: 128, offset: 1984)
!2939 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !44, line: 678, baseType: !2940, size: 128, offset: 2112)
!2940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !465, file: !44, line: 678, size: 128, elements: !2941)
!2941 = !{!2942, !2943}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2940, file: !44, line: 679, baseType: !670, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2940, file: !44, line: 680, baseType: !408, size: 128, align: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !465, file: !44, line: 682, baseType: !809, size: 64, offset: 2240)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !465, file: !44, line: 683, baseType: !809, size: 64, offset: 2304)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !465, file: !44, line: 684, baseType: !783, size: 32, offset: 2368)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !465, file: !44, line: 685, baseType: !783, size: 32, offset: 2400)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !465, file: !44, line: 686, baseType: !783, size: 32, offset: 2432)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !465, file: !44, line: 688, baseType: !783, size: 32, offset: 2464)
!2950 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !44, line: 690, baseType: !2951, size: 64, offset: 2496)
!2951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !465, file: !44, line: 690, size: 64, elements: !2952)
!2952 = !{!2953, !3176}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2951, file: !44, line: 691, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2956)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2957)
!2957 = !{!2958, !2959, !2963, !2968, !2972, !2973, !2974, !2978, !2991, !2992, !3000, !3004, !3005, !3009, !3010, !3014, !3019, !3020, !3024, !3028, !3136, !3140, !3141, !3145, !3146, !3150, !3154, !3159, !3163, !3167, !3171, !3175}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2956, file: !44, line: 1823, baseType: !120, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2956, file: !44, line: 1824, baseType: !2960, size: 64, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!566, !395, !566, !132}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2956, file: !44, line: 1825, baseType: !2964, size: 64, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!350, !395, !319, !365, !2967}
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2956, file: !44, line: 1826, baseType: !2969, size: 64, offset: 192)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!350, !395, !159, !365, !2967}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2956, file: !44, line: 1827, baseType: !880, size: 64, offset: 256)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2956, file: !44, line: 1828, baseType: !880, size: 64, offset: 320)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2956, file: !44, line: 1829, baseType: !2975, size: 64, offset: 384)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!132, !883, !525}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2956, file: !44, line: 1830, baseType: !2979, size: 64, offset: 448)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!132, !395, !2982}
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2984)
!2984 = !{!2985, !2990}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2983, file: !44, line: 1777, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2987)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!132, !2982, !159, !132, !566, !202, !7}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2983, file: !44, line: 1778, baseType: !566, size: 64, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2956, file: !44, line: 1831, baseType: !2979, size: 64, offset: 512)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2956, file: !44, line: 1832, baseType: !2993, size: 64, offset: 576)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!2996, !395, !2998}
!2996 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2997, line: 52, baseType: !7)
!2997 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !654, line: 27, flags: DIFlagFwdDecl)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2956, file: !44, line: 1833, baseType: !3001, size: 64, offset: 640)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!354, !395, !7, !174}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2956, file: !44, line: 1834, baseType: !3001, size: 64, offset: 704)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2956, file: !44, line: 1835, baseType: !3006, size: 64, offset: 768)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!132, !395, !1017}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2956, file: !44, line: 1836, baseType: !174, size: 64, offset: 832)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2956, file: !44, line: 1837, baseType: !3011, size: 64, offset: 896)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!132, !464, !395}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2956, file: !44, line: 1838, baseType: !3015, size: 64, offset: 960)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!132, !395, !3018}
!3018 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !123)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2956, file: !44, line: 1839, baseType: !3011, size: 64, offset: 1024)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2956, file: !44, line: 1840, baseType: !3021, size: 64, offset: 1088)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!132, !395, !566, !566, !132}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2956, file: !44, line: 1841, baseType: !3025, size: 64, offset: 1152)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!132, !132, !395, !132}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2956, file: !44, line: 1842, baseType: !3029, size: 64, offset: 1216)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!132, !395, !132, !3032}
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !3034)
!3034 = !{!3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3066, !3067, !3068, !3081, !3112}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3033, file: !44, line: 1063, baseType: !3032, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3033, file: !44, line: 1064, baseType: !152, size: 128, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3033, file: !44, line: 1065, baseType: !674, size: 128, offset: 192)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3033, file: !44, line: 1066, baseType: !152, size: 128, offset: 320)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3033, file: !44, line: 1069, baseType: !152, size: 128, offset: 448)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3033, file: !44, line: 1072, baseType: !3018, size: 64, offset: 576)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3033, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3033, file: !44, line: 1074, baseType: !126, size: 8, offset: 672)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3033, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3033, file: !44, line: 1076, baseType: !132, size: 32, offset: 736)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3033, file: !44, line: 1077, baseType: !1514, size: 128, offset: 768)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3033, file: !44, line: 1078, baseType: !395, size: 64, offset: 896)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3033, file: !44, line: 1079, baseType: !566, size: 64, offset: 960)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3033, file: !44, line: 1080, baseType: !566, size: 64, offset: 1024)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3033, file: !44, line: 1082, baseType: !3050, size: 64, offset: 1088)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !3052)
!3052 = !{!3053, !3061, !3062, !3063, !3064, !3065}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3051, file: !44, line: 1315, baseType: !3054)
!3054 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3055, line: 20, baseType: !3056)
!3055 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3055, line: 11, elements: !3057)
!3057 = !{!3058}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3056, file: !3055, line: 12, baseType: !3059)
!3059 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !290, line: 33, baseType: !3060)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !290, line: 31, elements: !292)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3051, file: !44, line: 1316, baseType: !132, size: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3051, file: !44, line: 1317, baseType: !132, size: 32, offset: 32)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3051, file: !44, line: 1318, baseType: !3050, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3051, file: !44, line: 1319, baseType: !395, size: 64, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3051, file: !44, line: 1320, baseType: !408, size: 128, align: 64, offset: 192)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3033, file: !44, line: 1084, baseType: !174, size: 64, offset: 1152)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3033, file: !44, line: 1085, baseType: !174, size: 64, offset: 1216)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3033, file: !44, line: 1087, baseType: !3069, size: 64, offset: 1280)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3071)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3072)
!3072 = !{!3073, !3077}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3071, file: !44, line: 1012, baseType: !3074, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{null, !3032, !3032}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3071, file: !44, line: 1013, baseType: !3078, size: 64, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{null, !3032}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3033, file: !44, line: 1088, baseType: !3082, size: 64, offset: 1344)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3084)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3085)
!3085 = !{!3086, !3090, !3094, !3095, !3099, !3103, !3107, !3111}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3084, file: !44, line: 1017, baseType: !3087, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!3018, !3018}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3084, file: !44, line: 1018, baseType: !3091, size: 64, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{null, !3018}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3084, file: !44, line: 1019, baseType: !3078, size: 64, offset: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3084, file: !44, line: 1020, baseType: !3096, size: 64, offset: 192)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!132, !3032, !132}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3084, file: !44, line: 1021, baseType: !3100, size: 64, offset: 256)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!525, !3032}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3084, file: !44, line: 1022, baseType: !3104, size: 64, offset: 320)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!132, !3032, !132, !156}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3084, file: !44, line: 1023, baseType: !3108, size: 64, offset: 384)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{null, !3032, !857}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3084, file: !44, line: 1024, baseType: !3100, size: 64, offset: 448)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3033, file: !44, line: 1097, baseType: !3113, size: 256, offset: 1408)
!3113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3033, file: !44, line: 1089, size: 256, elements: !3114)
!3114 = !{!3115, !3124, !3130}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3113, file: !44, line: 1090, baseType: !3116, size: 256)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3117, line: 10, size: 256, elements: !3118)
!3117 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3118 = !{!3119, !3120, !3123}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3116, file: !3117, line: 11, baseType: !128, size: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3116, file: !3117, line: 12, baseType: !3121, size: 64, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3117, line: 5, flags: DIFlagFwdDecl)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3116, file: !3117, line: 13, baseType: !152, size: 128, offset: 128)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3113, file: !44, line: 1091, baseType: !3125, size: 64)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3117, line: 17, size: 64, elements: !3126)
!3126 = !{!3127}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3125, file: !3117, line: 18, baseType: !3128, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3117, line: 16, flags: DIFlagFwdDecl)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3113, file: !44, line: 1096, baseType: !3131, size: 192)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3113, file: !44, line: 1092, size: 192, elements: !3132)
!3132 = !{!3133, !3134, !3135}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3131, file: !44, line: 1093, baseType: !152, size: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3131, file: !44, line: 1094, baseType: !132, size: 32, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3131, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2956, file: !44, line: 1843, baseType: !3137, size: 64, offset: 1280)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!350, !395, !756, !132, !365, !2967, !132}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2956, file: !44, line: 1844, baseType: !1137, size: 64, offset: 1344)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2956, file: !44, line: 1845, baseType: !3142, size: 64, offset: 1408)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!132, !132}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2956, file: !44, line: 1846, baseType: !3029, size: 64, offset: 1472)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2956, file: !44, line: 1847, baseType: !3147, size: 64, offset: 1536)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!350, !2190, !395, !2967, !365, !7}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2956, file: !44, line: 1848, baseType: !3151, size: 64, offset: 1600)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!350, !395, !2967, !2190, !365, !7}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2956, file: !44, line: 1849, baseType: !3155, size: 64, offset: 1664)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!132, !395, !354, !3158, !857}
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2956, file: !44, line: 1850, baseType: !3160, size: 64, offset: 1728)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!354, !395, !132, !566, !566}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2956, file: !44, line: 1852, baseType: !3164, size: 64, offset: 1792)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{null, !746, !395}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2956, file: !44, line: 1856, baseType: !3168, size: 64, offset: 1856)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!350, !395, !566, !395, !566, !365, !7}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2956, file: !44, line: 1858, baseType: !3172, size: 64, offset: 1920)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!566, !395, !566, !395, !566, !566, !7}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2956, file: !44, line: 1861, baseType: !3021, size: 64, offset: 1984)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2951, file: !44, line: 692, baseType: !699, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !465, file: !44, line: 694, baseType: !3178, size: 64, offset: 2560)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3180)
!3180 = !{!3181, !3182, !3183, !3184}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3179, file: !44, line: 1101, baseType: !278)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3179, file: !44, line: 1102, baseType: !152, size: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3179, file: !44, line: 1103, baseType: !152, size: 128, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3179, file: !44, line: 1104, baseType: !152, size: 128, offset: 256)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !465, file: !44, line: 695, baseType: !770, size: 1216, align: 64, offset: 2624)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !465, file: !44, line: 696, baseType: !152, size: 128, offset: 3840)
!3187 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !44, line: 697, baseType: !3188, size: 64, offset: 3968)
!3188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !465, file: !44, line: 697, size: 64, elements: !3189)
!3189 = !{!3190, !3191, !3192, !3195, !3196}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3188, file: !44, line: 698, baseType: !2190, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3188, file: !44, line: 699, baseType: !2706, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3188, file: !44, line: 700, baseType: !3193, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3188, file: !44, line: 701, baseType: !319, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3188, file: !44, line: 702, baseType: !7, size: 32)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !465, file: !44, line: 705, baseType: !130, size: 32, offset: 4032)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !465, file: !44, line: 708, baseType: !130, size: 32, offset: 4064)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !465, file: !44, line: 709, baseType: !2788, size: 64, offset: 4096)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !465, file: !44, line: 720, baseType: !123, size: 64, offset: 4160)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !426, file: !423, line: 98, baseType: !3202, size: 256, offset: 448)
!3202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 256, elements: !2321)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !426, file: !423, line: 101, baseType: !3204, size: 32, offset: 704)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3205, line: 25, size: 32, elements: !3206)
!3205 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3206 = !{!3207}
!3207 = !DIDerivedType(tag: DW_TAG_member, scope: !3204, file: !3205, line: 26, baseType: !3208, size: 32)
!3208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3204, file: !3205, line: 26, size: 32, elements: !3209)
!3209 = !{!3210}
!3210 = !DIDerivedType(tag: DW_TAG_member, scope: !3208, file: !3205, line: 30, baseType: !3211, size: 32)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3208, file: !3205, line: 30, size: 32, elements: !3212)
!3212 = !{!3213, !3214}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3211, file: !3205, line: 31, baseType: !278)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3211, file: !3205, line: 32, baseType: !132, size: 32)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !426, file: !423, line: 102, baseType: !2805, size: 64, offset: 768)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !426, file: !423, line: 103, baseType: !634, size: 64, offset: 832)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !426, file: !423, line: 104, baseType: !174, size: 64, offset: 896)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !426, file: !423, line: 105, baseType: !123, size: 64, offset: 960)
!3219 = !DIDerivedType(tag: DW_TAG_member, scope: !426, file: !423, line: 107, baseType: !3220, size: 128, offset: 1024)
!3220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !423, line: 107, size: 128, elements: !3221)
!3221 = !{!3222, !3223}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3220, file: !423, line: 108, baseType: !152, size: 128)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3220, file: !423, line: 109, baseType: !3224, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !426, file: !423, line: 111, baseType: !152, size: 128, offset: 1152)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !426, file: !423, line: 112, baseType: !152, size: 128, offset: 1280)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !426, file: !423, line: 120, baseType: !3228, size: 128, offset: 1408)
!3228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !423, line: 116, size: 128, elements: !3229)
!3229 = !{!3230, !3231, !3232}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3228, file: !423, line: 117, baseType: !674, size: 128)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3228, file: !423, line: 118, baseType: !440, size: 128)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3228, file: !423, line: 119, baseType: !408, size: 128, align: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !396, file: !44, line: 922, baseType: !464, size: 64, offset: 256)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !396, file: !44, line: 923, baseType: !2954, size: 64, offset: 320)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !396, file: !44, line: 929, baseType: !278, offset: 384)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !396, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !396, file: !44, line: 931, baseType: !807, size: 64, offset: 448)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !396, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !396, file: !44, line: 933, baseType: !2801, size: 32, offset: 544)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !396, file: !44, line: 934, baseType: !1207, size: 192, offset: 576)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !396, file: !44, line: 935, baseType: !566, size: 64, offset: 768)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !396, file: !44, line: 936, baseType: !3243, size: 192, offset: 832)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3244)
!3244 = !{!3245, !3246, !3247, !3248, !3249, !3250}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3243, file: !44, line: 886, baseType: !3054)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3243, file: !44, line: 887, baseType: !1504, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3243, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3243, file: !44, line: 889, baseType: !470, size: 32, offset: 96)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3243, file: !44, line: 889, baseType: !470, size: 32, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3243, file: !44, line: 890, baseType: !132, size: 32, offset: 160)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !396, file: !44, line: 937, baseType: !1617, size: 64, offset: 1024)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !396, file: !44, line: 938, baseType: !3253, size: 256, offset: 1088)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3254)
!3254 = !{!3255, !3256, !3257, !3258, !3259, !3260}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3253, file: !44, line: 897, baseType: !174, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3253, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3253, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3253, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3253, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3253, file: !44, line: 904, baseType: !566, size: 64, offset: 192)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !396, file: !44, line: 940, baseType: !202, size: 64, offset: 1344)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !396, file: !44, line: 945, baseType: !123, size: 64, offset: 1408)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !396, file: !44, line: 949, baseType: !152, size: 128, offset: 1472)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !396, file: !44, line: 950, baseType: !152, size: 128, offset: 1600)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !396, file: !44, line: 952, baseType: !769, size: 64, offset: 1728)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !396, file: !44, line: 953, baseType: !945, size: 32, offset: 1792)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !396, file: !44, line: 954, baseType: !945, size: 32, offset: 1824)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !386, file: !344, line: 174, baseType: !392, size: 64, offset: 320)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !386, file: !344, line: 176, baseType: !3270, size: 64, offset: 384)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!132, !395, !271, !385, !1017}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !374, file: !344, line: 90, baseType: !369, size: 64, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !374, file: !344, line: 91, baseType: !3275, size: 64, offset: 256)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !334, file: !266, line: 143, baseType: !3277, size: 64, offset: 256)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!3280, !271}
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3282)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3283)
!3283 = !{!3284, !3285, !3289, !3293, !3299, !3303}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3282, file: !61, line: 40, baseType: !60, size: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3282, file: !61, line: 41, baseType: !3286, size: 64, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!525}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3282, file: !61, line: 42, baseType: !3290, size: 64, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!123}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3282, file: !61, line: 43, baseType: !3294, size: 64, offset: 192)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!2218, !3297}
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3282, file: !61, line: 44, baseType: !3300, size: 64, offset: 256)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!2218}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3282, file: !61, line: 45, baseType: !503, size: 64, offset: 320)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !334, file: !266, line: 144, baseType: !3305, size: 64, offset: 320)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!2218, !271}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !334, file: !266, line: 145, baseType: !3309, size: 64, offset: 384)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{null, !271, !3312, !3313}
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !265, file: !266, line: 70, baseType: !3315, size: 64, offset: 384)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !654, line: 123, size: 1024, elements: !3317)
!3317 = !{!3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3440, !3441, !3442, !3443, !3444}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3316, file: !654, line: 124, baseType: !783, size: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3316, file: !654, line: 125, baseType: !783, size: 32, offset: 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3316, file: !654, line: 135, baseType: !3315, size: 64, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3316, file: !654, line: 136, baseType: !159, size: 64, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3316, file: !654, line: 138, baseType: !796, size: 192, align: 64, offset: 192)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3316, file: !654, line: 140, baseType: !2218, size: 64, offset: 384)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3316, file: !654, line: 141, baseType: !7, size: 32, offset: 448)
!3325 = !DIDerivedType(tag: DW_TAG_member, scope: !3316, file: !654, line: 142, baseType: !3326, size: 256, offset: 512)
!3326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3316, file: !654, line: 142, size: 256, elements: !3327)
!3327 = !{!3328, !3368, !3372}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3326, file: !654, line: 143, baseType: !3329, size: 192)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !654, line: 91, size: 192, elements: !3330)
!3330 = !{!3331, !3332, !3333}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3329, file: !654, line: 92, baseType: !174, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3329, file: !654, line: 94, baseType: !792, size: 64, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3329, file: !654, line: 100, baseType: !3334, size: 64, offset: 128)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !654, line: 180, size: 704, elements: !3336)
!3336 = !{!3337, !3338, !3339, !3340, !3341, !3342, !3366, !3367}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3335, file: !654, line: 182, baseType: !3315, size: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3335, file: !654, line: 183, baseType: !7, size: 32, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3335, file: !654, line: 186, baseType: !1537, size: 192, offset: 128)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3335, file: !654, line: 187, baseType: !128, size: 32, offset: 320)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3335, file: !654, line: 188, baseType: !128, size: 32, offset: 352)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3335, file: !654, line: 189, baseType: !3343, size: 64, offset: 384)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !654, line: 168, size: 320, elements: !3345)
!3345 = !{!3346, !3350, !3354, !3358, !3362}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3344, file: !654, line: 169, baseType: !3347, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!132, !746, !3334}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3344, file: !654, line: 171, baseType: !3351, size: 64, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!132, !3315, !159, !360}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3344, file: !654, line: 173, baseType: !3355, size: 64, offset: 128)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!132, !3315}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3344, file: !654, line: 174, baseType: !3359, size: 64, offset: 192)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!132, !3315, !3315, !159}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3344, file: !654, line: 176, baseType: !3363, size: 64, offset: 256)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!132, !746, !3315, !3334}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3335, file: !654, line: 192, baseType: !152, size: 128, offset: 448)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3335, file: !654, line: 194, baseType: !1514, size: 128, offset: 576)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3326, file: !654, line: 144, baseType: !3369, size: 64)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !654, line: 103, size: 64, elements: !3370)
!3370 = !{!3371}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3369, file: !654, line: 104, baseType: !3315, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3326, file: !654, line: 145, baseType: !3373, size: 256)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !654, line: 107, size: 256, elements: !3374)
!3374 = !{!3375, !3435, !3438, !3439}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3373, file: !654, line: 108, baseType: !3376, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3378)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !654, line: 217, size: 768, elements: !3379)
!3379 = !{!3380, !3400, !3404, !3408, !3412, !3416, !3420, !3424, !3425, !3426, !3427, !3431}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3378, file: !654, line: 222, baseType: !3381, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DISubroutineType(types: !3383)
!3383 = !{!132, !3384}
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !654, line: 197, size: 1088, elements: !3386)
!3386 = !{!3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3385, file: !654, line: 199, baseType: !3315, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3385, file: !654, line: 200, baseType: !395, size: 64, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3385, file: !654, line: 201, baseType: !746, size: 64, offset: 128)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3385, file: !654, line: 202, baseType: !123, size: 64, offset: 192)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3385, file: !654, line: 205, baseType: !1207, size: 192, offset: 256)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3385, file: !654, line: 206, baseType: !1207, size: 192, offset: 448)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3385, file: !654, line: 207, baseType: !132, size: 32, offset: 640)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3385, file: !654, line: 208, baseType: !152, size: 128, offset: 704)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3385, file: !654, line: 209, baseType: !319, size: 64, offset: 832)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3385, file: !654, line: 211, baseType: !365, size: 64, offset: 896)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3385, file: !654, line: 212, baseType: !525, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3385, file: !654, line: 213, baseType: !525, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3385, file: !654, line: 214, baseType: !1045, size: 64, offset: 1024)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3378, file: !654, line: 223, baseType: !3401, size: 64, offset: 64)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{null, !3384}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3378, file: !654, line: 236, baseType: !3405, size: 64, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!132, !746, !123}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3378, file: !654, line: 238, baseType: !3409, size: 64, offset: 192)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!123, !746, !2967}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3378, file: !654, line: 239, baseType: !3413, size: 64, offset: 256)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!123, !746, !123, !2967}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3378, file: !654, line: 240, baseType: !3417, size: 64, offset: 320)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{null, !746, !123}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3378, file: !654, line: 242, baseType: !3421, size: 64, offset: 384)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!350, !3384, !319, !365, !566}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3378, file: !654, line: 252, baseType: !365, size: 64, offset: 448)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3378, file: !654, line: 259, baseType: !525, size: 8, offset: 512)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3378, file: !654, line: 260, baseType: !3421, size: 64, offset: 576)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3378, file: !654, line: 263, baseType: !3428, size: 64, offset: 640)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!2996, !3384, !2998}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3378, file: !654, line: 266, baseType: !3432, size: 64, offset: 704)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!132, !3384, !1017}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3373, file: !654, line: 109, baseType: !3436, size: 64, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !654, line: 31, flags: DIFlagFwdDecl)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3373, file: !654, line: 110, baseType: !566, size: 64, offset: 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3373, file: !654, line: 111, baseType: !3315, size: 64, offset: 192)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3316, file: !654, line: 148, baseType: !123, size: 64, offset: 768)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3316, file: !654, line: 154, baseType: !202, size: 64, offset: 832)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3316, file: !654, line: 156, baseType: !257, size: 16, offset: 896)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3316, file: !654, line: 157, baseType: !360, size: 16, offset: 912)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3316, file: !654, line: 158, baseType: !3445, size: 64, offset: 960)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !654, line: 32, flags: DIFlagFwdDecl)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !265, file: !266, line: 71, baseType: !1532, size: 32, offset: 448)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !265, file: !266, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !265, file: !266, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !265, file: !266, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !265, file: !266, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !265, file: !266, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !262, file: !73, line: 463, baseType: !261, size: 64, offset: 512)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !262, file: !73, line: 465, baseType: !3455, size: 64, offset: 576)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !262, file: !73, line: 467, baseType: !159, size: 64, offset: 640)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !262, file: !73, line: 468, baseType: !3459, size: 64, offset: 704)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3461)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3462)
!3462 = !{!3463, !3464, !3465, !3469, !3474, !3478}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3461, file: !73, line: 88, baseType: !159, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3461, file: !73, line: 89, baseType: !371, size: 64, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3461, file: !73, line: 90, baseType: !3466, size: 64, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!132, !261, !314}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3461, file: !73, line: 91, baseType: !3470, size: 64, offset: 192)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!319, !261, !3473, !3312, !3313}
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3461, file: !73, line: 93, baseType: !3475, size: 64, offset: 256)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{null, !261}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3461, file: !73, line: 95, baseType: !3479, size: 64, offset: 320)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3481)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3482)
!3482 = !{!3483, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3481, file: !80, line: 279, baseType: !3484, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!132, !261}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3481, file: !80, line: 280, baseType: !3475, size: 64, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3481, file: !80, line: 281, baseType: !3484, size: 64, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3481, file: !80, line: 282, baseType: !3484, size: 64, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3481, file: !80, line: 283, baseType: !3484, size: 64, offset: 256)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3481, file: !80, line: 284, baseType: !3484, size: 64, offset: 320)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3481, file: !80, line: 285, baseType: !3484, size: 64, offset: 384)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3481, file: !80, line: 286, baseType: !3484, size: 64, offset: 448)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3481, file: !80, line: 287, baseType: !3484, size: 64, offset: 512)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3481, file: !80, line: 288, baseType: !3484, size: 64, offset: 576)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3481, file: !80, line: 289, baseType: !3484, size: 64, offset: 640)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3481, file: !80, line: 290, baseType: !3484, size: 64, offset: 704)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3481, file: !80, line: 291, baseType: !3484, size: 64, offset: 768)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3481, file: !80, line: 292, baseType: !3484, size: 64, offset: 832)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3481, file: !80, line: 293, baseType: !3484, size: 64, offset: 896)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3481, file: !80, line: 294, baseType: !3484, size: 64, offset: 960)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3481, file: !80, line: 295, baseType: !3484, size: 64, offset: 1024)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3481, file: !80, line: 296, baseType: !3484, size: 64, offset: 1088)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3481, file: !80, line: 297, baseType: !3484, size: 64, offset: 1152)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3481, file: !80, line: 298, baseType: !3484, size: 64, offset: 1216)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3481, file: !80, line: 299, baseType: !3484, size: 64, offset: 1280)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3481, file: !80, line: 300, baseType: !3484, size: 64, offset: 1344)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3481, file: !80, line: 301, baseType: !3484, size: 64, offset: 1408)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !262, file: !73, line: 470, baseType: !3510, size: 64, offset: 768)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3512, line: 82, size: 1408, elements: !3513)
!3512 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3513 = !{!3514, !3515, !3516, !3517, !3518, !3519, !3520, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3593, !3596, !3597}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3511, file: !3512, line: 83, baseType: !159, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3511, file: !3512, line: 84, baseType: !159, size: 64, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3511, file: !3512, line: 85, baseType: !261, size: 64, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3511, file: !3512, line: 86, baseType: !371, size: 64, offset: 192)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3511, file: !3512, line: 87, baseType: !371, size: 64, offset: 256)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3511, file: !3512, line: 88, baseType: !371, size: 64, offset: 320)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3511, file: !3512, line: 90, baseType: !3521, size: 64, offset: 384)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!132, !261, !3524}
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3526)
!3526 = !{!3527, !3528, !3529, !3530, !3531, !3532, !3533, !3545, !3557, !3558, !3559, !3560, !3561, !3569, !3570, !3571, !3572, !3573, !3574}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3525, file: !67, line: 96, baseType: !159, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3525, file: !67, line: 97, baseType: !3510, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3525, file: !67, line: 99, baseType: !120, size: 64, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3525, file: !67, line: 100, baseType: !159, size: 64, offset: 192)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3525, file: !67, line: 102, baseType: !525, size: 8, offset: 256)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3525, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3525, file: !67, line: 105, baseType: !3534, size: 64, offset: 320)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3536)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !164, line: 262, size: 1600, elements: !3537)
!3537 = !{!3538, !3539, !3540, !3544}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3536, file: !164, line: 263, baseType: !2791, size: 256)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3536, file: !164, line: 264, baseType: !2791, size: 256, offset: 256)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3536, file: !164, line: 265, baseType: !3541, size: 1024, offset: 512)
!3541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 1024, elements: !3542)
!3542 = !{!3543}
!3543 = !DISubrange(count: 128)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3536, file: !164, line: 266, baseType: !2218, size: 64, offset: 1536)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3525, file: !67, line: 106, baseType: !3546, size: 64, offset: 384)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3548)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !164, line: 210, size: 256, elements: !3549)
!3549 = !{!3550, !3554, !3555, !3556}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3548, file: !164, line: 211, baseType: !3551, size: 72)
!3551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1387, size: 72, elements: !3552)
!3552 = !{!3553}
!3553 = !DISubrange(count: 9)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3548, file: !164, line: 212, baseType: !173, size: 64, offset: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3548, file: !164, line: 213, baseType: !130, size: 32, offset: 192)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3548, file: !164, line: 214, baseType: !130, size: 32, offset: 224)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3525, file: !67, line: 108, baseType: !3484, size: 64, offset: 448)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3525, file: !67, line: 109, baseType: !3475, size: 64, offset: 512)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3525, file: !67, line: 110, baseType: !3484, size: 64, offset: 576)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3525, file: !67, line: 111, baseType: !3475, size: 64, offset: 640)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3525, file: !67, line: 112, baseType: !3562, size: 64, offset: 704)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!132, !261, !3565}
!3565 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3566)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3567)
!3567 = !{!3568}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3566, file: !80, line: 51, baseType: !132, size: 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3525, file: !67, line: 113, baseType: !3484, size: 64, offset: 768)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3525, file: !67, line: 114, baseType: !371, size: 64, offset: 832)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3525, file: !67, line: 115, baseType: !371, size: 64, offset: 896)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3525, file: !67, line: 117, baseType: !3479, size: 64, offset: 960)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3525, file: !67, line: 118, baseType: !3475, size: 64, offset: 1024)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3525, file: !67, line: 120, baseType: !3575, size: 64, offset: 1088)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3511, file: !3512, line: 91, baseType: !3466, size: 64, offset: 448)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3511, file: !3512, line: 92, baseType: !3484, size: 64, offset: 512)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3511, file: !3512, line: 93, baseType: !3475, size: 64, offset: 576)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3511, file: !3512, line: 94, baseType: !3484, size: 64, offset: 640)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3511, file: !3512, line: 95, baseType: !3475, size: 64, offset: 704)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3511, file: !3512, line: 97, baseType: !3484, size: 64, offset: 768)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3511, file: !3512, line: 98, baseType: !3484, size: 64, offset: 832)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3511, file: !3512, line: 100, baseType: !3562, size: 64, offset: 896)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3511, file: !3512, line: 101, baseType: !3484, size: 64, offset: 960)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3511, file: !3512, line: 103, baseType: !3484, size: 64, offset: 1024)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3511, file: !3512, line: 105, baseType: !3484, size: 64, offset: 1088)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3511, file: !3512, line: 107, baseType: !3479, size: 64, offset: 1152)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3511, file: !3512, line: 109, baseType: !3590, size: 64, offset: 1216)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3592)
!3592 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3512, line: 109, flags: DIFlagFwdDecl)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3511, file: !3512, line: 111, baseType: !3594, size: 64, offset: 1280)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3512, line: 111, flags: DIFlagFwdDecl)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3511, file: !3512, line: 112, baseType: !680, offset: 1344)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3511, file: !3512, line: 114, baseType: !525, size: 8, offset: 1344)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !262, file: !73, line: 471, baseType: !3524, size: 64, offset: 832)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !262, file: !73, line: 473, baseType: !123, size: 64, offset: 896)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !262, file: !73, line: 475, baseType: !123, size: 64, offset: 960)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !262, file: !73, line: 480, baseType: !1207, size: 192, offset: 1024)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !262, file: !73, line: 484, baseType: !3603, size: 576, offset: 1216)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3604)
!3604 = !{!3605, !3606, !3607, !3608, !3609, !3610}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3603, file: !73, line: 362, baseType: !152, size: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3603, file: !73, line: 363, baseType: !152, size: 128, offset: 128)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3603, file: !73, line: 364, baseType: !152, size: 128, offset: 256)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3603, file: !73, line: 365, baseType: !152, size: 128, offset: 384)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3603, file: !73, line: 366, baseType: !525, size: 8, offset: 512)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3603, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !262, file: !73, line: 485, baseType: !3612, size: 2304, offset: 1792)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3613)
!3613 = !{!3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3709, !3713}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3612, file: !80, line: 566, baseType: !3565, size: 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3612, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3612, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3612, file: !80, line: 569, baseType: !525, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3612, file: !80, line: 570, baseType: !525, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3612, file: !80, line: 571, baseType: !525, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3612, file: !80, line: 572, baseType: !525, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3612, file: !80, line: 573, baseType: !525, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3612, file: !80, line: 574, baseType: !525, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3612, file: !80, line: 575, baseType: !525, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3612, file: !80, line: 576, baseType: !525, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3612, file: !80, line: 577, baseType: !128, size: 32, offset: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3612, file: !80, line: 578, baseType: !278, offset: 96)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3612, file: !80, line: 580, baseType: !152, size: 128, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3612, file: !80, line: 581, baseType: !1572, size: 192, offset: 256)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3612, file: !80, line: 582, baseType: !3630, size: 64, offset: 448)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3632, line: 43, size: 1472, elements: !3633)
!3632 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3633 = !{!3634, !3635, !3636, !3637, !3638, !3641, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3631, file: !3632, line: 44, baseType: !159, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3631, file: !3632, line: 45, baseType: !132, size: 32, offset: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3631, file: !3632, line: 46, baseType: !152, size: 128, offset: 128)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3631, file: !3632, line: 47, baseType: !278, offset: 256)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3631, file: !3632, line: 48, baseType: !3639, size: 64, offset: 256)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3631, file: !3632, line: 49, baseType: !3642, size: 320, offset: 320)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3643, line: 11, size: 320, elements: !3644)
!3643 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3644 = !{!3645, !3646, !3647, !3652}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3642, file: !3643, line: 16, baseType: !674, size: 128)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3642, file: !3643, line: 17, baseType: !174, size: 64, offset: 128)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3642, file: !3643, line: 18, baseType: !3648, size: 64, offset: 192)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{null, !3651}
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3642, file: !3643, line: 19, baseType: !128, size: 32, offset: 256)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3631, file: !3632, line: 50, baseType: !174, size: 64, offset: 640)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3631, file: !3632, line: 51, baseType: !1334, size: 64, offset: 704)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3631, file: !3632, line: 52, baseType: !1334, size: 64, offset: 768)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3631, file: !3632, line: 53, baseType: !1334, size: 64, offset: 832)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3631, file: !3632, line: 54, baseType: !1334, size: 64, offset: 896)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3631, file: !3632, line: 55, baseType: !1334, size: 64, offset: 960)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3631, file: !3632, line: 56, baseType: !174, size: 64, offset: 1024)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3631, file: !3632, line: 57, baseType: !174, size: 64, offset: 1088)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3631, file: !3632, line: 58, baseType: !174, size: 64, offset: 1152)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3631, file: !3632, line: 59, baseType: !174, size: 64, offset: 1216)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3631, file: !3632, line: 60, baseType: !174, size: 64, offset: 1280)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3631, file: !3632, line: 61, baseType: !261, size: 64, offset: 1344)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3631, file: !3632, line: 62, baseType: !525, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3631, file: !3632, line: 63, baseType: !525, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3612, file: !80, line: 583, baseType: !525, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3612, file: !80, line: 584, baseType: !525, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3612, file: !80, line: 585, baseType: !525, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3612, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3612, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3612, file: !80, line: 592, baseType: !1326, size: 512, offset: 576)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3612, file: !80, line: 593, baseType: !202, size: 64, offset: 1088)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3612, file: !80, line: 594, baseType: !2049, size: 256, offset: 1152)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3612, file: !80, line: 595, baseType: !1514, size: 128, offset: 1408)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3612, file: !80, line: 596, baseType: !3639, size: 64, offset: 1536)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3612, file: !80, line: 597, baseType: !783, size: 32, offset: 1600)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3612, file: !80, line: 598, baseType: !783, size: 32, offset: 1632)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3612, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3612, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3612, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3612, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3612, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3612, file: !80, line: 604, baseType: !525, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3612, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3612, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3612, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3612, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3612, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3612, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3612, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3612, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3612, file: !80, line: 613, baseType: !132, size: 32, offset: 1792)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3612, file: !80, line: 614, baseType: !132, size: 32, offset: 1824)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3612, file: !80, line: 615, baseType: !202, size: 64, offset: 1856)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3612, file: !80, line: 616, baseType: !202, size: 64, offset: 1920)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3612, file: !80, line: 617, baseType: !202, size: 64, offset: 1984)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3612, file: !80, line: 618, baseType: !202, size: 64, offset: 2048)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3612, file: !80, line: 620, baseType: !3700, size: 64, offset: 2112)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3702)
!3702 = !{!3703, !3704, !3705, !3706}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3701, file: !80, line: 537, baseType: !278)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3701, file: !80, line: 538, baseType: !7, size: 32)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3701, file: !80, line: 540, baseType: !152, size: 128, offset: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3701, file: !80, line: 543, baseType: !3707, size: 64, offset: 192)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3612, file: !80, line: 621, baseType: !3710, size: 64, offset: 2176)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{null, !261, !1477}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3612, file: !80, line: 622, baseType: !3714, size: 64, offset: 2240)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !262, file: !73, line: 486, baseType: !3717, size: 64, offset: 4096)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3719)
!3719 = !{!3720, !3721, !3722, !3726, !3727, !3728}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3718, file: !80, line: 643, baseType: !3481, size: 1472)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3718, file: !80, line: 644, baseType: !3484, size: 64, offset: 1472)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3718, file: !80, line: 645, baseType: !3723, size: 64, offset: 1536)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{null, !261, !525}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3718, file: !80, line: 646, baseType: !3484, size: 64, offset: 1600)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3718, file: !80, line: 647, baseType: !3475, size: 64, offset: 1664)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3718, file: !80, line: 648, baseType: !3475, size: 64, offset: 1728)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !262, file: !73, line: 493, baseType: !3730, size: 64, offset: 4160)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3732)
!3732 = !{!3733, !3734, !3735, !3908, !3909, !3910, !3911, !3912, !3913, !3916, !3917, !3918, !3919, !3920, !3921, !3922}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3731, file: !94, line: 163, baseType: !152, size: 128)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3731, file: !94, line: 164, baseType: !159, size: 64, offset: 128)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3731, file: !94, line: 165, baseType: !3736, size: 64, offset: 192)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3738)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3739)
!3739 = !{!3740, !3858, !3869, !3874, !3878, !3885, !3889, !3893, !3900, !3904}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3738, file: !94, line: 106, baseType: !3741, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!132, !3730, !3744, !93}
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3746, line: 51, size: 1344, elements: !3747)
!3746 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3747 = !{!3748, !3749, !3751, !3752, !3842, !3851, !3852, !3853, !3854, !3855, !3856, !3857}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3745, file: !3746, line: 52, baseType: !159, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3745, file: !3746, line: 53, baseType: !3750, size: 32, offset: 64)
!3750 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3746, line: 28, baseType: !128)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3745, file: !3746, line: 54, baseType: !159, size: 64, offset: 128)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3745, file: !3746, line: 55, baseType: !3753, size: 192, offset: 192)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3754, line: 17, size: 192, elements: !3755)
!3754 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3755 = !{!3756, !3758, !3841}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3753, file: !3754, line: 18, baseType: !3757, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3753, file: !3754, line: 19, baseType: !3759, size: 64, offset: 64)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3761)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3754, line: 110, size: 1152, elements: !3762)
!3762 = !{!3763, !3767, !3771, !3777, !3783, !3787, !3791, !3796, !3800, !3801, !3805, !3809, !3813, !3824, !3825, !3826, !3827, !3837}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3761, file: !3754, line: 111, baseType: !3764, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!3757, !3757}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3761, file: !3754, line: 112, baseType: !3768, size: 64, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{null, !3757}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3761, file: !3754, line: 113, baseType: !3772, size: 64, offset: 128)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!525, !3775}
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3753)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3761, file: !3754, line: 114, baseType: !3778, size: 64, offset: 192)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!2218, !3775, !3781}
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3761, file: !3754, line: 116, baseType: !3784, size: 64, offset: 256)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!525, !3775, !159}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3761, file: !3754, line: 118, baseType: !3788, size: 64, offset: 320)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!132, !3775, !159, !7, !123, !365}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3761, file: !3754, line: 123, baseType: !3792, size: 64, offset: 384)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!132, !3775, !159, !3795, !365}
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3761, file: !3754, line: 126, baseType: !3797, size: 64, offset: 448)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!159, !3775}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3761, file: !3754, line: 127, baseType: !3797, size: 64, offset: 512)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3761, file: !3754, line: 128, baseType: !3802, size: 64, offset: 576)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!3757, !3775}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3761, file: !3754, line: 130, baseType: !3806, size: 64, offset: 640)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!3757, !3775, !3757}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3761, file: !3754, line: 133, baseType: !3810, size: 64, offset: 704)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!3757, !3775, !159}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3761, file: !3754, line: 135, baseType: !3814, size: 64, offset: 768)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!132, !3775, !159, !159, !7, !7, !3817}
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3754, line: 43, size: 640, elements: !3819)
!3819 = !{!3820, !3821, !3822}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3818, file: !3754, line: 44, baseType: !3757, size: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3818, file: !3754, line: 45, baseType: !7, size: 32, offset: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3818, file: !3754, line: 46, baseType: !3823, size: 512, offset: 128)
!3823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 512, elements: !1364)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3761, file: !3754, line: 140, baseType: !3806, size: 64, offset: 832)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3761, file: !3754, line: 143, baseType: !3802, size: 64, offset: 896)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3761, file: !3754, line: 145, baseType: !3764, size: 64, offset: 960)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3761, file: !3754, line: 146, baseType: !3828, size: 64, offset: 1024)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!132, !3775, !3831}
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3754, line: 29, size: 128, elements: !3833)
!3833 = !{!3834, !3835, !3836}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3832, file: !3754, line: 30, baseType: !7, size: 32)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3832, file: !3754, line: 31, baseType: !7, size: 32, offset: 32)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3832, file: !3754, line: 32, baseType: !3775, size: 64, offset: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3761, file: !3754, line: 148, baseType: !3838, size: 64, offset: 1088)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!132, !3775, !261}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3753, file: !3754, line: 20, baseType: !261, size: 64, offset: 128)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3745, file: !3746, line: 57, baseType: !3843, size: 64, offset: 384)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3746, line: 31, size: 704, elements: !3845)
!3845 = !{!3846, !3847, !3848, !3849, !3850}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3844, file: !3746, line: 32, baseType: !319, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3844, file: !3746, line: 33, baseType: !132, size: 32, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3844, file: !3746, line: 34, baseType: !123, size: 64, offset: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3844, file: !3746, line: 35, baseType: !3843, size: 64, offset: 192)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3844, file: !3746, line: 43, baseType: !386, size: 448, offset: 256)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3745, file: !3746, line: 58, baseType: !3843, size: 64, offset: 448)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3745, file: !3746, line: 59, baseType: !3744, size: 64, offset: 512)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3745, file: !3746, line: 60, baseType: !3744, size: 64, offset: 576)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3745, file: !3746, line: 61, baseType: !3744, size: 64, offset: 640)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3745, file: !3746, line: 63, baseType: !265, size: 512, offset: 704)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3745, file: !3746, line: 65, baseType: !174, size: 64, offset: 1216)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3745, file: !3746, line: 66, baseType: !123, size: 64, offset: 1280)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3738, file: !94, line: 108, baseType: !3859, size: 64, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!132, !3730, !3862, !93}
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3864)
!3864 = !{!3865, !3866, !3867}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3863, file: !94, line: 64, baseType: !3757, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3863, file: !94, line: 65, baseType: !132, size: 32, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3863, file: !94, line: 66, baseType: !3868, size: 512, offset: 96)
!3868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 512, elements: !1803)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3738, file: !94, line: 110, baseType: !3870, size: 64, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!132, !3730, !7, !3873}
!3873 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !153, line: 164, baseType: !174)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3738, file: !94, line: 111, baseType: !3875, size: 64, offset: 192)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{null, !3730, !7}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3738, file: !94, line: 112, baseType: !3879, size: 64, offset: 256)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!132, !3730, !3744, !3882, !7, !3884, !2774}
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3738, file: !94, line: 117, baseType: !3886, size: 64, offset: 320)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!132, !3730, !7, !7, !123}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3738, file: !94, line: 119, baseType: !3890, size: 64, offset: 384)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{null, !3730, !7, !7}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3738, file: !94, line: 121, baseType: !3894, size: 64, offset: 448)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!132, !3730, !3897, !525}
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3899, line: 11, flags: DIFlagFwdDecl)
!3899 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3738, file: !94, line: 122, baseType: !3901, size: 64, offset: 512)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{null, !3730, !3897}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3738, file: !94, line: 123, baseType: !3905, size: 64, offset: 576)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!132, !3730, !3862, !3884, !2774}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3731, file: !94, line: 166, baseType: !123, size: 64, offset: 256)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3731, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3731, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3731, file: !94, line: 171, baseType: !3757, size: 64, offset: 384)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3731, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3731, file: !94, line: 173, baseType: !3914, size: 64, offset: 512)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3731, file: !94, line: 175, baseType: !3730, size: 64, offset: 576)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3731, file: !94, line: 182, baseType: !3873, size: 64, offset: 640)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3731, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3731, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3731, file: !94, line: 185, baseType: !774, size: 128, offset: 768)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3731, file: !94, line: 186, baseType: !1207, size: 192, offset: 896)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3731, file: !94, line: 187, baseType: !3923, offset: 1088)
!3923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2422)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !262, file: !73, line: 499, baseType: !152, size: 128, offset: 4224)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !262, file: !73, line: 502, baseType: !3926, size: 64, offset: 4352)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3928)
!3928 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !262, file: !73, line: 504, baseType: !3930, size: 64, offset: 4416)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !262, file: !73, line: 505, baseType: !202, size: 64, offset: 4480)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !262, file: !73, line: 510, baseType: !202, size: 64, offset: 4544)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !262, file: !73, line: 511, baseType: !3934, size: 64, offset: 4608)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3936)
!3936 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !262, file: !73, line: 513, baseType: !3938, size: 64, offset: 4672)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3940)
!3940 = !{!3941, !3942}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3939, file: !73, line: 293, baseType: !7, size: 32)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3939, file: !73, line: 294, baseType: !174, size: 64, offset: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !262, file: !73, line: 515, baseType: !152, size: 128, offset: 4736)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !262, file: !73, line: 526, baseType: !3945, offset: 4864)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3946, line: 5, elements: !292)
!3946 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !262, file: !73, line: 528, baseType: !3744, size: 64, offset: 4864)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !262, file: !73, line: 529, baseType: !3757, size: 64, offset: 4928)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !262, file: !73, line: 534, baseType: !548, size: 32, offset: 4992)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !262, file: !73, line: 535, baseType: !128, size: 32, offset: 5024)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !262, file: !73, line: 537, baseType: !278, offset: 5056)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !262, file: !73, line: 538, baseType: !152, size: 128, offset: 5056)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !262, file: !73, line: 540, baseType: !3954, size: 64, offset: 5184)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3956, line: 54, size: 960, elements: !3957)
!3956 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3957 = !{!3958, !3959, !3960, !3961, !3962, !3963, !3964, !3968, !3972, !3973, !3974, !3975, !3979, !3983, !3984}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3955, file: !3956, line: 55, baseType: !159, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3955, file: !3956, line: 56, baseType: !120, size: 64, offset: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3955, file: !3956, line: 58, baseType: !371, size: 64, offset: 128)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3955, file: !3956, line: 59, baseType: !371, size: 64, offset: 192)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3955, file: !3956, line: 60, baseType: !271, size: 64, offset: 256)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3955, file: !3956, line: 62, baseType: !3466, size: 64, offset: 320)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3955, file: !3956, line: 63, baseType: !3965, size: 64, offset: 384)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!319, !261, !3473}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3955, file: !3956, line: 65, baseType: !3969, size: 64, offset: 448)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{null, !3954}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3955, file: !3956, line: 66, baseType: !3475, size: 64, offset: 512)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3955, file: !3956, line: 68, baseType: !3484, size: 64, offset: 576)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3955, file: !3956, line: 70, baseType: !3280, size: 64, offset: 640)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3955, file: !3956, line: 71, baseType: !3976, size: 64, offset: 704)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!2218, !261}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3955, file: !3956, line: 73, baseType: !3980, size: 64, offset: 768)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{null, !261, !3312, !3313}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3955, file: !3956, line: 75, baseType: !3479, size: 64, offset: 832)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3955, file: !3956, line: 77, baseType: !3594, size: 64, offset: 896)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !262, file: !73, line: 541, baseType: !371, size: 64, offset: 5248)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !262, file: !73, line: 543, baseType: !3475, size: 64, offset: 5312)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !262, file: !73, line: 544, baseType: !3988, size: 64, offset: 5376)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !262, file: !73, line: 545, baseType: !3991, size: 64, offset: 5440)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !262, file: !73, line: 547, baseType: !525, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !262, file: !73, line: 548, baseType: !525, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !262, file: !73, line: 549, baseType: !525, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !262, file: !73, line: 550, baseType: !525, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !185, file: !149, line: 635, baseType: !262, size: 5568, offset: 2304)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !185, file: !149, line: 636, baseType: !385, size: 64, offset: 7872)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !185, file: !149, line: 637, baseType: !385, size: 64, offset: 7936)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !185, file: !149, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !180, file: !149, line: 312, baseType: !184, size: 64, offset: 192)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !180, file: !149, line: 314, baseType: !123, size: 64, offset: 256)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !180, file: !149, line: 315, baseType: !245, size: 64, offset: 320)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !180, file: !149, line: 316, baseType: !4005, size: 64, offset: 384)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !149, line: 69, size: 832, elements: !4007)
!4007 = !{!4008, !4009, !4010, !4013, !4014}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4006, file: !149, line: 70, baseType: !184, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4006, file: !149, line: 71, baseType: !152, size: 128, offset: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4006, file: !149, line: 72, baseType: !4011, size: 64, offset: 192)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !149, line: 72, flags: DIFlagFwdDecl)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4006, file: !149, line: 73, baseType: !126, size: 8, offset: 256)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4006, file: !149, line: 74, baseType: !265, size: 512, offset: 320)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !180, file: !149, line: 318, baseType: !7, size: 32, offset: 448)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !180, file: !149, line: 319, baseType: !257, size: 16, offset: 480)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !180, file: !149, line: 320, baseType: !257, size: 16, offset: 496)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !180, file: !149, line: 321, baseType: !257, size: 16, offset: 512)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !180, file: !149, line: 322, baseType: !257, size: 16, offset: 528)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !180, file: !149, line: 323, baseType: !7, size: 32, offset: 544)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !180, file: !149, line: 324, baseType: !1386, size: 8, offset: 576)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !180, file: !149, line: 325, baseType: !1386, size: 8, offset: 584)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !180, file: !149, line: 330, baseType: !1386, size: 8, offset: 592)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !180, file: !149, line: 331, baseType: !1386, size: 8, offset: 600)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !180, file: !149, line: 332, baseType: !1386, size: 8, offset: 608)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !180, file: !149, line: 333, baseType: !1386, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !180, file: !149, line: 334, baseType: !1386, size: 8, offset: 624)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !180, file: !149, line: 335, baseType: !1386, size: 8, offset: 632)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !180, file: !149, line: 336, baseType: !895, size: 16, offset: 640)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !180, file: !149, line: 337, baseType: !3884, size: 64, offset: 704)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !180, file: !149, line: 339, baseType: !4032, size: 64, offset: 768)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !180, file: !149, line: 340, baseType: !202, size: 64, offset: 832)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !180, file: !149, line: 346, baseType: !3939, size: 128, offset: 896)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !180, file: !149, line: 348, baseType: !4036, size: 32, offset: 1024)
!4036 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !149, line: 155, baseType: !132)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !180, file: !149, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !180, file: !149, line: 352, baseType: !1386, size: 8, offset: 1064)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !180, file: !149, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !180, file: !149, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !180, file: !149, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !180, file: !149, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !180, file: !149, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !180, file: !149, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !180, file: !149, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !180, file: !149, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !180, file: !149, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !180, file: !149, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !180, file: !149, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !180, file: !149, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !180, file: !149, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !180, file: !149, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !180, file: !149, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !180, file: !149, line: 376, baseType: !7, size: 32, offset: 1120)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !180, file: !149, line: 377, baseType: !7, size: 32, offset: 1152)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !180, file: !149, line: 380, baseType: !4057, size: 64, offset: 1216)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !149, line: 303, flags: DIFlagFwdDecl)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !180, file: !149, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !180, file: !149, line: 383, baseType: !132, size: 32, offset: 1312)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !180, file: !149, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !180, file: !149, line: 387, baseType: !4063, size: 32, offset: 1376)
!4063 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !149, line: 180, baseType: !7)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !180, file: !149, line: 388, baseType: !262, size: 5568, offset: 1408)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !180, file: !149, line: 390, baseType: !132, size: 32, offset: 6976)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !180, file: !149, line: 396, baseType: !7, size: 32, offset: 7008)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !180, file: !149, line: 397, baseType: !4068, size: 8704, offset: 7040)
!4068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 8704, elements: !4069)
!4069 = !{!4070}
!4070 = !DISubrange(count: 17)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !180, file: !149, line: 399, baseType: !525, size: 8, offset: 15744)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !180, file: !149, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !180, file: !149, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !180, file: !149, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !180, file: !149, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !180, file: !149, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !180, file: !149, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !180, file: !149, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !180, file: !149, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !180, file: !149, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !180, file: !149, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !180, file: !149, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !180, file: !149, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !180, file: !149, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !180, file: !149, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !180, file: !149, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !180, file: !149, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !180, file: !149, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !180, file: !149, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !180, file: !149, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !180, file: !149, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !180, file: !149, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !180, file: !149, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !180, file: !149, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !180, file: !149, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !180, file: !149, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !180, file: !149, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !180, file: !149, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !180, file: !149, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !180, file: !149, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !180, file: !149, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !180, file: !149, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !180, file: !149, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !180, file: !149, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !180, file: !149, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !180, file: !149, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !180, file: !149, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !180, file: !149, line: 450, baseType: !4109, size: 16, offset: 15792)
!4109 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !149, line: 206, baseType: !257)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !180, file: !149, line: 451, baseType: !783, size: 32, offset: 15808)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !180, file: !149, line: 453, baseType: !3868, size: 512, offset: 15840)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !180, file: !149, line: 454, baseType: !670, size: 64, offset: 16384)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !180, file: !149, line: 455, baseType: !385, size: 64, offset: 16448)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !180, file: !149, line: 456, baseType: !132, size: 32, offset: 16512)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !180, file: !149, line: 457, baseType: !4116, size: 1088, offset: 16576)
!4116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 1088, elements: !4069)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !180, file: !149, line: 458, baseType: !4116, size: 1088, offset: 17664)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !180, file: !149, line: 469, baseType: !371, size: 64, offset: 18752)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !180, file: !149, line: 471, baseType: !4120, size: 64, offset: 18816)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !149, line: 304, flags: DIFlagFwdDecl)
!4122 = !DIDerivedType(tag: DW_TAG_member, scope: !180, file: !149, line: 478, baseType: !4123, size: 64, offset: 18880)
!4123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !180, file: !149, line: 478, size: 64, elements: !4124)
!4124 = !{!4125, !4128}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4123, file: !149, line: 479, baseType: !4126, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !149, line: 305, flags: DIFlagFwdDecl)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4123, file: !149, line: 480, baseType: !179, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !180, file: !149, line: 482, baseType: !895, size: 16, offset: 18944)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !180, file: !149, line: 483, baseType: !1386, size: 8, offset: 18960)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !180, file: !149, line: 497, baseType: !895, size: 16, offset: 18976)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !180, file: !149, line: 498, baseType: !201, size: 64, offset: 19008)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !180, file: !149, line: 499, baseType: !365, size: 64, offset: 19072)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !180, file: !149, line: 500, baseType: !319, size: 64, offset: 19136)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !180, file: !149, line: 502, baseType: !174, size: 64, offset: 19200)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !148, file: !149, line: 863, baseType: !4137, size: 64, offset: 320)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{null, !179}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !148, file: !149, line: 864, baseType: !4141, size: 64, offset: 384)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!132, !179, !3565}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !148, file: !149, line: 865, baseType: !4145, size: 64, offset: 448)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!132, !179}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !148, file: !149, line: 866, baseType: !4137, size: 64, offset: 512)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !148, file: !149, line: 867, baseType: !4150, size: 64, offset: 576)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!132, !179, !132}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !148, file: !149, line: 868, baseType: !4154, size: 64, offset: 640)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4156)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !149, line: 795, size: 384, elements: !4157)
!4157 = !{!4158, !4163, !4167, !4168, !4169, !4170}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4156, file: !149, line: 797, baseType: !4159, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!4162, !179, !4063}
!4162 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !149, line: 772, baseType: !7)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4156, file: !149, line: 801, baseType: !4164, size: 64, offset: 64)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!4162, !179}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4156, file: !149, line: 804, baseType: !4164, size: 64, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4156, file: !149, line: 807, baseType: !4137, size: 64, offset: 192)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4156, file: !149, line: 808, baseType: !4137, size: 64, offset: 256)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4156, file: !149, line: 811, baseType: !4137, size: 64, offset: 320)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !148, file: !149, line: 869, baseType: !371, size: 64, offset: 704)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !148, file: !149, line: 870, baseType: !3525, size: 1152, offset: 768)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !148, file: !149, line: 871, baseType: !4174, size: 128, offset: 1920)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !149, line: 759, size: 128, elements: !4175)
!4175 = !{!4176, !4177}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4174, file: !149, line: 760, baseType: !278)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4174, file: !149, line: 761, baseType: !152, size: 128)
!4178 = !DIGlobalVariableExpression(var: !4179, expr: !DIExpression())
!4179 = distinct !DIGlobalVariable(name: "asiliantfb_pci_tbl", scope: !2, file: !3, line: 595, type: !4180, isLocal: true, isDefinition: true)
!4180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 512, elements: !1639)
!4181 = !DIGlobalVariableExpression(var: !4182, expr: !DIExpression())
!4182 = distinct !DIGlobalVariable(name: "asiliantfb_fix", scope: !2, file: !3, line: 477, type: !4183, isLocal: true, isDefinition: true)
!4183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4184)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fix_screeninfo", file: !4185, line: 157, size: 640, elements: !4186)
!4185 = !DIFile(filename: "./include/uapi/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!4186 = !{!4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4184, file: !4185, line: 158, baseType: !1802, size: 128)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "smem_start", scope: !4184, file: !4185, line: 159, baseType: !174, size: 64, offset: 128)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "smem_len", scope: !4184, file: !4185, line: 161, baseType: !130, size: 32, offset: 192)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4184, file: !4185, line: 162, baseType: !130, size: 32, offset: 224)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "type_aux", scope: !4184, file: !4185, line: 163, baseType: !130, size: 32, offset: 256)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "visual", scope: !4184, file: !4185, line: 164, baseType: !130, size: 32, offset: 288)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "xpanstep", scope: !4184, file: !4185, line: 165, baseType: !896, size: 16, offset: 320)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "ypanstep", scope: !4184, file: !4185, line: 166, baseType: !896, size: 16, offset: 336)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "ywrapstep", scope: !4184, file: !4185, line: 167, baseType: !896, size: 16, offset: 352)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !4184, file: !4185, line: 168, baseType: !130, size: 32, offset: 384)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_start", scope: !4184, file: !4185, line: 169, baseType: !174, size: 64, offset: 448)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_len", scope: !4184, file: !4185, line: 171, baseType: !130, size: 32, offset: 512)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !4184, file: !4185, line: 172, baseType: !130, size: 32, offset: 544)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !4184, file: !4185, line: 174, baseType: !896, size: 16, offset: 576)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4184, file: !4185, line: 175, baseType: !4202, size: 32, offset: 592)
!4202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 32, elements: !1639)
!4203 = !DIGlobalVariableExpression(var: !4204, expr: !DIExpression())
!4204 = distinct !DIGlobalVariable(name: "asiliantfb_var", scope: !2, file: !3, line: 486, type: !4205, isLocal: true, isDefinition: true)
!4205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4206)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_var_screeninfo", file: !4185, line: 242, size: 1280, elements: !4207)
!4207 = !{!4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !4206, file: !4185, line: 243, baseType: !130, size: 32)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !4206, file: !4185, line: 244, baseType: !130, size: 32, offset: 32)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "xres_virtual", scope: !4206, file: !4185, line: 245, baseType: !130, size: 32, offset: 64)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "yres_virtual", scope: !4206, file: !4185, line: 246, baseType: !130, size: 32, offset: 96)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "xoffset", scope: !4206, file: !4185, line: 247, baseType: !130, size: 32, offset: 128)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "yoffset", scope: !4206, file: !4185, line: 248, baseType: !130, size: 32, offset: 160)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel", scope: !4206, file: !4185, line: 250, baseType: !130, size: 32, offset: 192)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "grayscale", scope: !4206, file: !4185, line: 251, baseType: !130, size: 32, offset: 224)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !4206, file: !4185, line: 253, baseType: !4217, size: 96, offset: 256)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_bitfield", file: !4185, line: 188, size: 96, elements: !4218)
!4218 = !{!4219, !4220, !4221}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4217, file: !4185, line: 189, baseType: !130, size: 32)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4217, file: !4185, line: 190, baseType: !130, size: 32, offset: 32)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "msb_right", scope: !4217, file: !4185, line: 191, baseType: !130, size: 32, offset: 64)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !4206, file: !4185, line: 254, baseType: !4217, size: 96, offset: 352)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !4206, file: !4185, line: 255, baseType: !4217, size: 96, offset: 448)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !4206, file: !4185, line: 256, baseType: !4217, size: 96, offset: 544)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "nonstd", scope: !4206, file: !4185, line: 258, baseType: !130, size: 32, offset: 640)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4206, file: !4185, line: 260, baseType: !130, size: 32, offset: 672)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4206, file: !4185, line: 262, baseType: !130, size: 32, offset: 704)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4206, file: !4185, line: 263, baseType: !130, size: 32, offset: 736)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "accel_flags", scope: !4206, file: !4185, line: 265, baseType: !130, size: 32, offset: 768)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !4206, file: !4185, line: 268, baseType: !130, size: 32, offset: 800)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !4206, file: !4185, line: 269, baseType: !130, size: 32, offset: 832)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !4206, file: !4185, line: 270, baseType: !130, size: 32, offset: 864)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !4206, file: !4185, line: 271, baseType: !130, size: 32, offset: 896)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !4206, file: !4185, line: 272, baseType: !130, size: 32, offset: 928)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !4206, file: !4185, line: 273, baseType: !130, size: 32, offset: 960)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !4206, file: !4185, line: 274, baseType: !130, size: 32, offset: 992)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4206, file: !4185, line: 275, baseType: !130, size: 32, offset: 1024)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !4206, file: !4185, line: 276, baseType: !130, size: 32, offset: 1056)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "rotate", scope: !4206, file: !4185, line: 277, baseType: !130, size: 32, offset: 1088)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !4206, file: !4185, line: 278, baseType: !130, size: 32, offset: 1120)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4206, file: !4185, line: 279, baseType: !4242, size: 128, offset: 1152)
!4242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 128, elements: !212)
!4243 = !DIGlobalVariableExpression(var: !4244, expr: !DIExpression())
!4244 = distinct !DIGlobalVariable(name: "asiliantfb_ops", scope: !2, file: !3, line: 98, type: !4245, isLocal: true, isDefinition: true)
!4245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4246)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_ops", file: !4247, line: 228, size: 1472, elements: !4248)
!4247 = !DIFile(filename: "./include/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!4248 = !{!4249, !4250, !4537, !4538, !4542, !4546, !4551, !4552, !4556, !4561, !4565, !4566, !4580, !4594, !4611, !4628, !4629, !4633, !4634, !4638, !4649, !4650, !4651}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4246, file: !4247, line: 230, baseType: !120, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "fb_open", scope: !4246, file: !4247, line: 231, baseType: !4251, size: 64, offset: 64)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!132, !4254, !132}
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_info", file: !4247, line: 437, size: 8128, elements: !4256)
!4256 = !{!4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4326, !4327, !4345, !4346, !4356, !4357, !4358, !4406, !4407, !4409, !4416, !4431, !4433, !4434, !4435, !4436, !4515, !4520, !4521, !4522, !4523, !4524, !4525, !4536}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4255, file: !4247, line: 438, baseType: !783, size: 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4255, file: !4247, line: 439, baseType: !132, size: 32, offset: 32)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4255, file: !4247, line: 440, baseType: !132, size: 32, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_rotate_hint", scope: !4255, file: !4247, line: 445, baseType: !132, size: 32, offset: 96)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4255, file: !4247, line: 446, baseType: !1207, size: 192, offset: 128)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock", scope: !4255, file: !4247, line: 447, baseType: !1207, size: 192, offset: 320)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !4255, file: !4247, line: 448, baseType: !4206, size: 1280, offset: 512)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "fix", scope: !4255, file: !4247, line: 449, baseType: !4184, size: 640, offset: 1792)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "monspecs", scope: !4255, file: !4247, line: 450, baseType: !4266, size: 1152, offset: 2432)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_monspecs", file: !4247, line: 63, size: 1152, elements: !4267)
!4267 = !{!4268, !4279, !4297, !4299, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "chroma", scope: !4266, file: !4247, line: 64, baseType: !4269, size: 256)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_chroma", file: !4247, line: 52, size: 256, elements: !4270)
!4270 = !{!4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "redx", scope: !4269, file: !4247, line: 53, baseType: !130, size: 32)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "greenx", scope: !4269, file: !4247, line: 54, baseType: !130, size: 32, offset: 32)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "bluex", scope: !4269, file: !4247, line: 55, baseType: !130, size: 32, offset: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "whitex", scope: !4269, file: !4247, line: 56, baseType: !130, size: 32, offset: 96)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "redy", scope: !4269, file: !4247, line: 57, baseType: !130, size: 32, offset: 128)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "greeny", scope: !4269, file: !4247, line: 58, baseType: !130, size: 32, offset: 160)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "bluey", scope: !4269, file: !4247, line: 59, baseType: !130, size: 32, offset: 192)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "whitey", scope: !4269, file: !4247, line: 60, baseType: !130, size: 32, offset: 224)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "modedb", scope: !4266, file: !4247, line: 65, baseType: !4280, size: 64, offset: 256)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_videomode", file: !4247, line: 766, size: 512, elements: !4282)
!4282 = !{!4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4281, file: !4247, line: 767, baseType: !159, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !4281, file: !4247, line: 768, baseType: !128, size: 32, offset: 64)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !4281, file: !4247, line: 769, baseType: !128, size: 32, offset: 96)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !4281, file: !4247, line: 770, baseType: !128, size: 32, offset: 128)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !4281, file: !4247, line: 771, baseType: !128, size: 32, offset: 160)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !4281, file: !4247, line: 772, baseType: !128, size: 32, offset: 192)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !4281, file: !4247, line: 773, baseType: !128, size: 32, offset: 224)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !4281, file: !4247, line: 774, baseType: !128, size: 32, offset: 256)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !4281, file: !4247, line: 775, baseType: !128, size: 32, offset: 288)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !4281, file: !4247, line: 776, baseType: !128, size: 32, offset: 320)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !4281, file: !4247, line: 777, baseType: !128, size: 32, offset: 352)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4281, file: !4247, line: 778, baseType: !128, size: 32, offset: 384)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !4281, file: !4247, line: 779, baseType: !128, size: 32, offset: 416)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !4281, file: !4247, line: 780, baseType: !128, size: 32, offset: 448)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !4266, file: !4247, line: 66, baseType: !4298, size: 32, offset: 320)
!4298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1387, size: 32, elements: !212)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "monitor", scope: !4266, file: !4247, line: 67, baseType: !4300, size: 112, offset: 352)
!4300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1387, size: 112, elements: !4301)
!4301 = !{!4302}
!4302 = !DISubrange(count: 14)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "serial_no", scope: !4266, file: !4247, line: 68, baseType: !4300, size: 112, offset: 464)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !4266, file: !4247, line: 69, baseType: !4300, size: 112, offset: 576)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "modedb_len", scope: !4266, file: !4247, line: 70, baseType: !130, size: 32, offset: 704)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !4266, file: !4247, line: 71, baseType: !130, size: 32, offset: 736)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !4266, file: !4247, line: 72, baseType: !130, size: 32, offset: 768)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !4266, file: !4247, line: 73, baseType: !130, size: 32, offset: 800)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "week", scope: !4266, file: !4247, line: 74, baseType: !130, size: 32, offset: 832)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "hfmin", scope: !4266, file: !4247, line: 75, baseType: !130, size: 32, offset: 864)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "hfmax", scope: !4266, file: !4247, line: 76, baseType: !130, size: 32, offset: 896)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmin", scope: !4266, file: !4247, line: 77, baseType: !130, size: 32, offset: 928)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmax", scope: !4266, file: !4247, line: 78, baseType: !130, size: 32, offset: 960)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !4266, file: !4247, line: 79, baseType: !896, size: 16, offset: 992)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !4266, file: !4247, line: 80, baseType: !896, size: 16, offset: 1008)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4266, file: !4247, line: 81, baseType: !896, size: 16, offset: 1024)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "vfmin", scope: !4266, file: !4247, line: 82, baseType: !896, size: 16, offset: 1040)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "vfmax", scope: !4266, file: !4247, line: 83, baseType: !896, size: 16, offset: 1056)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !4266, file: !4247, line: 84, baseType: !896, size: 16, offset: 1072)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "gtf", scope: !4266, file: !4247, line: 85, baseType: !896, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !4266, file: !4247, line: 86, baseType: !896, size: 16, offset: 1104)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4266, file: !4247, line: 87, baseType: !1387, size: 8, offset: 1120)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4266, file: !4247, line: 88, baseType: !1387, size: 8, offset: 1128)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "max_x", scope: !4266, file: !4247, line: 89, baseType: !1387, size: 8, offset: 1136)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "max_y", scope: !4266, file: !4247, line: 90, baseType: !1387, size: 8, offset: 1144)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4255, file: !4247, line: 451, baseType: !2049, size: 256, offset: 3584)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "pixmap", scope: !4255, file: !4247, line: 452, baseType: !4328, size: 448, offset: 3840)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_pixmap", file: !4247, line: 185, size: 448, elements: !4329)
!4329 = !{!4330, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4344}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4328, file: !4247, line: 186, baseType: !4331, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4328, file: !4247, line: 187, baseType: !128, size: 32, offset: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4328, file: !4247, line: 188, baseType: !128, size: 32, offset: 96)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "buf_align", scope: !4328, file: !4247, line: 189, baseType: !128, size: 32, offset: 128)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "scan_align", scope: !4328, file: !4247, line: 190, baseType: !128, size: 32, offset: 160)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "access_align", scope: !4328, file: !4247, line: 191, baseType: !128, size: 32, offset: 192)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4328, file: !4247, line: 192, baseType: !128, size: 32, offset: 224)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "blit_x", scope: !4328, file: !4247, line: 193, baseType: !128, size: 32, offset: 256)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "blit_y", scope: !4328, file: !4247, line: 194, baseType: !128, size: 32, offset: 288)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "writeio", scope: !4328, file: !4247, line: 198, baseType: !4341, size: 64, offset: 320)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{null, !4254, !123, !123, !7}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "readio", scope: !4328, file: !4247, line: 199, baseType: !4341, size: 64, offset: 384)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "sprite", scope: !4255, file: !4247, line: 453, baseType: !4328, size: 448, offset: 4288)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !4255, file: !4247, line: 454, baseType: !4347, size: 320, offset: 4736)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cmap", file: !4185, line: 282, size: 320, elements: !4348)
!4348 = !{!4349, !4350, !4351, !4353, !4354, !4355}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4347, file: !4185, line: 283, baseType: !130, size: 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4347, file: !4185, line: 284, baseType: !130, size: 32, offset: 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !4347, file: !4185, line: 285, baseType: !4352, size: 64, offset: 64)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !4347, file: !4185, line: 286, baseType: !4352, size: 64, offset: 128)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !4347, file: !4185, line: 287, baseType: !4352, size: 64, offset: 192)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !4347, file: !4185, line: 288, baseType: !4352, size: 64, offset: 256)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "modelist", scope: !4255, file: !4247, line: 455, baseType: !152, size: 128, offset: 5056)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4255, file: !4247, line: 456, baseType: !4280, size: 64, offset: 5184)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "bl_dev", scope: !4255, file: !4247, line: 462, baseType: !4359, size: 64, offset: 5248)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_device", file: !108, line: 280, size: 6912, elements: !4361)
!4361 = !{!4362, !4372, !4373, !4374, !4389, !4401, !4402, !4403, !4405}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "props", scope: !4360, file: !108, line: 284, baseType: !4363, size: 224)
!4363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_properties", file: !108, line: 182, size: 224, elements: !4364)
!4364 = !{!4365, !4366, !4367, !4368, !4369, !4370, !4371}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !4363, file: !108, line: 194, baseType: !132, size: 32)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !4363, file: !108, line: 203, baseType: !132, size: 32, offset: 32)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4363, file: !108, line: 219, baseType: !132, size: 32, offset: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !4363, file: !108, line: 238, baseType: !132, size: 32, offset: 96)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4363, file: !108, line: 249, baseType: !107, size: 32, offset: 128)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4363, file: !108, line: 264, baseType: !7, size: 32, offset: 160)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4363, file: !108, line: 272, baseType: !114, size: 32, offset: 192)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "update_lock", scope: !4360, file: !108, line: 294, baseType: !1207, size: 192, offset: 256)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "ops_lock", scope: !4360, file: !108, line: 303, baseType: !1207, size: 192, offset: 448)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4360, file: !108, line: 312, baseType: !4375, size: 64, offset: 640)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4377)
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_ops", file: !108, line: 120, size: 256, elements: !4378)
!4378 = !{!4379, !4380, !4384, !4385}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4377, file: !108, line: 128, baseType: !7, size: 32)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "update_status", scope: !4377, file: !108, line: 146, baseType: !4381, size: 64, offset: 64)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!132, !4359}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "get_brightness", scope: !4377, file: !108, line: 160, baseType: !4381, size: 64, offset: 128)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "check_fb", scope: !4377, file: !108, line: 174, baseType: !4386, size: 64, offset: 192)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!132, !4359, !4254}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "fb_notif", scope: !4360, file: !108, line: 317, baseType: !4390, size: 192, offset: 704)
!4390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4391, line: 54, size: 192, elements: !4392)
!4391 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!4392 = !{!4393, !4399, !4400}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4390, file: !4391, line: 55, baseType: !4394, size: 64)
!4394 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4391, line: 51, baseType: !4395)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!132, !4398, !174, !123}
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4390, file: !4391, line: 56, baseType: !4398, size: 64, offset: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4390, file: !4391, line: 57, baseType: !132, size: 32, offset: 128)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4360, file: !108, line: 322, baseType: !152, size: 128, offset: 896)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4360, file: !108, line: 327, baseType: !262, size: 5568, offset: 1024)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "fb_bl_on", scope: !4360, file: !108, line: 335, baseType: !4404, size: 256, offset: 6592)
!4404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, size: 256, elements: !2321)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4360, file: !108, line: 340, baseType: !132, size: 32, offset: 6848)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "bl_curve_mutex", scope: !4255, file: !4247, line: 465, baseType: !1207, size: 192, offset: 5312)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "bl_curve", scope: !4255, file: !4247, line: 466, baseType: !4408, size: 1024, offset: 5504)
!4408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1386, size: 1024, elements: !3542)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_work", scope: !4255, file: !4247, line: 469, baseType: !4410, size: 704, offset: 6528)
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2050, line: 115, size: 704, elements: !4411)
!4411 = !{!4412, !4413, !4414, !4415}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4410, file: !2050, line: 116, baseType: !2049, size: 256)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4410, file: !2050, line: 117, baseType: !3642, size: 320, offset: 256)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4410, file: !2050, line: 120, baseType: !2884, size: 64, offset: 576)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4410, file: !2050, line: 121, baseType: !132, size: 32, offset: 640)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "fbdefio", scope: !4255, file: !4247, line: 470, baseType: !4417, size: 64, offset: 7232)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_deferred_io", file: !4247, line: 203, size: 512, elements: !4419)
!4419 = !{!4420, !4421, !4422, !4423, !4427}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4418, file: !4247, line: 205, baseType: !174, size: 64)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4418, file: !4247, line: 206, baseType: !1207, size: 192, offset: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "pagelist", scope: !4418, file: !4247, line: 207, baseType: !152, size: 128, offset: 256)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "first_io", scope: !4418, file: !4247, line: 209, baseType: !4424, size: 64, offset: 384)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{null, !4254}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_io", scope: !4418, file: !4247, line: 210, baseType: !4428, size: 64, offset: 448)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{null, !4254, !156}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "fbops", scope: !4255, file: !4247, line: 473, baseType: !4432, size: 64, offset: 7296)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4255, file: !4247, line: 474, baseType: !261, size: 64, offset: 7360)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4255, file: !4247, line: 475, baseType: !261, size: 64, offset: 7424)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "class_flag", scope: !4255, file: !4247, line: 476, baseType: !132, size: 32, offset: 7488)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "tileops", scope: !4255, file: !4247, line: 478, baseType: !4437, size: 64, offset: 7552)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tile_ops", file: !4247, line: 355, size: 384, elements: !4439)
!4439 = !{!4440, !4454, !4467, !4482, !4498, !4511}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "fb_settile", scope: !4438, file: !4247, line: 357, baseType: !4441, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{null, !4254, !4444}
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilemap", file: !4247, line: 306, size: 192, elements: !4446)
!4446 = !{!4447, !4448, !4449, !4450, !4451}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4445, file: !4247, line: 307, baseType: !130, size: 32)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4445, file: !4247, line: 308, baseType: !130, size: 32, offset: 32)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4445, file: !4247, line: 309, baseType: !130, size: 32, offset: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4445, file: !4247, line: 310, baseType: !130, size: 32, offset: 96)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4445, file: !4247, line: 311, baseType: !4452, size: 64, offset: 128)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1387)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilecopy", scope: !4438, file: !4247, line: 362, baseType: !4455, size: 64, offset: 64)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{null, !4254, !4458}
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilearea", file: !4247, line: 326, size: 192, elements: !4460)
!4460 = !{!4461, !4462, !4463, !4464, !4465, !4466}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4459, file: !4247, line: 327, baseType: !130, size: 32)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4459, file: !4247, line: 328, baseType: !130, size: 32, offset: 32)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4459, file: !4247, line: 329, baseType: !130, size: 32, offset: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4459, file: !4247, line: 330, baseType: !130, size: 32, offset: 96)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4459, file: !4247, line: 331, baseType: !130, size: 32, offset: 128)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4459, file: !4247, line: 332, baseType: !130, size: 32, offset: 160)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilefill", scope: !4438, file: !4247, line: 364, baseType: !4468, size: 64, offset: 128)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{null, !4254, !4471}
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilerect", file: !4247, line: 315, size: 256, elements: !4473)
!4473 = !{!4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4472, file: !4247, line: 316, baseType: !130, size: 32)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4472, file: !4247, line: 317, baseType: !130, size: 32, offset: 32)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4472, file: !4247, line: 318, baseType: !130, size: 32, offset: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4472, file: !4247, line: 319, baseType: !130, size: 32, offset: 96)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4472, file: !4247, line: 320, baseType: !130, size: 32, offset: 128)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4472, file: !4247, line: 321, baseType: !130, size: 32, offset: 160)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4472, file: !4247, line: 322, baseType: !130, size: 32, offset: 192)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4472, file: !4247, line: 323, baseType: !130, size: 32, offset: 224)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tileblit", scope: !4438, file: !4247, line: 366, baseType: !4483, size: 64, offset: 192)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{null, !4254, !4486}
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tileblit", file: !4247, line: 335, size: 320, elements: !4488)
!4488 = !{!4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4487, file: !4247, line: 336, baseType: !130, size: 32)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4487, file: !4247, line: 337, baseType: !130, size: 32, offset: 32)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4487, file: !4247, line: 338, baseType: !130, size: 32, offset: 64)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4487, file: !4247, line: 339, baseType: !130, size: 32, offset: 96)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4487, file: !4247, line: 340, baseType: !130, size: 32, offset: 128)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4487, file: !4247, line: 341, baseType: !130, size: 32, offset: 160)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4487, file: !4247, line: 342, baseType: !130, size: 32, offset: 192)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !4487, file: !4247, line: 343, baseType: !4497, size: 64, offset: 256)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilecursor", scope: !4438, file: !4247, line: 368, baseType: !4499, size: 64, offset: 256)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{null, !4254, !4502}
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilecursor", file: !4247, line: 346, size: 192, elements: !4504)
!4504 = !{!4505, !4506, !4507, !4508, !4509, !4510}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4503, file: !4247, line: 347, baseType: !130, size: 32)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4503, file: !4247, line: 348, baseType: !130, size: 32, offset: 32)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4503, file: !4247, line: 349, baseType: !130, size: 32, offset: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !4503, file: !4247, line: 350, baseType: !130, size: 32, offset: 96)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4503, file: !4247, line: 351, baseType: !130, size: 32, offset: 128)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4503, file: !4247, line: 352, baseType: !130, size: 32, offset: 160)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_tilemax", scope: !4438, file: !4247, line: 371, baseType: !4512, size: 64, offset: 320)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!132, !4254}
!4515 = !DIDerivedType(tag: DW_TAG_member, scope: !4255, file: !4247, line: 480, baseType: !4516, size: 64, offset: 7616)
!4516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4255, file: !4247, line: 480, size: 64, elements: !4517)
!4517 = !{!4518, !4519}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "screen_base", scope: !4516, file: !4247, line: 481, baseType: !319, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "screen_buffer", scope: !4516, file: !4247, line: 482, baseType: !319, size: 64)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "screen_size", scope: !4255, file: !4247, line: 484, baseType: !174, size: 64, offset: 7680)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "pseudo_palette", scope: !4255, file: !4247, line: 485, baseType: !123, size: 64, offset: 7744)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4255, file: !4247, line: 488, baseType: !128, size: 32, offset: 7808)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_par", scope: !4255, file: !4247, line: 489, baseType: !123, size: 64, offset: 7872)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !4255, file: !4247, line: 491, baseType: !123, size: 64, offset: 7936)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "apertures", scope: !4255, file: !4247, line: 501, baseType: !4526, size: 64, offset: 8000)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apertures_struct", file: !4247, line: 495, size: 64, elements: !4528)
!4528 = !{!4529, !4530}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4527, file: !4247, line: 496, baseType: !7, size: 32)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4527, file: !4247, line: 500, baseType: !4531, offset: 64)
!4531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4532, elements: !1791)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aperture", file: !4247, line: 497, size: 128, elements: !4533)
!4533 = !{!4534, !4535}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4532, file: !4247, line: 498, baseType: !200, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4532, file: !4247, line: 499, baseType: !200, size: 64, offset: 64)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "skip_vt_switch", scope: !4255, file: !4247, line: 503, baseType: !525, size: 8, offset: 8064)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "fb_release", scope: !4246, file: !4247, line: 232, baseType: !4251, size: 64, offset: 128)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "fb_read", scope: !4246, file: !4247, line: 237, baseType: !4539, size: 64, offset: 192)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!350, !4254, !319, !365, !2967}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "fb_write", scope: !4246, file: !4247, line: 239, baseType: !4543, size: 64, offset: 256)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!350, !4254, !159, !365, !2967}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "fb_check_var", scope: !4246, file: !4247, line: 244, baseType: !4547, size: 64, offset: 320)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!132, !4550, !4254}
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "fb_set_par", scope: !4246, file: !4247, line: 247, baseType: !4512, size: 64, offset: 384)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcolreg", scope: !4246, file: !4247, line: 250, baseType: !4553, size: 64, offset: 448)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!132, !7, !7, !7, !7, !7, !4254}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcmap", scope: !4246, file: !4247, line: 254, baseType: !4557, size: 64, offset: 512)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!132, !4560, !4254}
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !4246, file: !4247, line: 257, baseType: !4562, size: 64, offset: 576)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!132, !132, !4254}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "fb_pan_display", scope: !4246, file: !4247, line: 260, baseType: !4547, size: 64, offset: 640)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "fb_fillrect", scope: !4246, file: !4247, line: 263, baseType: !4567, size: 64, offset: 704)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{null, !4254, !4570}
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4572)
!4572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fillrect", file: !4185, line: 351, size: 192, elements: !4573)
!4573 = !{!4574, !4575, !4576, !4577, !4578, !4579}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4572, file: !4185, line: 352, baseType: !130, size: 32)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4572, file: !4185, line: 353, baseType: !130, size: 32, offset: 32)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4572, file: !4185, line: 354, baseType: !130, size: 32, offset: 64)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4572, file: !4185, line: 355, baseType: !130, size: 32, offset: 96)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !4572, file: !4185, line: 356, baseType: !130, size: 32, offset: 128)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4572, file: !4185, line: 357, baseType: !130, size: 32, offset: 160)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "fb_copyarea", scope: !4246, file: !4247, line: 265, baseType: !4581, size: 64, offset: 768)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{null, !4254, !4584}
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4586)
!4586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_copyarea", file: !4185, line: 342, size: 192, elements: !4587)
!4587 = !{!4588, !4589, !4590, !4591, !4592, !4593}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4586, file: !4185, line: 343, baseType: !130, size: 32)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4586, file: !4185, line: 344, baseType: !130, size: 32, offset: 32)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4586, file: !4185, line: 345, baseType: !130, size: 32, offset: 64)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4586, file: !4185, line: 346, baseType: !130, size: 32, offset: 96)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4586, file: !4185, line: 347, baseType: !130, size: 32, offset: 128)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4586, file: !4185, line: 348, baseType: !130, size: 32, offset: 160)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "fb_imageblit", scope: !4246, file: !4247, line: 267, baseType: !4595, size: 64, offset: 832)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{null, !4254, !4598}
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4600)
!4600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_image", file: !4185, line: 360, size: 640, elements: !4601)
!4601 = !{!4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4600, file: !4185, line: 361, baseType: !130, size: 32)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4600, file: !4185, line: 362, baseType: !130, size: 32, offset: 32)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4600, file: !4185, line: 363, baseType: !130, size: 32, offset: 64)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4600, file: !4185, line: 364, baseType: !130, size: 32, offset: 96)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "fg_color", scope: !4600, file: !4185, line: 365, baseType: !130, size: 32, offset: 128)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "bg_color", scope: !4600, file: !4185, line: 366, baseType: !130, size: 32, offset: 160)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4600, file: !4185, line: 367, baseType: !1387, size: 8, offset: 192)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4600, file: !4185, line: 368, baseType: !159, size: 64, offset: 256)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !4600, file: !4185, line: 369, baseType: !4347, size: 320, offset: 320)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "fb_cursor", scope: !4246, file: !4247, line: 270, baseType: !4612, size: 64, offset: 896)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!132, !4254, !4615}
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cursor", file: !4185, line: 388, size: 832, elements: !4617)
!4617 = !{!4618, !4619, !4620, !4621, !4622, !4627}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4616, file: !4185, line: 389, baseType: !896, size: 16)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4616, file: !4185, line: 390, baseType: !896, size: 16, offset: 16)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4616, file: !4185, line: 391, baseType: !896, size: 16, offset: 32)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4616, file: !4185, line: 392, baseType: !159, size: 64, offset: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "hot", scope: !4616, file: !4185, line: 393, baseType: !4623, size: 32, offset: 128)
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fbcurpos", file: !4185, line: 384, size: 32, elements: !4624)
!4624 = !{!4625, !4626}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4623, file: !4185, line: 385, baseType: !896, size: 16)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4623, file: !4185, line: 385, baseType: !896, size: 16, offset: 16)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "image", scope: !4616, file: !4185, line: 394, baseType: !4600, size: 640, offset: 192)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "fb_sync", scope: !4246, file: !4247, line: 273, baseType: !4512, size: 64, offset: 960)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "fb_ioctl", scope: !4246, file: !4247, line: 276, baseType: !4630, size: 64, offset: 1024)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!132, !4254, !7, !174}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "fb_compat_ioctl", scope: !4246, file: !4247, line: 280, baseType: !4630, size: 64, offset: 1088)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "fb_mmap", scope: !4246, file: !4247, line: 284, baseType: !4635, size: 64, offset: 1152)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!132, !4254, !1017}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_caps", scope: !4246, file: !4247, line: 287, baseType: !4639, size: 64, offset: 1216)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{null, !4254, !4642, !4550}
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_blit_caps", file: !4247, line: 144, size: 128, elements: !4644)
!4644 = !{!4645, !4646, !4647, !4648}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4643, file: !4247, line: 145, baseType: !128, size: 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4643, file: !4247, line: 146, baseType: !128, size: 32, offset: 32)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4643, file: !4247, line: 147, baseType: !128, size: 32, offset: 64)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4643, file: !4247, line: 148, baseType: !128, size: 32, offset: 96)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "fb_destroy", scope: !4246, file: !4247, line: 291, baseType: !4424, size: 64, offset: 1280)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_enter", scope: !4246, file: !4247, line: 294, baseType: !4512, size: 64, offset: 1344)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_leave", scope: !4246, file: !4247, line: 295, baseType: !4512, size: 64, offset: 1408)
!4652 = !DIGlobalVariableExpression(var: !4653, expr: !DIExpression(DW_OP_constu, 14318180, DW_OP_stack_value))
!4653 = distinct !DIGlobalVariable(name: "Fref", scope: !2, file: !3, line: 46, type: !2918, isLocal: true, isDefinition: true)
!4654 = !DIGlobalVariableExpression(var: !4655, expr: !DIExpression())
!4655 = distinct !DIGlobalVariable(name: "chips_init_xr", scope: !2, file: !3, line: 431, type: !4656, isLocal: true, isDefinition: true)
!4656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4657, size: 272, elements: !4069)
!4657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chips_init_reg", file: !3, line: 348, size: 16, elements: !4658)
!4658 = !{!4659, !4660}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4657, file: !3, line: 349, baseType: !126, size: 8)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4657, file: !3, line: 350, baseType: !126, size: 8, offset: 8)
!4661 = !DIGlobalVariableExpression(var: !4662, expr: !DIExpression())
!4662 = distinct !DIGlobalVariable(name: "chips_init_sr", scope: !2, file: !3, line: 353, type: !4663, isLocal: true, isDefinition: true)
!4663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4657, size: 64, elements: !212)
!4664 = !DIGlobalVariableExpression(var: !4665, expr: !DIExpression())
!4665 = distinct !DIGlobalVariable(name: "chips_init_gr", scope: !2, file: !3, line: 361, type: !4663, isLocal: true, isDefinition: true)
!4666 = !DIGlobalVariableExpression(var: !4667, expr: !DIExpression())
!4667 = distinct !DIGlobalVariable(name: "chips_init_ar", scope: !2, file: !3, line: 369, type: !4663, isLocal: true, isDefinition: true)
!4668 = !DIGlobalVariableExpression(var: !4669, expr: !DIExpression())
!4669 = distinct !DIGlobalVariable(name: "chips_init_cr", scope: !2, file: !3, line: 377, type: !4670, isLocal: true, isDefinition: true)
!4670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4657, size: 112, elements: !4671)
!4671 = !{!4672}
!4672 = !DISubrange(count: 7)
!4673 = !DIGlobalVariableExpression(var: !4674, expr: !DIExpression())
!4674 = distinct !DIGlobalVariable(name: "chips_init_fr", scope: !2, file: !3, line: 389, type: !4675, isLocal: true, isDefinition: true)
!4675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4657, size: 560, elements: !4676)
!4676 = !{!4677}
!4677 = !DISubrange(count: 35)
!4678 = !{i32 7, !"Dwarf Version", i32 4}
!4679 = !{i32 2, !"Debug Info Version", i32 3}
!4680 = !{i32 1, !"wchar_size", i32 2}
!4681 = !{i32 1, !"Code Model", i32 2}
!4682 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4683 = distinct !DISubprogram(name: "asiliantfb_init", scope: !3, file: !3, line: 609, type: !4684, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!132}
!4686 = !DILocation(line: 611, column: 6, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4683, file: !3, line: 611, column: 6)
!4688 = !DILocation(line: 611, column: 6, scope: !4683)
!4689 = !DILocation(line: 612, column: 3, scope: !4687)
!4690 = !DILocation(line: 614, column: 9, scope: !4683)
!4691 = !DILocation(line: 614, column: 2, scope: !4683)
!4692 = !DILocation(line: 615, column: 1, scope: !4683)
!4693 = distinct !DISubprogram(name: "asiliantfb_exit", scope: !3, file: !3, line: 619, type: !1970, scopeLine: 620, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!4694 = !DILocation(line: 621, column: 2, scope: !4693)
!4695 = !DILocation(line: 622, column: 1, scope: !4693)
!4696 = distinct !DISubprogram(name: "asiliantfb_pci_init", scope: !3, file: !3, line: 538, type: !177, scopeLine: 540, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!4697 = !DILocalVariable(name: "dp", arg: 1, scope: !4696, file: !3, line: 538, type: !179)
!4698 = !DILocation(line: 538, column: 48, scope: !4696)
!4699 = !DILocalVariable(name: "ent", arg: 2, scope: !4696, file: !3, line: 539, type: !161)
!4700 = !DILocation(line: 539, column: 39, scope: !4696)
!4701 = !DILocalVariable(name: "addr", scope: !4696, file: !3, line: 541, type: !174)
!4702 = !DILocation(line: 541, column: 16, scope: !4696)
!4703 = !DILocalVariable(name: "size", scope: !4696, file: !3, line: 541, type: !174)
!4704 = !DILocation(line: 541, column: 22, scope: !4696)
!4705 = !DILocalVariable(name: "p", scope: !4696, file: !3, line: 542, type: !4254)
!4706 = !DILocation(line: 542, column: 18, scope: !4696)
!4707 = !DILocalVariable(name: "err", scope: !4696, file: !3, line: 543, type: !132)
!4708 = !DILocation(line: 543, column: 6, scope: !4696)
!4709 = !DILocation(line: 545, column: 7, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 545, column: 6)
!4711 = !DILocation(line: 545, column: 11, scope: !4710)
!4712 = !DILocation(line: 545, column: 23, scope: !4710)
!4713 = !DILocation(line: 545, column: 29, scope: !4710)
!4714 = !DILocation(line: 545, column: 47, scope: !4710)
!4715 = !DILocation(line: 545, column: 6, scope: !4696)
!4716 = !DILocation(line: 546, column: 3, scope: !4710)
!4717 = !DILocation(line: 547, column: 9, scope: !4696)
!4718 = !DILocation(line: 547, column: 7, scope: !4696)
!4719 = !DILocation(line: 548, column: 9, scope: !4696)
!4720 = !DILocation(line: 548, column: 7, scope: !4696)
!4721 = !DILocation(line: 549, column: 6, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 549, column: 6)
!4723 = !DILocation(line: 549, column: 11, scope: !4722)
!4724 = !DILocation(line: 549, column: 6, scope: !4696)
!4725 = !DILocation(line: 550, column: 3, scope: !4722)
!4726 = !DILocation(line: 551, column: 7, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 551, column: 6)
!4728 = !DILocation(line: 551, column: 6, scope: !4696)
!4729 = !DILocation(line: 552, column: 3, scope: !4727)
!4730 = !DILocation(line: 554, column: 43, scope: !4696)
!4731 = !DILocation(line: 554, column: 47, scope: !4696)
!4732 = !DILocation(line: 554, column: 6, scope: !4696)
!4733 = !DILocation(line: 554, column: 4, scope: !4696)
!4734 = !DILocation(line: 555, column: 7, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 555, column: 6)
!4736 = !DILocation(line: 555, column: 6, scope: !4696)
!4737 = !DILocation(line: 556, column: 3, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 555, column: 10)
!4739 = !DILocation(line: 557, column: 3, scope: !4738)
!4740 = !DILocation(line: 559, column: 22, scope: !4696)
!4741 = !DILocation(line: 559, column: 25, scope: !4696)
!4742 = !DILocation(line: 559, column: 2, scope: !4696)
!4743 = !DILocation(line: 559, column: 5, scope: !4696)
!4744 = !DILocation(line: 559, column: 20, scope: !4696)
!4745 = !DILocation(line: 560, column: 2, scope: !4696)
!4746 = !DILocation(line: 560, column: 5, scope: !4696)
!4747 = !DILocation(line: 560, column: 9, scope: !4696)
!4748 = !DILocation(line: 562, column: 27, scope: !4696)
!4749 = !DILocation(line: 562, column: 19, scope: !4696)
!4750 = !DILocation(line: 562, column: 2, scope: !4696)
!4751 = !DILocation(line: 562, column: 5, scope: !4696)
!4752 = !DILocation(line: 562, column: 17, scope: !4696)
!4753 = !DILocation(line: 563, column: 6, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 563, column: 6)
!4755 = !DILocation(line: 563, column: 9, scope: !4754)
!4756 = !DILocation(line: 563, column: 21, scope: !4754)
!4757 = !DILocation(line: 563, column: 6, scope: !4696)
!4758 = !DILocation(line: 564, column: 3, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !4754, file: !3, line: 563, column: 30)
!4760 = !DILocation(line: 565, column: 23, scope: !4759)
!4761 = !DILocation(line: 565, column: 3, scope: !4759)
!4762 = !DILocation(line: 566, column: 3, scope: !4759)
!4763 = !DILocation(line: 569, column: 25, scope: !4696)
!4764 = !DILocation(line: 569, column: 2, scope: !4696)
!4765 = !DILocation(line: 570, column: 12, scope: !4696)
!4766 = !DILocation(line: 570, column: 15, scope: !4696)
!4767 = !DILocation(line: 570, column: 27, scope: !4696)
!4768 = !DILocation(line: 570, column: 2, scope: !4696)
!4769 = !DILocation(line: 572, column: 22, scope: !4696)
!4770 = !DILocation(line: 572, column: 25, scope: !4696)
!4771 = !DILocation(line: 572, column: 8, scope: !4696)
!4772 = !DILocation(line: 572, column: 6, scope: !4696)
!4773 = !DILocation(line: 573, column: 6, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 573, column: 6)
!4775 = !DILocation(line: 573, column: 6, scope: !4696)
!4776 = !DILocation(line: 574, column: 11, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 573, column: 11)
!4778 = !DILocation(line: 574, column: 14, scope: !4777)
!4779 = !DILocation(line: 574, column: 3, scope: !4777)
!4780 = !DILocation(line: 575, column: 3, scope: !4777)
!4781 = !DILocation(line: 576, column: 23, scope: !4777)
!4782 = !DILocation(line: 576, column: 3, scope: !4777)
!4783 = !DILocation(line: 577, column: 10, scope: !4777)
!4784 = !DILocation(line: 577, column: 3, scope: !4777)
!4785 = !DILocation(line: 580, column: 18, scope: !4696)
!4786 = !DILocation(line: 580, column: 22, scope: !4696)
!4787 = !DILocation(line: 580, column: 2, scope: !4696)
!4788 = !DILocation(line: 581, column: 2, scope: !4696)
!4789 = !DILocation(line: 582, column: 1, scope: !4696)
!4790 = distinct !DISubprogram(name: "asiliantfb_remove", scope: !3, file: !3, line: 584, type: !4138, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!4791 = !DILocalVariable(name: "dp", arg: 1, scope: !4790, file: !3, line: 584, type: !179)
!4792 = !DILocation(line: 584, column: 47, scope: !4790)
!4793 = !DILocalVariable(name: "p", scope: !4790, file: !3, line: 586, type: !4254)
!4794 = !DILocation(line: 586, column: 18, scope: !4790)
!4795 = !DILocation(line: 586, column: 38, scope: !4790)
!4796 = !DILocation(line: 586, column: 22, scope: !4790)
!4797 = !DILocation(line: 588, column: 25, scope: !4790)
!4798 = !DILocation(line: 588, column: 2, scope: !4790)
!4799 = !DILocation(line: 589, column: 19, scope: !4790)
!4800 = !DILocation(line: 589, column: 22, scope: !4790)
!4801 = !DILocation(line: 589, column: 2, scope: !4790)
!4802 = !DILocation(line: 590, column: 10, scope: !4790)
!4803 = !DILocation(line: 590, column: 13, scope: !4790)
!4804 = !DILocation(line: 590, column: 2, scope: !4790)
!4805 = !DILocation(line: 591, column: 2, scope: !4790)
!4806 = !DILocation(line: 592, column: 22, scope: !4790)
!4807 = !DILocation(line: 592, column: 2, scope: !4790)
!4808 = !DILocation(line: 593, column: 1, scope: !4790)
!4809 = distinct !DISubprogram(name: "writeb", scope: !4810, file: !4810, line: 65, type: !4811, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!4810 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4811 = !DISubroutineType(types: !4812)
!4812 = !{null, !126, !4813}
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4815 = !DILocalVariable(name: "val", arg: 1, scope: !4809, file: !4810, line: 65, type: !126)
!4816 = !DILocation(line: 65, column: 1, scope: !4809)
!4817 = !DILocalVariable(name: "addr", arg: 2, scope: !4809, file: !4810, line: 65, type: !4813)
!4818 = !{i32 -2141397229}
!4819 = distinct !DISubprogram(name: "init_asiliant", scope: !3, file: !3, line: 507, type: !4820, scopeLine: 508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!132, !4254, !174}
!4822 = !DILocalVariable(name: "p", arg: 1, scope: !4819, file: !3, line: 507, type: !4254)
!4823 = !DILocation(line: 507, column: 42, scope: !4819)
!4824 = !DILocalVariable(name: "addr", arg: 2, scope: !4819, file: !3, line: 507, type: !174)
!4825 = !DILocation(line: 507, column: 59, scope: !4819)
!4826 = !DILocalVariable(name: "err", scope: !4819, file: !3, line: 509, type: !132)
!4827 = !DILocation(line: 509, column: 6, scope: !4819)
!4828 = !DILocation(line: 511, column: 2, scope: !4819)
!4829 = !DILocation(line: 511, column: 5, scope: !4819)
!4830 = !DILocation(line: 511, column: 13, scope: !4819)
!4831 = !DILocation(line: 512, column: 22, scope: !4819)
!4832 = !DILocation(line: 512, column: 2, scope: !4819)
!4833 = !DILocation(line: 512, column: 5, scope: !4819)
!4834 = !DILocation(line: 512, column: 9, scope: !4819)
!4835 = !DILocation(line: 512, column: 20, scope: !4819)
!4836 = !DILocation(line: 513, column: 2, scope: !4819)
!4837 = !DILocation(line: 513, column: 5, scope: !4819)
!4838 = !DILocation(line: 513, column: 13, scope: !4819)
!4839 = !DILocation(line: 514, column: 2, scope: !4819)
!4840 = !DILocation(line: 514, column: 5, scope: !4819)
!4841 = !DILocation(line: 514, column: 12, scope: !4819)
!4842 = !DILocation(line: 515, column: 2, scope: !4819)
!4843 = !DILocation(line: 515, column: 5, scope: !4819)
!4844 = !DILocation(line: 515, column: 12, scope: !4819)
!4845 = !DILocation(line: 517, column: 23, scope: !4819)
!4846 = !DILocation(line: 517, column: 26, scope: !4819)
!4847 = !DILocation(line: 517, column: 8, scope: !4819)
!4848 = !DILocation(line: 517, column: 6, scope: !4819)
!4849 = !DILocation(line: 518, column: 6, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 518, column: 6)
!4851 = !DILocation(line: 518, column: 6, scope: !4819)
!4852 = !DILocation(line: 519, column: 3, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 518, column: 11)
!4854 = !DILocation(line: 520, column: 10, scope: !4853)
!4855 = !DILocation(line: 520, column: 3, scope: !4853)
!4856 = !DILocation(line: 523, column: 29, scope: !4819)
!4857 = !DILocation(line: 523, column: 8, scope: !4819)
!4858 = !DILocation(line: 523, column: 6, scope: !4819)
!4859 = !DILocation(line: 524, column: 6, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 524, column: 6)
!4861 = !DILocation(line: 524, column: 10, scope: !4860)
!4862 = !DILocation(line: 524, column: 6, scope: !4819)
!4863 = !DILocation(line: 525, column: 3, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4860, file: !3, line: 524, column: 15)
!4865 = !DILocation(line: 526, column: 20, scope: !4864)
!4866 = !DILocation(line: 526, column: 23, scope: !4864)
!4867 = !DILocation(line: 526, column: 3, scope: !4864)
!4868 = !DILocation(line: 527, column: 10, scope: !4864)
!4869 = !DILocation(line: 527, column: 3, scope: !4864)
!4870 = !DILocation(line: 530, column: 2, scope: !4819)
!4871 = !DILocation(line: 533, column: 15, scope: !4819)
!4872 = !DILocation(line: 533, column: 25, scope: !4819)
!4873 = !DILocation(line: 533, column: 2, scope: !4819)
!4874 = !DILocation(line: 534, column: 16, scope: !4819)
!4875 = !DILocation(line: 534, column: 2, scope: !4819)
!4876 = !DILocation(line: 535, column: 2, scope: !4819)
!4877 = !DILocation(line: 536, column: 1, scope: !4819)
!4878 = distinct !DISubprogram(name: "pci_set_drvdata", scope: !149, file: !149, line: 1870, type: !4879, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{null, !179, !123}
!4881 = !DILocalVariable(name: "pdev", arg: 1, scope: !4878, file: !149, line: 1870, type: !179)
!4882 = !DILocation(line: 1870, column: 52, scope: !4878)
!4883 = !DILocalVariable(name: "data", arg: 2, scope: !4878, file: !149, line: 1870, type: !123)
!4884 = !DILocation(line: 1870, column: 64, scope: !4878)
!4885 = !DILocation(line: 1872, column: 19, scope: !4878)
!4886 = !DILocation(line: 1872, column: 25, scope: !4878)
!4887 = !DILocation(line: 1872, column: 30, scope: !4878)
!4888 = !DILocation(line: 1872, column: 2, scope: !4878)
!4889 = !DILocation(line: 1873, column: 1, scope: !4878)
!4890 = distinct !DISubprogram(name: "chips_hw_init", scope: !3, file: !3, line: 454, type: !4425, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!4891 = !DILocalVariable(name: "p", arg: 1, scope: !4890, file: !3, line: 454, type: !4254)
!4892 = !DILocation(line: 454, column: 43, scope: !4890)
!4893 = !DILocalVariable(name: "i", scope: !4890, file: !3, line: 456, type: !132)
!4894 = !DILocation(line: 456, column: 6, scope: !4890)
!4895 = !DILocation(line: 458, column: 9, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 458, column: 2)
!4897 = !DILocation(line: 458, column: 7, scope: !4896)
!4898 = !DILocation(line: 458, column: 14, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4896, file: !3, line: 458, column: 2)
!4900 = !DILocation(line: 458, column: 16, scope: !4899)
!4901 = !DILocation(line: 458, column: 2, scope: !4896)
!4902 = !DILocation(line: 459, column: 3, scope: !4899)
!4903 = !DILocation(line: 458, column: 45, scope: !4899)
!4904 = !DILocation(line: 458, column: 2, scope: !4899)
!4905 = distinct !{!4905, !4901, !4906}
!4906 = !DILocation(line: 459, column: 3, scope: !4896)
!4907 = !DILocation(line: 460, column: 2, scope: !4890)
!4908 = !DILocation(line: 461, column: 2, scope: !4890)
!4909 = !DILocation(line: 462, column: 2, scope: !4890)
!4910 = !DILocation(line: 463, column: 9, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 463, column: 2)
!4912 = !DILocation(line: 463, column: 7, scope: !4911)
!4913 = !DILocation(line: 463, column: 14, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 463, column: 2)
!4915 = !DILocation(line: 463, column: 16, scope: !4914)
!4916 = !DILocation(line: 463, column: 2, scope: !4911)
!4917 = !DILocation(line: 464, column: 3, scope: !4914)
!4918 = !DILocation(line: 463, column: 45, scope: !4914)
!4919 = !DILocation(line: 463, column: 2, scope: !4914)
!4920 = distinct !{!4920, !4916, !4921}
!4921 = !DILocation(line: 464, column: 3, scope: !4911)
!4922 = !DILocation(line: 465, column: 9, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 465, column: 2)
!4924 = !DILocation(line: 465, column: 7, scope: !4923)
!4925 = !DILocation(line: 465, column: 14, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4923, file: !3, line: 465, column: 2)
!4927 = !DILocation(line: 465, column: 16, scope: !4926)
!4928 = !DILocation(line: 465, column: 2, scope: !4923)
!4929 = !DILocation(line: 466, column: 3, scope: !4926)
!4930 = !DILocation(line: 465, column: 45, scope: !4926)
!4931 = !DILocation(line: 465, column: 2, scope: !4926)
!4932 = distinct !{!4932, !4928, !4933}
!4933 = !DILocation(line: 466, column: 3, scope: !4923)
!4934 = !DILocation(line: 467, column: 9, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 467, column: 2)
!4936 = !DILocation(line: 467, column: 7, scope: !4935)
!4937 = !DILocation(line: 467, column: 14, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4935, file: !3, line: 467, column: 2)
!4939 = !DILocation(line: 467, column: 16, scope: !4938)
!4940 = !DILocation(line: 467, column: 2, scope: !4935)
!4941 = !DILocation(line: 468, column: 3, scope: !4938)
!4942 = !DILocation(line: 467, column: 45, scope: !4938)
!4943 = !DILocation(line: 467, column: 2, scope: !4938)
!4944 = distinct !{!4944, !4940, !4945}
!4945 = !DILocation(line: 468, column: 3, scope: !4935)
!4946 = !DILocation(line: 470, column: 15, scope: !4890)
!4947 = !DILocation(line: 470, column: 25, scope: !4890)
!4948 = !DILocation(line: 470, column: 2, scope: !4890)
!4949 = !DILocation(line: 471, column: 9, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 471, column: 2)
!4951 = !DILocation(line: 471, column: 7, scope: !4950)
!4952 = !DILocation(line: 471, column: 14, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4950, file: !3, line: 471, column: 2)
!4954 = !DILocation(line: 471, column: 16, scope: !4953)
!4955 = !DILocation(line: 471, column: 2, scope: !4950)
!4956 = !DILocation(line: 472, column: 3, scope: !4953)
!4957 = !DILocation(line: 471, column: 45, scope: !4953)
!4958 = !DILocation(line: 471, column: 2, scope: !4953)
!4959 = distinct !{!4959, !4955, !4960}
!4960 = !DILocation(line: 472, column: 3, scope: !4950)
!4961 = !DILocation(line: 473, column: 9, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 473, column: 2)
!4963 = !DILocation(line: 473, column: 7, scope: !4962)
!4964 = !DILocation(line: 473, column: 14, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 473, column: 2)
!4966 = !DILocation(line: 473, column: 16, scope: !4965)
!4967 = !DILocation(line: 473, column: 2, scope: !4962)
!4968 = !DILocation(line: 474, column: 3, scope: !4965)
!4969 = !DILocation(line: 473, column: 45, scope: !4965)
!4970 = !DILocation(line: 473, column: 2, scope: !4965)
!4971 = distinct !{!4971, !4967, !4972}
!4972 = !DILocation(line: 474, column: 3, scope: !4962)
!4973 = !DILocation(line: 475, column: 1, scope: !4890)
!4974 = distinct !DISubprogram(name: "asiliantfb_check_var", scope: !3, file: !3, line: 225, type: !4548, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!4975 = !DILocalVariable(name: "var", arg: 1, scope: !4974, file: !3, line: 225, type: !4550)
!4976 = !DILocation(line: 225, column: 59, scope: !4974)
!4977 = !DILocalVariable(name: "p", arg: 2, scope: !4974, file: !3, line: 226, type: !4254)
!4978 = !DILocation(line: 226, column: 25, scope: !4974)
!4979 = !DILocalVariable(name: "Ftarget", scope: !4974, file: !3, line: 228, type: !174)
!4980 = !DILocation(line: 228, column: 16, scope: !4974)
!4981 = !DILocalVariable(name: "ratio", scope: !4974, file: !3, line: 228, type: !174)
!4982 = !DILocation(line: 228, column: 25, scope: !4974)
!4983 = !DILocalVariable(name: "remainder", scope: !4974, file: !3, line: 228, type: !174)
!4984 = !DILocation(line: 228, column: 32, scope: !4974)
!4985 = !DILocation(line: 230, column: 20, scope: !4974)
!4986 = !DILocation(line: 230, column: 25, scope: !4974)
!4987 = !DILocation(line: 230, column: 18, scope: !4974)
!4988 = !DILocation(line: 230, column: 10, scope: !4974)
!4989 = !DILocation(line: 230, column: 8, scope: !4974)
!4990 = !DILocation(line: 231, column: 24, scope: !4974)
!4991 = !DILocation(line: 231, column: 29, scope: !4974)
!4992 = !DILocation(line: 231, column: 22, scope: !4974)
!4993 = !DILocation(line: 231, column: 14, scope: !4974)
!4994 = !DILocation(line: 231, column: 12, scope: !4974)
!4995 = !DILocation(line: 232, column: 22, scope: !4974)
!4996 = !DILocation(line: 232, column: 20, scope: !4974)
!4997 = !DILocation(line: 232, column: 41, scope: !4974)
!4998 = !DILocation(line: 232, column: 39, scope: !4974)
!4999 = !DILocation(line: 232, column: 54, scope: !4974)
!5000 = !DILocation(line: 232, column: 59, scope: !4974)
!5001 = !DILocation(line: 232, column: 52, scope: !4974)
!5002 = !DILocation(line: 232, column: 28, scope: !4974)
!5003 = !DILocation(line: 232, column: 10, scope: !4974)
!5004 = !DILocation(line: 236, column: 6, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 236, column: 6)
!5006 = !DILocation(line: 236, column: 14, scope: !5005)
!5007 = !DILocation(line: 236, column: 26, scope: !5005)
!5008 = !DILocation(line: 236, column: 29, scope: !5005)
!5009 = !DILocation(line: 236, column: 37, scope: !5005)
!5010 = !DILocation(line: 236, column: 6, scope: !4974)
!5011 = !DILocation(line: 237, column: 3, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 236, column: 48)
!5013 = !DILocation(line: 238, column: 3, scope: !5012)
!5014 = !DILocation(line: 240, column: 22, scope: !4974)
!5015 = !DILocation(line: 240, column: 27, scope: !4974)
!5016 = !DILocation(line: 240, column: 2, scope: !4974)
!5017 = !DILocation(line: 240, column: 7, scope: !4974)
!5018 = !DILocation(line: 240, column: 20, scope: !4974)
!5019 = !DILocation(line: 241, column: 22, scope: !4974)
!5020 = !DILocation(line: 241, column: 27, scope: !4974)
!5021 = !DILocation(line: 241, column: 2, scope: !4974)
!5022 = !DILocation(line: 241, column: 7, scope: !4974)
!5023 = !DILocation(line: 241, column: 20, scope: !4974)
!5024 = !DILocation(line: 243, column: 6, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 243, column: 6)
!5026 = !DILocation(line: 243, column: 11, scope: !5025)
!5027 = !DILocation(line: 243, column: 26, scope: !5025)
!5028 = !DILocation(line: 243, column: 6, scope: !4974)
!5029 = !DILocation(line: 244, column: 3, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 243, column: 33)
!5031 = !DILocation(line: 244, column: 8, scope: !5030)
!5032 = !DILocation(line: 244, column: 12, scope: !5030)
!5033 = !DILocation(line: 244, column: 19, scope: !5030)
!5034 = !DILocation(line: 245, column: 3, scope: !5030)
!5035 = !DILocation(line: 245, column: 8, scope: !5030)
!5036 = !DILocation(line: 245, column: 14, scope: !5030)
!5037 = !DILocation(line: 245, column: 21, scope: !5030)
!5038 = !DILocation(line: 246, column: 3, scope: !5030)
!5039 = !DILocation(line: 246, column: 8, scope: !5030)
!5040 = !DILocation(line: 246, column: 13, scope: !5030)
!5041 = !DILocation(line: 246, column: 20, scope: !5030)
!5042 = !DILocation(line: 247, column: 40, scope: !5030)
!5043 = !DILocation(line: 247, column: 45, scope: !5030)
!5044 = !DILocation(line: 247, column: 51, scope: !5030)
!5045 = !DILocation(line: 247, column: 58, scope: !5030)
!5046 = !DILocation(line: 247, column: 21, scope: !5030)
!5047 = !DILocation(line: 247, column: 26, scope: !5030)
!5048 = !DILocation(line: 247, column: 31, scope: !5030)
!5049 = !DILocation(line: 247, column: 38, scope: !5030)
!5050 = !DILocation(line: 247, column: 3, scope: !5030)
!5051 = !DILocation(line: 247, column: 8, scope: !5030)
!5052 = !DILocation(line: 247, column: 12, scope: !5030)
!5053 = !DILocation(line: 247, column: 19, scope: !5030)
!5054 = !DILocation(line: 248, column: 2, scope: !5030)
!5055 = !DILocation(line: 248, column: 13, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 248, column: 13)
!5057 = !DILocation(line: 248, column: 18, scope: !5056)
!5058 = !DILocation(line: 248, column: 33, scope: !5056)
!5059 = !DILocation(line: 248, column: 13, scope: !5025)
!5060 = !DILocation(line: 249, column: 11, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5056, file: !3, line: 248, column: 40)
!5062 = !DILocation(line: 249, column: 16, scope: !5061)
!5063 = !DILocation(line: 249, column: 20, scope: !5061)
!5064 = !DILocation(line: 249, column: 3, scope: !5061)
!5065 = !DILocation(line: 251, column: 5, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 249, column: 28)
!5067 = !DILocation(line: 251, column: 10, scope: !5066)
!5068 = !DILocation(line: 251, column: 16, scope: !5066)
!5069 = !DILocation(line: 251, column: 23, scope: !5066)
!5070 = !DILocation(line: 252, column: 5, scope: !5066)
!5071 = !DILocation(line: 254, column: 5, scope: !5066)
!5072 = !DILocation(line: 254, column: 10, scope: !5066)
!5073 = !DILocation(line: 254, column: 16, scope: !5066)
!5074 = !DILocation(line: 254, column: 23, scope: !5066)
!5075 = !DILocation(line: 255, column: 5, scope: !5066)
!5076 = !DILocation(line: 257, column: 5, scope: !5066)
!5077 = !DILocation(line: 259, column: 3, scope: !5061)
!5078 = !DILocation(line: 259, column: 8, scope: !5061)
!5079 = !DILocation(line: 259, column: 14, scope: !5061)
!5080 = !DILocation(line: 259, column: 21, scope: !5061)
!5081 = !DILocation(line: 260, column: 3, scope: !5061)
!5082 = !DILocation(line: 260, column: 8, scope: !5061)
!5083 = !DILocation(line: 260, column: 13, scope: !5061)
!5084 = !DILocation(line: 260, column: 20, scope: !5061)
!5085 = !DILocation(line: 261, column: 21, scope: !5061)
!5086 = !DILocation(line: 261, column: 26, scope: !5061)
!5087 = !DILocation(line: 261, column: 31, scope: !5061)
!5088 = !DILocation(line: 261, column: 38, scope: !5061)
!5089 = !DILocation(line: 261, column: 3, scope: !5061)
!5090 = !DILocation(line: 261, column: 8, scope: !5061)
!5091 = !DILocation(line: 261, column: 12, scope: !5061)
!5092 = !DILocation(line: 261, column: 19, scope: !5061)
!5093 = !DILocation(line: 262, column: 2, scope: !5061)
!5094 = !DILocation(line: 262, column: 13, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !5056, file: !3, line: 262, column: 13)
!5096 = !DILocation(line: 262, column: 18, scope: !5095)
!5097 = !DILocation(line: 262, column: 33, scope: !5095)
!5098 = !DILocation(line: 262, column: 13, scope: !5056)
!5099 = !DILocation(line: 263, column: 41, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5095, file: !3, line: 262, column: 39)
!5101 = !DILocation(line: 263, column: 46, scope: !5100)
!5102 = !DILocation(line: 263, column: 51, scope: !5100)
!5103 = !DILocation(line: 263, column: 58, scope: !5100)
!5104 = !DILocation(line: 263, column: 21, scope: !5100)
!5105 = !DILocation(line: 263, column: 26, scope: !5100)
!5106 = !DILocation(line: 263, column: 32, scope: !5100)
!5107 = !DILocation(line: 263, column: 39, scope: !5100)
!5108 = !DILocation(line: 263, column: 3, scope: !5100)
!5109 = !DILocation(line: 263, column: 8, scope: !5100)
!5110 = !DILocation(line: 263, column: 12, scope: !5100)
!5111 = !DILocation(line: 263, column: 19, scope: !5100)
!5112 = !DILocation(line: 264, column: 41, scope: !5100)
!5113 = !DILocation(line: 264, column: 46, scope: !5100)
!5114 = !DILocation(line: 264, column: 51, scope: !5100)
!5115 = !DILocation(line: 264, column: 58, scope: !5100)
!5116 = !DILocation(line: 264, column: 21, scope: !5100)
!5117 = !DILocation(line: 264, column: 26, scope: !5100)
!5118 = !DILocation(line: 264, column: 32, scope: !5100)
!5119 = !DILocation(line: 264, column: 39, scope: !5100)
!5120 = !DILocation(line: 264, column: 3, scope: !5100)
!5121 = !DILocation(line: 264, column: 8, scope: !5100)
!5122 = !DILocation(line: 264, column: 12, scope: !5100)
!5123 = !DILocation(line: 264, column: 19, scope: !5100)
!5124 = !DILocation(line: 265, column: 2, scope: !5100)
!5125 = !DILocation(line: 266, column: 2, scope: !4974)
!5126 = !DILocation(line: 267, column: 1, scope: !4974)
!5127 = distinct !DISubprogram(name: "asiliantfb_set_par", scope: !3, file: !3, line: 269, type: !4513, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5128 = !DILocalVariable(name: "p", arg: 1, scope: !5127, file: !3, line: 269, type: !4254)
!5129 = !DILocation(line: 269, column: 47, scope: !5127)
!5130 = !DILocalVariable(name: "dclk2_m", scope: !5127, file: !3, line: 271, type: !1386)
!5131 = !DILocation(line: 271, column: 5, scope: !5127)
!5132 = !DILocalVariable(name: "dclk2_n", scope: !5127, file: !3, line: 272, type: !1386)
!5133 = !DILocation(line: 272, column: 5, scope: !5127)
!5134 = !DILocalVariable(name: "dclk2_div", scope: !5127, file: !3, line: 273, type: !1386)
!5135 = !DILocation(line: 273, column: 5, scope: !5127)
!5136 = !DILocation(line: 276, column: 23, scope: !5127)
!5137 = !DILocation(line: 276, column: 26, scope: !5127)
!5138 = !DILocation(line: 276, column: 30, scope: !5127)
!5139 = !DILocation(line: 276, column: 2, scope: !5127)
!5140 = !DILocation(line: 279, column: 6, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 279, column: 6)
!5142 = !DILocation(line: 279, column: 9, scope: !5141)
!5143 = !DILocation(line: 279, column: 13, scope: !5141)
!5144 = !DILocation(line: 279, column: 28, scope: !5141)
!5145 = !DILocation(line: 279, column: 6, scope: !5127)
!5146 = !DILocation(line: 280, column: 3, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5141, file: !3, line: 279, column: 35)
!5148 = !DILocation(line: 281, column: 3, scope: !5147)
!5149 = !DILocation(line: 282, column: 3, scope: !5147)
!5150 = !DILocation(line: 283, column: 2, scope: !5147)
!5151 = !DILocation(line: 283, column: 13, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5141, file: !3, line: 283, column: 13)
!5153 = !DILocation(line: 283, column: 16, scope: !5152)
!5154 = !DILocation(line: 283, column: 20, scope: !5152)
!5155 = !DILocation(line: 283, column: 35, scope: !5152)
!5156 = !DILocation(line: 283, column: 13, scope: !5141)
!5157 = !DILocation(line: 284, column: 7, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 284, column: 7)
!5159 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 283, column: 42)
!5160 = !DILocation(line: 284, column: 10, scope: !5158)
!5161 = !DILocation(line: 284, column: 14, scope: !5158)
!5162 = !DILocation(line: 284, column: 18, scope: !5158)
!5163 = !DILocation(line: 284, column: 25, scope: !5158)
!5164 = !DILocation(line: 284, column: 7, scope: !5159)
!5165 = !DILocation(line: 285, column: 4, scope: !5158)
!5166 = !DILocation(line: 287, column: 4, scope: !5158)
!5167 = !DILocation(line: 288, column: 3, scope: !5159)
!5168 = !DILocation(line: 289, column: 3, scope: !5159)
!5169 = !DILocation(line: 290, column: 2, scope: !5159)
!5170 = !DILocation(line: 290, column: 13, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 290, column: 13)
!5172 = !DILocation(line: 290, column: 16, scope: !5171)
!5173 = !DILocation(line: 290, column: 20, scope: !5171)
!5174 = !DILocation(line: 290, column: 35, scope: !5171)
!5175 = !DILocation(line: 290, column: 13, scope: !5152)
!5176 = !DILocation(line: 291, column: 3, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5171, file: !3, line: 290, column: 41)
!5178 = !DILocation(line: 292, column: 3, scope: !5177)
!5179 = !DILocation(line: 293, column: 3, scope: !5177)
!5180 = !DILocation(line: 294, column: 3, scope: !5177)
!5181 = !DILocation(line: 295, column: 2, scope: !5177)
!5182 = !DILocation(line: 296, column: 23, scope: !5127)
!5183 = !DILocation(line: 296, column: 26, scope: !5127)
!5184 = !DILocation(line: 296, column: 30, scope: !5127)
!5185 = !DILocation(line: 296, column: 38, scope: !5127)
!5186 = !DILocation(line: 296, column: 41, scope: !5127)
!5187 = !DILocation(line: 296, column: 45, scope: !5127)
!5188 = !DILocation(line: 296, column: 60, scope: !5127)
!5189 = !DILocation(line: 296, column: 35, scope: !5127)
!5190 = !DILocation(line: 296, column: 2, scope: !5127)
!5191 = !DILocation(line: 296, column: 5, scope: !5127)
!5192 = !DILocation(line: 296, column: 9, scope: !5127)
!5193 = !DILocation(line: 296, column: 21, scope: !5127)
!5194 = !DILocation(line: 297, column: 19, scope: !5127)
!5195 = !DILocation(line: 297, column: 22, scope: !5127)
!5196 = !DILocation(line: 297, column: 26, scope: !5127)
!5197 = !DILocation(line: 297, column: 41, scope: !5127)
!5198 = !DILocation(line: 297, column: 18, scope: !5127)
!5199 = !DILocation(line: 297, column: 2, scope: !5127)
!5200 = !DILocation(line: 297, column: 5, scope: !5127)
!5201 = !DILocation(line: 297, column: 9, scope: !5127)
!5202 = !DILocation(line: 297, column: 16, scope: !5127)
!5203 = !DILocation(line: 298, column: 2, scope: !5127)
!5204 = !DILocation(line: 299, column: 2, scope: !5127)
!5205 = !DILocation(line: 300, column: 2, scope: !5127)
!5206 = !DILocation(line: 302, column: 22, scope: !5127)
!5207 = !DILocation(line: 302, column: 2, scope: !5127)
!5208 = !DILocation(line: 303, column: 2, scope: !5127)
!5209 = distinct !DISubprogram(name: "asiliantfb_setcolreg", scope: !3, file: !3, line: 306, type: !5210, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5210 = !DISubroutineType(types: !5211)
!5211 = !{!132, !5212, !5212, !5212, !5212, !5212, !4254}
!5212 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !153, line: 81, baseType: !7)
!5213 = !DILocalVariable(name: "regno", arg: 1, scope: !5209, file: !3, line: 306, type: !5212)
!5214 = !DILocation(line: 306, column: 39, scope: !5209)
!5215 = !DILocalVariable(name: "red", arg: 2, scope: !5209, file: !3, line: 306, type: !5212)
!5216 = !DILocation(line: 306, column: 52, scope: !5209)
!5217 = !DILocalVariable(name: "green", arg: 3, scope: !5209, file: !3, line: 306, type: !5212)
!5218 = !DILocation(line: 306, column: 63, scope: !5209)
!5219 = !DILocalVariable(name: "blue", arg: 4, scope: !5209, file: !3, line: 306, type: !5212)
!5220 = !DILocation(line: 306, column: 76, scope: !5209)
!5221 = !DILocalVariable(name: "transp", arg: 5, scope: !5209, file: !3, line: 307, type: !5212)
!5222 = !DILocation(line: 307, column: 15, scope: !5209)
!5223 = !DILocalVariable(name: "p", arg: 6, scope: !5209, file: !3, line: 307, type: !4254)
!5224 = !DILocation(line: 307, column: 39, scope: !5209)
!5225 = !DILocation(line: 309, column: 6, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 309, column: 6)
!5227 = !DILocation(line: 309, column: 12, scope: !5226)
!5228 = !DILocation(line: 309, column: 6, scope: !5209)
!5229 = !DILocation(line: 310, column: 3, scope: !5226)
!5230 = !DILocation(line: 311, column: 6, scope: !5209)
!5231 = !DILocation(line: 312, column: 8, scope: !5209)
!5232 = !DILocation(line: 313, column: 7, scope: !5209)
!5233 = !DILocation(line: 316, column: 9, scope: !5209)
!5234 = !DILocation(line: 316, column: 16, scope: !5209)
!5235 = !DILocation(line: 316, column: 26, scope: !5209)
!5236 = !DILocation(line: 316, column: 2, scope: !5209)
!5237 = !DILocation(line: 317, column: 2, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 317, column: 2)
!5239 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 317, column: 2)
!5240 = distinct !DILexicalBlock(scope: !5241, file: !3, line: 317, column: 2)
!5241 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 317, column: 2)
!5242 = !DILocation(line: 318, column: 9, scope: !5209)
!5243 = !DILocation(line: 318, column: 14, scope: !5209)
!5244 = !DILocation(line: 318, column: 24, scope: !5209)
!5245 = !DILocation(line: 318, column: 2, scope: !5209)
!5246 = !DILocation(line: 319, column: 9, scope: !5209)
!5247 = !DILocation(line: 319, column: 16, scope: !5209)
!5248 = !DILocation(line: 319, column: 26, scope: !5209)
!5249 = !DILocation(line: 319, column: 2, scope: !5209)
!5250 = !DILocation(line: 320, column: 9, scope: !5209)
!5251 = !DILocation(line: 320, column: 15, scope: !5209)
!5252 = !DILocation(line: 320, column: 25, scope: !5209)
!5253 = !DILocation(line: 320, column: 2, scope: !5209)
!5254 = !DILocation(line: 322, column: 6, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 322, column: 6)
!5256 = !DILocation(line: 322, column: 12, scope: !5255)
!5257 = !DILocation(line: 322, column: 6, scope: !5209)
!5258 = !DILocation(line: 323, column: 10, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5255, file: !3, line: 322, column: 18)
!5260 = !DILocation(line: 323, column: 13, scope: !5259)
!5261 = !DILocation(line: 323, column: 17, scope: !5259)
!5262 = !DILocation(line: 323, column: 21, scope: !5259)
!5263 = !DILocation(line: 323, column: 3, scope: !5259)
!5264 = !DILocation(line: 326, column: 7, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5259, file: !3, line: 323, column: 29)
!5266 = !DILocation(line: 326, column: 11, scope: !5265)
!5267 = !DILocation(line: 326, column: 19, scope: !5265)
!5268 = !DILocation(line: 327, column: 7, scope: !5265)
!5269 = !DILocation(line: 327, column: 13, scope: !5265)
!5270 = !DILocation(line: 327, column: 21, scope: !5265)
!5271 = !DILocation(line: 326, column: 25, scope: !5265)
!5272 = !DILocation(line: 328, column: 7, scope: !5265)
!5273 = !DILocation(line: 328, column: 12, scope: !5265)
!5274 = !DILocation(line: 328, column: 20, scope: !5265)
!5275 = !DILocation(line: 327, column: 27, scope: !5265)
!5276 = !DILocation(line: 325, column: 13, scope: !5265)
!5277 = !DILocation(line: 325, column: 16, scope: !5265)
!5278 = !DILocation(line: 325, column: 5, scope: !5265)
!5279 = !DILocation(line: 325, column: 33, scope: !5265)
!5280 = !DILocation(line: 325, column: 4, scope: !5265)
!5281 = !DILocation(line: 325, column: 40, scope: !5265)
!5282 = !DILocation(line: 329, column: 4, scope: !5265)
!5283 = !DILocation(line: 332, column: 7, scope: !5265)
!5284 = !DILocation(line: 332, column: 11, scope: !5265)
!5285 = !DILocation(line: 332, column: 19, scope: !5265)
!5286 = !DILocation(line: 333, column: 7, scope: !5265)
!5287 = !DILocation(line: 333, column: 13, scope: !5265)
!5288 = !DILocation(line: 333, column: 21, scope: !5265)
!5289 = !DILocation(line: 332, column: 25, scope: !5265)
!5290 = !DILocation(line: 334, column: 7, scope: !5265)
!5291 = !DILocation(line: 334, column: 12, scope: !5265)
!5292 = !DILocation(line: 334, column: 20, scope: !5265)
!5293 = !DILocation(line: 333, column: 27, scope: !5265)
!5294 = !DILocation(line: 331, column: 13, scope: !5265)
!5295 = !DILocation(line: 331, column: 16, scope: !5265)
!5296 = !DILocation(line: 331, column: 5, scope: !5265)
!5297 = !DILocation(line: 331, column: 33, scope: !5265)
!5298 = !DILocation(line: 331, column: 4, scope: !5265)
!5299 = !DILocation(line: 331, column: 40, scope: !5265)
!5300 = !DILocation(line: 335, column: 4, scope: !5265)
!5301 = !DILocation(line: 338, column: 6, scope: !5265)
!5302 = !DILocation(line: 338, column: 10, scope: !5265)
!5303 = !DILocation(line: 339, column: 6, scope: !5265)
!5304 = !DILocation(line: 339, column: 12, scope: !5265)
!5305 = !DILocation(line: 338, column: 18, scope: !5265)
!5306 = !DILocation(line: 340, column: 6, scope: !5265)
!5307 = !DILocation(line: 339, column: 18, scope: !5265)
!5308 = !DILocation(line: 337, column: 13, scope: !5265)
!5309 = !DILocation(line: 337, column: 16, scope: !5265)
!5310 = !DILocation(line: 337, column: 5, scope: !5265)
!5311 = !DILocation(line: 337, column: 33, scope: !5265)
!5312 = !DILocation(line: 337, column: 4, scope: !5265)
!5313 = !DILocation(line: 337, column: 40, scope: !5265)
!5314 = !DILocation(line: 341, column: 4, scope: !5265)
!5315 = !DILocation(line: 343, column: 2, scope: !5259)
!5316 = !DILocation(line: 345, column: 2, scope: !5209)
!5317 = !DILocation(line: 346, column: 1, scope: !5209)
!5318 = distinct !DISubprogram(name: "asiliant_calc_dclk2", scope: !3, file: !3, line: 110, type: !5319, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5319 = !DISubroutineType(types: !5320)
!5320 = !{null, !127, !4331, !4331, !4331}
!5321 = !DILocalVariable(name: "ppixclock", arg: 1, scope: !5318, file: !3, line: 110, type: !127)
!5322 = !DILocation(line: 110, column: 38, scope: !5318)
!5323 = !DILocalVariable(name: "dclk2_m", arg: 2, scope: !5318, file: !3, line: 110, type: !4331)
!5324 = !DILocation(line: 110, column: 53, scope: !5318)
!5325 = !DILocalVariable(name: "dclk2_n", arg: 3, scope: !5318, file: !3, line: 110, type: !4331)
!5326 = !DILocation(line: 110, column: 66, scope: !5318)
!5327 = !DILocalVariable(name: "dclk2_div", arg: 4, scope: !5318, file: !3, line: 110, type: !4331)
!5328 = !DILocation(line: 110, column: 79, scope: !5318)
!5329 = !DILocalVariable(name: "pixclock", scope: !5318, file: !3, line: 112, type: !7)
!5330 = !DILocation(line: 112, column: 11, scope: !5318)
!5331 = !DILocation(line: 112, column: 23, scope: !5318)
!5332 = !DILocation(line: 112, column: 22, scope: !5318)
!5333 = !DILocalVariable(name: "Ftarget", scope: !5318, file: !3, line: 113, type: !7)
!5334 = !DILocation(line: 113, column: 11, scope: !5318)
!5335 = !DILocation(line: 113, column: 42, scope: !5318)
!5336 = !DILocation(line: 113, column: 40, scope: !5318)
!5337 = !DILocation(line: 113, column: 29, scope: !5318)
!5338 = !DILocalVariable(name: "n", scope: !5318, file: !3, line: 114, type: !7)
!5339 = !DILocation(line: 114, column: 11, scope: !5318)
!5340 = !DILocalVariable(name: "best_error", scope: !5318, file: !3, line: 115, type: !7)
!5341 = !DILocation(line: 115, column: 11, scope: !5318)
!5342 = !DILocalVariable(name: "best_m", scope: !5318, file: !3, line: 116, type: !7)
!5343 = !DILocation(line: 116, column: 11, scope: !5318)
!5344 = !DILocalVariable(name: "best_n", scope: !5318, file: !3, line: 117, type: !7)
!5345 = !DILocation(line: 117, column: 11, scope: !5318)
!5346 = !DILocalVariable(name: "ratio", scope: !5318, file: !3, line: 118, type: !7)
!5347 = !DILocation(line: 118, column: 11, scope: !5318)
!5348 = !DILocalVariable(name: "remainder", scope: !5318, file: !3, line: 119, type: !7)
!5349 = !DILocation(line: 119, column: 11, scope: !5318)
!5350 = !DILocalVariable(name: "divisor", scope: !5318, file: !3, line: 120, type: !126)
!5351 = !DILocation(line: 120, column: 16, scope: !5318)
!5352 = !DILocation(line: 123, column: 20, scope: !5318)
!5353 = !DILocation(line: 123, column: 18, scope: !5318)
!5354 = !DILocation(line: 123, column: 8, scope: !5318)
!5355 = !DILocation(line: 124, column: 24, scope: !5318)
!5356 = !DILocation(line: 124, column: 22, scope: !5318)
!5357 = !DILocation(line: 124, column: 12, scope: !5318)
!5358 = !DILocation(line: 125, column: 22, scope: !5318)
!5359 = !DILocation(line: 125, column: 20, scope: !5318)
!5360 = !DILocation(line: 125, column: 41, scope: !5318)
!5361 = !DILocation(line: 125, column: 39, scope: !5318)
!5362 = !DILocation(line: 125, column: 54, scope: !5318)
!5363 = !DILocation(line: 125, column: 52, scope: !5318)
!5364 = !DILocation(line: 125, column: 28, scope: !5318)
!5365 = !DILocation(line: 125, column: 10, scope: !5318)
!5366 = !DILocation(line: 127, column: 2, scope: !5318)
!5367 = !DILocation(line: 127, column: 9, scope: !5318)
!5368 = !DILocation(line: 127, column: 17, scope: !5318)
!5369 = !DILocation(line: 128, column: 11, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5318, file: !3, line: 127, column: 30)
!5371 = !DILocation(line: 129, column: 11, scope: !5370)
!5372 = distinct !{!5372, !5366, !5373}
!5373 = !DILocation(line: 130, column: 2, scope: !5318)
!5374 = !DILocation(line: 132, column: 10, scope: !5318)
!5375 = !DILocation(line: 132, column: 18, scope: !5318)
!5376 = !DILocation(line: 132, column: 8, scope: !5318)
!5377 = !DILocation(line: 133, column: 14, scope: !5318)
!5378 = !DILocation(line: 133, column: 22, scope: !5318)
!5379 = !DILocation(line: 133, column: 12, scope: !5318)
!5380 = !DILocation(line: 137, column: 9, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5318, file: !3, line: 137, column: 2)
!5382 = !DILocation(line: 137, column: 7, scope: !5381)
!5383 = !DILocation(line: 137, column: 14, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 137, column: 2)
!5385 = !DILocation(line: 137, column: 16, scope: !5384)
!5386 = !DILocation(line: 137, column: 2, scope: !5381)
!5387 = !DILocalVariable(name: "m", scope: !5388, file: !3, line: 138, type: !7)
!5388 = distinct !DILexicalBlock(scope: !5384, file: !3, line: 137, column: 29)
!5389 = !DILocation(line: 138, column: 12, scope: !5388)
!5390 = !DILocation(line: 138, column: 16, scope: !5388)
!5391 = !DILocation(line: 138, column: 20, scope: !5388)
!5392 = !DILocation(line: 138, column: 18, scope: !5388)
!5393 = !DILocation(line: 138, column: 29, scope: !5388)
!5394 = !DILocation(line: 138, column: 33, scope: !5388)
!5395 = !DILocation(line: 138, column: 31, scope: !5388)
!5396 = !DILocation(line: 138, column: 44, scope: !5388)
!5397 = !DILocation(line: 138, column: 26, scope: !5388)
!5398 = !DILocation(line: 141, column: 7, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 141, column: 7)
!5400 = !DILocation(line: 141, column: 9, scope: !5399)
!5401 = !DILocation(line: 141, column: 14, scope: !5399)
!5402 = !DILocation(line: 141, column: 17, scope: !5399)
!5403 = !DILocation(line: 141, column: 19, scope: !5399)
!5404 = !DILocation(line: 141, column: 7, scope: !5388)
!5405 = !DILocalVariable(name: "new_error", scope: !5406, file: !3, line: 142, type: !7)
!5406 = distinct !DILexicalBlock(scope: !5399, file: !3, line: 141, column: 27)
!5407 = !DILocation(line: 142, column: 13, scope: !5406)
!5408 = !DILocation(line: 142, column: 25, scope: !5406)
!5409 = !DILocation(line: 142, column: 35, scope: !5406)
!5410 = !DILocation(line: 142, column: 33, scope: !5406)
!5411 = !DILocation(line: 142, column: 47, scope: !5406)
!5412 = !DILocation(line: 142, column: 45, scope: !5406)
!5413 = !DILocation(line: 142, column: 37, scope: !5406)
!5414 = !DILocation(line: 143, column: 15, scope: !5406)
!5415 = !DILocation(line: 143, column: 25, scope: !5406)
!5416 = !DILocation(line: 143, column: 23, scope: !5406)
!5417 = !DILocation(line: 143, column: 38, scope: !5406)
!5418 = !DILocation(line: 143, column: 36, scope: !5406)
!5419 = !DILocation(line: 143, column: 28, scope: !5406)
!5420 = !DILocation(line: 143, column: 53, scope: !5406)
!5421 = !DILocation(line: 143, column: 51, scope: !5406)
!5422 = !DILocation(line: 143, column: 59, scope: !5406)
!5423 = !DILocation(line: 143, column: 69, scope: !5406)
!5424 = !DILocation(line: 143, column: 67, scope: !5406)
!5425 = !DILocation(line: 143, column: 56, scope: !5406)
!5426 = !DILocation(line: 144, column: 8, scope: !5427)
!5427 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 144, column: 8)
!5428 = !DILocation(line: 144, column: 20, scope: !5427)
!5429 = !DILocation(line: 144, column: 18, scope: !5427)
!5430 = !DILocation(line: 144, column: 8, scope: !5406)
!5431 = !DILocation(line: 145, column: 14, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5427, file: !3, line: 144, column: 32)
!5433 = !DILocation(line: 145, column: 12, scope: !5432)
!5434 = !DILocation(line: 146, column: 14, scope: !5432)
!5435 = !DILocation(line: 146, column: 12, scope: !5432)
!5436 = !DILocation(line: 147, column: 18, scope: !5432)
!5437 = !DILocation(line: 147, column: 16, scope: !5432)
!5438 = !DILocation(line: 148, column: 4, scope: !5432)
!5439 = !DILocation(line: 149, column: 3, scope: !5406)
!5440 = !DILocation(line: 151, column: 12, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5399, file: !3, line: 151, column: 12)
!5442 = !DILocation(line: 151, column: 14, scope: !5441)
!5443 = !DILocation(line: 151, column: 12, scope: !5399)
!5444 = !DILocalVariable(name: "new_error", scope: !5445, file: !3, line: 154, type: !7)
!5445 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 151, column: 23)
!5446 = !DILocation(line: 154, column: 13, scope: !5445)
!5447 = !DILocation(line: 154, column: 25, scope: !5445)
!5448 = !DILocation(line: 154, column: 35, scope: !5445)
!5449 = !DILocation(line: 154, column: 33, scope: !5445)
!5450 = !DILocation(line: 154, column: 48, scope: !5445)
!5451 = !DILocation(line: 154, column: 50, scope: !5445)
!5452 = !DILocation(line: 154, column: 45, scope: !5445)
!5453 = !DILocation(line: 154, column: 37, scope: !5445)
!5454 = !DILocation(line: 155, column: 15, scope: !5445)
!5455 = !DILocation(line: 155, column: 25, scope: !5445)
!5456 = !DILocation(line: 155, column: 23, scope: !5445)
!5457 = !DILocation(line: 155, column: 39, scope: !5445)
!5458 = !DILocation(line: 155, column: 41, scope: !5445)
!5459 = !DILocation(line: 155, column: 36, scope: !5445)
!5460 = !DILocation(line: 155, column: 28, scope: !5445)
!5461 = !DILocation(line: 155, column: 61, scope: !5445)
!5462 = !DILocation(line: 155, column: 63, scope: !5445)
!5463 = !DILocation(line: 155, column: 58, scope: !5445)
!5464 = !DILocation(line: 155, column: 73, scope: !5445)
!5465 = !DILocation(line: 155, column: 83, scope: !5445)
!5466 = !DILocation(line: 155, column: 81, scope: !5445)
!5467 = !DILocation(line: 155, column: 70, scope: !5445)
!5468 = !DILocation(line: 156, column: 8, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5445, file: !3, line: 156, column: 8)
!5470 = !DILocation(line: 156, column: 20, scope: !5469)
!5471 = !DILocation(line: 156, column: 18, scope: !5469)
!5472 = !DILocation(line: 156, column: 8, scope: !5445)
!5473 = !DILocation(line: 157, column: 14, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5469, file: !3, line: 156, column: 32)
!5475 = !DILocation(line: 157, column: 12, scope: !5474)
!5476 = !DILocation(line: 158, column: 14, scope: !5474)
!5477 = !DILocation(line: 158, column: 12, scope: !5474)
!5478 = !DILocation(line: 159, column: 18, scope: !5474)
!5479 = !DILocation(line: 159, column: 16, scope: !5474)
!5480 = !DILocation(line: 160, column: 4, scope: !5474)
!5481 = !DILocation(line: 161, column: 3, scope: !5445)
!5482 = !DILocation(line: 162, column: 2, scope: !5388)
!5483 = !DILocation(line: 137, column: 25, scope: !5384)
!5484 = !DILocation(line: 137, column: 2, scope: !5384)
!5485 = distinct !{!5485, !5386, !5486}
!5486 = !DILocation(line: 162, column: 2, scope: !5381)
!5487 = !DILocation(line: 163, column: 6, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5318, file: !3, line: 163, column: 6)
!5489 = !DILocation(line: 163, column: 13, scope: !5488)
!5490 = !DILocation(line: 163, column: 6, scope: !5318)
!5491 = !DILocation(line: 164, column: 10, scope: !5488)
!5492 = !DILocation(line: 164, column: 3, scope: !5488)
!5493 = !DILocation(line: 166, column: 11, scope: !5488)
!5494 = !DILocation(line: 167, column: 13, scope: !5318)
!5495 = !DILocation(line: 167, column: 20, scope: !5318)
!5496 = !DILocation(line: 167, column: 3, scope: !5318)
!5497 = !DILocation(line: 167, column: 11, scope: !5318)
!5498 = !DILocation(line: 168, column: 13, scope: !5318)
!5499 = !DILocation(line: 168, column: 20, scope: !5318)
!5500 = !DILocation(line: 168, column: 3, scope: !5318)
!5501 = !DILocation(line: 168, column: 11, scope: !5318)
!5502 = !DILocation(line: 169, column: 15, scope: !5318)
!5503 = !DILocation(line: 169, column: 3, scope: !5318)
!5504 = !DILocation(line: 169, column: 13, scope: !5318)
!5505 = !DILocation(line: 170, column: 15, scope: !5318)
!5506 = !DILocation(line: 170, column: 3, scope: !5318)
!5507 = !DILocation(line: 170, column: 13, scope: !5318)
!5508 = !DILocation(line: 171, column: 2, scope: !5318)
!5509 = distinct !DISubprogram(name: "mm_write_xr", scope: !3, file: !3, line: 54, type: !5510, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5510 = !DISubroutineType(types: !5511)
!5511 = !{null, !4254, !1386, !1386}
!5512 = !DILocalVariable(name: "p", arg: 1, scope: !5509, file: !3, line: 54, type: !4254)
!5513 = !DILocation(line: 54, column: 41, scope: !5509)
!5514 = !DILocalVariable(name: "reg", arg: 2, scope: !5509, file: !3, line: 54, type: !1386)
!5515 = !DILocation(line: 54, column: 47, scope: !5509)
!5516 = !DILocalVariable(name: "data", arg: 3, scope: !5509, file: !3, line: 54, type: !1386)
!5517 = !DILocation(line: 54, column: 55, scope: !5509)
!5518 = !DILocation(line: 56, column: 2, scope: !5509)
!5519 = !DILocation(line: 56, column: 2, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 56, column: 2)
!5521 = !DILocation(line: 57, column: 1, scope: !5509)
!5522 = distinct !DISubprogram(name: "asiliant_set_timing", scope: !3, file: !3, line: 174, type: !4425, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5523 = !DILocalVariable(name: "p", arg: 1, scope: !5522, file: !3, line: 174, type: !4254)
!5524 = !DILocation(line: 174, column: 49, scope: !5522)
!5525 = !DILocalVariable(name: "hd", scope: !5522, file: !3, line: 176, type: !7)
!5526 = !DILocation(line: 176, column: 11, scope: !5522)
!5527 = !DILocation(line: 176, column: 16, scope: !5522)
!5528 = !DILocation(line: 176, column: 19, scope: !5522)
!5529 = !DILocation(line: 176, column: 23, scope: !5522)
!5530 = !DILocation(line: 176, column: 28, scope: !5522)
!5531 = !DILocalVariable(name: "hs", scope: !5522, file: !3, line: 177, type: !7)
!5532 = !DILocation(line: 177, column: 11, scope: !5522)
!5533 = !DILocation(line: 177, column: 17, scope: !5522)
!5534 = !DILocation(line: 177, column: 20, scope: !5522)
!5535 = !DILocation(line: 177, column: 24, scope: !5522)
!5536 = !DILocation(line: 177, column: 31, scope: !5522)
!5537 = !DILocation(line: 177, column: 34, scope: !5522)
!5538 = !DILocation(line: 177, column: 38, scope: !5522)
!5539 = !DILocation(line: 177, column: 29, scope: !5522)
!5540 = !DILocation(line: 177, column: 52, scope: !5522)
!5541 = !DILocalVariable(name: "he", scope: !5522, file: !3, line: 178, type: !7)
!5542 = !DILocation(line: 178, column: 18, scope: !5522)
!5543 = !DILocation(line: 178, column: 24, scope: !5522)
!5544 = !DILocation(line: 178, column: 27, scope: !5522)
!5545 = !DILocation(line: 178, column: 31, scope: !5522)
!5546 = !DILocation(line: 178, column: 38, scope: !5522)
!5547 = !DILocation(line: 178, column: 41, scope: !5522)
!5548 = !DILocation(line: 178, column: 45, scope: !5522)
!5549 = !DILocation(line: 178, column: 36, scope: !5522)
!5550 = !DILocation(line: 178, column: 60, scope: !5522)
!5551 = !DILocation(line: 178, column: 63, scope: !5522)
!5552 = !DILocation(line: 178, column: 67, scope: !5522)
!5553 = !DILocation(line: 178, column: 58, scope: !5522)
!5554 = !DILocation(line: 178, column: 78, scope: !5522)
!5555 = !DILocalVariable(name: "ht", scope: !5522, file: !3, line: 179, type: !7)
!5556 = !DILocation(line: 179, column: 11, scope: !5522)
!5557 = !DILocation(line: 179, column: 17, scope: !5522)
!5558 = !DILocation(line: 179, column: 20, scope: !5522)
!5559 = !DILocation(line: 179, column: 24, scope: !5522)
!5560 = !DILocation(line: 179, column: 38, scope: !5522)
!5561 = !DILocation(line: 179, column: 41, scope: !5522)
!5562 = !DILocation(line: 179, column: 45, scope: !5522)
!5563 = !DILocation(line: 179, column: 36, scope: !5522)
!5564 = !DILocation(line: 179, column: 52, scope: !5522)
!5565 = !DILocation(line: 179, column: 55, scope: !5522)
!5566 = !DILocation(line: 179, column: 59, scope: !5522)
!5567 = !DILocation(line: 179, column: 50, scope: !5522)
!5568 = !DILocation(line: 179, column: 74, scope: !5522)
!5569 = !DILocation(line: 179, column: 77, scope: !5522)
!5570 = !DILocation(line: 179, column: 81, scope: !5522)
!5571 = !DILocation(line: 179, column: 72, scope: !5522)
!5572 = !DILocation(line: 179, column: 92, scope: !5522)
!5573 = !DILocalVariable(name: "vd", scope: !5522, file: !3, line: 180, type: !7)
!5574 = !DILocation(line: 180, column: 11, scope: !5522)
!5575 = !DILocation(line: 180, column: 16, scope: !5522)
!5576 = !DILocation(line: 180, column: 19, scope: !5522)
!5577 = !DILocation(line: 180, column: 23, scope: !5522)
!5578 = !DILocalVariable(name: "vs", scope: !5522, file: !3, line: 181, type: !7)
!5579 = !DILocation(line: 181, column: 11, scope: !5522)
!5580 = !DILocation(line: 181, column: 16, scope: !5522)
!5581 = !DILocation(line: 181, column: 19, scope: !5522)
!5582 = !DILocation(line: 181, column: 23, scope: !5522)
!5583 = !DILocation(line: 181, column: 30, scope: !5522)
!5584 = !DILocation(line: 181, column: 33, scope: !5522)
!5585 = !DILocation(line: 181, column: 37, scope: !5522)
!5586 = !DILocation(line: 181, column: 28, scope: !5522)
!5587 = !DILocalVariable(name: "ve", scope: !5522, file: !3, line: 182, type: !7)
!5588 = !DILocation(line: 182, column: 11, scope: !5522)
!5589 = !DILocation(line: 182, column: 16, scope: !5522)
!5590 = !DILocation(line: 182, column: 19, scope: !5522)
!5591 = !DILocation(line: 182, column: 23, scope: !5522)
!5592 = !DILocation(line: 182, column: 30, scope: !5522)
!5593 = !DILocation(line: 182, column: 33, scope: !5522)
!5594 = !DILocation(line: 182, column: 37, scope: !5522)
!5595 = !DILocation(line: 182, column: 28, scope: !5522)
!5596 = !DILocation(line: 182, column: 52, scope: !5522)
!5597 = !DILocation(line: 182, column: 55, scope: !5522)
!5598 = !DILocation(line: 182, column: 59, scope: !5522)
!5599 = !DILocation(line: 182, column: 50, scope: !5522)
!5600 = !DILocalVariable(name: "vt", scope: !5522, file: !3, line: 183, type: !7)
!5601 = !DILocation(line: 183, column: 11, scope: !5522)
!5602 = !DILocation(line: 183, column: 16, scope: !5522)
!5603 = !DILocation(line: 183, column: 19, scope: !5522)
!5604 = !DILocation(line: 183, column: 23, scope: !5522)
!5605 = !DILocation(line: 183, column: 38, scope: !5522)
!5606 = !DILocation(line: 183, column: 41, scope: !5522)
!5607 = !DILocation(line: 183, column: 45, scope: !5522)
!5608 = !DILocation(line: 183, column: 36, scope: !5522)
!5609 = !DILocation(line: 183, column: 52, scope: !5522)
!5610 = !DILocation(line: 183, column: 55, scope: !5522)
!5611 = !DILocation(line: 183, column: 59, scope: !5522)
!5612 = !DILocation(line: 183, column: 50, scope: !5522)
!5613 = !DILocation(line: 183, column: 74, scope: !5522)
!5614 = !DILocation(line: 183, column: 77, scope: !5522)
!5615 = !DILocation(line: 183, column: 81, scope: !5522)
!5616 = !DILocation(line: 183, column: 72, scope: !5522)
!5617 = !DILocalVariable(name: "wd", scope: !5522, file: !3, line: 184, type: !7)
!5618 = !DILocation(line: 184, column: 11, scope: !5522)
!5619 = !DILocation(line: 184, column: 17, scope: !5522)
!5620 = !DILocation(line: 184, column: 20, scope: !5522)
!5621 = !DILocation(line: 184, column: 24, scope: !5522)
!5622 = !DILocation(line: 184, column: 41, scope: !5522)
!5623 = !DILocation(line: 184, column: 44, scope: !5522)
!5624 = !DILocation(line: 184, column: 48, scope: !5522)
!5625 = !DILocation(line: 184, column: 62, scope: !5522)
!5626 = !DILocation(line: 184, column: 65, scope: !5522)
!5627 = !DILocation(line: 184, column: 37, scope: !5522)
!5628 = !DILocation(line: 184, column: 70, scope: !5522)
!5629 = !DILocation(line: 186, column: 7, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5522, file: !3, line: 186, column: 6)
!5631 = !DILocation(line: 186, column: 10, scope: !5630)
!5632 = !DILocation(line: 186, column: 14, scope: !5630)
!5633 = !DILocation(line: 186, column: 19, scope: !5630)
!5634 = !DILocation(line: 186, column: 27, scope: !5630)
!5635 = !DILocation(line: 186, column: 31, scope: !5630)
!5636 = !DILocation(line: 186, column: 34, scope: !5630)
!5637 = !DILocation(line: 186, column: 38, scope: !5630)
!5638 = !DILocation(line: 186, column: 43, scope: !5630)
!5639 = !DILocation(line: 186, column: 51, scope: !5630)
!5640 = !DILocation(line: 186, column: 55, scope: !5630)
!5641 = !DILocation(line: 186, column: 58, scope: !5630)
!5642 = !DILocation(line: 186, column: 62, scope: !5630)
!5643 = !DILocation(line: 186, column: 71, scope: !5630)
!5644 = !DILocation(line: 186, column: 6, scope: !5522)
!5645 = !DILocation(line: 187, column: 4, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 186, column: 82)
!5647 = !DILocation(line: 188, column: 2, scope: !5646)
!5648 = !DILocation(line: 189, column: 4, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 188, column: 9)
!5650 = !DILocation(line: 192, column: 2, scope: !5522)
!5651 = !DILocation(line: 193, column: 2, scope: !5522)
!5652 = !DILocation(line: 194, column: 2, scope: !5522)
!5653 = !DILocation(line: 195, column: 2, scope: !5522)
!5654 = !DILocation(line: 196, column: 2, scope: !5522)
!5655 = !DILocation(line: 197, column: 2, scope: !5522)
!5656 = !DILocation(line: 198, column: 2, scope: !5522)
!5657 = !DILocation(line: 199, column: 2, scope: !5522)
!5658 = !DILocation(line: 200, column: 2, scope: !5522)
!5659 = !DILocation(line: 201, column: 2, scope: !5522)
!5660 = !DILocation(line: 202, column: 2, scope: !5522)
!5661 = !DILocation(line: 203, column: 2, scope: !5522)
!5662 = !DILocation(line: 204, column: 2, scope: !5522)
!5663 = !DILocation(line: 205, column: 2, scope: !5522)
!5664 = !DILocation(line: 206, column: 2, scope: !5522)
!5665 = !DILocation(line: 207, column: 2, scope: !5522)
!5666 = !DILocation(line: 208, column: 2, scope: !5522)
!5667 = !DILocation(line: 209, column: 2, scope: !5522)
!5668 = !DILocation(line: 210, column: 2, scope: !5522)
!5669 = !DILocation(line: 211, column: 2, scope: !5522)
!5670 = !DILocation(line: 212, column: 2, scope: !5522)
!5671 = !DILocation(line: 213, column: 2, scope: !5522)
!5672 = !DILocation(line: 214, column: 2, scope: !5522)
!5673 = !DILocation(line: 215, column: 2, scope: !5522)
!5674 = !DILocation(line: 216, column: 2, scope: !5522)
!5675 = !DILocation(line: 218, column: 6, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5522, file: !3, line: 218, column: 6)
!5677 = !DILocation(line: 218, column: 9, scope: !5676)
!5678 = !DILocation(line: 218, column: 13, scope: !5676)
!5679 = !DILocation(line: 218, column: 18, scope: !5676)
!5680 = !DILocation(line: 218, column: 6, scope: !5522)
!5681 = !DILocation(line: 219, column: 17, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5676, file: !3, line: 218, column: 26)
!5683 = !DILocation(line: 219, column: 27, scope: !5682)
!5684 = !DILocation(line: 219, column: 4, scope: !5682)
!5685 = !DILocation(line: 220, column: 2, scope: !5682)
!5686 = !DILocation(line: 221, column: 17, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5676, file: !3, line: 220, column: 9)
!5688 = !DILocation(line: 221, column: 27, scope: !5687)
!5689 = !DILocation(line: 221, column: 4, scope: !5687)
!5690 = !DILocation(line: 223, column: 1, scope: !5522)
!5691 = distinct !DISubprogram(name: "mm_write_fr", scope: !3, file: !3, line: 60, type: !5510, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5692 = !DILocalVariable(name: "p", arg: 1, scope: !5691, file: !3, line: 60, type: !4254)
!5693 = !DILocation(line: 60, column: 41, scope: !5691)
!5694 = !DILocalVariable(name: "reg", arg: 2, scope: !5691, file: !3, line: 60, type: !1386)
!5695 = !DILocation(line: 60, column: 47, scope: !5691)
!5696 = !DILocalVariable(name: "data", arg: 3, scope: !5691, file: !3, line: 60, type: !1386)
!5697 = !DILocation(line: 60, column: 55, scope: !5691)
!5698 = !DILocation(line: 62, column: 2, scope: !5691)
!5699 = !DILocation(line: 62, column: 2, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5691, file: !3, line: 62, column: 2)
!5701 = !DILocation(line: 63, column: 1, scope: !5691)
!5702 = distinct !DISubprogram(name: "mm_write_cr", scope: !3, file: !3, line: 66, type: !5510, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5703 = !DILocalVariable(name: "p", arg: 1, scope: !5702, file: !3, line: 66, type: !4254)
!5704 = !DILocation(line: 66, column: 41, scope: !5702)
!5705 = !DILocalVariable(name: "reg", arg: 2, scope: !5702, file: !3, line: 66, type: !1386)
!5706 = !DILocation(line: 66, column: 47, scope: !5702)
!5707 = !DILocalVariable(name: "data", arg: 3, scope: !5702, file: !3, line: 66, type: !1386)
!5708 = !DILocation(line: 66, column: 55, scope: !5702)
!5709 = !DILocation(line: 68, column: 2, scope: !5702)
!5710 = !DILocation(line: 68, column: 2, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5702, file: !3, line: 68, column: 2)
!5712 = !DILocation(line: 69, column: 1, scope: !5702)
!5713 = distinct !DISubprogram(name: "mm_write_sr", scope: !3, file: !3, line: 78, type: !5510, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5714 = !DILocalVariable(name: "p", arg: 1, scope: !5713, file: !3, line: 78, type: !4254)
!5715 = !DILocation(line: 78, column: 41, scope: !5713)
!5716 = !DILocalVariable(name: "reg", arg: 2, scope: !5713, file: !3, line: 78, type: !1386)
!5717 = !DILocation(line: 78, column: 47, scope: !5713)
!5718 = !DILocalVariable(name: "data", arg: 3, scope: !5713, file: !3, line: 78, type: !1386)
!5719 = !DILocation(line: 78, column: 55, scope: !5713)
!5720 = !DILocation(line: 80, column: 2, scope: !5713)
!5721 = !DILocation(line: 80, column: 2, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5713, file: !3, line: 80, column: 2)
!5723 = !DILocation(line: 81, column: 1, scope: !5713)
!5724 = distinct !DISubprogram(name: "mm_write_gr", scope: !3, file: !3, line: 72, type: !5510, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5725 = !DILocalVariable(name: "p", arg: 1, scope: !5724, file: !3, line: 72, type: !4254)
!5726 = !DILocation(line: 72, column: 41, scope: !5724)
!5727 = !DILocalVariable(name: "reg", arg: 2, scope: !5724, file: !3, line: 72, type: !1386)
!5728 = !DILocation(line: 72, column: 47, scope: !5724)
!5729 = !DILocalVariable(name: "data", arg: 3, scope: !5724, file: !3, line: 72, type: !1386)
!5730 = !DILocation(line: 72, column: 55, scope: !5724)
!5731 = !DILocation(line: 74, column: 2, scope: !5724)
!5732 = !DILocation(line: 74, column: 2, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 74, column: 2)
!5734 = !DILocation(line: 75, column: 1, scope: !5724)
!5735 = distinct !DISubprogram(name: "mm_write_ar", scope: !3, file: !3, line: 84, type: !5510, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5736 = !DILocalVariable(name: "p", arg: 1, scope: !5735, file: !3, line: 84, type: !4254)
!5737 = !DILocation(line: 84, column: 41, scope: !5735)
!5738 = !DILocalVariable(name: "reg", arg: 2, scope: !5735, file: !3, line: 84, type: !1386)
!5739 = !DILocation(line: 84, column: 47, scope: !5735)
!5740 = !DILocalVariable(name: "data", arg: 3, scope: !5735, file: !3, line: 84, type: !1386)
!5741 = !DILocation(line: 84, column: 55, scope: !5735)
!5742 = !DILocation(line: 86, column: 8, scope: !5735)
!5743 = !DILocation(line: 86, column: 18, scope: !5735)
!5744 = !DILocation(line: 86, column: 2, scope: !5735)
!5745 = !DILocation(line: 87, column: 2, scope: !5735)
!5746 = !DILocation(line: 87, column: 2, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 87, column: 2)
!5748 = !DILocation(line: 88, column: 1, scope: !5735)
!5749 = distinct !DISubprogram(name: "readb", scope: !4810, file: !4810, line: 57, type: !5750, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5750 = !DISubroutineType(types: !5751)
!5751 = !{!126, !5752}
!5752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5753, size: 64)
!5753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4814)
!5754 = !DILocalVariable(name: "addr", arg: 1, scope: !5749, file: !4810, line: 57, type: !5752)
!5755 = !DILocation(line: 57, column: 1, scope: !5749)
!5756 = !DILocalVariable(name: "ret", scope: !5749, file: !4810, line: 57, type: !126)
!5757 = !{i32 -2141399683}
!5758 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !5759, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5759 = !DISubroutineType(types: !5760)
!5760 = !{null, !261, !123}
!5761 = !DILocalVariable(name: "dev", arg: 1, scope: !5758, file: !73, line: 660, type: !261)
!5762 = !DILocation(line: 660, column: 51, scope: !5758)
!5763 = !DILocalVariable(name: "data", arg: 2, scope: !5758, file: !73, line: 660, type: !123)
!5764 = !DILocation(line: 660, column: 62, scope: !5758)
!5765 = !DILocation(line: 662, column: 21, scope: !5758)
!5766 = !DILocation(line: 662, column: 2, scope: !5758)
!5767 = !DILocation(line: 662, column: 7, scope: !5758)
!5768 = !DILocation(line: 662, column: 19, scope: !5758)
!5769 = !DILocation(line: 663, column: 1, scope: !5758)
!5770 = distinct !DISubprogram(name: "pci_get_drvdata", scope: !149, file: !149, line: 1865, type: !5771, scopeLine: 1866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5771 = !DISubroutineType(types: !5772)
!5772 = !{!123, !179}
!5773 = !DILocalVariable(name: "pdev", arg: 1, scope: !5770, file: !149, line: 1865, type: !179)
!5774 = !DILocation(line: 1865, column: 53, scope: !5770)
!5775 = !DILocation(line: 1867, column: 26, scope: !5770)
!5776 = !DILocation(line: 1867, column: 32, scope: !5770)
!5777 = !DILocation(line: 1867, column: 9, scope: !5770)
!5778 = !DILocation(line: 1867, column: 2, scope: !5770)
!5779 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !5780, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !292)
!5780 = !DISubroutineType(types: !5781)
!5781 = !{!123, !3781}
!5782 = !DILocalVariable(name: "dev", arg: 1, scope: !5779, file: !73, line: 655, type: !3781)
!5783 = !DILocation(line: 655, column: 58, scope: !5779)
!5784 = !DILocation(line: 657, column: 9, scope: !5779)
!5785 = !DILocation(line: 657, column: 14, scope: !5779)
!5786 = !DILocation(line: 657, column: 2, scope: !5779)
