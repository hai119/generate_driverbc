; ModuleID = '../bcout/drivers/video/fbdev/carminefb.llvm.bc'
source_filename = "drivers/video/fbdev/carminefb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_carminefb_init6:\09\09\09"
module asm ".long\09carminefb_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.66, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.proc_dir_entry = type opaque
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.65, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
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
%union.anon.66 = type { %struct.pci_sriov* }
%struct.pci_sriov = type opaque
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
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
%struct.carmine_resolution = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.carmine_hw = type { i8*, i8*, [2 x %struct.fb_info*] }
%struct.carmine_fb = type { i8*, i8*, i32, i32, i32, %struct.carmine_resolution*, [16 x i32] }

@__param_str_fb_mode = internal constant [18 x i8] c"carminefb.fb_mode\00", align 16, !dbg !0
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 8
@fb_mode = internal global i32 1, align 4, !dbg !271
@__param_fb_mode = internal constant %struct.kernel_param { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__param_str_fb_mode, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @fb_mode to i8*) } }, section "__param", align 8, !dbg !142
@__UNIQUE_ID_fb_modetype244 = internal constant [32 x i8] c"carminefb.parmtype=fb_mode:uint\00", section ".modinfo", align 1, !dbg !209
@__UNIQUE_ID_fb_mode245 = internal constant [54 x i8] c"carminefb.parm=fb_mode:Initial video mode as integer.\00", section ".modinfo", align 1, !dbg !214
@__param_str_fb_mode_str = internal constant [22 x i8] c"carminefb.fb_mode_str\00", align 16, !dbg !273
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 8
@fb_mode_str = internal global i8* null, align 8, !dbg !269
@__param_fb_mode_str = internal constant %struct.kernel_param { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__param_str_fb_mode_str, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i8** @fb_mode_str to i8*) } }, section "__param", align 8, !dbg !219
@__UNIQUE_ID_fb_mode_strtype246 = internal constant [37 x i8] c"carminefb.parmtype=fb_mode_str:charp\00", section ".modinfo", align 1, !dbg !221
@__UNIQUE_ID_fb_mode_str247 = internal constant [61 x i8] c"carminefb.parm=fb_mode_str:Initial video mode in characters.\00", section ".modinfo", align 1, !dbg !226
@__param_str_fb_displays = internal constant [22 x i8] c"carminefb.fb_displays\00", align 16, !dbg !278
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@fb_displays = internal global i32 3, align 4, !dbg !280
@__param_fb_displays = internal constant %struct.kernel_param { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__param_str_fb_displays, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 292, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @fb_displays to i8*) } }, section "__param", align 8, !dbg !231
@__UNIQUE_ID_fb_displaystype248 = internal constant [35 x i8] c"carminefb.parmtype=fb_displays:int\00", section ".modinfo", align 1, !dbg !233
@__UNIQUE_ID_fb_displays249 = internal constant [61 x i8] c"carminefb.parm=fb_displays:Bit mode, which displays are used\00", section ".modinfo", align 1, !dbg !238
@__UNIQUE_ID___addressable_carminefb_init250 = internal global i8* bitcast (i32 ()* @carminefb_init to i8*), section ".discard.addressable", align 8, !dbg !240
@carmine_pci_driver = internal global %struct.pci_driver { %struct.list_head zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), %struct.pci_device_id* getelementptr inbounds ([2 x %struct.pci_device_id], [2 x %struct.pci_device_id]* @carmine_devices, i32 0, i32 0), i32 (%struct.pci_dev*, %struct.pci_device_id*)* @carminefb_probe, void (%struct.pci_dev*)* @carminefb_remove, i32 (%struct.pci_dev*, i32)* null, i32 (%struct.pci_dev*)* null, void (%struct.pci_dev*)* null, i32 (%struct.pci_dev*, i32)* null, %struct.pci_error_handlers* null, %struct.attribute_group** null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, align 8, !dbg !282
@__exitcall_carminefb_cleanup = internal global void ()* @carminefb_cleanup, section ".exitcall.exit", align 8, !dbg !242
@__UNIQUE_ID_author251 = internal constant [59 x i8] c"carminefb.author=Sebastian Siewior <bigeasy@linutronix.de>\00", section ".modinfo", align 1, !dbg !249
@__UNIQUE_ID_description252 = internal constant [75 x i8] c"carminefb.description=Framebuffer driver for Fujitsu Carmine based devices\00", section ".modinfo", align 1, !dbg !254
@__UNIQUE_ID_file253 = internal constant [45 x i8] c"carminefb.file=drivers/video/fbdev/carminefb\00", section ".modinfo", align 1, !dbg !259
@__UNIQUE_ID_license254 = internal constant [25 x i8] c"carminefb.license=GPL v2\00", section ".modinfo", align 1, !dbg !264
@.str = private unnamed_addr constant [70 x i8] c"\013If you disable both displays than you don't need the driver at all\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"carminefb\00", align 1
@carmine_devices = internal global [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4303, i32 8235, i32 -1, i32 -1, i32 0, i32 0, i64 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !4298
@carminefb_fix = internal global %struct.fb_fix_screeninfo { [16 x i8] c"Carmine\00\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0, i32 0, i32 2, i16 0, i16 0, i16 0, i32 0, i64 0, i32 0, i32 0, i16 0, [2 x i16] zeroinitializer }, align 8, !dbg !4301
@iomem_resource = external dso_local global %struct.resource, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"carminefb regbase\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\013carminefb: Can't reserve regbase.\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"\013carminefb: Can't remap %s register.\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"\013carminefb: Memory bar is only %d bytes, %d are required.\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"carminefb smem\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"\013carminefb: Can't reserve smem.\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"\013carmine: Can't ioremap smem area.\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.9 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"\013DRAM init failed\0A\00", align 1
@carminefb_ops = internal constant %struct.fb_ops { %struct.module* null, i32 (%struct.fb_info*, i32)* null, i32 (%struct.fb_info*, i32)* null, i64 (%struct.fb_info*, i8*, i64, i64*)* null, i64 (%struct.fb_info*, i8*, i64, i64*)* null, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @carmine_check_var, i32 (%struct.fb_info*)* @carmine_set_par, i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @carmine_setcolreg, i32 (%struct.fb_cmap*, %struct.fb_info*)* null, i32 (i32, %struct.fb_info*)* null, i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* null, void (%struct.fb_info*, %struct.fb_fillrect*)* @cfb_fillrect, void (%struct.fb_info*, %struct.fb_copyarea*)* @cfb_copyarea, void (%struct.fb_info*, %struct.fb_image*)* @cfb_imageblit, i32 (%struct.fb_info*, %struct.fb_cursor*)* null, i32 (%struct.fb_info*)* null, i32 (%struct.fb_info*, i32, i64)* null, i32 (%struct.fb_info*, i32, i64)* null, i32 (%struct.fb_info*, %struct.vm_area_struct*)* null, void (%struct.fb_info*, %struct.fb_blit_caps*, %struct.fb_var_screeninfo*)* null, void (%struct.fb_info*)* null, i32 (%struct.fb_info*)* null, i32 (%struct.fb_info*)* null }, align 8, !dbg !4322
@carmine_modedb = internal constant [2 x %struct.fb_videomode] [%struct.fb_videomode { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 640, i32 480, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.fb_videomode { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 800, i32 600, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], align 16, !dbg !4782
@.str.11 = private unnamed_addr constant [32 x i8] c"\016fb%d: %s frame buffer device\0A\00", align 1
@car_modes = internal global [2 x %struct.carmine_resolution] [%struct.carmine_resolution { i32 800, i32 672, i32 96, i32 640, i32 525, i32 490, i32 2, i32 480, i32 5120 }, %struct.carmine_resolution { i32 1060, i32 864, i32 72, i32 800, i32 628, i32 601, i32 2, i32 600, i32 3328 }], align 16, !dbg !4768
@.str.12 = private unnamed_addr constant [8 x i8] c"640x480\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"800x600\00", align 1
@llvm.used = appending global [16 x i8*] [i8* bitcast (%struct.kernel_param* @__param_fb_mode to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_fb_modetype244, i32 0, i32 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__UNIQUE_ID_fb_mode245, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_fb_mode_str to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__UNIQUE_ID_fb_mode_strtype246, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__UNIQUE_ID_fb_mode_str247, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_fb_displays to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_fb_displaystype248, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__UNIQUE_ID_fb_displays249, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_carminefb_init250 to i8*), i8* bitcast (void ()* @carminefb_cleanup to i8*), i8* bitcast (void ()** @__exitcall_carminefb_cleanup to i8*), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__UNIQUE_ID_author251, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @__UNIQUE_ID_description252, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_file253, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_license254, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @carminefb_init() #0 section ".init.text" !dbg !4794 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @fb_displays, align 4, !dbg !4797
  %and = and i32 %0, 3, !dbg !4799
  %tobool = icmp ne i32 %and, 0, !dbg !4799
  br i1 %tobool, label %if.end, label %if.then, !dbg !4800

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0)) #9, !dbg !4801
  store i32 -22, i32* %retval, align 4, !dbg !4803
  br label %return, !dbg !4803

if.end:                                           ; preds = %entry
  %call1 = call i32 @__pci_register_driver(%struct.pci_driver* @carmine_pci_driver, %struct.module* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #10, !dbg !4804
  store i32 %call1, i32* %retval, align 4, !dbg !4805
  br label %return, !dbg !4805

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval, align 4, !dbg !4806
  ret i32 %1, !dbg !4806
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @carminefb_cleanup() #0 section ".exit.text" !dbg !4807 {
entry:
  call void @pci_unregister_driver(%struct.pci_driver* @carmine_pci_driver) #10, !dbg !4808
  ret void, !dbg !4809
}

; Function Attrs: noredzone
declare dso_local void @pci_unregister_driver(%struct.pci_driver*) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @__pci_register_driver(%struct.pci_driver*, %struct.module*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @carminefb_probe(%struct.pci_dev* %dev, %struct.pci_device_id* %ent) #3 !dbg !4810 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %ent.addr = alloca %struct.pci_device_id*, align 8
  %hw = alloca %struct.carmine_hw*, align 8
  %device = alloca %struct.device*, align 8
  %info = alloca %struct.fb_info*, align 8
  %ret = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4811, metadata !DIExpression()), !dbg !4812
  store %struct.pci_device_id* %ent, %struct.pci_device_id** %ent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_device_id** %ent.addr, metadata !4813, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.declare(metadata %struct.carmine_hw** %hw, metadata !4815, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.declare(metadata %struct.device** %device, metadata !4824, metadata !DIExpression()), !dbg !4825
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4826
  %dev1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !4827
  store %struct.device* %dev1, %struct.device** %device, align 8, !dbg !4825
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info, metadata !4828, metadata !DIExpression()), !dbg !4829
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4830, metadata !DIExpression()), !dbg !4831
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4832
  %call = call i32 @pci_enable_device(%struct.pci_dev* %1) #10, !dbg !4833
  store i32 %call, i32* %ret, align 4, !dbg !4834
  %2 = load i32, i32* %ret, align 4, !dbg !4835
  %tobool = icmp ne i32 %2, 0, !dbg !4835
  br i1 %tobool, label %if.then, label %if.end, !dbg !4837

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !4838
  store i32 %3, i32* %retval, align 4, !dbg !4839
  br label %return, !dbg !4839

if.end:                                           ; preds = %entry
  store i32 -12, i32* %ret, align 4, !dbg !4840
  %call2 = call i8* @kzalloc(i64 32, i32 3264) #10, !dbg !4841
  %4 = bitcast i8* %call2 to %struct.carmine_hw*, !dbg !4841
  store %struct.carmine_hw* %4, %struct.carmine_hw** %hw, align 8, !dbg !4842
  %5 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !4843
  %tobool3 = icmp ne %struct.carmine_hw* %5, null, !dbg !4843
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4845

if.then4:                                         ; preds = %if.end
  br label %err_enable_pci, !dbg !4846

if.end5:                                          ; preds = %if.end
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4847
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 44, !dbg !4847
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 3, !dbg !4847
  %start = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 0, !dbg !4847
  %7 = load i64, i64* %start, align 8, !dbg !4847
  store i64 %7, i64* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @carminefb_fix, i32 0, i32 10), align 8, !dbg !4848
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4849
  %resource6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 44, !dbg !4849
  %arrayidx7 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource6, i64 0, i64 3, !dbg !4849
  %start8 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx7, i32 0, i32 0, !dbg !4849
  %9 = load i64, i64* %start8, align 8, !dbg !4849
  %cmp = icmp eq i64 %9, 0, !dbg !4849
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !4849

land.lhs.true:                                    ; preds = %if.end5
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4849
  %resource9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 44, !dbg !4849
  %arrayidx10 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource9, i64 0, i64 3, !dbg !4849
  %end = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx10, i32 0, i32 1, !dbg !4849
  %11 = load i64, i64* %end, align 8, !dbg !4849
  %12 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4849
  %resource11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 44, !dbg !4849
  %arrayidx12 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource11, i64 0, i64 3, !dbg !4849
  %start13 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx12, i32 0, i32 0, !dbg !4849
  %13 = load i64, i64* %start13, align 8, !dbg !4849
  %cmp14 = icmp eq i64 %11, %13, !dbg !4849
  br i1 %cmp14, label %cond.true, label %cond.false, !dbg !4849

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end, !dbg !4849

cond.false:                                       ; preds = %land.lhs.true, %if.end5
  %14 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4849
  %resource15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 44, !dbg !4849
  %arrayidx16 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource15, i64 0, i64 3, !dbg !4849
  %end17 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx16, i32 0, i32 1, !dbg !4849
  %15 = load i64, i64* %end17, align 8, !dbg !4849
  %16 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4849
  %resource18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 44, !dbg !4849
  %arrayidx19 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource18, i64 0, i64 3, !dbg !4849
  %start20 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx19, i32 0, i32 0, !dbg !4849
  %17 = load i64, i64* %start20, align 8, !dbg !4849
  %sub = sub i64 %15, %17, !dbg !4849
  %add = add i64 %sub, 1, !dbg !4849
  br label %cond.end, !dbg !4849

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %add, %cond.false ], !dbg !4849
  %conv = trunc i64 %cond to i32, !dbg !4849
  store i32 %conv, i32* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @carminefb_fix, i32 0, i32 11), align 8, !dbg !4850
  %18 = load i64, i64* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @carminefb_fix, i32 0, i32 10), align 8, !dbg !4851
  %19 = load i32, i32* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @carminefb_fix, i32 0, i32 11), align 8, !dbg !4851
  %conv21 = zext i32 %19 to i64, !dbg !4851
  %call22 = call %struct.resource* @__request_region(%struct.resource* @iomem_resource, i64 %18, i64 %conv21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 0) #10, !dbg !4851
  %tobool23 = icmp ne %struct.resource* %call22, null, !dbg !4851
  br i1 %tobool23, label %if.end26, label %if.then24, !dbg !4853

if.then24:                                        ; preds = %cond.end
  %call25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !4854
  store i32 -16, i32* %ret, align 4, !dbg !4856
  br label %err_free_hw, !dbg !4857

if.end26:                                         ; preds = %cond.end
  %20 = load i64, i64* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @carminefb_fix, i32 0, i32 10), align 8, !dbg !4858
  %21 = load i32, i32* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @carminefb_fix, i32 0, i32 11), align 8, !dbg !4859
  %conv27 = zext i32 %21 to i64, !dbg !4860
  %call28 = call i8* @ioremap(i64 %20, i64 %conv27) #10, !dbg !4861
  %22 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !4862
  %v_regs = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %22, i32 0, i32 0, !dbg !4863
  store i8* %call28, i8** %v_regs, align 8, !dbg !4864
  %23 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !4865
  %v_regs29 = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %23, i32 0, i32 0, !dbg !4867
  %24 = load i8*, i8** %v_regs29, align 8, !dbg !4867
  %tobool30 = icmp ne i8* %24, null, !dbg !4865
  br i1 %tobool30, label %if.end33, label %if.then31, !dbg !4868

if.then31:                                        ; preds = %if.end26
  %call32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @carminefb_fix, i32 0, i32 0, i64 0)) #9, !dbg !4869
  br label %err_free_reg_mmio, !dbg !4871

if.end33:                                         ; preds = %if.end26
  %25 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4872
  %resource34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 44, !dbg !4872
  %arrayidx35 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource34, i64 0, i64 2, !dbg !4872
  %start36 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx35, i32 0, i32 0, !dbg !4872
  %26 = load i64, i64* %start36, align 8, !dbg !4872
  store i64 %26, i64* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @carminefb_fix, i32 0, i32 1), align 8, !dbg !4873
  %27 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4874
  %resource37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 44, !dbg !4874
  %arrayidx38 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource37, i64 0, i64 2, !dbg !4874
  %start39 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx38, i32 0, i32 0, !dbg !4874
  %28 = load i64, i64* %start39, align 8, !dbg !4874
  %cmp40 = icmp eq i64 %28, 0, !dbg !4874
  br i1 %cmp40, label %land.lhs.true42, label %cond.false52, !dbg !4874

land.lhs.true42:                                  ; preds = %if.end33
  %29 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4874
  %resource43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 44, !dbg !4874
  %arrayidx44 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource43, i64 0, i64 2, !dbg !4874
  %end45 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx44, i32 0, i32 1, !dbg !4874
  %30 = load i64, i64* %end45, align 8, !dbg !4874
  %31 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4874
  %resource46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 44, !dbg !4874
  %arrayidx47 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource46, i64 0, i64 2, !dbg !4874
  %start48 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx47, i32 0, i32 0, !dbg !4874
  %32 = load i64, i64* %start48, align 8, !dbg !4874
  %cmp49 = icmp eq i64 %30, %32, !dbg !4874
  br i1 %cmp49, label %cond.true51, label %cond.false52, !dbg !4874

cond.true51:                                      ; preds = %land.lhs.true42
  br label %cond.end61, !dbg !4874

cond.false52:                                     ; preds = %land.lhs.true42, %if.end33
  %33 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4874
  %resource53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 44, !dbg !4874
  %arrayidx54 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource53, i64 0, i64 2, !dbg !4874
  %end55 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx54, i32 0, i32 1, !dbg !4874
  %34 = load i64, i64* %end55, align 8, !dbg !4874
  %35 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4874
  %resource56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 44, !dbg !4874
  %arrayidx57 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource56, i64 0, i64 2, !dbg !4874
  %start58 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx57, i32 0, i32 0, !dbg !4874
  %36 = load i64, i64* %start58, align 8, !dbg !4874
  %sub59 = sub i64 %34, %36, !dbg !4874
  %add60 = add i64 %sub59, 1, !dbg !4874
  br label %cond.end61, !dbg !4874

cond.end61:                                       ; preds = %cond.false52, %cond.true51
  %cond62 = phi i64 [ 0, %cond.true51 ], [ %add60, %cond.false52 ], !dbg !4874
  %conv63 = trunc i64 %cond62 to i32, !dbg !4874
  store i32 %conv63, i32* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @carminefb_fix, i32 0, i32 2), align 8, !dbg !4875
  %37 = load i32, i32* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @carminefb_fix, i32 0, i32 2), align 8, !dbg !4876
  %cmp64 = icmp ugt i32 %37, 3840000, !dbg !4878
  br i1 %cmp64, label %if.then66, label %if.else, !dbg !4879

if.then66:                                        ; preds = %cond.end61
  store i32 3840000, i32* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @carminefb_fix, i32 0, i32 2), align 8, !dbg !4880
  br label %if.end72, !dbg !4881

if.else:                                          ; preds = %cond.end61
  %38 = load i32, i32* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @carminefb_fix, i32 0, i32 2), align 8, !dbg !4882
  %cmp67 = icmp ult i32 %38, 3840000, !dbg !4884
  br i1 %cmp67, label %if.then69, label %if.end71, !dbg !4885

if.then69:                                        ; preds = %if.else
  %39 = load i32, i32* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @carminefb_fix, i32 0, i32 2), align 8, !dbg !4886
  %call70 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %39, i32 3840000) #9, !dbg !4888
  br label %err_unmap_vregs, !dbg !4889

if.end71:                                         ; preds = %if.else
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then66
  %40 = load i64, i64* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @carminefb_fix, i32 0, i32 1), align 8, !dbg !4890
  %41 = load i32, i32* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @carminefb_fix, i32 0, i32 2), align 8, !dbg !4890
  %conv73 = zext i32 %41 to i64, !dbg !4890
  %call74 = call %struct.resource* @__request_region(%struct.resource* @iomem_resource, i64 %40, i64 %conv73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 0) #10, !dbg !4890
  %tobool75 = icmp ne %struct.resource* %call74, null, !dbg !4890
  br i1 %tobool75, label %if.end78, label %if.then76, !dbg !4892

if.then76:                                        ; preds = %if.end72
  %call77 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !4893
  br label %err_unmap_vregs, !dbg !4895

if.end78:                                         ; preds = %if.end72
  %42 = load i64, i64* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @carminefb_fix, i32 0, i32 1), align 8, !dbg !4896
  %43 = load i32, i32* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @carminefb_fix, i32 0, i32 2), align 8, !dbg !4897
  %conv79 = zext i32 %43 to i64, !dbg !4898
  %call80 = call i8* @ioremap(i64 %42, i64 %conv79) #10, !dbg !4899
  %44 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !4900
  %screen_mem = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %44, i32 0, i32 1, !dbg !4901
  store i8* %call80, i8** %screen_mem, align 8, !dbg !4902
  %45 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !4903
  %screen_mem81 = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %45, i32 0, i32 1, !dbg !4905
  %46 = load i8*, i8** %screen_mem81, align 8, !dbg !4905
  %tobool82 = icmp ne i8* %46, null, !dbg !4903
  br i1 %tobool82, label %if.end85, label %if.then83, !dbg !4906

if.then83:                                        ; preds = %if.end78
  %call84 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !4907
  br label %err_reg_smem, !dbg !4909

if.end85:                                         ; preds = %if.end78
  %47 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !4910
  %call86 = call i32 @init_hardware(%struct.carmine_hw* %47) #10, !dbg !4911
  store i32 %call86, i32* %ret, align 4, !dbg !4912
  %48 = load i32, i32* %ret, align 4, !dbg !4913
  %tobool87 = icmp ne i32 %48, 0, !dbg !4913
  br i1 %tobool87, label %if.then88, label %if.end89, !dbg !4915

if.then88:                                        ; preds = %if.end85
  br label %err_unmap_screen, !dbg !4916

if.end89:                                         ; preds = %if.end85
  store %struct.fb_info* null, %struct.fb_info** %info, align 8, !dbg !4917
  %49 = load i32, i32* @fb_displays, align 4, !dbg !4918
  %and = and i32 %49, 1, !dbg !4920
  %tobool90 = icmp ne i32 %and, 0, !dbg !4920
  br i1 %tobool90, label %if.then91, label %if.end98, !dbg !4921

if.then91:                                        ; preds = %if.end89
  %50 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !4922
  %v_regs92 = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %50, i32 0, i32 0, !dbg !4924
  %51 = load i8*, i8** %v_regs92, align 8, !dbg !4924
  %add.ptr = getelementptr i8, i8* %51, i64 1048576, !dbg !4925
  %52 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !4926
  %screen_mem93 = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %52, i32 0, i32 1, !dbg !4927
  %53 = load i8*, i8** %screen_mem93, align 8, !dbg !4927
  %54 = load %struct.device*, %struct.device** %device, align 8, !dbg !4928
  %call94 = call i32 @alloc_carmine_fb(i8* %add.ptr, i8* %53, i32 0, %struct.device* %54, %struct.fb_info** %info) #10, !dbg !4929
  store i32 %call94, i32* %ret, align 4, !dbg !4930
  %55 = load i32, i32* %ret, align 4, !dbg !4931
  %tobool95 = icmp ne i32 %55, 0, !dbg !4931
  br i1 %tobool95, label %if.then96, label %if.end97, !dbg !4933

if.then96:                                        ; preds = %if.then91
  br label %err_deinit_hw, !dbg !4934

if.end97:                                         ; preds = %if.then91
  br label %if.end98, !dbg !4935

if.end98:                                         ; preds = %if.end97, %if.end89
  %56 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4936
  %57 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !4937
  %fb = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %57, i32 0, i32 2, !dbg !4938
  %arrayidx99 = getelementptr [2 x %struct.fb_info*], [2 x %struct.fb_info*]* %fb, i64 0, i64 0, !dbg !4937
  store %struct.fb_info* %56, %struct.fb_info** %arrayidx99, align 8, !dbg !4939
  store %struct.fb_info* null, %struct.fb_info** %info, align 8, !dbg !4940
  %58 = load i32, i32* @fb_displays, align 4, !dbg !4941
  %and100 = and i32 %58, 2, !dbg !4943
  %tobool101 = icmp ne i32 %and100, 0, !dbg !4943
  br i1 %tobool101, label %if.then102, label %if.end110, !dbg !4944

if.then102:                                       ; preds = %if.end98
  %59 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !4945
  %v_regs103 = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %59, i32 0, i32 0, !dbg !4947
  %60 = load i8*, i8** %v_regs103, align 8, !dbg !4947
  %add.ptr104 = getelementptr i8, i8* %60, i64 1310720, !dbg !4948
  %61 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !4949
  %screen_mem105 = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %61, i32 0, i32 1, !dbg !4950
  %62 = load i8*, i8** %screen_mem105, align 8, !dbg !4950
  %63 = load %struct.device*, %struct.device** %device, align 8, !dbg !4951
  %call106 = call i32 @alloc_carmine_fb(i8* %add.ptr104, i8* %62, i32 1920000, %struct.device* %63, %struct.fb_info** %info) #10, !dbg !4952
  store i32 %call106, i32* %ret, align 4, !dbg !4953
  %64 = load i32, i32* %ret, align 4, !dbg !4954
  %tobool107 = icmp ne i32 %64, 0, !dbg !4954
  br i1 %tobool107, label %if.then108, label %if.end109, !dbg !4956

if.then108:                                       ; preds = %if.then102
  br label %err_cleanup_fb0, !dbg !4957

if.end109:                                        ; preds = %if.then102
  br label %if.end110, !dbg !4958

if.end110:                                        ; preds = %if.end109, %if.end98
  %65 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !4959
  %66 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !4960
  %fb111 = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %66, i32 0, i32 2, !dbg !4961
  %arrayidx112 = getelementptr [2 x %struct.fb_info*], [2 x %struct.fb_info*]* %fb111, i64 0, i64 1, !dbg !4960
  store %struct.fb_info* %65, %struct.fb_info** %arrayidx112, align 8, !dbg !4962
  store %struct.fb_info* null, %struct.fb_info** %info, align 8, !dbg !4963
  %67 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4964
  %68 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !4965
  %69 = bitcast %struct.carmine_hw* %68 to i8*, !dbg !4965
  call void @pci_set_drvdata(%struct.pci_dev* %67, i8* %69) #10, !dbg !4966
  store i32 0, i32* %retval, align 4, !dbg !4967
  br label %return, !dbg !4967

err_cleanup_fb0:                                  ; preds = %if.then108
  call void @llvm.dbg.label(metadata !4968), !dbg !4969
  %70 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !4970
  %fb113 = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %70, i32 0, i32 2, !dbg !4971
  %arrayidx114 = getelementptr [2 x %struct.fb_info*], [2 x %struct.fb_info*]* %fb113, i64 0, i64 0, !dbg !4970
  %71 = load %struct.fb_info*, %struct.fb_info** %arrayidx114, align 8, !dbg !4970
  call void @cleanup_fb_device(%struct.fb_info* %71) #10, !dbg !4972
  br label %err_deinit_hw, !dbg !4972

err_deinit_hw:                                    ; preds = %err_cleanup_fb0, %if.then96
  call void @llvm.dbg.label(metadata !4973), !dbg !4974
  %72 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !4975
  call void @c_set_hw_reg(%struct.carmine_hw* %72, i32 4194316, i32 0) #10, !dbg !4976
  br label %err_unmap_screen, !dbg !4976

err_unmap_screen:                                 ; preds = %err_deinit_hw, %if.then88
  call void @llvm.dbg.label(metadata !4977), !dbg !4978
  %73 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !4979
  %screen_mem115 = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %73, i32 0, i32 1, !dbg !4980
  %74 = load i8*, i8** %screen_mem115, align 8, !dbg !4980
  call void @iounmap(i8* %74) #10, !dbg !4981
  br label %err_reg_smem, !dbg !4981

err_reg_smem:                                     ; preds = %err_unmap_screen, %if.then83
  call void @llvm.dbg.label(metadata !4982), !dbg !4983
  %75 = load i64, i64* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @carminefb_fix, i32 0, i32 1), align 8, !dbg !4984
  %76 = load i32, i32* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @carminefb_fix, i32 0, i32 2), align 8, !dbg !4984
  %conv116 = zext i32 %76 to i64, !dbg !4984
  call void @__release_region(%struct.resource* @iomem_resource, i64 %75, i64 %conv116) #10, !dbg !4984
  br label %err_unmap_vregs, !dbg !4984

err_unmap_vregs:                                  ; preds = %err_reg_smem, %if.then76, %if.then69
  call void @llvm.dbg.label(metadata !4985), !dbg !4986
  %77 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !4987
  %v_regs117 = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %77, i32 0, i32 0, !dbg !4988
  %78 = load i8*, i8** %v_regs117, align 8, !dbg !4988
  call void @iounmap(i8* %78) #10, !dbg !4989
  br label %err_free_reg_mmio, !dbg !4989

err_free_reg_mmio:                                ; preds = %err_unmap_vregs, %if.then31
  call void @llvm.dbg.label(metadata !4990), !dbg !4991
  %79 = load i64, i64* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @carminefb_fix, i32 0, i32 10), align 8, !dbg !4992
  %80 = load i32, i32* getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @carminefb_fix, i32 0, i32 11), align 8, !dbg !4992
  %conv118 = zext i32 %80 to i64, !dbg !4992
  call void @__release_region(%struct.resource* @iomem_resource, i64 %79, i64 %conv118) #10, !dbg !4992
  br label %err_free_hw, !dbg !4992

err_free_hw:                                      ; preds = %err_free_reg_mmio, %if.then24
  call void @llvm.dbg.label(metadata !4993), !dbg !4994
  %81 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !4995
  %82 = bitcast %struct.carmine_hw* %81 to i8*, !dbg !4995
  call void @kfree(i8* %82) #10, !dbg !4996
  br label %err_enable_pci, !dbg !4996

err_enable_pci:                                   ; preds = %err_free_hw, %if.then4
  call void @llvm.dbg.label(metadata !4997), !dbg !4998
  %83 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4999
  call void @pci_disable_device(%struct.pci_dev* %83) #10, !dbg !5000
  %84 = load i32, i32* %ret, align 4, !dbg !5001
  store i32 %84, i32* %retval, align 4, !dbg !5002
  br label %return, !dbg !5002

return:                                           ; preds = %err_enable_pci, %if.end110, %if.then
  %85 = load i32, i32* %retval, align 4, !dbg !5003
  ret i32 %85, !dbg !5003
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @carminefb_remove(%struct.pci_dev* %dev) #3 !dbg !5004 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  %hw = alloca %struct.carmine_hw*, align 8
  %fix = alloca %struct.fb_fix_screeninfo, align 8
  %i = alloca i32, align 4
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !5005, metadata !DIExpression()), !dbg !5006
  call void @llvm.dbg.declare(metadata %struct.carmine_hw** %hw, metadata !5007, metadata !DIExpression()), !dbg !5008
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5009
  %call = call i8* @pci_get_drvdata(%struct.pci_dev* %0) #10, !dbg !5010
  %1 = bitcast i8* %call to %struct.carmine_hw*, !dbg !5010
  store %struct.carmine_hw* %1, %struct.carmine_hw** %hw, align 8, !dbg !5008
  call void @llvm.dbg.declare(metadata %struct.fb_fix_screeninfo* %fix, metadata !5011, metadata !DIExpression()), !dbg !5012
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5013, metadata !DIExpression()), !dbg !5014
  %2 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !5015
  %fb = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %2, i32 0, i32 2, !dbg !5017
  %arrayidx = getelementptr [2 x %struct.fb_info*], [2 x %struct.fb_info*]* %fb, i64 0, i64 0, !dbg !5015
  %3 = load %struct.fb_info*, %struct.fb_info** %arrayidx, align 8, !dbg !5015
  %tobool = icmp ne %struct.fb_info* %3, null, !dbg !5015
  br i1 %tobool, label %if.then, label %if.else, !dbg !5018

if.then:                                          ; preds = %entry
  %4 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !5019
  %fb1 = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %4, i32 0, i32 2, !dbg !5020
  %arrayidx2 = getelementptr [2 x %struct.fb_info*], [2 x %struct.fb_info*]* %fb1, i64 0, i64 0, !dbg !5019
  %5 = load %struct.fb_info*, %struct.fb_info** %arrayidx2, align 8, !dbg !5019
  %fix3 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 7, !dbg !5021
  %6 = bitcast %struct.fb_fix_screeninfo* %fix to i8*, !dbg !5021
  %7 = bitcast %struct.fb_fix_screeninfo* %fix3 to i8*, !dbg !5021
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 80, i1 false), !dbg !5021
  br label %if.end, !dbg !5022

if.else:                                          ; preds = %entry
  %8 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !5023
  %fb4 = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %8, i32 0, i32 2, !dbg !5024
  %arrayidx5 = getelementptr [2 x %struct.fb_info*], [2 x %struct.fb_info*]* %fb4, i64 0, i64 1, !dbg !5023
  %9 = load %struct.fb_info*, %struct.fb_info** %arrayidx5, align 8, !dbg !5023
  %fix6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 7, !dbg !5025
  %10 = bitcast %struct.fb_fix_screeninfo* %fix to i8*, !dbg !5025
  %11 = bitcast %struct.fb_fix_screeninfo* %fix6 to i8*, !dbg !5025
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 80, i1 false), !dbg !5025
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !5026
  call void @c_set_hw_reg(%struct.carmine_hw* %12, i32 1048832, i32 0) #10, !dbg !5027
  %13 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !5028
  call void @c_set_hw_reg(%struct.carmine_hw* %13, i32 1310976, i32 0) #10, !dbg !5029
  %14 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !5030
  call void @c_set_hw_reg(%struct.carmine_hw* %14, i32 4194316, i32 0) #10, !dbg !5031
  store i32 0, i32* %i, align 4, !dbg !5032
  br label %for.cond, !dbg !5034

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, i32* %i, align 4, !dbg !5035
  %cmp = icmp slt i32 %15, 2, !dbg !5037
  br i1 %cmp, label %for.body, label %for.end, !dbg !5038

for.body:                                         ; preds = %for.cond
  %16 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !5039
  %fb7 = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %16, i32 0, i32 2, !dbg !5040
  %17 = load i32, i32* %i, align 4, !dbg !5041
  %idxprom = sext i32 %17 to i64, !dbg !5039
  %arrayidx8 = getelementptr [2 x %struct.fb_info*], [2 x %struct.fb_info*]* %fb7, i64 0, i64 %idxprom, !dbg !5039
  %18 = load %struct.fb_info*, %struct.fb_info** %arrayidx8, align 8, !dbg !5039
  call void @cleanup_fb_device(%struct.fb_info* %18) #10, !dbg !5042
  br label %for.inc, !dbg !5042

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !dbg !5043
  %inc = add i32 %19, 1, !dbg !5043
  store i32 %inc, i32* %i, align 4, !dbg !5043
  br label %for.cond, !dbg !5044, !llvm.loop !5045

for.end:                                          ; preds = %for.cond
  %20 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !5047
  %screen_mem = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %20, i32 0, i32 1, !dbg !5048
  %21 = load i8*, i8** %screen_mem, align 8, !dbg !5048
  call void @iounmap(i8* %21) #10, !dbg !5049
  %smem_start = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix, i32 0, i32 1, !dbg !5050
  %22 = load i64, i64* %smem_start, align 8, !dbg !5050
  %smem_len = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix, i32 0, i32 2, !dbg !5050
  %23 = load i32, i32* %smem_len, align 8, !dbg !5050
  %conv = zext i32 %23 to i64, !dbg !5050
  call void @__release_region(%struct.resource* @iomem_resource, i64 %22, i64 %conv) #10, !dbg !5050
  %24 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !5051
  %v_regs = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %24, i32 0, i32 0, !dbg !5052
  %25 = load i8*, i8** %v_regs, align 8, !dbg !5052
  call void @iounmap(i8* %25) #10, !dbg !5053
  %mmio_start = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix, i32 0, i32 10, !dbg !5054
  %26 = load i64, i64* %mmio_start, align 8, !dbg !5054
  %mmio_len = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix, i32 0, i32 11, !dbg !5054
  %27 = load i32, i32* %mmio_len, align 8, !dbg !5054
  %conv9 = zext i32 %27 to i64, !dbg !5054
  call void @__release_region(%struct.resource* @iomem_resource, i64 %26, i64 %conv9) #10, !dbg !5054
  %28 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !5055
  call void @pci_disable_device(%struct.pci_dev* %28) #10, !dbg !5056
  %29 = load %struct.carmine_hw*, %struct.carmine_hw** %hw, align 8, !dbg !5057
  %30 = bitcast %struct.carmine_hw* %29 to i8*, !dbg !5057
  call void @kfree(i8* %30) #10, !dbg !5058
  ret void, !dbg !5059
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: noredzone
declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #3 !dbg !5060 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5063, metadata !DIExpression()), !dbg !5067
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5073, metadata !DIExpression()), !dbg !5074
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5075, metadata !DIExpression()), !dbg !5076
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5077, metadata !DIExpression()), !dbg !5078
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5079, metadata !DIExpression()), !dbg !5083
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5085, metadata !DIExpression()), !dbg !5089
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5091, metadata !DIExpression()), !dbg !5095
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5100, metadata !DIExpression()), !dbg !5101
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5102, metadata !DIExpression()), !dbg !5103
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5104, metadata !DIExpression()), !dbg !5105
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5106, metadata !DIExpression()), !dbg !5107
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5108, metadata !DIExpression()), !dbg !5109
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5110, metadata !DIExpression()), !dbg !5111
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5112, metadata !DIExpression()), !dbg !5113
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5114, metadata !DIExpression()), !dbg !5115
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5116, metadata !DIExpression()), !dbg !5117
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5118, metadata !DIExpression()), !dbg !5119
  %0 = load i64, i64* %size.addr, align 8, !dbg !5120
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5121
  %or = or i32 %1, 256, !dbg !5122
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5123
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !5124
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5125

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5126
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5127
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5128

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5129
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5130
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5131
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !5132
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5109
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5133
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5134
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5135
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5136
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5137
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5138
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !5139
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5139
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5139
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5139
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !5139
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5140
  br label %kmalloc.exit, !dbg !5140

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5141
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5142
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5142
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5144

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5145
  br label %kmalloc_index.exit.i, !dbg !5145

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5146
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5148
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5149

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5150
  br label %kmalloc_index.exit.i, !dbg !5150

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5151
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5153
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5154

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5155
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5156
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5157

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5158
  br label %kmalloc_index.exit.i, !dbg !5158

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5159
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5161
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5162

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5163
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5164
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5165

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5166
  br label %kmalloc_index.exit.i, !dbg !5166

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5167
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5169
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5170

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5171
  br label %kmalloc_index.exit.i, !dbg !5171

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5172
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5174
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5175

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5176
  br label %kmalloc_index.exit.i, !dbg !5176

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5177
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5179
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5180

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5181
  br label %kmalloc_index.exit.i, !dbg !5181

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5182
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5184
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5185

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5186
  br label %kmalloc_index.exit.i, !dbg !5186

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5187
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5189
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5190

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5191
  br label %kmalloc_index.exit.i, !dbg !5191

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5192
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5194
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5195

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5196
  br label %kmalloc_index.exit.i, !dbg !5196

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5197
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5199
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5200

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5201
  br label %kmalloc_index.exit.i, !dbg !5201

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5202
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5204
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5205

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5206
  br label %kmalloc_index.exit.i, !dbg !5206

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5207
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5209
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5210

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5211
  br label %kmalloc_index.exit.i, !dbg !5211

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5212
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5214
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5215

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5216
  br label %kmalloc_index.exit.i, !dbg !5216

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5217
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5219
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5220

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5221
  br label %kmalloc_index.exit.i, !dbg !5221

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5222
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5224
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5225

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5226
  br label %kmalloc_index.exit.i, !dbg !5226

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5227
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5229
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5230

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5231
  br label %kmalloc_index.exit.i, !dbg !5231

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5232
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5234
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5235

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5236
  br label %kmalloc_index.exit.i, !dbg !5236

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5237
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5239
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5240

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5241
  br label %kmalloc_index.exit.i, !dbg !5241

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5242
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5244
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5245

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5246
  br label %kmalloc_index.exit.i, !dbg !5246

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5247
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5249
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5250

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5251
  br label %kmalloc_index.exit.i, !dbg !5251

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5252
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5254
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5255

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5256
  br label %kmalloc_index.exit.i, !dbg !5256

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5257
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5259
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5260

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5261
  br label %kmalloc_index.exit.i, !dbg !5261

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5262
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5264
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5265

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5266
  br label %kmalloc_index.exit.i, !dbg !5266

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5267
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5269
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5270

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5271
  br label %kmalloc_index.exit.i, !dbg !5271

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5272
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5274
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5275

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5276
  br label %kmalloc_index.exit.i, !dbg !5276

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5277
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5279
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5280

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5281
  br label %kmalloc_index.exit.i, !dbg !5281

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5282
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5284
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5285

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5286
  br label %kmalloc_index.exit.i, !dbg !5286

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !5287, !srcloc !5290
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 230) #11, !dbg !5291, !srcloc !5294
  unreachable, !dbg !5295

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5296
  store i32 %45, i32* %index.i, align 4, !dbg !5297
  %46 = load i32, i32* %index.i, align 4, !dbg !5298
  %tobool.i = icmp ne i32 %46, 0, !dbg !5298
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5300

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5301
  br label %kmalloc.exit, !dbg !5301

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5302
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5303
  %and.i.i = and i32 %48, 17, !dbg !5303
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5303
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5303
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5303
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5303
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5305

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5306
  br label %kmalloc_type.exit.i, !dbg !5306

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5307
  %and2.i.i = and i32 %49, 1, !dbg !5308
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5307
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5307
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5307
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5309
  br label %kmalloc_type.exit.i, !dbg !5309

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5310
  %idxprom.i = zext i32 %51 to i64, !dbg !5311
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5311
  %52 = load i32, i32* %index.i, align 4, !dbg !5312
  %idxprom6.i = zext i32 %52 to i64, !dbg !5311
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5311
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5311
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5313
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5314
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5315
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5316
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !5317
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5317
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5317
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5317
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !5317
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5078
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5318
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5319
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5320
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5321
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !5322
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5323
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5324
  store i8* %62, i8** %retval.i, align 8, !dbg !5325
  br label %kmalloc.exit, !dbg !5325

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5326
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5327
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !5328
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5328
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5328
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5328
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !5328
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5329
  br label %kmalloc.exit, !dbg !5329

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5330
  ret i8* %65, !dbg !5331
}

; Function Attrs: noredzone
declare dso_local %struct.resource* @__request_region(%struct.resource*, i64, i64, i8*, i32) #1

; Function Attrs: noredzone
declare dso_local i8* @ioremap(i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @init_hardware(%struct.carmine_hw* %hw) #3 !dbg !5332 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.carmine_hw*, align 8
  %flags = alloca i32, align 4
  %loops = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.carmine_hw* %hw, %struct.carmine_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.carmine_hw** %hw.addr, metadata !5335, metadata !DIExpression()), !dbg !5336
  call void @llvm.dbg.declare(metadata i32* %flags, metadata !5337, metadata !DIExpression()), !dbg !5338
  call void @llvm.dbg.declare(metadata i32* %loops, metadata !5339, metadata !DIExpression()), !dbg !5340
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5341, metadata !DIExpression()), !dbg !5342
  %0 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5343
  call void @c_set_hw_reg(%struct.carmine_hw* %0, i32 4194316, i32 1023) #10, !dbg !5344
  %1 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5345
  call void @c_set_hw_reg(%struct.carmine_hw* %1, i32 1048832, i32 0) #10, !dbg !5346
  %2 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5347
  call void @c_set_hw_reg(%struct.carmine_hw* %2, i32 1310976, i32 0) #10, !dbg !5348
  %3 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5349
  call void @c_set_hw_reg(%struct.carmine_hw* %3, i32 4194320, i32 1) #10, !dbg !5350
  %4 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5351
  call void @c_set_hw_reg(%struct.carmine_hw* %4, i32 4194320, i32 0) #10, !dbg !5352
  store i32 89458005, i32* %flags, align 4, !dbg !5353
  %5 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5354
  %6 = load i32, i32* %flags, align 4, !dbg !5355
  call void @c_set_hw_reg(%struct.carmine_hw* %5, i32 3145764, i32 %6) #10, !dbg !5356
  store i32 18941379, i32* %flags, align 4, !dbg !5357
  %7 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5358
  %8 = load i32, i32* %flags, align 4, !dbg !5359
  call void @c_set_hw_reg(%struct.carmine_hw* %7, i32 3145728, i32 %8) #10, !dbg !5360
  store i32 1195999232, i32* %flags, align 4, !dbg !5361
  %9 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5362
  %10 = load i32, i32* %flags, align 4, !dbg !5363
  call void @c_set_hw_reg(%struct.carmine_hw* %9, i32 3145732, i32 %10) #10, !dbg !5364
  store i32 4336162, i32* %flags, align 4, !dbg !5365
  %11 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5366
  %12 = load i32, i32* %flags, align 4, !dbg !5367
  call void @c_set_hw_reg(%struct.carmine_hw* %11, i32 3145736, i32 %12) #10, !dbg !5368
  store i32 15, i32* %flags, align 4, !dbg !5369
  %13 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5370
  %14 = load i32, i32* %flags, align 4, !dbg !5371
  call void @c_set_hw_reg(%struct.carmine_hw* %13, i32 3145744, i32 %14) #10, !dbg !5372
  store i32 5596742, i32* %flags, align 4, !dbg !5373
  %15 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5374
  %16 = load i32, i32* %flags, align 4, !dbg !5375
  call void @c_set_hw_reg(%struct.carmine_hw* %15, i32 3145748, i32 %16) #10, !dbg !5376
  store i32 2097155, i32* %flags, align 4, !dbg !5377
  %17 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5378
  %18 = load i32, i32* %flags, align 4, !dbg !5379
  call void @c_set_hw_reg(%struct.carmine_hw* %17, i32 3145740, i32 %18) #10, !dbg !5380
  store i32 0, i32* %loops, align 4, !dbg !5381
  br label %for.cond, !dbg !5385

for.cond:                                         ; preds = %for.inc, %entry
  %19 = load i32, i32* %loops, align 4, !dbg !5386
  %cmp = icmp ult i32 %19, 5000, !dbg !5388
  br i1 %cmp, label %for.body, label %for.end, !dbg !5389

for.body:                                         ; preds = %for.cond
  %20 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5390
  %call = call i32 @c_get_hw_reg(%struct.carmine_hw* %20, i32 3145740) #10, !dbg !5392
  store i32 %call, i32* %ret, align 4, !dbg !5393
  %21 = load i32, i32* %ret, align 4, !dbg !5394
  %and = and i32 %21, 15, !dbg !5394
  store i32 %and, i32* %ret, align 4, !dbg !5394
  %22 = load i32, i32* %ret, align 4, !dbg !5395
  %tobool = icmp ne i32 %22, 0, !dbg !5395
  br i1 %tobool, label %if.end, label %if.then, !dbg !5397

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !5398

if.end:                                           ; preds = %for.body
  call void @__const_udelay(i64 4295000) #10, !dbg !5399
  br label %for.inc, !dbg !5404

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %loops, align 4, !dbg !5405
  %inc = add i32 %23, 1, !dbg !5405
  store i32 %inc, i32* %loops, align 4, !dbg !5405
  br label %for.cond, !dbg !5406, !llvm.loop !5407

for.end:                                          ; preds = %if.then, %for.cond
  %24 = load i32, i32* %loops, align 4, !dbg !5409
  %cmp1 = icmp uge i32 %24, 5000, !dbg !5411
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !5412

if.then2:                                         ; preds = %for.end
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !5413
  store i32 -5, i32* %retval, align 4, !dbg !5415
  br label %return, !dbg !5415

if.end4:                                          ; preds = %for.end
  store i32 2164163, i32* %flags, align 4, !dbg !5416
  %25 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5417
  %26 = load i32, i32* %flags, align 4, !dbg !5418
  call void @c_set_hw_reg(%struct.carmine_hw* %25, i32 3145728, i32 %26) #10, !dbg !5419
  store i32 2097154, i32* %flags, align 4, !dbg !5420
  %27 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5421
  %28 = load i32, i32* %flags, align 4, !dbg !5422
  call void @c_set_hw_reg(%struct.carmine_hw* %27, i32 3145740, i32 %28) #10, !dbg !5423
  %29 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5424
  call void @c_set_hw_reg(%struct.carmine_hw* %29, i32 1572868, i32 114720) #10, !dbg !5425
  %30 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5426
  call void @c_set_hw_reg(%struct.carmine_hw* %30, i32 163940, i32 0) #10, !dbg !5427
  %31 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5428
  call void @c_set_hw_reg(%struct.carmine_hw* %31, i32 163948, i32 0) #10, !dbg !5429
  %32 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5430
  call void @c_set_hw_reg(%struct.carmine_hw* %32, i32 262236, i32 0) #10, !dbg !5431
  %33 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5432
  call void @c_set_hw_reg(%struct.carmine_hw* %33, i32 262240, i32 0) #10, !dbg !5433
  %34 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5434
  call void @c_set_hw_reg(%struct.carmine_hw* %34, i32 262244, i32 0) #10, !dbg !5435
  %35 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5436
  call void @c_set_hw_reg(%struct.carmine_hw* %35, i32 262248, i32 0) #10, !dbg !5437
  %36 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5438
  call void @c_set_hw_reg(%struct.carmine_hw* %36, i32 262252, i32 0) #10, !dbg !5439
  %37 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5440
  call void @c_set_hw_reg(%struct.carmine_hw* %37, i32 262256, i32 0) #10, !dbg !5441
  store i32 0, i32* %retval, align 4, !dbg !5442
  br label %return, !dbg !5442

return:                                           ; preds = %if.end4, %if.then2
  %38 = load i32, i32* %retval, align 4, !dbg !5443
  ret i32 %38, !dbg !5443
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @alloc_carmine_fb(i8* %regs, i8* %smem_base, i32 %smem_offset, %struct.device* %device, %struct.fb_info** %rinfo) #3 !dbg !5444 {
entry:
  %retval = alloca i32, align 4
  %regs.addr = alloca i8*, align 8
  %smem_base.addr = alloca i8*, align 8
  %smem_offset.addr = alloca i32, align 4
  %device.addr = alloca %struct.device*, align 8
  %rinfo.addr = alloca %struct.fb_info**, align 8
  %ret = alloca i32, align 4
  %info = alloca %struct.fb_info*, align 8
  %par = alloca %struct.carmine_fb*, align 8
  store i8* %regs, i8** %regs.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regs.addr, metadata !5448, metadata !DIExpression()), !dbg !5449
  store i8* %smem_base, i8** %smem_base.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %smem_base.addr, metadata !5450, metadata !DIExpression()), !dbg !5451
  store i32 %smem_offset, i32* %smem_offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %smem_offset.addr, metadata !5452, metadata !DIExpression()), !dbg !5453
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5454, metadata !DIExpression()), !dbg !5455
  store %struct.fb_info** %rinfo, %struct.fb_info*** %rinfo.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info*** %rinfo.addr, metadata !5456, metadata !DIExpression()), !dbg !5457
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5458, metadata !DIExpression()), !dbg !5459
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info, metadata !5460, metadata !DIExpression()), !dbg !5461
  call void @llvm.dbg.declare(metadata %struct.carmine_fb** %par, metadata !5462, metadata !DIExpression()), !dbg !5474
  %0 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !5475
  %call = call %struct.fb_info* @framebuffer_alloc(i64 104, %struct.device* %0) #10, !dbg !5476
  store %struct.fb_info* %call, %struct.fb_info** %info, align 8, !dbg !5477
  %1 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5478
  %tobool = icmp ne %struct.fb_info* %1, null, !dbg !5478
  br i1 %tobool, label %if.end, label %if.then, !dbg !5480

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !5481
  br label %return, !dbg !5481

if.end:                                           ; preds = %entry
  %2 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5482
  %par1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %2, i32 0, i32 30, !dbg !5483
  %3 = load i8*, i8** %par1, align 8, !dbg !5483
  %4 = bitcast i8* %3 to %struct.carmine_fb*, !dbg !5482
  store %struct.carmine_fb* %4, %struct.carmine_fb** %par, align 8, !dbg !5484
  %5 = load i8*, i8** %regs.addr, align 8, !dbg !5485
  %6 = load %struct.carmine_fb*, %struct.carmine_fb** %par, align 8, !dbg !5486
  %display_reg = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %6, i32 0, i32 0, !dbg !5487
  store i8* %5, i8** %display_reg, align 8, !dbg !5488
  %7 = load i32, i32* %smem_offset.addr, align 4, !dbg !5489
  %8 = load %struct.carmine_fb*, %struct.carmine_fb** %par, align 8, !dbg !5490
  %smem_offset2 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %8, i32 0, i32 2, !dbg !5491
  store i32 %7, i32* %smem_offset2, align 8, !dbg !5492
  %9 = load i8*, i8** %smem_base.addr, align 8, !dbg !5493
  %10 = load i32, i32* %smem_offset.addr, align 4, !dbg !5494
  %idx.ext = sext i32 %10 to i64, !dbg !5495
  %add.ptr = getelementptr i8, i8* %9, i64 %idx.ext, !dbg !5495
  %11 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5496
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 25, !dbg !5497
  %screen_base = bitcast %union.anon.67* %12 to i8**, !dbg !5497
  store i8* %add.ptr, i8** %screen_base, align 8, !dbg !5498
  %13 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5499
  %screen_size = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 26, !dbg !5500
  store i64 1920000, i64* %screen_size, align 8, !dbg !5501
  %14 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5502
  %fbops = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 20, !dbg !5503
  store %struct.fb_ops* @carminefb_ops, %struct.fb_ops** %fbops, align 8, !dbg !5504
  %15 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5505
  %fix = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 7, !dbg !5506
  %16 = bitcast %struct.fb_fix_screeninfo* %fix to i8*, !dbg !5507
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 getelementptr inbounds (%struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* @carminefb_fix, i32 0, i32 0, i32 0), i64 80, i1 false), !dbg !5507
  %17 = load %struct.carmine_fb*, %struct.carmine_fb** %par, align 8, !dbg !5508
  %pseudo_palette = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %17, i32 0, i32 6, !dbg !5509
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %pseudo_palette, i64 0, i64 0, !dbg !5508
  %18 = bitcast i32* %arraydecay to i8*, !dbg !5508
  %19 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5510
  %pseudo_palette3 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 27, !dbg !5511
  store i8* %18, i8** %pseudo_palette3, align 8, !dbg !5512
  %20 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5513
  %flags = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 2, !dbg !5514
  store i32 0, i32* %flags, align 8, !dbg !5515
  %21 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5516
  %cmap = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 12, !dbg !5517
  %call4 = call i32 @fb_alloc_cmap(%struct.fb_cmap* %cmap, i32 256, i32 1) #10, !dbg !5518
  store i32 %call4, i32* %ret, align 4, !dbg !5519
  %22 = load i32, i32* %ret, align 4, !dbg !5520
  %cmp = icmp slt i32 %22, 0, !dbg !5522
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !5523

if.then5:                                         ; preds = %if.end
  br label %err_free_fb, !dbg !5524

if.end6:                                          ; preds = %if.end
  %23 = load i32, i32* @fb_mode, align 4, !dbg !5525
  %conv = zext i32 %23 to i64, !dbg !5525
  %cmp7 = icmp uge i64 %conv, 2, !dbg !5527
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !5528

if.then9:                                         ; preds = %if.end6
  store i32 1, i32* @fb_mode, align 4, !dbg !5529
  br label %if.end10, !dbg !5530

if.end10:                                         ; preds = %if.then9, %if.end6
  %24 = load %struct.carmine_fb*, %struct.carmine_fb** %par, align 8, !dbg !5531
  %new_mode = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %24, i32 0, i32 4, !dbg !5532
  store i32 -1, i32* %new_mode, align 8, !dbg !5533
  %25 = load %struct.carmine_fb*, %struct.carmine_fb** %par, align 8, !dbg !5534
  %cur_mode = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %25, i32 0, i32 3, !dbg !5535
  store i32 -1, i32* %cur_mode, align 4, !dbg !5536
  %26 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5537
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 6, !dbg !5538
  %27 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5539
  %28 = load i8*, i8** @fb_mode_str, align 8, !dbg !5540
  %29 = load i32, i32* @fb_mode, align 4, !dbg !5541
  %idxprom = zext i32 %29 to i64, !dbg !5542
  %arrayidx = getelementptr [2 x %struct.fb_videomode], [2 x %struct.fb_videomode]* @carmine_modedb, i64 0, i64 %idxprom, !dbg !5542
  %call11 = call i32 @fb_find_mode(%struct.fb_var_screeninfo* %var, %struct.fb_info* %27, i8* %28, %struct.fb_videomode* getelementptr inbounds ([2 x %struct.fb_videomode], [2 x %struct.fb_videomode]* @carmine_modedb, i64 0, i64 0), i32 2, %struct.fb_videomode* %arrayidx, i32 32) #10, !dbg !5543
  store i32 %call11, i32* %ret, align 4, !dbg !5544
  %30 = load i32, i32* %ret, align 4, !dbg !5545
  %tobool12 = icmp ne i32 %30, 0, !dbg !5545
  br i1 %tobool12, label %lor.lhs.false, label %if.then15, !dbg !5547

lor.lhs.false:                                    ; preds = %if.end10
  %31 = load i32, i32* %ret, align 4, !dbg !5548
  %cmp13 = icmp eq i32 %31, 4, !dbg !5549
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !5550

if.then15:                                        ; preds = %lor.lhs.false, %if.end10
  store i32 -22, i32* %ret, align 4, !dbg !5551
  br label %err_dealloc_cmap, !dbg !5553

if.end16:                                         ; preds = %lor.lhs.false
  %32 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5554
  %modelist = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 13, !dbg !5555
  call void @fb_videomode_to_modelist(%struct.fb_videomode* getelementptr inbounds ([2 x %struct.fb_videomode], [2 x %struct.fb_videomode]* @carmine_modedb, i64 0, i64 0), i32 2, %struct.list_head* %modelist) #10, !dbg !5556
  %33 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5557
  %call17 = call i32 @register_framebuffer(%struct.fb_info* %33) #10, !dbg !5558
  store i32 %call17, i32* %ret, align 4, !dbg !5559
  %34 = load i32, i32* %ret, align 4, !dbg !5560
  %cmp18 = icmp slt i32 %34, 0, !dbg !5562
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !5563

if.then20:                                        ; preds = %if.end16
  br label %err_dealloc_cmap, !dbg !5564

if.end21:                                         ; preds = %if.end16
  %35 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5565
  %node = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 1, !dbg !5565
  %36 = load i32, i32* %node, align 4, !dbg !5565
  %37 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5565
  %fix22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 7, !dbg !5565
  %id = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix22, i32 0, i32 0, !dbg !5565
  %arraydecay23 = getelementptr inbounds [16 x i8], [16 x i8]* %id, i64 0, i64 0, !dbg !5565
  %call24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %36, i8* %arraydecay23) #9, !dbg !5565
  %38 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5566
  %39 = load %struct.fb_info**, %struct.fb_info*** %rinfo.addr, align 8, !dbg !5567
  store %struct.fb_info* %38, %struct.fb_info** %39, align 8, !dbg !5568
  store i32 0, i32* %retval, align 4, !dbg !5569
  br label %return, !dbg !5569

err_dealloc_cmap:                                 ; preds = %if.then20, %if.then15
  call void @llvm.dbg.label(metadata !5570), !dbg !5571
  %40 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5572
  %cmap25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 12, !dbg !5573
  call void @fb_dealloc_cmap(%struct.fb_cmap* %cmap25) #10, !dbg !5574
  br label %err_free_fb, !dbg !5574

err_free_fb:                                      ; preds = %err_dealloc_cmap, %if.then5
  call void @llvm.dbg.label(metadata !5575), !dbg !5576
  %41 = load %struct.fb_info*, %struct.fb_info** %info, align 8, !dbg !5577
  call void @framebuffer_release(%struct.fb_info* %41) #10, !dbg !5578
  %42 = load i32, i32* %ret, align 4, !dbg !5579
  store i32 %42, i32* %retval, align 4, !dbg !5580
  br label %return, !dbg !5580

return:                                           ; preds = %err_free_fb, %if.end21, %if.then
  %43 = load i32, i32* %retval, align 4, !dbg !5581
  ret i32 %43, !dbg !5581
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci_set_drvdata(%struct.pci_dev* %pdev, i8* %data) #3 !dbg !5582 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !5585, metadata !DIExpression()), !dbg !5586
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5587, metadata !DIExpression()), !dbg !5588
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !5589
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !5590
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5591
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #10, !dbg !5592
  ret void, !dbg !5593
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cleanup_fb_device(%struct.fb_info* %info) #3 !dbg !5594 {
entry:
  %info.addr = alloca %struct.fb_info*, align 8
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5595, metadata !DIExpression()), !dbg !5596
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5597
  %tobool = icmp ne %struct.fb_info* %0, null, !dbg !5597
  br i1 %tobool, label %if.then, label %if.end, !dbg !5599

if.then:                                          ; preds = %entry
  %1 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5600
  call void @unregister_framebuffer(%struct.fb_info* %1) #10, !dbg !5602
  %2 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5603
  %cmap = getelementptr inbounds %struct.fb_info, %struct.fb_info* %2, i32 0, i32 12, !dbg !5604
  call void @fb_dealloc_cmap(%struct.fb_cmap* %cmap) #10, !dbg !5605
  %3 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5606
  call void @framebuffer_release(%struct.fb_info* %3) #10, !dbg !5607
  br label %if.end, !dbg !5608

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5609
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @c_set_hw_reg(%struct.carmine_hw* %hw, i32 %offset, i32 %val) #3 !dbg !5610 {
entry:
  %hw.addr = alloca %struct.carmine_hw*, align 8
  %offset.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store %struct.carmine_hw* %hw, %struct.carmine_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.carmine_hw** %hw.addr, metadata !5615, metadata !DIExpression()), !dbg !5616
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !5617, metadata !DIExpression()), !dbg !5618
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5619, metadata !DIExpression()), !dbg !5620
  %0 = load i32, i32* %val.addr, align 4, !dbg !5621
  %1 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5622
  %v_regs = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %1, i32 0, i32 0, !dbg !5623
  %2 = load i8*, i8** %v_regs, align 8, !dbg !5623
  %3 = load i32, i32* %offset.addr, align 4, !dbg !5624
  %idx.ext = zext i32 %3 to i64, !dbg !5625
  %add.ptr = getelementptr i8, i8* %2, i64 %idx.ext, !dbg !5625
  call void @writel(i32 %0, i8* %add.ptr) #10, !dbg !5626
  ret void, !dbg !5627
}

; Function Attrs: noredzone
declare dso_local void @iounmap(i8*) #1

; Function Attrs: noredzone
declare dso_local void @__release_region(%struct.resource*, i64, i64) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noredzone
declare dso_local void @pci_disable_device(%struct.pci_dev*) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5628 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5632, metadata !DIExpression()), !dbg !5637
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5639, metadata !DIExpression()), !dbg !5640
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5641, metadata !DIExpression()), !dbg !5642
  %0 = load i64, i64* %size.addr, align 8, !dbg !5643
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5645
  br i1 %1, label %if.then, label %if.end447, !dbg !5646

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5647
  %tobool = icmp ne i64 %2, 0, !dbg !5647
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5650

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5651
  br label %return, !dbg !5651

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5652
  %cmp = icmp ult i64 %3, 4096, !dbg !5654
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5655

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5656
  br label %return, !dbg !5656

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub = sub i64 %4, 1, !dbg !5657
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5657
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5657

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub4 = sub i64 %6, 1, !dbg !5657
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5657
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5657

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub6 = sub i64 %8, 1, !dbg !5657
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5657
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5657

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5657

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub9 = sub i64 %9, 1, !dbg !5657
  %and = and i64 %sub9, -9223372036854775808, !dbg !5657
  %tobool10 = icmp ne i64 %and, 0, !dbg !5657
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5657

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5657

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub13 = sub i64 %10, 1, !dbg !5657
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5657
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5657
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5657

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5657

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub18 = sub i64 %11, 1, !dbg !5657
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5657
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5657
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5657

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5657

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub23 = sub i64 %12, 1, !dbg !5657
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5657
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5657
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5657

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5657

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub28 = sub i64 %13, 1, !dbg !5657
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5657
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5657
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5657

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5657

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub33 = sub i64 %14, 1, !dbg !5657
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5657
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5657
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5657

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5657

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub38 = sub i64 %15, 1, !dbg !5657
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5657
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5657
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5657

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5657

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub43 = sub i64 %16, 1, !dbg !5657
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5657
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5657
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5657

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5657

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub48 = sub i64 %17, 1, !dbg !5657
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5657
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5657
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5657

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5657

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub53 = sub i64 %18, 1, !dbg !5657
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5657
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5657
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5657

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5657

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub58 = sub i64 %19, 1, !dbg !5657
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5657
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5657
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5657

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5657

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub63 = sub i64 %20, 1, !dbg !5657
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5657
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5657
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5657

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5657

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub68 = sub i64 %21, 1, !dbg !5657
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5657
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5657
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5657

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5657

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub73 = sub i64 %22, 1, !dbg !5657
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5657
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5657
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5657

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5657

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub78 = sub i64 %23, 1, !dbg !5657
  %and79 = and i64 %sub78, 562949953421312, !dbg !5657
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5657
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5657

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5657

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub83 = sub i64 %24, 1, !dbg !5657
  %and84 = and i64 %sub83, 281474976710656, !dbg !5657
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5657
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5657

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5657

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub88 = sub i64 %25, 1, !dbg !5657
  %and89 = and i64 %sub88, 140737488355328, !dbg !5657
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5657
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5657

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5657

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub93 = sub i64 %26, 1, !dbg !5657
  %and94 = and i64 %sub93, 70368744177664, !dbg !5657
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5657
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5657

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5657

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub98 = sub i64 %27, 1, !dbg !5657
  %and99 = and i64 %sub98, 35184372088832, !dbg !5657
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5657
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5657

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5657

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub103 = sub i64 %28, 1, !dbg !5657
  %and104 = and i64 %sub103, 17592186044416, !dbg !5657
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5657
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5657

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5657

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub108 = sub i64 %29, 1, !dbg !5657
  %and109 = and i64 %sub108, 8796093022208, !dbg !5657
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5657
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5657

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5657

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub113 = sub i64 %30, 1, !dbg !5657
  %and114 = and i64 %sub113, 4398046511104, !dbg !5657
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5657
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5657

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5657

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub118 = sub i64 %31, 1, !dbg !5657
  %and119 = and i64 %sub118, 2199023255552, !dbg !5657
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5657
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5657

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5657

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub123 = sub i64 %32, 1, !dbg !5657
  %and124 = and i64 %sub123, 1099511627776, !dbg !5657
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5657
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5657

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5657

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub128 = sub i64 %33, 1, !dbg !5657
  %and129 = and i64 %sub128, 549755813888, !dbg !5657
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5657
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5657

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5657

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub133 = sub i64 %34, 1, !dbg !5657
  %and134 = and i64 %sub133, 274877906944, !dbg !5657
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5657
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5657

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5657

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub138 = sub i64 %35, 1, !dbg !5657
  %and139 = and i64 %sub138, 137438953472, !dbg !5657
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5657
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5657

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5657

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub143 = sub i64 %36, 1, !dbg !5657
  %and144 = and i64 %sub143, 68719476736, !dbg !5657
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5657
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5657

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5657

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub148 = sub i64 %37, 1, !dbg !5657
  %and149 = and i64 %sub148, 34359738368, !dbg !5657
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5657
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5657

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5657

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub153 = sub i64 %38, 1, !dbg !5657
  %and154 = and i64 %sub153, 17179869184, !dbg !5657
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5657
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5657

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5657

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub158 = sub i64 %39, 1, !dbg !5657
  %and159 = and i64 %sub158, 8589934592, !dbg !5657
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5657
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5657

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5657

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub163 = sub i64 %40, 1, !dbg !5657
  %and164 = and i64 %sub163, 4294967296, !dbg !5657
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5657
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5657

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5657

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub168 = sub i64 %41, 1, !dbg !5657
  %and169 = and i64 %sub168, 2147483648, !dbg !5657
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5657
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5657

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5657

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub173 = sub i64 %42, 1, !dbg !5657
  %and174 = and i64 %sub173, 1073741824, !dbg !5657
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5657
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5657

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5657

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub178 = sub i64 %43, 1, !dbg !5657
  %and179 = and i64 %sub178, 536870912, !dbg !5657
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5657
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5657

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5657

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub183 = sub i64 %44, 1, !dbg !5657
  %and184 = and i64 %sub183, 268435456, !dbg !5657
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5657
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5657

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5657

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub188 = sub i64 %45, 1, !dbg !5657
  %and189 = and i64 %sub188, 134217728, !dbg !5657
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5657
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5657

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5657

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub193 = sub i64 %46, 1, !dbg !5657
  %and194 = and i64 %sub193, 67108864, !dbg !5657
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5657
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5657

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5657

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub198 = sub i64 %47, 1, !dbg !5657
  %and199 = and i64 %sub198, 33554432, !dbg !5657
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5657
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5657

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5657

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub203 = sub i64 %48, 1, !dbg !5657
  %and204 = and i64 %sub203, 16777216, !dbg !5657
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5657
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5657

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5657

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub208 = sub i64 %49, 1, !dbg !5657
  %and209 = and i64 %sub208, 8388608, !dbg !5657
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5657
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5657

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5657

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub213 = sub i64 %50, 1, !dbg !5657
  %and214 = and i64 %sub213, 4194304, !dbg !5657
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5657
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5657

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5657

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub218 = sub i64 %51, 1, !dbg !5657
  %and219 = and i64 %sub218, 2097152, !dbg !5657
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5657
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5657

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5657

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub223 = sub i64 %52, 1, !dbg !5657
  %and224 = and i64 %sub223, 1048576, !dbg !5657
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5657
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5657

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5657

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub228 = sub i64 %53, 1, !dbg !5657
  %and229 = and i64 %sub228, 524288, !dbg !5657
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5657
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5657

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5657

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub233 = sub i64 %54, 1, !dbg !5657
  %and234 = and i64 %sub233, 262144, !dbg !5657
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5657
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5657

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5657

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub238 = sub i64 %55, 1, !dbg !5657
  %and239 = and i64 %sub238, 131072, !dbg !5657
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5657
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5657

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5657

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub243 = sub i64 %56, 1, !dbg !5657
  %and244 = and i64 %sub243, 65536, !dbg !5657
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5657
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5657

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5657

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub248 = sub i64 %57, 1, !dbg !5657
  %and249 = and i64 %sub248, 32768, !dbg !5657
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5657
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5657

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5657

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub253 = sub i64 %58, 1, !dbg !5657
  %and254 = and i64 %sub253, 16384, !dbg !5657
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5657
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5657

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5657

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub258 = sub i64 %59, 1, !dbg !5657
  %and259 = and i64 %sub258, 8192, !dbg !5657
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5657
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5657

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5657

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub263 = sub i64 %60, 1, !dbg !5657
  %and264 = and i64 %sub263, 4096, !dbg !5657
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5657
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5657

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5657

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub268 = sub i64 %61, 1, !dbg !5657
  %and269 = and i64 %sub268, 2048, !dbg !5657
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5657
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5657

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5657

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub273 = sub i64 %62, 1, !dbg !5657
  %and274 = and i64 %sub273, 1024, !dbg !5657
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5657
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5657

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5657

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub278 = sub i64 %63, 1, !dbg !5657
  %and279 = and i64 %sub278, 512, !dbg !5657
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5657
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5657

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5657

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub283 = sub i64 %64, 1, !dbg !5657
  %and284 = and i64 %sub283, 256, !dbg !5657
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5657
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5657

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5657

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub288 = sub i64 %65, 1, !dbg !5657
  %and289 = and i64 %sub288, 128, !dbg !5657
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5657
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5657

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5657

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub293 = sub i64 %66, 1, !dbg !5657
  %and294 = and i64 %sub293, 64, !dbg !5657
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5657
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5657

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5657

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub298 = sub i64 %67, 1, !dbg !5657
  %and299 = and i64 %sub298, 32, !dbg !5657
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5657
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5657

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5657

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub303 = sub i64 %68, 1, !dbg !5657
  %and304 = and i64 %sub303, 16, !dbg !5657
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5657
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5657

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5657

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub308 = sub i64 %69, 1, !dbg !5657
  %and309 = and i64 %sub308, 8, !dbg !5657
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5657
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5657

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5657

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub313 = sub i64 %70, 1, !dbg !5657
  %and314 = and i64 %sub313, 4, !dbg !5657
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5657
  %71 = zext i1 %tobool315 to i64, !dbg !5657
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5657
  br label %cond.end, !dbg !5657

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5657
  br label %cond.end317, !dbg !5657

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5657
  br label %cond.end319, !dbg !5657

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5657
  br label %cond.end321, !dbg !5657

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5657
  br label %cond.end323, !dbg !5657

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5657
  br label %cond.end325, !dbg !5657

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5657
  br label %cond.end327, !dbg !5657

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5657
  br label %cond.end329, !dbg !5657

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5657
  br label %cond.end331, !dbg !5657

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5657
  br label %cond.end333, !dbg !5657

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5657
  br label %cond.end335, !dbg !5657

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5657
  br label %cond.end337, !dbg !5657

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5657
  br label %cond.end339, !dbg !5657

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5657
  br label %cond.end341, !dbg !5657

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5657
  br label %cond.end343, !dbg !5657

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5657
  br label %cond.end345, !dbg !5657

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5657
  br label %cond.end347, !dbg !5657

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5657
  br label %cond.end349, !dbg !5657

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5657
  br label %cond.end351, !dbg !5657

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5657
  br label %cond.end353, !dbg !5657

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5657
  br label %cond.end355, !dbg !5657

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5657
  br label %cond.end357, !dbg !5657

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5657
  br label %cond.end359, !dbg !5657

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5657
  br label %cond.end361, !dbg !5657

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5657
  br label %cond.end363, !dbg !5657

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5657
  br label %cond.end365, !dbg !5657

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5657
  br label %cond.end367, !dbg !5657

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5657
  br label %cond.end369, !dbg !5657

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5657
  br label %cond.end371, !dbg !5657

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5657
  br label %cond.end373, !dbg !5657

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5657
  br label %cond.end375, !dbg !5657

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5657
  br label %cond.end377, !dbg !5657

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5657
  br label %cond.end379, !dbg !5657

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5657
  br label %cond.end381, !dbg !5657

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5657
  br label %cond.end383, !dbg !5657

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5657
  br label %cond.end385, !dbg !5657

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5657
  br label %cond.end387, !dbg !5657

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5657
  br label %cond.end389, !dbg !5657

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5657
  br label %cond.end391, !dbg !5657

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5657
  br label %cond.end393, !dbg !5657

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5657
  br label %cond.end395, !dbg !5657

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5657
  br label %cond.end397, !dbg !5657

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5657
  br label %cond.end399, !dbg !5657

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5657
  br label %cond.end401, !dbg !5657

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5657
  br label %cond.end403, !dbg !5657

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5657
  br label %cond.end405, !dbg !5657

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5657
  br label %cond.end407, !dbg !5657

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5657
  br label %cond.end409, !dbg !5657

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5657
  br label %cond.end411, !dbg !5657

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5657
  br label %cond.end413, !dbg !5657

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5657
  br label %cond.end415, !dbg !5657

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5657
  br label %cond.end417, !dbg !5657

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5657
  br label %cond.end419, !dbg !5657

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5657
  br label %cond.end421, !dbg !5657

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5657
  br label %cond.end423, !dbg !5657

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5657
  br label %cond.end425, !dbg !5657

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5657
  br label %cond.end427, !dbg !5657

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5657
  br label %cond.end429, !dbg !5657

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5657
  br label %cond.end431, !dbg !5657

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5657
  br label %cond.end433, !dbg !5657

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5657
  br label %cond.end435, !dbg !5657

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5657
  br label %cond.end437, !dbg !5657

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5657
  br label %cond.end440, !dbg !5657

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5657

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5657
  br label %cond.end444, !dbg !5657

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5657
  %sub443 = sub i64 %72, 1, !dbg !5657
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !5657
  br label %cond.end444, !dbg !5657

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5657
  %sub446 = sub i32 %cond445, 12, !dbg !5658
  %add = add i32 %sub446, 1, !dbg !5659
  store i32 %add, i32* %retval, align 4, !dbg !5660
  br label %return, !dbg !5660

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5661
  %dec = add i64 %73, -1, !dbg !5661
  store i64 %dec, i64* %size.addr, align 8, !dbg !5661
  %74 = load i64, i64* %size.addr, align 8, !dbg !5662
  %shr = lshr i64 %74, 12, !dbg !5662
  store i64 %shr, i64* %size.addr, align 8, !dbg !5662
  %75 = load i64, i64* %size.addr, align 8, !dbg !5663
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5640
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5664
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5665
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5664, !srcloc !5666
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5664
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5667
  %add.i = add i32 %79, 1, !dbg !5668
  store i32 %add.i, i32* %retval, align 4, !dbg !5669
  br label %return, !dbg !5669

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5670
  ret i32 %80, !dbg !5670
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5671 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5632, metadata !DIExpression()), !dbg !5675
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5639, metadata !DIExpression()), !dbg !5677
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5678, metadata !DIExpression()), !dbg !5679
  %0 = load i64, i64* %n.addr, align 8, !dbg !5680
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5677
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5681
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5682
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5681, !srcloc !5666
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5681
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5683
  %add.i = add i32 %4, 1, !dbg !5684
  %sub = sub i32 %add.i, 1, !dbg !5685
  ret i32 %sub, !dbg !5686
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #3 !dbg !5687 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5691, metadata !DIExpression()), !dbg !5692
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5693, metadata !DIExpression()), !dbg !5694
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5695, metadata !DIExpression()), !dbg !5696
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5697, metadata !DIExpression()), !dbg !5698
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5699
  ret i8* %0, !dbg !5700
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @c_get_hw_reg(%struct.carmine_hw* %hw, i32 %offset) #3 !dbg !5701 {
entry:
  %hw.addr = alloca %struct.carmine_hw*, align 8
  %offset.addr = alloca i32, align 4
  store %struct.carmine_hw* %hw, %struct.carmine_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.carmine_hw** %hw.addr, metadata !5704, metadata !DIExpression()), !dbg !5705
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !5706, metadata !DIExpression()), !dbg !5707
  %0 = load %struct.carmine_hw*, %struct.carmine_hw** %hw.addr, align 8, !dbg !5708
  %v_regs = getelementptr inbounds %struct.carmine_hw, %struct.carmine_hw* %0, i32 0, i32 0, !dbg !5709
  %1 = load i8*, i8** %v_regs, align 8, !dbg !5709
  %2 = load i32, i32* %offset.addr, align 4, !dbg !5710
  %idx.ext = zext i32 %2 to i64, !dbg !5711
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !5711
  %call = call i32 @readl(i8* %add.ptr) #10, !dbg !5712
  ret i32 %call, !dbg !5713
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @readl(i8* %addr) #3 !dbg !5714 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !5721, metadata !DIExpression()), !dbg !5722
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5723, metadata !DIExpression()), !dbg !5722
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !5722
  %1 = bitcast i8* %0 to i32*, !dbg !5722
  %2 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %1) #11, !dbg !5722, !srcloc !5724
  store i32 %2, i32* %ret, align 4, !dbg !5722
  %3 = load i32, i32* %ret, align 4, !dbg !5722
  ret i32 %3, !dbg !5722
}

; Function Attrs: noredzone
declare dso_local %struct.fb_info* @framebuffer_alloc(i64, %struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noredzone
declare dso_local i32 @fb_alloc_cmap(%struct.fb_cmap*, i32, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @fb_find_mode(%struct.fb_var_screeninfo*, %struct.fb_info*, i8*, %struct.fb_videomode*, i32, %struct.fb_videomode*, i32) #1

; Function Attrs: noredzone
declare dso_local void @fb_videomode_to_modelist(%struct.fb_videomode*, i32, %struct.list_head*) #1

; Function Attrs: noredzone
declare dso_local i32 @register_framebuffer(%struct.fb_info*) #1

; Function Attrs: noredzone
declare dso_local void @fb_dealloc_cmap(%struct.fb_cmap*) #1

; Function Attrs: noredzone
declare dso_local void @framebuffer_release(%struct.fb_info*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @carmine_check_var(%struct.fb_var_screeninfo* %var, %struct.fb_info* %info) #3 !dbg !5725 {
entry:
  %retval = alloca i32, align 4
  %var.addr = alloca %struct.fb_var_screeninfo*, align 8
  %info.addr = alloca %struct.fb_info*, align 8
  %ret = alloca i32, align 4
  store %struct.fb_var_screeninfo* %var, %struct.fb_var_screeninfo** %var.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo** %var.addr, metadata !5726, metadata !DIExpression()), !dbg !5727
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5728, metadata !DIExpression()), !dbg !5729
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5730, metadata !DIExpression()), !dbg !5731
  %0 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5732
  %call = call i32 @carmine_find_mode(%struct.fb_var_screeninfo* %0) #10, !dbg !5733
  store i32 %call, i32* %ret, align 4, !dbg !5734
  %1 = load i32, i32* %ret, align 4, !dbg !5735
  %cmp = icmp slt i32 %1, 0, !dbg !5737
  br i1 %cmp, label %if.then, label %if.end, !dbg !5738

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !5739
  store i32 %2, i32* %retval, align 4, !dbg !5740
  br label %return, !dbg !5740

if.end:                                           ; preds = %entry
  %3 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5741
  %grayscale = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %3, i32 0, i32 7, !dbg !5743
  %4 = load i32, i32* %grayscale, align 4, !dbg !5743
  %tobool = icmp ne i32 %4, 0, !dbg !5741
  br i1 %tobool, label %if.then4, label %lor.lhs.false, !dbg !5744

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5745
  %rotate = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %5, i32 0, i32 26, !dbg !5746
  %6 = load i32, i32* %rotate, align 4, !dbg !5746
  %tobool1 = icmp ne i32 %6, 0, !dbg !5745
  br i1 %tobool1, label %if.then4, label %lor.lhs.false2, !dbg !5747

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %7 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5748
  %nonstd = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %7, i32 0, i32 12, !dbg !5749
  %8 = load i32, i32* %nonstd, align 4, !dbg !5749
  %tobool3 = icmp ne i32 %8, 0, !dbg !5748
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5750

if.then4:                                         ; preds = %lor.lhs.false2, %lor.lhs.false, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5751
  br label %return, !dbg !5751

if.end5:                                          ; preds = %lor.lhs.false2
  %9 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5752
  %xres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %9, i32 0, i32 0, !dbg !5753
  %10 = load i32, i32* %xres, align 4, !dbg !5753
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5754
  %xres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 2, !dbg !5755
  store i32 %10, i32* %xres_virtual, align 4, !dbg !5756
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5757
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 1, !dbg !5758
  %13 = load i32, i32* %yres, align 4, !dbg !5758
  %14 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5759
  %yres_virtual = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %14, i32 0, i32 3, !dbg !5760
  store i32 %13, i32* %yres_virtual, align 4, !dbg !5761
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5762
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %15, i32 0, i32 6, !dbg !5763
  store i32 32, i32* %bits_per_pixel, align 4, !dbg !5764
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5765
  %transp = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 11, !dbg !5766
  %offset = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %transp, i32 0, i32 0, !dbg !5767
  store i32 24, i32* %offset, align 4, !dbg !5768
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5769
  %red = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 8, !dbg !5770
  %offset6 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red, i32 0, i32 0, !dbg !5771
  store i32 16, i32* %offset6, align 4, !dbg !5772
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5773
  %green = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 9, !dbg !5774
  %offset7 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green, i32 0, i32 0, !dbg !5775
  store i32 8, i32* %offset7, align 4, !dbg !5776
  %19 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5777
  %blue = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %19, i32 0, i32 10, !dbg !5778
  %offset8 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %blue, i32 0, i32 0, !dbg !5779
  store i32 0, i32* %offset8, align 4, !dbg !5780
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5781
  %red9 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 8, !dbg !5782
  %length = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red9, i32 0, i32 1, !dbg !5783
  store i32 8, i32* %length, align 4, !dbg !5784
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5785
  %green10 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 9, !dbg !5786
  %length11 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green10, i32 0, i32 1, !dbg !5787
  store i32 8, i32* %length11, align 4, !dbg !5788
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5789
  %blue12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 10, !dbg !5790
  %length13 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %blue12, i32 0, i32 1, !dbg !5791
  store i32 8, i32* %length13, align 4, !dbg !5792
  %23 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5793
  %transp14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %23, i32 0, i32 11, !dbg !5794
  %length15 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %transp14, i32 0, i32 1, !dbg !5795
  store i32 8, i32* %length15, align 4, !dbg !5796
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5797
  %red16 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %24, i32 0, i32 8, !dbg !5798
  %msb_right = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %red16, i32 0, i32 2, !dbg !5799
  store i32 0, i32* %msb_right, align 4, !dbg !5800
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5801
  %green17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 9, !dbg !5802
  %msb_right18 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %green17, i32 0, i32 2, !dbg !5803
  store i32 0, i32* %msb_right18, align 4, !dbg !5804
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5805
  %blue19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 10, !dbg !5806
  %msb_right20 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %blue19, i32 0, i32 2, !dbg !5807
  store i32 0, i32* %msb_right20, align 4, !dbg !5808
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5809
  %transp21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %27, i32 0, i32 11, !dbg !5810
  %msb_right22 = getelementptr inbounds %struct.fb_bitfield, %struct.fb_bitfield* %transp21, i32 0, i32 2, !dbg !5811
  store i32 0, i32* %msb_right22, align 4, !dbg !5812
  store i32 0, i32* %retval, align 4, !dbg !5813
  br label %return, !dbg !5813

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !5814
  ret i32 %28, !dbg !5814
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @carmine_set_par(%struct.fb_info* %info) #3 !dbg !5815 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.fb_info*, align 8
  %par = alloca %struct.carmine_fb*, align 8
  %ret = alloca i32, align 4
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5816, metadata !DIExpression()), !dbg !5817
  call void @llvm.dbg.declare(metadata %struct.carmine_fb** %par, metadata !5818, metadata !DIExpression()), !dbg !5819
  %0 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5820
  %par1 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %0, i32 0, i32 30, !dbg !5821
  %1 = load i8*, i8** %par1, align 8, !dbg !5821
  %2 = bitcast i8* %1 to %struct.carmine_fb*, !dbg !5820
  store %struct.carmine_fb* %2, %struct.carmine_fb** %par, align 8, !dbg !5819
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5822, metadata !DIExpression()), !dbg !5823
  %3 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5824
  %var = getelementptr inbounds %struct.fb_info, %struct.fb_info* %3, i32 0, i32 6, !dbg !5825
  %call = call i32 @carmine_find_mode(%struct.fb_var_screeninfo* %var) #10, !dbg !5826
  store i32 %call, i32* %ret, align 4, !dbg !5827
  %4 = load i32, i32* %ret, align 4, !dbg !5828
  %cmp = icmp slt i32 %4, 0, !dbg !5830
  br i1 %cmp, label %if.then, label %if.end, !dbg !5831

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !5832
  store i32 %5, i32* %retval, align 4, !dbg !5833
  br label %return, !dbg !5833

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %ret, align 4, !dbg !5834
  %7 = load %struct.carmine_fb*, %struct.carmine_fb** %par, align 8, !dbg !5835
  %new_mode = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %7, i32 0, i32 4, !dbg !5836
  store i32 %6, i32* %new_mode, align 8, !dbg !5837
  %8 = load %struct.carmine_fb*, %struct.carmine_fb** %par, align 8, !dbg !5838
  %cur_mode = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %8, i32 0, i32 3, !dbg !5840
  %9 = load i32, i32* %cur_mode, align 4, !dbg !5840
  %10 = load %struct.carmine_fb*, %struct.carmine_fb** %par, align 8, !dbg !5841
  %new_mode2 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %10, i32 0, i32 4, !dbg !5842
  %11 = load i32, i32* %new_mode2, align 8, !dbg !5842
  %cmp3 = icmp ne i32 %9, %11, !dbg !5843
  br i1 %cmp3, label %if.then4, label %if.end8, !dbg !5844

if.then4:                                         ; preds = %if.end
  %12 = load %struct.carmine_fb*, %struct.carmine_fb** %par, align 8, !dbg !5845
  %new_mode5 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %12, i32 0, i32 4, !dbg !5847
  %13 = load i32, i32* %new_mode5, align 8, !dbg !5847
  %14 = load %struct.carmine_fb*, %struct.carmine_fb** %par, align 8, !dbg !5848
  %cur_mode6 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %14, i32 0, i32 3, !dbg !5849
  store i32 %13, i32* %cur_mode6, align 4, !dbg !5850
  %15 = load %struct.carmine_fb*, %struct.carmine_fb** %par, align 8, !dbg !5851
  %new_mode7 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %15, i32 0, i32 4, !dbg !5852
  %16 = load i32, i32* %new_mode7, align 8, !dbg !5852
  %idxprom = zext i32 %16 to i64, !dbg !5853
  %arrayidx = getelementptr [2 x %struct.carmine_resolution], [2 x %struct.carmine_resolution]* @car_modes, i64 0, i64 %idxprom, !dbg !5853
  %17 = load %struct.carmine_fb*, %struct.carmine_fb** %par, align 8, !dbg !5854
  %res = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %17, i32 0, i32 5, !dbg !5855
  store %struct.carmine_resolution* %arrayidx, %struct.carmine_resolution** %res, align 8, !dbg !5856
  %18 = load %struct.carmine_fb*, %struct.carmine_fb** %par, align 8, !dbg !5857
  call void @carmine_init_display_param(%struct.carmine_fb* %18) #10, !dbg !5858
  %19 = load %struct.carmine_fb*, %struct.carmine_fb** %par, align 8, !dbg !5859
  call void @set_display_parameters(%struct.carmine_fb* %19) #10, !dbg !5860
  br label %if.end8, !dbg !5861

if.end8:                                          ; preds = %if.then4, %if.end
  %20 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5862
  %var9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 6, !dbg !5863
  %xres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var9, i32 0, i32 0, !dbg !5864
  %21 = load i32, i32* %xres, align 8, !dbg !5864
  %22 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5865
  %var10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 6, !dbg !5866
  %bits_per_pixel = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %var10, i32 0, i32 6, !dbg !5867
  %23 = load i32, i32* %bits_per_pixel, align 8, !dbg !5867
  %mul = mul i32 %21, %23, !dbg !5868
  %div = udiv i32 %mul, 8, !dbg !5869
  %24 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5870
  %fix = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 7, !dbg !5871
  %line_length = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %fix, i32 0, i32 9, !dbg !5872
  store i32 %div, i32* %line_length, align 8, !dbg !5873
  store i32 0, i32* %retval, align 4, !dbg !5874
  br label %return, !dbg !5874

return:                                           ; preds = %if.end8, %if.then
  %25 = load i32, i32* %retval, align 4, !dbg !5875
  ret i32 %25, !dbg !5875
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @carmine_setcolreg(i32 %regno, i32 %red, i32 %green, i32 %blue, i32 %transp, %struct.fb_info* %info) #3 !dbg !5876 {
entry:
  %retval = alloca i32, align 4
  %regno.addr = alloca i32, align 4
  %red.addr = alloca i32, align 4
  %green.addr = alloca i32, align 4
  %blue.addr = alloca i32, align 4
  %transp.addr = alloca i32, align 4
  %info.addr = alloca %struct.fb_info*, align 8
  store i32 %regno, i32* %regno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %regno.addr, metadata !5877, metadata !DIExpression()), !dbg !5878
  store i32 %red, i32* %red.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %red.addr, metadata !5879, metadata !DIExpression()), !dbg !5880
  store i32 %green, i32* %green.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %green.addr, metadata !5881, metadata !DIExpression()), !dbg !5882
  store i32 %blue, i32* %blue.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %blue.addr, metadata !5883, metadata !DIExpression()), !dbg !5884
  store i32 %transp, i32* %transp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %transp.addr, metadata !5885, metadata !DIExpression()), !dbg !5886
  store %struct.fb_info* %info, %struct.fb_info** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_info** %info.addr, metadata !5887, metadata !DIExpression()), !dbg !5888
  %0 = load i32, i32* %regno.addr, align 4, !dbg !5889
  %cmp = icmp uge i32 %0, 16, !dbg !5891
  br i1 %cmp, label %if.then, label %if.end, !dbg !5892

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !5893
  br label %return, !dbg !5893

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %red.addr, align 4, !dbg !5894
  %shr = lshr i32 %1, 8, !dbg !5894
  store i32 %shr, i32* %red.addr, align 4, !dbg !5894
  %2 = load i32, i32* %green.addr, align 4, !dbg !5895
  %shr1 = lshr i32 %2, 8, !dbg !5895
  store i32 %shr1, i32* %green.addr, align 4, !dbg !5895
  %3 = load i32, i32* %blue.addr, align 4, !dbg !5896
  %shr2 = lshr i32 %3, 8, !dbg !5896
  store i32 %shr2, i32* %blue.addr, align 4, !dbg !5896
  %4 = load i32, i32* %transp.addr, align 4, !dbg !5897
  %shr3 = lshr i32 %4, 8, !dbg !5897
  store i32 %shr3, i32* %transp.addr, align 4, !dbg !5897
  %5 = load i32, i32* %transp.addr, align 4, !dbg !5898
  %shl = shl i32 %5, 24, !dbg !5898
  %6 = load i32, i32* %red.addr, align 4, !dbg !5898
  %shl4 = shl i32 %6, 0, !dbg !5898
  %or = or i32 %shl, %shl4, !dbg !5898
  %7 = load i32, i32* %green.addr, align 4, !dbg !5898
  %shl5 = shl i32 %7, 8, !dbg !5898
  %or6 = or i32 %or, %shl5, !dbg !5898
  %8 = load i32, i32* %blue.addr, align 4, !dbg !5898
  %shl7 = shl i32 %8, 16, !dbg !5898
  %or8 = or i32 %or6, %shl7, !dbg !5898
  %9 = call i1 @llvm.is.constant.i32(i32 %or8), !dbg !5898
  br i1 %9, label %cond.true, label %cond.false, !dbg !5898

cond.true:                                        ; preds = %if.end
  %10 = load i32, i32* %transp.addr, align 4, !dbg !5898
  %shl9 = shl i32 %10, 24, !dbg !5898
  %11 = load i32, i32* %red.addr, align 4, !dbg !5898
  %shl10 = shl i32 %11, 0, !dbg !5898
  %or11 = or i32 %shl9, %shl10, !dbg !5898
  %12 = load i32, i32* %green.addr, align 4, !dbg !5898
  %shl12 = shl i32 %12, 8, !dbg !5898
  %or13 = or i32 %or11, %shl12, !dbg !5898
  %13 = load i32, i32* %blue.addr, align 4, !dbg !5898
  %shl14 = shl i32 %13, 16, !dbg !5898
  %or15 = or i32 %or13, %shl14, !dbg !5898
  %and = and i32 %or15, 255, !dbg !5898
  %shl16 = shl i32 %and, 24, !dbg !5898
  %14 = load i32, i32* %transp.addr, align 4, !dbg !5898
  %shl17 = shl i32 %14, 24, !dbg !5898
  %15 = load i32, i32* %red.addr, align 4, !dbg !5898
  %shl18 = shl i32 %15, 0, !dbg !5898
  %or19 = or i32 %shl17, %shl18, !dbg !5898
  %16 = load i32, i32* %green.addr, align 4, !dbg !5898
  %shl20 = shl i32 %16, 8, !dbg !5898
  %or21 = or i32 %or19, %shl20, !dbg !5898
  %17 = load i32, i32* %blue.addr, align 4, !dbg !5898
  %shl22 = shl i32 %17, 16, !dbg !5898
  %or23 = or i32 %or21, %shl22, !dbg !5898
  %and24 = and i32 %or23, 65280, !dbg !5898
  %shl25 = shl i32 %and24, 8, !dbg !5898
  %or26 = or i32 %shl16, %shl25, !dbg !5898
  %18 = load i32, i32* %transp.addr, align 4, !dbg !5898
  %shl27 = shl i32 %18, 24, !dbg !5898
  %19 = load i32, i32* %red.addr, align 4, !dbg !5898
  %shl28 = shl i32 %19, 0, !dbg !5898
  %or29 = or i32 %shl27, %shl28, !dbg !5898
  %20 = load i32, i32* %green.addr, align 4, !dbg !5898
  %shl30 = shl i32 %20, 8, !dbg !5898
  %or31 = or i32 %or29, %shl30, !dbg !5898
  %21 = load i32, i32* %blue.addr, align 4, !dbg !5898
  %shl32 = shl i32 %21, 16, !dbg !5898
  %or33 = or i32 %or31, %shl32, !dbg !5898
  %and34 = and i32 %or33, 16711680, !dbg !5898
  %shr35 = lshr i32 %and34, 8, !dbg !5898
  %or36 = or i32 %or26, %shr35, !dbg !5898
  %22 = load i32, i32* %transp.addr, align 4, !dbg !5898
  %shl37 = shl i32 %22, 24, !dbg !5898
  %23 = load i32, i32* %red.addr, align 4, !dbg !5898
  %shl38 = shl i32 %23, 0, !dbg !5898
  %or39 = or i32 %shl37, %shl38, !dbg !5898
  %24 = load i32, i32* %green.addr, align 4, !dbg !5898
  %shl40 = shl i32 %24, 8, !dbg !5898
  %or41 = or i32 %or39, %shl40, !dbg !5898
  %25 = load i32, i32* %blue.addr, align 4, !dbg !5898
  %shl42 = shl i32 %25, 16, !dbg !5898
  %or43 = or i32 %or41, %shl42, !dbg !5898
  %and44 = and i32 %or43, -16777216, !dbg !5898
  %shr45 = lshr i32 %and44, 24, !dbg !5898
  %or46 = or i32 %or36, %shr45, !dbg !5898
  br label %cond.end, !dbg !5898

cond.false:                                       ; preds = %if.end
  %26 = load i32, i32* %transp.addr, align 4, !dbg !5898
  %shl47 = shl i32 %26, 24, !dbg !5898
  %27 = load i32, i32* %red.addr, align 4, !dbg !5898
  %shl48 = shl i32 %27, 0, !dbg !5898
  %or49 = or i32 %shl47, %shl48, !dbg !5898
  %28 = load i32, i32* %green.addr, align 4, !dbg !5898
  %shl50 = shl i32 %28, 8, !dbg !5898
  %or51 = or i32 %or49, %shl50, !dbg !5898
  %29 = load i32, i32* %blue.addr, align 4, !dbg !5898
  %shl52 = shl i32 %29, 16, !dbg !5898
  %or53 = or i32 %or51, %shl52, !dbg !5898
  %call = call i32 @__fswab32(i32 %or53) #12, !dbg !5898
  br label %cond.end, !dbg !5898

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or46, %cond.true ], [ %call, %cond.false ], !dbg !5898
  %30 = load %struct.fb_info*, %struct.fb_info** %info.addr, align 8, !dbg !5899
  %pseudo_palette = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 27, !dbg !5900
  %31 = load i8*, i8** %pseudo_palette, align 8, !dbg !5900
  %32 = bitcast i8* %31 to i32*, !dbg !5901
  %33 = load i32, i32* %regno.addr, align 4, !dbg !5902
  %idxprom = zext i32 %33 to i64, !dbg !5903
  %arrayidx = getelementptr i32, i32* %32, i64 %idxprom, !dbg !5903
  store i32 %cond, i32* %arrayidx, align 4, !dbg !5904
  store i32 0, i32* %retval, align 4, !dbg !5905
  br label %return, !dbg !5905

return:                                           ; preds = %cond.end, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !5906
  ret i32 %34, !dbg !5906
}

; Function Attrs: noredzone
declare dso_local void @cfb_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #1

; Function Attrs: noredzone
declare dso_local void @cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

; Function Attrs: noredzone
declare dso_local void @cfb_imageblit(%struct.fb_info*, %struct.fb_image*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @carmine_find_mode(%struct.fb_var_screeninfo* %var) #3 !dbg !5907 {
entry:
  %retval = alloca i32, align 4
  %var.addr = alloca %struct.fb_var_screeninfo*, align 8
  %i = alloca i32, align 4
  store %struct.fb_var_screeninfo* %var, %struct.fb_var_screeninfo** %var.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.fb_var_screeninfo** %var.addr, metadata !5912, metadata !DIExpression()), !dbg !5913
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5914, metadata !DIExpression()), !dbg !5915
  store i32 0, i32* %i, align 4, !dbg !5916
  br label %for.cond, !dbg !5918

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5919
  %conv = sext i32 %0 to i64, !dbg !5919
  %cmp = icmp ult i64 %conv, 2, !dbg !5921
  br i1 %cmp, label %for.body, label %for.end, !dbg !5922

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !5923
  %idxprom = sext i32 %1 to i64, !dbg !5925
  %arrayidx = getelementptr [2 x %struct.carmine_resolution], [2 x %struct.carmine_resolution]* @car_modes, i64 0, i64 %idxprom, !dbg !5925
  %hdp = getelementptr inbounds %struct.carmine_resolution, %struct.carmine_resolution* %arrayidx, i32 0, i32 3, !dbg !5926
  %2 = load i32, i32* %hdp, align 4, !dbg !5926
  %3 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5927
  %xres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %3, i32 0, i32 0, !dbg !5928
  %4 = load i32, i32* %xres, align 4, !dbg !5928
  %cmp2 = icmp eq i32 %2, %4, !dbg !5929
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !5930

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !5931
  %idxprom4 = sext i32 %5 to i64, !dbg !5932
  %arrayidx5 = getelementptr [2 x %struct.carmine_resolution], [2 x %struct.carmine_resolution]* @car_modes, i64 0, i64 %idxprom4, !dbg !5932
  %vdp = getelementptr inbounds %struct.carmine_resolution, %struct.carmine_resolution* %arrayidx5, i32 0, i32 7, !dbg !5933
  %6 = load i32, i32* %vdp, align 4, !dbg !5933
  %7 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %var.addr, align 8, !dbg !5934
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %7, i32 0, i32 1, !dbg !5935
  %8 = load i32, i32* %yres, align 4, !dbg !5935
  %cmp6 = icmp eq i32 %6, %8, !dbg !5936
  br i1 %cmp6, label %if.then, label %if.end, !dbg !5937

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32, i32* %i, align 4, !dbg !5938
  store i32 %9, i32* %retval, align 4, !dbg !5939
  br label %return, !dbg !5939

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !5935

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4, !dbg !5940
  %inc = add i32 %10, 1, !dbg !5940
  store i32 %inc, i32* %i, align 4, !dbg !5940
  br label %for.cond, !dbg !5941, !llvm.loop !5942

for.end:                                          ; preds = %for.cond
  store i32 -22, i32* %retval, align 4, !dbg !5944
  br label %return, !dbg !5944

return:                                           ; preds = %for.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !5945
  ret i32 %11, !dbg !5945
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @carmine_init_display_param(%struct.carmine_fb* %par) #3 !dbg !5946 {
entry:
  %par.addr = alloca %struct.carmine_fb*, align 8
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %param = alloca i32, align 4
  %window_size = alloca i32, align 4
  %soffset = alloca i32, align 4
  store %struct.carmine_fb* %par, %struct.carmine_fb** %par.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.carmine_fb** %par.addr, metadata !5949, metadata !DIExpression()), !dbg !5950
  call void @llvm.dbg.declare(metadata i32* %width, metadata !5951, metadata !DIExpression()), !dbg !5952
  call void @llvm.dbg.declare(metadata i32* %height, metadata !5953, metadata !DIExpression()), !dbg !5954
  call void @llvm.dbg.declare(metadata i32* %param, metadata !5955, metadata !DIExpression()), !dbg !5956
  call void @llvm.dbg.declare(metadata i32* %window_size, metadata !5957, metadata !DIExpression()), !dbg !5958
  call void @llvm.dbg.declare(metadata i32* %soffset, metadata !5959, metadata !DIExpression()), !dbg !5960
  %0 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !5961
  %smem_offset = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %0, i32 0, i32 2, !dbg !5962
  %1 = load i32, i32* %smem_offset, align 8, !dbg !5962
  store i32 %1, i32* %soffset, align 4, !dbg !5960
  %2 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !5963
  call void @c_set_disp_reg(%struct.carmine_fb* %2, i32 188, i32 0) #10, !dbg !5964
  %3 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !5965
  call void @c_set_disp_reg(%struct.carmine_fb* %3, i32 192, i32 0) #10, !dbg !5966
  %4 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !5967
  call void @c_set_disp_reg(%struct.carmine_fb* %4, i32 160, i32 196864) #10, !dbg !5968
  %5 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !5969
  call void @c_set_disp_reg(%struct.carmine_fb* %5, i32 168, i32 0) #10, !dbg !5970
  %6 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !5971
  call void @c_set_disp_reg(%struct.carmine_fb* %6, i32 176, i32 0) #10, !dbg !5972
  %7 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !5973
  call void @c_set_disp_reg(%struct.carmine_fb* %7, i32 272, i32 -1073741823) #10, !dbg !5974
  %8 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !5975
  call void @c_set_disp_reg(%struct.carmine_fb* %8, i32 288, i32 -1073741824) #10, !dbg !5976
  %9 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !5977
  call void @c_set_disp_reg(%struct.carmine_fb* %9, i32 304, i32 -1073741821) #10, !dbg !5978
  %10 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !5979
  call void @c_set_disp_reg(%struct.carmine_fb* %10, i32 320, i32 -1073741821) #10, !dbg !5980
  %11 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !5981
  call void @c_set_disp_reg(%struct.carmine_fb* %11, i32 336, i32 -1073741821) #10, !dbg !5982
  %12 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !5983
  call void @c_set_disp_reg(%struct.carmine_fb* %12, i32 352, i32 -1073741821) #10, !dbg !5984
  %13 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !5985
  call void @c_set_disp_reg(%struct.carmine_fb* %13, i32 6424, i32 -1073741821) #10, !dbg !5986
  %14 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !5987
  call void @c_set_disp_reg(%struct.carmine_fb* %14, i32 6488, i32 -1073741821) #10, !dbg !5988
  %15 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !5989
  %res = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %15, i32 0, i32 5, !dbg !5990
  %16 = load %struct.carmine_resolution*, %struct.carmine_resolution** %res, align 8, !dbg !5990
  %hdp = getelementptr inbounds %struct.carmine_resolution, %struct.carmine_resolution* %16, i32 0, i32 3, !dbg !5991
  %17 = load i32, i32* %hdp, align 4, !dbg !5991
  %mul = mul i32 %17, 4, !dbg !5992
  %div = udiv i32 %mul, 64, !dbg !5993
  store i32 %div, i32* %width, align 4, !dbg !5994
  %18 = load i32, i32* %width, align 4, !dbg !5995
  %shl = shl i32 %18, 16, !dbg !5996
  store i32 %shl, i32* %width, align 4, !dbg !5997
  %19 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !5998
  %res1 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %19, i32 0, i32 5, !dbg !5999
  %20 = load %struct.carmine_resolution*, %struct.carmine_resolution** %res1, align 8, !dbg !5999
  %vdp = getelementptr inbounds %struct.carmine_resolution, %struct.carmine_resolution* %20, i32 0, i32 7, !dbg !6000
  %21 = load i32, i32* %vdp, align 4, !dbg !6000
  %sub = sub i32 %21, 1, !dbg !6001
  store i32 %sub, i32* %height, align 4, !dbg !6002
  %22 = load i32, i32* %width, align 4, !dbg !6003
  %23 = load i32, i32* %height, align 4, !dbg !6004
  %or = or i32 %22, %23, !dbg !6005
  store i32 %or, i32* %param, align 4, !dbg !6006
  %24 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6007
  %25 = load i32, i32* %param, align 4, !dbg !6008
  call void @c_set_disp_reg(%struct.carmine_fb* %24, i32 32, i32 %25) #10, !dbg !6009
  %26 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6010
  %27 = load i32, i32* %width, align 4, !dbg !6011
  call void @c_set_disp_reg(%struct.carmine_fb* %26, i32 48, i32 %27) #10, !dbg !6012
  %28 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6013
  %29 = load i32, i32* %param, align 4, !dbg !6014
  call void @c_set_disp_reg(%struct.carmine_fb* %28, i32 64, i32 %29) #10, !dbg !6015
  %30 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6016
  %31 = load i32, i32* %param, align 4, !dbg !6017
  call void @c_set_disp_reg(%struct.carmine_fb* %30, i32 88, i32 %31) #10, !dbg !6018
  %32 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6019
  %33 = load i32, i32* %param, align 4, !dbg !6020
  call void @c_set_disp_reg(%struct.carmine_fb* %32, i32 112, i32 %33) #10, !dbg !6021
  %34 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6022
  %35 = load i32, i32* %param, align 4, !dbg !6023
  call void @c_set_disp_reg(%struct.carmine_fb* %34, i32 136, i32 %35) #10, !dbg !6024
  %36 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6025
  %37 = load i32, i32* %param, align 4, !dbg !6026
  call void @c_set_disp_reg(%struct.carmine_fb* %36, i32 6400, i32 %37) #10, !dbg !6027
  %38 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6028
  %39 = load i32, i32* %param, align 4, !dbg !6029
  call void @c_set_disp_reg(%struct.carmine_fb* %38, i32 6464, i32 %39) #10, !dbg !6030
  %40 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6031
  %res2 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %40, i32 0, i32 5, !dbg !6032
  %41 = load %struct.carmine_resolution*, %struct.carmine_resolution** %res2, align 8, !dbg !6032
  %vdp3 = getelementptr inbounds %struct.carmine_resolution, %struct.carmine_resolution* %41, i32 0, i32 7, !dbg !6033
  %42 = load i32, i32* %vdp3, align 4, !dbg !6033
  %sub4 = sub i32 %42, 1, !dbg !6034
  %shl5 = shl i32 %sub4, 16, !dbg !6035
  store i32 %shl5, i32* %window_size, align 4, !dbg !6036
  %43 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6037
  %res6 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %43, i32 0, i32 5, !dbg !6038
  %44 = load %struct.carmine_resolution*, %struct.carmine_resolution** %res6, align 8, !dbg !6038
  %hdp7 = getelementptr inbounds %struct.carmine_resolution, %struct.carmine_resolution* %44, i32 0, i32 3, !dbg !6039
  %45 = load i32, i32* %hdp7, align 4, !dbg !6039
  %46 = load i32, i32* %window_size, align 4, !dbg !6040
  %or8 = or i32 %46, %45, !dbg !6040
  store i32 %or8, i32* %window_size, align 4, !dbg !6040
  %47 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6041
  call void @c_set_disp_reg(%struct.carmine_fb* %47, i32 276, i32 0) #10, !dbg !6042
  %48 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6043
  %49 = load i32, i32* %window_size, align 4, !dbg !6044
  call void @c_set_disp_reg(%struct.carmine_fb* %48, i32 280, i32 %49) #10, !dbg !6045
  %50 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6046
  call void @c_set_disp_reg(%struct.carmine_fb* %50, i32 292, i32 0) #10, !dbg !6047
  %51 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6048
  %52 = load i32, i32* %window_size, align 4, !dbg !6049
  call void @c_set_disp_reg(%struct.carmine_fb* %51, i32 296, i32 %52) #10, !dbg !6050
  %53 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6051
  call void @c_set_disp_reg(%struct.carmine_fb* %53, i32 308, i32 0) #10, !dbg !6052
  %54 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6053
  %55 = load i32, i32* %window_size, align 4, !dbg !6054
  call void @c_set_disp_reg(%struct.carmine_fb* %54, i32 312, i32 %55) #10, !dbg !6055
  %56 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6056
  call void @c_set_disp_reg(%struct.carmine_fb* %56, i32 324, i32 0) #10, !dbg !6057
  %57 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6058
  %58 = load i32, i32* %window_size, align 4, !dbg !6059
  call void @c_set_disp_reg(%struct.carmine_fb* %57, i32 328, i32 %58) #10, !dbg !6060
  %59 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6061
  call void @c_set_disp_reg(%struct.carmine_fb* %59, i32 340, i32 0) #10, !dbg !6062
  %60 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6063
  %61 = load i32, i32* %window_size, align 4, !dbg !6064
  call void @c_set_disp_reg(%struct.carmine_fb* %60, i32 344, i32 %61) #10, !dbg !6065
  %62 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6066
  call void @c_set_disp_reg(%struct.carmine_fb* %62, i32 356, i32 0) #10, !dbg !6067
  %63 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6068
  %64 = load i32, i32* %window_size, align 4, !dbg !6069
  call void @c_set_disp_reg(%struct.carmine_fb* %63, i32 360, i32 %64) #10, !dbg !6070
  %65 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6071
  call void @c_set_disp_reg(%struct.carmine_fb* %65, i32 6428, i32 0) #10, !dbg !6072
  %66 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6073
  %67 = load i32, i32* %window_size, align 4, !dbg !6074
  call void @c_set_disp_reg(%struct.carmine_fb* %66, i32 6432, i32 %67) #10, !dbg !6075
  %68 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6076
  call void @c_set_disp_reg(%struct.carmine_fb* %68, i32 6492, i32 0) #10, !dbg !6077
  %69 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6078
  %70 = load i32, i32* %window_size, align 4, !dbg !6079
  call void @c_set_disp_reg(%struct.carmine_fb* %69, i32 6496, i32 %70) #10, !dbg !6080
  %71 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6081
  %72 = load i32, i32* %soffset, align 4, !dbg !6082
  call void @c_set_disp_reg(%struct.carmine_fb* %71, i32 36, i32 %72) #10, !dbg !6083
  %73 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6084
  %74 = load i32, i32* %soffset, align 4, !dbg !6085
  call void @c_set_disp_reg(%struct.carmine_fb* %73, i32 52, i32 %74) #10, !dbg !6086
  %75 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6087
  %76 = load i32, i32* %soffset, align 4, !dbg !6088
  call void @c_set_disp_reg(%struct.carmine_fb* %75, i32 68, i32 %76) #10, !dbg !6089
  %77 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6090
  %78 = load i32, i32* %soffset, align 4, !dbg !6091
  call void @c_set_disp_reg(%struct.carmine_fb* %77, i32 92, i32 %78) #10, !dbg !6092
  %79 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6093
  %80 = load i32, i32* %soffset, align 4, !dbg !6094
  call void @c_set_disp_reg(%struct.carmine_fb* %79, i32 116, i32 %80) #10, !dbg !6095
  %81 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6096
  %82 = load i32, i32* %soffset, align 4, !dbg !6097
  call void @c_set_disp_reg(%struct.carmine_fb* %81, i32 140, i32 %82) #10, !dbg !6098
  %83 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6099
  %84 = load i32, i32* %soffset, align 4, !dbg !6100
  call void @c_set_disp_reg(%struct.carmine_fb* %83, i32 6404, i32 %84) #10, !dbg !6101
  %85 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6102
  %86 = load i32, i32* %soffset, align 4, !dbg !6103
  call void @c_set_disp_reg(%struct.carmine_fb* %85, i32 6468, i32 %86) #10, !dbg !6104
  %87 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6105
  %88 = load i32, i32* %soffset, align 4, !dbg !6106
  call void @c_set_disp_reg(%struct.carmine_fb* %87, i32 40, i32 %88) #10, !dbg !6107
  %89 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6108
  %90 = load i32, i32* %soffset, align 4, !dbg !6109
  call void @c_set_disp_reg(%struct.carmine_fb* %89, i32 72, i32 %90) #10, !dbg !6110
  %91 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6111
  %92 = load i32, i32* %soffset, align 4, !dbg !6112
  call void @c_set_disp_reg(%struct.carmine_fb* %91, i32 96, i32 %92) #10, !dbg !6113
  %93 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6114
  %94 = load i32, i32* %soffset, align 4, !dbg !6115
  call void @c_set_disp_reg(%struct.carmine_fb* %93, i32 120, i32 %94) #10, !dbg !6116
  %95 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6117
  %96 = load i32, i32* %soffset, align 4, !dbg !6118
  call void @c_set_disp_reg(%struct.carmine_fb* %95, i32 144, i32 %96) #10, !dbg !6119
  %97 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6120
  %98 = load i32, i32* %soffset, align 4, !dbg !6121
  call void @c_set_disp_reg(%struct.carmine_fb* %97, i32 6408, i32 %98) #10, !dbg !6122
  %99 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6123
  %100 = load i32, i32* %soffset, align 4, !dbg !6124
  call void @c_set_disp_reg(%struct.carmine_fb* %99, i32 6472, i32 %100) #10, !dbg !6125
  %101 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6126
  call void @c_set_disp_reg(%struct.carmine_fb* %101, i32 44, i32 0) #10, !dbg !6127
  %102 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6128
  call void @c_set_disp_reg(%struct.carmine_fb* %102, i32 84, i32 0) #10, !dbg !6129
  %103 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6130
  call void @c_set_disp_reg(%struct.carmine_fb* %103, i32 108, i32 0) #10, !dbg !6131
  %104 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6132
  call void @c_set_disp_reg(%struct.carmine_fb* %104, i32 132, i32 0) #10, !dbg !6133
  %105 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6134
  call void @c_set_disp_reg(%struct.carmine_fb* %105, i32 156, i32 0) #10, !dbg !6135
  %106 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6136
  call void @c_set_disp_reg(%struct.carmine_fb* %106, i32 6420, i32 0) #10, !dbg !6137
  %107 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6138
  call void @c_set_disp_reg(%struct.carmine_fb* %107, i32 6484, i32 0) #10, !dbg !6139
  %108 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6140
  call void @c_set_disp_reg(%struct.carmine_fb* %108, i32 180, i32 0) #10, !dbg !6141
  %109 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6142
  call void @c_set_disp_reg(%struct.carmine_fb* %109, i32 392, i32 0) #10, !dbg !6143
  %110 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6144
  call void @c_set_disp_reg(%struct.carmine_fb* %110, i32 396, i32 0) #10, !dbg !6145
  %111 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6146
  call void @c_set_disp_reg(%struct.carmine_fb* %111, i32 400, i32 0) #10, !dbg !6147
  %112 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6148
  call void @c_set_disp_reg(%struct.carmine_fb* %112, i32 404, i32 0) #10, !dbg !6149
  %113 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6150
  call void @c_set_disp_reg(%struct.carmine_fb* %113, i32 408, i32 0) #10, !dbg !6151
  %114 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6152
  call void @c_set_disp_reg(%struct.carmine_fb* %114, i32 6544, i32 0) #10, !dbg !6153
  %115 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6154
  call void @c_set_disp_reg(%struct.carmine_fb* %115, i32 6548, i32 0) #10, !dbg !6155
  %116 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6156
  call void @c_set_disp_reg(%struct.carmine_fb* %116, i32 416, i32 0) #10, !dbg !6157
  %117 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6158
  call void @c_set_disp_reg(%struct.carmine_fb* %117, i32 420, i32 0) #10, !dbg !6159
  %118 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6160
  call void @c_set_disp_reg(%struct.carmine_fb* %118, i32 424, i32 0) #10, !dbg !6161
  %119 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6162
  call void @c_set_disp_reg(%struct.carmine_fb* %119, i32 428, i32 0) #10, !dbg !6163
  %120 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6164
  call void @c_set_disp_reg(%struct.carmine_fb* %120, i32 432, i32 0) #10, !dbg !6165
  %121 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6166
  call void @c_set_disp_reg(%struct.carmine_fb* %121, i32 436, i32 0) #10, !dbg !6167
  %122 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6168
  call void @c_set_disp_reg(%struct.carmine_fb* %122, i32 6552, i32 0) #10, !dbg !6169
  %123 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6170
  call void @c_set_disp_reg(%struct.carmine_fb* %123, i32 6556, i32 0) #10, !dbg !6171
  %124 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6172
  call void @c_set_disp_reg(%struct.carmine_fb* %124, i32 6272, i32 0) #10, !dbg !6173
  %125 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6174
  call void @c_set_disp_reg(%struct.carmine_fb* %125, i32 6304, i32 0) #10, !dbg !6175
  %126 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6176
  call void @c_set_disp_reg(%struct.carmine_fb* %126, i32 6320, i32 0) #10, !dbg !6177
  %127 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6178
  call void @c_set_disp_reg(%struct.carmine_fb* %127, i32 6336, i32 0) #10, !dbg !6179
  %128 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6180
  call void @c_set_disp_reg(%struct.carmine_fb* %128, i32 6352, i32 0) #10, !dbg !6181
  %129 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6182
  call void @c_set_disp_reg(%struct.carmine_fb* %129, i32 6436, i32 0) #10, !dbg !6183
  %130 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6184
  call void @c_set_disp_reg(%struct.carmine_fb* %130, i32 6500, i32 0) #10, !dbg !6185
  %131 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6186
  call void @c_set_disp_reg(%struct.carmine_fb* %131, i32 6276, i32 0) #10, !dbg !6187
  %132 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6188
  call void @c_set_disp_reg(%struct.carmine_fb* %132, i32 6308, i32 0) #10, !dbg !6189
  %133 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6190
  call void @c_set_disp_reg(%struct.carmine_fb* %133, i32 6324, i32 0) #10, !dbg !6191
  %134 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6192
  call void @c_set_disp_reg(%struct.carmine_fb* %134, i32 6340, i32 0) #10, !dbg !6193
  %135 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6194
  call void @c_set_disp_reg(%struct.carmine_fb* %135, i32 6356, i32 0) #10, !dbg !6195
  %136 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6196
  call void @c_set_disp_reg(%struct.carmine_fb* %136, i32 6440, i32 0) #10, !dbg !6197
  %137 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6198
  call void @c_set_disp_reg(%struct.carmine_fb* %137, i32 6504, i32 0) #10, !dbg !6199
  %138 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6200
  call void @c_set_disp_reg(%struct.carmine_fb* %138, i32 6280, i32 0) #10, !dbg !6201
  %139 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6202
  call void @c_set_disp_reg(%struct.carmine_fb* %139, i32 6312, i32 0) #10, !dbg !6203
  %140 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6204
  call void @c_set_disp_reg(%struct.carmine_fb* %140, i32 6328, i32 0) #10, !dbg !6205
  %141 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6206
  call void @c_set_disp_reg(%struct.carmine_fb* %141, i32 6344, i32 0) #10, !dbg !6207
  %142 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6208
  call void @c_set_disp_reg(%struct.carmine_fb* %142, i32 6360, i32 0) #10, !dbg !6209
  %143 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6210
  call void @c_set_disp_reg(%struct.carmine_fb* %143, i32 6444, i32 0) #10, !dbg !6211
  %144 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6212
  call void @c_set_disp_reg(%struct.carmine_fb* %144, i32 6508, i32 0) #10, !dbg !6213
  ret void, !dbg !6214
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_display_parameters(%struct.carmine_fb* %par) #3 !dbg !6215 {
entry:
  %par.addr = alloca %struct.carmine_fb*, align 8
  %mode = alloca i32, align 4
  %hdp = alloca i32, align 4
  %vdp = alloca i32, align 4
  %htp = alloca i32, align 4
  %hsp = alloca i32, align 4
  %hsw = alloca i32, align 4
  %vtr = alloca i32, align 4
  %vsp = alloca i32, align 4
  %vsw = alloca i32, align 4
  store %struct.carmine_fb* %par, %struct.carmine_fb** %par.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.carmine_fb** %par.addr, metadata !6216, metadata !DIExpression()), !dbg !6217
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !6218, metadata !DIExpression()), !dbg !6219
  call void @llvm.dbg.declare(metadata i32* %hdp, metadata !6220, metadata !DIExpression()), !dbg !6221
  call void @llvm.dbg.declare(metadata i32* %vdp, metadata !6222, metadata !DIExpression()), !dbg !6223
  call void @llvm.dbg.declare(metadata i32* %htp, metadata !6224, metadata !DIExpression()), !dbg !6225
  call void @llvm.dbg.declare(metadata i32* %hsp, metadata !6226, metadata !DIExpression()), !dbg !6227
  call void @llvm.dbg.declare(metadata i32* %hsw, metadata !6228, metadata !DIExpression()), !dbg !6229
  call void @llvm.dbg.declare(metadata i32* %vtr, metadata !6230, metadata !DIExpression()), !dbg !6231
  call void @llvm.dbg.declare(metadata i32* %vsp, metadata !6232, metadata !DIExpression()), !dbg !6233
  call void @llvm.dbg.declare(metadata i32* %vsw, metadata !6234, metadata !DIExpression()), !dbg !6235
  %0 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6236
  %res = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %0, i32 0, i32 5, !dbg !6237
  %1 = load %struct.carmine_resolution*, %struct.carmine_resolution** %res, align 8, !dbg !6237
  %hdp1 = getelementptr inbounds %struct.carmine_resolution, %struct.carmine_resolution* %1, i32 0, i32 3, !dbg !6238
  %2 = load i32, i32* %hdp1, align 4, !dbg !6238
  %sub = sub i32 %2, 1, !dbg !6239
  store i32 %sub, i32* %hdp, align 4, !dbg !6240
  %3 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6241
  %res2 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %3, i32 0, i32 5, !dbg !6242
  %4 = load %struct.carmine_resolution*, %struct.carmine_resolution** %res2, align 8, !dbg !6242
  %vdp3 = getelementptr inbounds %struct.carmine_resolution, %struct.carmine_resolution* %4, i32 0, i32 7, !dbg !6243
  %5 = load i32, i32* %vdp3, align 4, !dbg !6243
  %sub4 = sub i32 %5, 1, !dbg !6244
  store i32 %sub4, i32* %vdp, align 4, !dbg !6245
  %6 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6246
  %res5 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %6, i32 0, i32 5, !dbg !6247
  %7 = load %struct.carmine_resolution*, %struct.carmine_resolution** %res5, align 8, !dbg !6247
  %htp6 = getelementptr inbounds %struct.carmine_resolution, %struct.carmine_resolution* %7, i32 0, i32 0, !dbg !6248
  %8 = load i32, i32* %htp6, align 4, !dbg !6248
  %sub7 = sub i32 %8, 1, !dbg !6249
  store i32 %sub7, i32* %htp, align 4, !dbg !6250
  %9 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6251
  %res8 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %9, i32 0, i32 5, !dbg !6252
  %10 = load %struct.carmine_resolution*, %struct.carmine_resolution** %res8, align 8, !dbg !6252
  %hsp9 = getelementptr inbounds %struct.carmine_resolution, %struct.carmine_resolution* %10, i32 0, i32 1, !dbg !6253
  %11 = load i32, i32* %hsp9, align 4, !dbg !6253
  %sub10 = sub i32 %11, 1, !dbg !6254
  store i32 %sub10, i32* %hsp, align 4, !dbg !6255
  %12 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6256
  %res11 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %12, i32 0, i32 5, !dbg !6257
  %13 = load %struct.carmine_resolution*, %struct.carmine_resolution** %res11, align 8, !dbg !6257
  %hsw12 = getelementptr inbounds %struct.carmine_resolution, %struct.carmine_resolution* %13, i32 0, i32 2, !dbg !6258
  %14 = load i32, i32* %hsw12, align 4, !dbg !6258
  %sub13 = sub i32 %14, 1, !dbg !6259
  store i32 %sub13, i32* %hsw, align 4, !dbg !6260
  %15 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6261
  %res14 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %15, i32 0, i32 5, !dbg !6262
  %16 = load %struct.carmine_resolution*, %struct.carmine_resolution** %res14, align 8, !dbg !6262
  %vtr15 = getelementptr inbounds %struct.carmine_resolution, %struct.carmine_resolution* %16, i32 0, i32 4, !dbg !6263
  %17 = load i32, i32* %vtr15, align 4, !dbg !6263
  %sub16 = sub i32 %17, 1, !dbg !6264
  store i32 %sub16, i32* %vtr, align 4, !dbg !6265
  %18 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6266
  %res17 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %18, i32 0, i32 5, !dbg !6267
  %19 = load %struct.carmine_resolution*, %struct.carmine_resolution** %res17, align 8, !dbg !6267
  %vsp18 = getelementptr inbounds %struct.carmine_resolution, %struct.carmine_resolution* %19, i32 0, i32 5, !dbg !6268
  %20 = load i32, i32* %vsp18, align 4, !dbg !6268
  %sub19 = sub i32 %20, 1, !dbg !6269
  store i32 %sub19, i32* %vsp, align 4, !dbg !6270
  %21 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6271
  %res20 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %21, i32 0, i32 5, !dbg !6272
  %22 = load %struct.carmine_resolution*, %struct.carmine_resolution** %res20, align 8, !dbg !6272
  %vsw21 = getelementptr inbounds %struct.carmine_resolution, %struct.carmine_resolution* %22, i32 0, i32 6, !dbg !6273
  %23 = load i32, i32* %vsw21, align 4, !dbg !6273
  %sub22 = sub i32 %23, 1, !dbg !6274
  store i32 %sub22, i32* %vsw, align 4, !dbg !6275
  %24 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6276
  %25 = load i32, i32* %htp, align 4, !dbg !6277
  %shl = shl i32 %25, 16, !dbg !6278
  call void @c_set_disp_reg(%struct.carmine_fb* %24, i32 4, i32 %shl) #10, !dbg !6279
  %26 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6280
  %27 = load i32, i32* %hdp, align 4, !dbg !6281
  %shl23 = shl i32 %27, 16, !dbg !6282
  %28 = load i32, i32* %hdp, align 4, !dbg !6283
  %or = or i32 %shl23, %28, !dbg !6284
  call void @c_set_disp_reg(%struct.carmine_fb* %26, i32 8, i32 %or) #10, !dbg !6285
  %29 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6286
  %30 = load i32, i32* %vsw, align 4, !dbg !6287
  %shl24 = shl i32 %30, 24, !dbg !6288
  %31 = load i32, i32* %hsw, align 4, !dbg !6289
  %shl25 = shl i32 %31, 16, !dbg !6290
  %or26 = or i32 %shl24, %shl25, !dbg !6291
  %32 = load i32, i32* %hsp, align 4, !dbg !6292
  %or27 = or i32 %or26, %32, !dbg !6293
  call void @c_set_disp_reg(%struct.carmine_fb* %29, i32 12, i32 %or27) #10, !dbg !6294
  %33 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6295
  %34 = load i32, i32* %vtr, align 4, !dbg !6296
  %shl28 = shl i32 %34, 16, !dbg !6297
  call void @c_set_disp_reg(%struct.carmine_fb* %33, i32 16, i32 %shl28) #10, !dbg !6298
  %35 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6299
  %36 = load i32, i32* %vdp, align 4, !dbg !6300
  %shl29 = shl i32 %36, 16, !dbg !6301
  %37 = load i32, i32* %vsp, align 4, !dbg !6302
  %or30 = or i32 %shl29, %37, !dbg !6303
  call void @c_set_disp_reg(%struct.carmine_fb* %35, i32 20, i32 %or30) #10, !dbg !6304
  %38 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6305
  %call = call i32 @c_get_disp_reg(%struct.carmine_fb* %38, i32 256) #10, !dbg !6306
  store i32 %call, i32* %mode, align 4, !dbg !6307
  %39 = load i32, i32* %mode, align 4, !dbg !6308
  %and = and i32 %39, -65536, !dbg !6309
  %40 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6310
  %res31 = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %40, i32 0, i32 5, !dbg !6311
  %41 = load %struct.carmine_resolution*, %struct.carmine_resolution** %res31, align 8, !dbg !6311
  %disp_mode = getelementptr inbounds %struct.carmine_resolution, %struct.carmine_resolution* %41, i32 0, i32 8, !dbg !6312
  %42 = load i32, i32* %disp_mode, align 4, !dbg !6312
  %and32 = and i32 %42, 65535, !dbg !6313
  %or33 = or i32 %and, %and32, !dbg !6314
  store i32 %or33, i32* %mode, align 4, !dbg !6315
  %43 = load i32, i32* %mode, align 4, !dbg !6316
  %or34 = or i32 %43, -2147418112, !dbg !6316
  store i32 %or34, i32* %mode, align 4, !dbg !6316
  %44 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6317
  %45 = load i32, i32* %mode, align 4, !dbg !6318
  call void @c_set_disp_reg(%struct.carmine_fb* %44, i32 256, i32 %45) #10, !dbg !6319
  ret void, !dbg !6320
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @c_set_disp_reg(%struct.carmine_fb* %par, i32 %offset, i32 %val) #3 !dbg !6321 {
entry:
  %par.addr = alloca %struct.carmine_fb*, align 8
  %offset.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store %struct.carmine_fb* %par, %struct.carmine_fb** %par.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.carmine_fb** %par.addr, metadata !6326, metadata !DIExpression()), !dbg !6327
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !6328, metadata !DIExpression()), !dbg !6329
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6330, metadata !DIExpression()), !dbg !6331
  %0 = load i32, i32* %val.addr, align 4, !dbg !6332
  %1 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6333
  %display_reg = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %1, i32 0, i32 0, !dbg !6334
  %2 = load i8*, i8** %display_reg, align 8, !dbg !6334
  %3 = load i32, i32* %offset.addr, align 4, !dbg !6335
  %idx.ext = zext i32 %3 to i64, !dbg !6336
  %add.ptr = getelementptr i8, i8* %2, i64 %idx.ext, !dbg !6336
  call void @writel(i32 %0, i8* %add.ptr) #10, !dbg !6337
  ret void, !dbg !6338
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #3 !dbg !6339 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6343, metadata !DIExpression()), !dbg !6344
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6345, metadata !DIExpression()), !dbg !6344
  %0 = load i32, i32* %val.addr, align 4, !dbg !6344
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !6344
  %2 = bitcast i8* %1 to i32*, !dbg !6344
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #11, !dbg !6344, !srcloc !6346
  ret void, !dbg !6344
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @c_get_disp_reg(%struct.carmine_fb* %par, i32 %offset) #3 !dbg !6347 {
entry:
  %par.addr = alloca %struct.carmine_fb*, align 8
  %offset.addr = alloca i32, align 4
  store %struct.carmine_fb* %par, %struct.carmine_fb** %par.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.carmine_fb** %par.addr, metadata !6350, metadata !DIExpression()), !dbg !6351
  store i32 %offset, i32* %offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %offset.addr, metadata !6352, metadata !DIExpression()), !dbg !6353
  %0 = load %struct.carmine_fb*, %struct.carmine_fb** %par.addr, align 8, !dbg !6354
  %display_reg = getelementptr inbounds %struct.carmine_fb, %struct.carmine_fb* %0, i32 0, i32 0, !dbg !6355
  %1 = load i8*, i8** %display_reg, align 8, !dbg !6355
  %2 = load i32, i32* %offset.addr, align 4, !dbg !6356
  %idx.ext = zext i32 %2 to i64, !dbg !6357
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !6357
  %call = call i32 @readl(i8* %add.ptr) #10, !dbg !6358
  ret i32 %call, !dbg !6359
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #7 !dbg !6360 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6364, metadata !DIExpression()), !dbg !6365
  %0 = load i32, i32* %val.addr, align 4, !dbg !6366
  %call = call i32 @__arch_swab32(i32 %0) #12, !dbg !6367
  ret i32 %call, !dbg !6368
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #7 !dbg !6369 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !6371, metadata !DIExpression()), !dbg !6372
  %0 = load i32, i32* %val.addr, align 4, !dbg !6373
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #15, !dbg !6374, !srcloc !6375
  store i32 %1, i32* %val.addr, align 4, !dbg !6374
  %2 = load i32, i32* %val.addr, align 4, !dbg !6376
  ret i32 %2, !dbg !6377
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #3 !dbg !6378 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6381, metadata !DIExpression()), !dbg !6382
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !6383, metadata !DIExpression()), !dbg !6384
  %0 = load i8*, i8** %data.addr, align 8, !dbg !6385
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6386
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !6387
  store i8* %0, i8** %driver_data, align 8, !dbg !6388
  ret void, !dbg !6389
}

; Function Attrs: noredzone
declare dso_local void @unregister_framebuffer(%struct.fb_info*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_get_drvdata(%struct.pci_dev* %pdev) #3 !dbg !6390 {
entry:
  %pdev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %pdev, %struct.pci_dev** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %pdev.addr, metadata !6393, metadata !DIExpression()), !dbg !6394
  %0 = load %struct.pci_dev*, %struct.pci_dev** %pdev.addr, align 8, !dbg !6395
  %dev = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 41, !dbg !6396
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #10, !dbg !6397
  ret i8* %call, !dbg !6398
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #3 !dbg !6399 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6402, metadata !DIExpression()), !dbg !6403
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6404
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6405
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6405
  ret i8* %1, !dbg !6406
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind willreturn }
attributes #9 = { cold noredzone }
attributes #10 = { noredzone }
attributes #11 = { nounwind }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4789, !4790, !4791, !4792}
!llvm.ident = !{!4793}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_fb_mode", scope: !2, file: !3, line: 37, type: !4786, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !126, globals: !141, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/video/fbdev/carminefb.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !114, !119}
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
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !120, line: 305, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!121 = !{!122, !123, !124, !125}
!122 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!123 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!124 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!125 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!126 = !{!127, !130, !132, !133, !135, !136, !138, !140}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !129, line: 76, flags: DIFlagFwdDecl)
!129 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !131, line: 148, baseType: !7)
!131 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!135 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !137, line: 32, baseType: !138)
!137 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !139, line: 27, baseType: !7)
!139 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!141 = !{!142, !209, !214, !219, !221, !226, !231, !233, !238, !240, !242, !249, !254, !259, !264, !269, !0, !271, !273, !278, !280, !282, !4298, !4301, !4322, !4768, !4782}
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "__param_fb_mode", scope: !2, file: !3, line: 37, type: !144, isLocal: true, isDefinition: true, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !146, line: 69, size: 320, elements: !147)
!146 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!147 = !{!148, !152, !153, !173, !179, !183, !187}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !145, file: !146, line: 70, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !145, file: !146, line: 71, baseType: !127, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !145, file: !146, line: 72, baseType: !154, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !146, line: 47, size: 256, elements: !157)
!157 = !{!158, !159, !164, !169}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !156, file: !146, line: 49, baseType: !7, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !156, file: !146, line: 51, baseType: !160, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!135, !149, !163}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !156, file: !146, line: 53, baseType: !165, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!135, !168, !163}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !156, file: !146, line: 55, baseType: !170, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !132}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !145, file: !146, line: 73, baseType: !174, size: 16, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !176, line: 19, baseType: !177)
!176 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !139, line: 24, baseType: !178)
!178 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !145, file: !146, line: 74, baseType: !180, size: 8, offset: 208)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !176, line: 16, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !139, line: 20, baseType: !182)
!182 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !145, file: !146, line: 75, baseType: !184, size: 8, offset: 216)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !176, line: 17, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !139, line: 21, baseType: !186)
!186 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!187 = !DIDerivedType(tag: DW_TAG_member, scope: !145, file: !146, line: 76, baseType: !188, size: 64, offset: 256)
!188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !145, file: !146, line: 76, size: 64, elements: !189)
!189 = !{!190, !191, !198}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !188, file: !146, line: 77, baseType: !132, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !188, file: !146, line: 78, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !146, line: 86, size: 128, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !194, file: !146, line: 87, baseType: !7, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !194, file: !146, line: 88, baseType: !168, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !188, file: !146, line: 79, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !146, line: 92, size: 256, elements: !202)
!202 = !{!203, !204, !205, !207, !208}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !201, file: !146, line: 94, baseType: !7, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !201, file: !146, line: 95, baseType: !7, size: 32, offset: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !201, file: !146, line: 96, baseType: !206, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !201, file: !146, line: 97, baseType: !154, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !201, file: !146, line: 98, baseType: !132, size: 64, offset: 192)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_fb_modetype244", scope: !2, file: !3, line: 37, type: !211, isLocal: true, isDefinition: true, align: 8)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 256, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 32)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_fb_mode245", scope: !2, file: !3, line: 38, type: !216, isLocal: true, isDefinition: true, align: 8)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 432, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 54)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "__param_fb_mode_str", scope: !2, file: !3, line: 41, type: !144, isLocal: true, isDefinition: true, align: 64)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_fb_mode_strtype246", scope: !2, file: !3, line: 41, type: !223, isLocal: true, isDefinition: true, align: 8)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 296, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 37)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_fb_mode_str247", scope: !2, file: !3, line: 42, type: !228, isLocal: true, isDefinition: true, align: 8)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 488, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 61)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "__param_fb_displays", scope: !2, file: !3, line: 51, type: !144, isLocal: true, isDefinition: true, align: 64)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_fb_displaystype248", scope: !2, file: !3, line: 51, type: !235, isLocal: true, isDefinition: true, align: 8)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 280, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 35)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_fb_displays249", scope: !2, file: !3, line: 52, type: !228, isLocal: true, isDefinition: true, align: 8)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_carminefb_init250", scope: !2, file: !3, line: 779, type: !132, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "__exitcall_carminefb_cleanup", scope: !2, file: !3, line: 785, type: !244, isLocal: true, isDefinition: true)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !245, line: 117, baseType: !246)
!245 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{null}
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author251", scope: !2, file: !3, line: 787, type: !251, isLocal: true, isDefinition: true, align: 8)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 472, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 59)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description252", scope: !2, file: !3, line: 788, type: !256, isLocal: true, isDefinition: true, align: 8)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 600, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 75)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file253", scope: !2, file: !3, line: 789, type: !261, isLocal: true, isDefinition: true, align: 8)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 360, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 45)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license254", scope: !2, file: !3, line: 789, type: !266, isLocal: true, isDefinition: true, align: 8)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 200, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 25)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(name: "fb_mode_str", scope: !2, file: !3, line: 40, type: !168, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "fb_mode", scope: !2, file: !3, line: 36, type: !7, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(name: "__param_str_fb_mode_str", scope: !2, file: !3, line: 41, type: !275, isLocal: true, isDefinition: true)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 176, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 22)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(name: "__param_str_fb_displays", scope: !2, file: !3, line: 51, type: !275, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "fb_displays", scope: !2, file: !3, line: 50, type: !135, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "carmine_pci_driver", scope: !2, file: !3, line: 762, type: !284, isLocal: true, isDefinition: true)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !285, line: 858, size: 2048, elements: !286)
!285 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!286 = !{!287, !293, !294, !309, !4256, !4260, !4264, !4268, !4269, !4273, !4291, !4292, !4293}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !284, file: !285, line: 859, baseType: !288, size: 128)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !131, line: 178, size: 128, elements: !289)
!289 = !{!290, !292}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !131, line: 179, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !288, file: !131, line: 179, baseType: !291, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !284, file: !285, line: 860, baseType: !149, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !284, file: !285, line: 861, baseType: !295, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !298, line: 38, size: 256, elements: !299)
!298 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!299 = !{!300, !301, !302, !303, !304, !305, !306}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !297, file: !298, line: 39, baseType: !138, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !297, file: !298, line: 39, baseType: !138, size: 32, offset: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !297, file: !298, line: 40, baseType: !138, size: 32, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !297, file: !298, line: 40, baseType: !138, size: 32, offset: 96)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !297, file: !298, line: 41, baseType: !138, size: 32, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !297, file: !298, line: 41, baseType: !138, size: 32, offset: 160)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !297, file: !298, line: 42, baseType: !307, size: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !298, line: 14, baseType: !308)
!308 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !284, file: !285, line: 862, baseType: !310, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!135, !313, !295}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !285, line: 309, size: 19264, elements: !315)
!315 = !{!316, !317, !4121, !4122, !4123, !4124, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4153, !4154, !4155, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4179, !4180, !4181, !4182, !4184, !4185, !4186, !4187, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4230, !4231, !4232, !4233, !4234, !4235, !4237, !4238, !4239, !4242, !4249, !4250, !4251, !4252, !4253, !4254, !4255}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !314, file: !285, line: 310, baseType: !288, size: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !314, file: !285, line: 311, baseType: !318, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !285, line: 605, size: 8064, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !348, !349, !350, !376, !379, !380, !384, !385, !386, !387, !388, !392, !393, !395, !4117, !4118, !4119, !4120}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !319, file: !285, line: 606, baseType: !288, size: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !319, file: !285, line: 607, baseType: !318, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !319, file: !285, line: 608, baseType: !288, size: 128, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !319, file: !285, line: 609, baseType: !288, size: 128, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !319, file: !285, line: 610, baseType: !313, size: 64, offset: 448)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !319, file: !285, line: 611, baseType: !288, size: 128, offset: 512)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !319, file: !285, line: 613, baseType: !328, size: 256, offset: 640)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 256, elements: !346)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !331, line: 20, size: 512, elements: !332)
!331 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!332 = !{!333, !339, !340, !341, !342, !343, !344, !345}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !330, file: !331, line: 21, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !131, line: 158, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !131, line: 153, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !176, line: 23, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !139, line: 31, baseType: !338)
!338 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !330, file: !331, line: 22, baseType: !334, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !330, file: !331, line: 23, baseType: !149, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !331, line: 24, baseType: !308, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !330, file: !331, line: 25, baseType: !308, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !330, file: !331, line: 26, baseType: !329, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !330, file: !331, line: 26, baseType: !329, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !330, file: !331, line: 26, baseType: !329, size: 64, offset: 448)
!346 = !{!347}
!347 = !DISubrange(count: 4)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !319, file: !285, line: 614, baseType: !288, size: 128, offset: 896)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !319, file: !285, line: 615, baseType: !330, size: 512, offset: 1024)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !319, file: !285, line: 617, baseType: !351, size: 64, offset: 1536)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !285, line: 731, size: 320, elements: !353)
!353 = !{!354, !358, !362, !366, !372}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !352, file: !285, line: 732, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!135, !318}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !352, file: !285, line: 733, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !318}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !352, file: !285, line: 734, baseType: !363, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!132, !318, !7, !135}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !352, file: !285, line: 735, baseType: !367, size: 64, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!135, !318, !7, !135, !135, !370}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !176, line: 21, baseType: !138)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !352, file: !285, line: 736, baseType: !373, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!135, !318, !7, !135, !135, !371}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !319, file: !285, line: 618, baseType: !377, size: 64, offset: 1600)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !285, line: 537, flags: DIFlagFwdDecl)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !319, file: !285, line: 619, baseType: !132, size: 64, offset: 1664)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !319, file: !285, line: 620, baseType: !381, size: 64, offset: 1728)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !383, line: 84, flags: DIFlagFwdDecl)
!383 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!384 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !319, file: !285, line: 622, baseType: !186, size: 8, offset: 1792)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !319, file: !285, line: 623, baseType: !186, size: 8, offset: 1800)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !319, file: !285, line: 624, baseType: !186, size: 8, offset: 1808)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !319, file: !285, line: 625, baseType: !186, size: 8, offset: 1816)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !319, file: !285, line: 630, baseType: !389, size: 384, offset: 1824)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 384, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 48)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !319, file: !285, line: 632, baseType: !178, size: 16, offset: 2208)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !319, file: !285, line: 633, baseType: !394, size: 16, offset: 2224)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !285, line: 237, baseType: !178)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !319, file: !285, line: 634, baseType: !396, size: 64, offset: 2240)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !398)
!398 = !{!399, !3573, !3574, !3577, !3578, !3629, !3718, !3719, !3720, !3721, !3722, !3731, !3836, !3849, !4044, !4045, !4049, !4051, !4052, !4053, !4057, !4063, !4064, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4105, !4106, !4107, !4110, !4113, !4114, !4115, !4116}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !397, file: !73, line: 462, baseType: !400, size: 512)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !401, line: 64, size: 512, elements: !402)
!401 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!402 = !{!403, !404, !405, !407, !466, !3433, !3567, !3568, !3569, !3570, !3571, !3572}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !400, file: !401, line: 65, baseType: !149, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !400, file: !401, line: 66, baseType: !288, size: 128, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !400, file: !401, line: 67, baseType: !406, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !400, file: !401, line: 68, baseType: !408, size: 64, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !401, line: 192, size: 704, elements: !410)
!410 = !{!411, !412, !428, !429}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !409, file: !401, line: 193, baseType: !288, size: 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !409, file: !401, line: 194, baseType: !413, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !414, line: 83, baseType: !415)
!414 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !414, line: 71, elements: !416)
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !414, line: 72, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !415, file: !414, line: 72, elements: !419)
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !418, file: !414, line: 73, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !414, line: 20, elements: !422)
!422 = !{!423}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !421, file: !414, line: 21, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !425, line: 25, baseType: !426)
!425 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !425, line: 25, elements: !427)
!427 = !{}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !409, file: !401, line: 195, baseType: !400, size: 512, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !409, file: !401, line: 196, baseType: !430, size: 64, offset: 640)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !401, line: 156, size: 192, elements: !433)
!433 = !{!434, !439, !444}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !432, file: !401, line: 157, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!135, !408, !406}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !432, file: !401, line: 158, baseType: !440, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!149, !408, !406}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !432, file: !401, line: 159, baseType: !445, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!135, !408, !406, !449}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !401, line: 148, size: 20736, elements: !451)
!451 = !{!452, !456, !460, !461, !465}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !450, file: !401, line: 149, baseType: !453, size: 192)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 192, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 3)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !450, file: !401, line: 150, baseType: !457, size: 4096, offset: 192)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 4096, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !450, file: !401, line: 151, baseType: !135, size: 32, offset: 4288)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !450, file: !401, line: 152, baseType: !462, size: 16384, offset: 4320)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 16384, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 2048)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !450, file: !401, line: 153, baseType: !135, size: 32, offset: 20704)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !400, file: !401, line: 69, baseType: !467, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !401, line: 138, size: 448, elements: !469)
!469 = !{!470, !474, !502, !504, !3395, !3423, !3427}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !468, file: !401, line: 139, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !406}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !468, file: !401, line: 140, baseType: !475, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !478, line: 230, size: 128, elements: !479)
!478 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!479 = !{!480, !495}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !477, file: !478, line: 231, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!484, !406, !489, !168}
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !131, line: 60, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !486, line: 73, baseType: !487)
!486 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !486, line: 15, baseType: !488)
!488 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !478, line: 30, size: 128, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !490, file: !478, line: 31, baseType: !149, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !490, file: !478, line: 32, baseType: !494, size: 16, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !131, line: 19, baseType: !178)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !477, file: !478, line: 232, baseType: !496, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!484, !406, !489, !149, !499}
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !131, line: 55, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !486, line: 72, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !486, line: 16, baseType: !308)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !468, file: !401, line: 141, baseType: !503, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !468, file: !401, line: 142, baseType: !505, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !478, line: 84, size: 320, elements: !509)
!509 = !{!510, !511, !515, !3392, !3393}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !508, file: !478, line: 85, baseType: !149, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !508, file: !478, line: 86, baseType: !512, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!494, !406, !489, !135}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !508, file: !478, line: 88, baseType: !516, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!494, !406, !519, !135}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !478, line: 168, size: 448, elements: !521)
!521 = !{!522, !523, !524, !525, !3387, !3388}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !520, file: !478, line: 169, baseType: !490, size: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !520, file: !478, line: 170, baseType: !499, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !520, file: !478, line: 171, baseType: !132, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !520, file: !478, line: 172, baseType: !526, size: 64, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!484, !529, !406, !519, !168, !697, !499}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !531)
!531 = !{!532, !550, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3370, !3371, !3380, !3381, !3382, !3383, !3384, !3385, !3386}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !530, file: !44, line: 920, baseType: !533, size: 128)
!533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !530, file: !44, line: 917, size: 128, elements: !534)
!534 = !{!535, !541}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !533, file: !44, line: 918, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !537, line: 58, size: 64, elements: !538)
!537 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!538 = !{!539}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !536, file: !537, line: 59, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !533, file: !44, line: 919, baseType: !542, size: 128, align: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !131, line: 216, size: 128, align: 64, elements: !543)
!543 = !{!544, !546}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !542, file: !131, line: 217, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !542, file: !131, line: 218, baseType: !547, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !545}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !530, file: !44, line: 921, baseType: !551, size: 128, offset: 128)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !552, line: 8, size: 128, elements: !553)
!552 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!553 = !{!554, !558}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !551, file: !552, line: 9, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !557, line: 18, flags: DIFlagFwdDecl)
!557 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!558 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !551, file: !552, line: 10, baseType: !559, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !557, line: 89, size: 1536, elements: !561)
!561 = !{!562, !563, !573, !581, !582, !597, !3320, !3322, !3334, !3335, !3336, !3337, !3338, !3344, !3345, !3346}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !560, file: !557, line: 91, baseType: !7, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !560, file: !557, line: 92, baseType: !564, size: 32, offset: 32)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !565, line: 277, baseType: !566)
!565 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !565, line: 277, size: 32, elements: !567)
!567 = !{!568}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !566, file: !565, line: 277, baseType: !569, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !565, line: 70, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !565, line: 65, size: 32, elements: !571)
!571 = !{!572}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !570, file: !565, line: 66, baseType: !7, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !560, file: !557, line: 93, baseType: !574, size: 128, offset: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !575, line: 38, size: 128, elements: !576)
!575 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!576 = !{!577, !579}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !574, file: !575, line: 39, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !574, file: !575, line: 39, baseType: !580, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !560, file: !557, line: 94, baseType: !559, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !560, file: !557, line: 95, baseType: !583, size: 128, offset: 256)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !557, line: 47, size: 128, elements: !584)
!584 = !{!585, !594}
!585 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !557, line: 48, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !557, line: 48, size: 64, elements: !587)
!587 = !{!588, !593}
!588 = !DIDerivedType(tag: DW_TAG_member, scope: !586, file: !557, line: 49, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !586, file: !557, line: 49, size: 64, elements: !590)
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !589, file: !557, line: 50, baseType: !371, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !589, file: !557, line: 50, baseType: !371, size: 32, offset: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !586, file: !557, line: 52, baseType: !336, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !583, file: !557, line: 54, baseType: !595, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !560, file: !557, line: 96, baseType: !598, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !600)
!600 = !{!601, !602, !603, !611, !618, !619, !764, !3032, !3033, !3034, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3296, !3304, !3305, !3306, !3316, !3317, !3318, !3319}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !599, file: !44, line: 611, baseType: !494, size: 16)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !599, file: !44, line: 612, baseType: !178, size: 16, offset: 16)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !599, file: !44, line: 613, baseType: !604, size: 32, offset: 32)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !605, line: 23, baseType: !606)
!605 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !605, line: 21, size: 32, elements: !607)
!607 = !{!608}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !606, file: !605, line: 22, baseType: !609, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !131, line: 32, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !486, line: 49, baseType: !7)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !599, file: !44, line: 614, baseType: !612, size: 32, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !605, line: 28, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !605, line: 26, size: 32, elements: !614)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !613, file: !605, line: 27, baseType: !616, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !131, line: 33, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !486, line: 50, baseType: !7)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !599, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !599, file: !44, line: 622, baseType: !620, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !623)
!623 = !{!624, !628, !638, !642, !648, !652, !658, !662, !666, !670, !674, !675, !681, !685, !711, !740, !744, !750, !755, !759, !760}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !622, file: !44, line: 1865, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!559, !598, !559, !7}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !622, file: !44, line: 1866, baseType: !629, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!149, !559, !598, !632}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !634, line: 10, size: 128, elements: !635)
!634 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !633, file: !634, line: 11, baseType: !170, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !633, file: !634, line: 12, baseType: !132, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !622, file: !44, line: 1867, baseType: !639, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!135, !598, !135}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !622, file: !44, line: 1868, baseType: !643, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!646, !598, !135}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !622, file: !44, line: 1870, baseType: !649, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!135, !559, !168, !135}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !622, file: !44, line: 1872, baseType: !653, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!135, !598, !559, !494, !656}
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !131, line: 30, baseType: !657)
!657 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !622, file: !44, line: 1873, baseType: !659, size: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!135, !559, !598, !559}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !622, file: !44, line: 1874, baseType: !663, size: 64, offset: 448)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!135, !598, !559}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !622, file: !44, line: 1875, baseType: !667, size: 64, offset: 512)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!135, !598, !559, !149}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !622, file: !44, line: 1876, baseType: !671, size: 64, offset: 576)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!135, !598, !559, !494}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !622, file: !44, line: 1877, baseType: !663, size: 64, offset: 640)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !622, file: !44, line: 1878, baseType: !676, size: 64, offset: 704)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!135, !598, !559, !494, !679}
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !131, line: 16, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !131, line: 13, baseType: !371)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !622, file: !44, line: 1879, baseType: !682, size: 64, offset: 768)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!135, !598, !559, !598, !559, !7}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !622, file: !44, line: 1881, baseType: !686, size: 64, offset: 832)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!135, !559, !689}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !700, !708, !709, !710}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !690, file: !44, line: 220, baseType: !7, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !690, file: !44, line: 221, baseType: !494, size: 16, offset: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !690, file: !44, line: 222, baseType: !604, size: 32, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !690, file: !44, line: 223, baseType: !612, size: 32, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !690, file: !44, line: 224, baseType: !697, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !131, line: 46, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !486, line: 88, baseType: !699)
!699 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !690, file: !44, line: 225, baseType: !701, size: 128, offset: 192)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !702, line: 13, size: 128, elements: !703)
!702 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!703 = !{!704, !707}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !701, file: !702, line: 14, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !702, line: 8, baseType: !706)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !139, line: 30, baseType: !699)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !701, file: !702, line: 15, baseType: !488, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !690, file: !44, line: 226, baseType: !701, size: 128, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !690, file: !44, line: 227, baseType: !701, size: 128, offset: 448)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !690, file: !44, line: 234, baseType: !529, size: 64, offset: 576)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !622, file: !44, line: 1882, baseType: !712, size: 64, offset: 896)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!135, !715, !717, !371, !7}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !719, line: 22, size: 1152, elements: !720)
!719 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!720 = !{!721, !722, !723, !724, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !718, file: !719, line: 23, baseType: !371, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !718, file: !719, line: 24, baseType: !494, size: 16, offset: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !718, file: !719, line: 25, baseType: !7, size: 32, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !718, file: !719, line: 26, baseType: !725, size: 32, offset: 96)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !131, line: 104, baseType: !371)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !718, file: !719, line: 27, baseType: !336, size: 64, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !718, file: !719, line: 28, baseType: !336, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !718, file: !719, line: 37, baseType: !336, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !718, file: !719, line: 38, baseType: !679, size: 32, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !718, file: !719, line: 39, baseType: !679, size: 32, offset: 352)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !718, file: !719, line: 40, baseType: !604, size: 32, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !718, file: !719, line: 41, baseType: !612, size: 32, offset: 416)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !718, file: !719, line: 42, baseType: !697, size: 64, offset: 448)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !718, file: !719, line: 43, baseType: !701, size: 128, offset: 512)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !718, file: !719, line: 44, baseType: !701, size: 128, offset: 640)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !718, file: !719, line: 45, baseType: !701, size: 128, offset: 768)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !718, file: !719, line: 46, baseType: !701, size: 128, offset: 896)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !718, file: !719, line: 47, baseType: !336, size: 64, offset: 1024)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !718, file: !719, line: 48, baseType: !336, size: 64, offset: 1088)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !622, file: !44, line: 1883, baseType: !741, size: 64, offset: 960)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!484, !559, !168, !499}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !622, file: !44, line: 1884, baseType: !745, size: 64, offset: 1024)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!135, !598, !748, !336, !336}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !622, file: !44, line: 1886, baseType: !751, size: 64, offset: 1088)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!135, !598, !754, !135}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !622, file: !44, line: 1887, baseType: !756, size: 64, offset: 1152)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!135, !598, !559, !529, !7, !494}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !622, file: !44, line: 1890, baseType: !671, size: 64, offset: 1216)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !622, file: !44, line: 1891, baseType: !761, size: 64, offset: 1280)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!135, !598, !646, !135}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !599, file: !44, line: 623, baseType: !765, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !767)
!767 = !{!768, !769, !770, !771, !772, !773, !819, !2640, !2722, !2805, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2821, !2825, !2826, !2829, !2830, !2833, !2834, !2835, !2876, !2902, !2903, !2904, !2905, !2906, !2907, !2910, !2912, !2919, !2920, !2922, !2923, !2924, !2983, !2984, !2999, !3000, !3001, !3002, !3003, !3006, !3007, !3008, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !766, file: !44, line: 1417, baseType: !288, size: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !766, file: !44, line: 1418, baseType: !679, size: 32, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !766, file: !44, line: 1419, baseType: !186, size: 8, offset: 160)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !766, file: !44, line: 1420, baseType: !308, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !766, file: !44, line: 1421, baseType: !697, size: 64, offset: 256)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !766, file: !44, line: 1422, baseType: !774, size: 64, offset: 320)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !776)
!776 = !{!777, !778, !779, !785, !789, !793, !797, !798, !799, !809, !812, !813, !814, !816, !817, !818}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !775, file: !44, line: 2229, baseType: !149, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !775, file: !44, line: 2230, baseType: !135, size: 32, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !775, file: !44, line: 2238, baseType: !780, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!135, !783}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !44, line: 69, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !775, file: !44, line: 2239, baseType: !786, size: 64, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !788)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !775, file: !44, line: 2240, baseType: !790, size: 64, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!559, !774, !135, !149, !132}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !775, file: !44, line: 2242, baseType: !794, size: 64, offset: 320)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{null, !765}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !775, file: !44, line: 2243, baseType: !127, size: 64, offset: 384)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !775, file: !44, line: 2244, baseType: !774, size: 64, offset: 448)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !775, file: !44, line: 2245, baseType: !800, size: 64, offset: 512)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !131, line: 182, size: 64, elements: !801)
!801 = !{!802}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !800, file: !131, line: 183, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !131, line: 186, size: 128, elements: !805)
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !804, file: !131, line: 187, baseType: !803, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !804, file: !131, line: 187, baseType: !808, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !775, file: !44, line: 2247, baseType: !810, offset: 576)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !811, line: 187, elements: !427)
!811 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!812 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !775, file: !44, line: 2248, baseType: !810, offset: 576)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !775, file: !44, line: 2249, baseType: !810, offset: 576)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !775, file: !44, line: 2250, baseType: !815, offset: 576)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, elements: !454)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !775, file: !44, line: 2252, baseType: !810, offset: 576)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !775, file: !44, line: 2253, baseType: !810, offset: 576)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !775, file: !44, line: 2254, baseType: !810, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !766, file: !44, line: 1423, baseType: !820, size: 64, offset: 384)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !822)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !823)
!823 = !{!824, !828, !832, !833, !837, !843, !847, !848, !849, !853, !857, !858, !859, !860, !866, !871, !872, !879, !880, !881, !882, !2624, !2639}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !822, file: !44, line: 1936, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!598, !765}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !822, file: !44, line: 1937, baseType: !829, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !598}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !822, file: !44, line: 1938, baseType: !829, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !822, file: !44, line: 1940, baseType: !834, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{null, !598, !135}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !822, file: !44, line: 1941, baseType: !838, size: 64, offset: 256)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!135, !598, !841}
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !822, file: !44, line: 1942, baseType: !844, size: 64, offset: 320)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!135, !598}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !822, file: !44, line: 1943, baseType: !829, size: 64, offset: 384)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !822, file: !44, line: 1944, baseType: !794, size: 64, offset: 448)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !822, file: !44, line: 1945, baseType: !850, size: 64, offset: 512)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!135, !765, !135}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !822, file: !44, line: 1946, baseType: !854, size: 64, offset: 576)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!135, !765}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !822, file: !44, line: 1947, baseType: !854, size: 64, offset: 640)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !822, file: !44, line: 1948, baseType: !854, size: 64, offset: 704)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !822, file: !44, line: 1949, baseType: !854, size: 64, offset: 768)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !822, file: !44, line: 1950, baseType: !861, size: 64, offset: 832)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!135, !559, !864}
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !822, file: !44, line: 1951, baseType: !867, size: 64, offset: 896)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!135, !765, !870, !168}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !822, file: !44, line: 1952, baseType: !794, size: 64, offset: 960)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !822, file: !44, line: 1954, baseType: !873, size: 64, offset: 1024)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!135, !876, !559}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !878, line: 539, flags: DIFlagFwdDecl)
!878 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!879 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !822, file: !44, line: 1955, baseType: !873, size: 64, offset: 1088)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !822, file: !44, line: 1956, baseType: !873, size: 64, offset: 1152)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !822, file: !44, line: 1957, baseType: !873, size: 64, offset: 1216)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !822, file: !44, line: 1963, baseType: !883, size: 64, offset: 1280)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!135, !765, !886, !130}
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !888, line: 68, size: 512, align: 128, elements: !889)
!888 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!889 = !{!890, !891, !2616, !2623}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !887, file: !888, line: 69, baseType: !308, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !888, line: 77, baseType: !892, size: 320, offset: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !887, file: !888, line: 77, size: 320, elements: !893)
!893 = !{!894, !1079, !1084, !1112, !1120, !1126, !2547, !2615}
!894 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !888, line: 78, baseType: !895, size: 320)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !888, line: 78, size: 320, elements: !896)
!896 = !{!897, !898, !1077, !1078}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !895, file: !888, line: 84, baseType: !288, size: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !895, file: !888, line: 86, baseType: !899, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !901)
!901 = !{!902, !903, !910, !911, !916, !931, !947, !948, !949, !950, !1070, !1071, !1074, !1075, !1076}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !900, file: !44, line: 452, baseType: !598, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !900, file: !44, line: 453, baseType: !904, size: 128, offset: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !905, line: 292, size: 128, elements: !906)
!905 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!906 = !{!907, !908, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !904, file: !905, line: 293, baseType: !413)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !904, file: !905, line: 295, baseType: !130, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !904, file: !905, line: 296, baseType: !132, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !900, file: !44, line: 454, baseType: !130, size: 32, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !900, file: !44, line: 455, baseType: !912, size: 32, offset: 224)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !131, line: 168, baseType: !913)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 166, size: 32, elements: !914)
!914 = !{!915}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !913, file: !131, line: 167, baseType: !135, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !900, file: !44, line: 460, baseType: !917, size: 128, offset: 256)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !918, line: 125, size: 128, elements: !919)
!918 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!919 = !{!920, !930}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !917, file: !918, line: 126, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !918, line: 31, size: 64, elements: !922)
!922 = !{!923}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !921, file: !918, line: 32, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !918, line: 24, size: 192, align: 64, elements: !926)
!926 = !{!927, !928, !929}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !925, file: !918, line: 25, baseType: !308, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !925, file: !918, line: 26, baseType: !924, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !925, file: !918, line: 27, baseType: !924, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !917, file: !918, line: 127, baseType: !924, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !900, file: !44, line: 461, baseType: !932, size: 256, offset: 384)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !933, line: 35, size: 256, elements: !934)
!933 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!934 = !{!935, !943, !944, !946}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !932, file: !933, line: 36, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !937, line: 13, baseType: !938)
!937 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !131, line: 175, baseType: !939)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 173, size: 64, elements: !940)
!940 = !{!941}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !939, file: !131, line: 174, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !176, line: 22, baseType: !706)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !932, file: !933, line: 42, baseType: !936, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !932, file: !933, line: 46, baseType: !945, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !414, line: 29, baseType: !421)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !932, file: !933, line: 47, baseType: !288, size: 128, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !900, file: !44, line: 462, baseType: !308, size: 64, offset: 640)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !900, file: !44, line: 463, baseType: !308, size: 64, offset: 704)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !900, file: !44, line: 464, baseType: !308, size: 64, offset: 768)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !900, file: !44, line: 465, baseType: !951, size: 64, offset: 832)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !953)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !954)
!954 = !{!955, !959, !963, !967, !971, !975, !981, !987, !991, !996, !1000, !1004, !1008, !1034, !1038, !1044, !1045, !1046, !1050, !1055, !1059, !1066}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !953, file: !44, line: 368, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!135, !886, !841}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !953, file: !44, line: 369, baseType: !960, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{!135, !529, !886}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !953, file: !44, line: 372, baseType: !964, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{!135, !899, !841}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !953, file: !44, line: 375, baseType: !968, size: 64, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!135, !886}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !953, file: !44, line: 381, baseType: !972, size: 64, offset: 256)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!135, !529, !899, !291, !7}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !953, file: !44, line: 383, baseType: !976, size: 64, offset: 320)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !979}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !953, file: !44, line: 385, baseType: !982, size: 64, offset: 384)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!135, !529, !899, !697, !7, !7, !985, !986}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !953, file: !44, line: 388, baseType: !988, size: 64, offset: 448)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!135, !529, !899, !697, !7, !7, !886, !132}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !953, file: !44, line: 393, baseType: !992, size: 64, offset: 512)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!995, !899, !995}
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !131, line: 125, baseType: !336)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !953, file: !44, line: 394, baseType: !997, size: 64, offset: 576)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{null, !886, !7, !7}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !953, file: !44, line: 395, baseType: !1001, size: 64, offset: 640)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!135, !886, !130}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !953, file: !44, line: 396, baseType: !1005, size: 64, offset: 704)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{null, !886}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !953, file: !44, line: 397, baseType: !1009, size: 64, offset: 768)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!484, !1012, !1032}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !1014)
!1014 = !{!1015, !1016, !1017, !1021, !1022, !1023, !1024, !1025}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1013, file: !44, line: 321, baseType: !529, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1013, file: !44, line: 326, baseType: !697, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1013, file: !44, line: 327, baseType: !1018, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null, !1012, !488, !488}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1013, file: !44, line: 328, baseType: !132, size: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1013, file: !44, line: 329, baseType: !135, size: 32, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1013, file: !44, line: 330, baseType: !175, size: 16, offset: 288)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1013, file: !44, line: 331, baseType: !175, size: 16, offset: 304)
!1025 = !DIDerivedType(tag: DW_TAG_member, scope: !1013, file: !44, line: 332, baseType: !1026, size: 64, offset: 320)
!1026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1013, file: !44, line: 332, size: 64, elements: !1027)
!1027 = !{!1028, !1029}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1026, file: !44, line: 333, baseType: !7, size: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1026, file: !44, line: 334, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !953, file: !44, line: 402, baseType: !1035, size: 64, offset: 832)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!135, !899, !886, !886, !5}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !953, file: !44, line: 404, baseType: !1039, size: 64, offset: 896)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!656, !886, !1042}
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1043, line: 305, baseType: !7)
!1043 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !953, file: !44, line: 405, baseType: !1005, size: 64, offset: 960)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !953, file: !44, line: 406, baseType: !968, size: 64, offset: 1024)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !953, file: !44, line: 407, baseType: !1047, size: 64, offset: 1088)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!135, !886, !308, !308}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !953, file: !44, line: 409, baseType: !1051, size: 64, offset: 1152)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{null, !886, !1054, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !953, file: !44, line: 410, baseType: !1056, size: 64, offset: 1216)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!135, !899, !886}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !953, file: !44, line: 413, baseType: !1060, size: 64, offset: 1280)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!135, !1063, !529, !1065}
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !953, file: !44, line: 415, baseType: !1067, size: 64, offset: 1344)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !529}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !900, file: !44, line: 466, baseType: !308, size: 64, offset: 896)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !900, file: !44, line: 467, baseType: !1072, size: 32, offset: 960)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1073, line: 8, baseType: !371)
!1073 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !900, file: !44, line: 468, baseType: !413, offset: 992)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !900, file: !44, line: 469, baseType: !288, size: 128, offset: 1024)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !900, file: !44, line: 470, baseType: !132, size: 64, offset: 1152)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !895, file: !888, line: 87, baseType: !308, size: 64, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !895, file: !888, line: 94, baseType: !308, size: 64, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !888, line: 96, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !888, line: 96, size: 64, elements: !1081)
!1081 = !{!1082}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1080, file: !888, line: 101, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !131, line: 143, baseType: !336)
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !888, line: 103, baseType: !1085, size: 320)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !888, line: 103, size: 320, elements: !1086)
!1086 = !{!1087, !1097, !1100, !1101}
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !888, line: 104, baseType: !1088, size: 128)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1085, file: !888, line: 104, size: 128, elements: !1089)
!1089 = !{!1090, !1091}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1088, file: !888, line: 105, baseType: !288, size: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, scope: !1088, file: !888, line: 106, baseType: !1092, size: 128)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1088, file: !888, line: 106, size: 128, elements: !1093)
!1093 = !{!1094, !1095, !1096}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1092, file: !888, line: 107, baseType: !886, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1092, file: !888, line: 109, baseType: !135, size: 32, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1092, file: !888, line: 110, baseType: !135, size: 32, offset: 96)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1085, file: !888, line: 117, baseType: !1098, size: 64, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !888, line: 117, flags: DIFlagFwdDecl)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1085, file: !888, line: 119, baseType: !132, size: 64, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !888, line: 120, baseType: !1102, size: 64, offset: 256)
!1102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1085, file: !888, line: 120, size: 64, elements: !1103)
!1103 = !{!1104, !1105, !1106}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1102, file: !888, line: 121, baseType: !132, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1102, file: !888, line: 122, baseType: !308, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !1102, file: !888, line: 123, baseType: !1107, size: 32)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1102, file: !888, line: 123, size: 32, elements: !1108)
!1108 = !{!1109, !1110, !1111}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1107, file: !888, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1107, file: !888, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1107, file: !888, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1112 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !888, line: 130, baseType: !1113, size: 192)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !888, line: 130, size: 192, elements: !1114)
!1114 = !{!1115, !1116, !1117, !1118, !1119}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1113, file: !888, line: 131, baseType: !308, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1113, file: !888, line: 134, baseType: !186, size: 8, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1113, file: !888, line: 135, baseType: !186, size: 8, offset: 72)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1113, file: !888, line: 136, baseType: !912, size: 32, offset: 96)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1113, file: !888, line: 137, baseType: !7, size: 32, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !888, line: 139, baseType: !1121, size: 256)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !888, line: 139, size: 256, elements: !1122)
!1122 = !{!1123, !1124, !1125}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1121, file: !888, line: 140, baseType: !308, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1121, file: !888, line: 141, baseType: !912, size: 32, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1121, file: !888, line: 143, baseType: !288, size: 128, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !888, line: 145, baseType: !1127, size: 256)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !888, line: 145, size: 256, elements: !1128)
!1128 = !{!1129, !1130, !1132, !1133, !2546}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1127, file: !888, line: 146, baseType: !308, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1127, file: !888, line: 147, baseType: !1131, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !878, line: 509, baseType: !886)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1127, file: !888, line: 148, baseType: !308, size: 64, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !888, line: 149, baseType: !1134, size: 64, offset: 192)
!1134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1127, file: !888, line: 149, size: 64, elements: !1135)
!1135 = !{!1136, !2545}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1134, file: !888, line: 150, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !888, line: 388, size: 7296, elements: !1139)
!1139 = !{!1140, !2541}
!1140 = !DIDerivedType(tag: DW_TAG_member, scope: !1138, file: !888, line: 389, baseType: !1141, size: 7296)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1138, file: !888, line: 389, size: 7296, elements: !1142)
!1142 = !{!1143, !1261, !1262, !1263, !1267, !1268, !1269, !1270, !1271, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1312, !1318, !1321, !1367, !1368, !2525, !2526, !2529, !2530, !2531, !2534, !2535, !2536, !2539, !2540}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1141, file: !888, line: 390, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !888, line: 305, size: 1472, elements: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1161, !1162, !1167, !1168, !1171, !1255, !1256, !1257, !1258, !1259}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1145, file: !888, line: 308, baseType: !308, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1145, file: !888, line: 309, baseType: !308, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1145, file: !888, line: 313, baseType: !1144, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1145, file: !888, line: 313, baseType: !1144, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1145, file: !888, line: 315, baseType: !925, size: 192, align: 64, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1145, file: !888, line: 323, baseType: !308, size: 64, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1145, file: !888, line: 327, baseType: !1137, size: 64, offset: 512)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1145, file: !888, line: 333, baseType: !1155, size: 64, offset: 576)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !878, line: 284, baseType: !1156)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !878, line: 284, size: 64, elements: !1157)
!1157 = !{!1158}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1156, file: !878, line: 284, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1160, line: 19, baseType: !308)
!1160 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1145, file: !888, line: 334, baseType: !308, size: 64, offset: 640)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1145, file: !888, line: 343, baseType: !1163, size: 256, offset: 704)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1145, file: !888, line: 340, size: 256, elements: !1164)
!1164 = !{!1165, !1166}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1163, file: !888, line: 341, baseType: !925, size: 192, align: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1163, file: !888, line: 342, baseType: !308, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1145, file: !888, line: 351, baseType: !288, size: 128, offset: 960)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1145, file: !888, line: 353, baseType: !1169, size: 64, offset: 1088)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !888, line: 353, flags: DIFlagFwdDecl)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1145, file: !888, line: 356, baseType: !1172, size: 64, offset: 1152)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1174)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1175)
!1175 = !{!1176, !1180, !1181, !1185, !1189, !1229, !1233, !1237, !1241, !1242, !1243, !1247, !1251}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1174, file: !14, line: 558, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{null, !1144}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1174, file: !14, line: 559, baseType: !1177, size: 64, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1174, file: !14, line: 560, baseType: !1182, size: 64, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!135, !1144, !308}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1174, file: !14, line: 561, baseType: !1186, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!135, !1144}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1174, file: !14, line: 562, baseType: !1190, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!1193, !1194}
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !888, line: 682, baseType: !7)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1196)
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1202, !1209, !1216, !1222, !1223, !1224, !1226, !1228}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1195, file: !14, line: 509, baseType: !1144, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1195, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1195, file: !14, line: 511, baseType: !130, size: 32, offset: 96)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1195, file: !14, line: 512, baseType: !308, size: 64, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1195, file: !14, line: 513, baseType: !308, size: 64, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1195, file: !14, line: 514, baseType: !1203, size: 64, offset: 256)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !878, line: 385, baseType: !1205)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !878, line: 385, size: 64, elements: !1206)
!1206 = !{!1207}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1205, file: !878, line: 385, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1160, line: 15, baseType: !308)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1195, file: !14, line: 516, baseType: !1210, size: 64, offset: 320)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !878, line: 359, baseType: !1212)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !878, line: 359, size: 64, elements: !1213)
!1213 = !{!1214}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1212, file: !878, line: 359, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1160, line: 16, baseType: !308)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1195, file: !14, line: 519, baseType: !1217, size: 64, offset: 384)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1160, line: 21, baseType: !1218)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1160, line: 21, size: 64, elements: !1219)
!1219 = !{!1220}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1218, file: !1160, line: 21, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1160, line: 14, baseType: !308)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1195, file: !14, line: 521, baseType: !886, size: 64, offset: 448)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1195, file: !14, line: 522, baseType: !886, size: 64, offset: 512)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1195, file: !14, line: 528, baseType: !1225, size: 64, offset: 576)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1195, file: !14, line: 532, baseType: !1227, size: 64, offset: 640)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1195, file: !14, line: 536, baseType: !1131, size: 64, offset: 704)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1174, file: !14, line: 563, baseType: !1230, size: 64, offset: 320)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!1193, !1194, !13}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1174, file: !14, line: 565, baseType: !1234, size: 64, offset: 384)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null, !1194, !308, !308}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1174, file: !14, line: 567, baseType: !1238, size: 64, offset: 448)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!308, !1144}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1174, file: !14, line: 571, baseType: !1190, size: 64, offset: 512)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1174, file: !14, line: 574, baseType: !1190, size: 64, offset: 576)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1174, file: !14, line: 579, baseType: !1244, size: 64, offset: 640)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!135, !1144, !308, !132, !135, !135}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1174, file: !14, line: 585, baseType: !1248, size: 64, offset: 704)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!149, !1144}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1174, file: !14, line: 615, baseType: !1252, size: 64, offset: 768)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!886, !1144, !308}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1145, file: !888, line: 359, baseType: !308, size: 64, offset: 1216)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1145, file: !888, line: 361, baseType: !529, size: 64, offset: 1280)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1145, file: !888, line: 362, baseType: !132, size: 64, offset: 1344)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1145, file: !888, line: 365, baseType: !936, size: 64, offset: 1408)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1145, file: !888, line: 373, baseType: !1260, offset: 1472)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !888, line: 296, elements: !427)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1141, file: !888, line: 391, baseType: !921, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1141, file: !888, line: 392, baseType: !336, size: 64, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1141, file: !888, line: 394, baseType: !1264, size: 64, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!308, !529, !308, !308, !308, !308}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1141, file: !888, line: 398, baseType: !308, size: 64, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1141, file: !888, line: 399, baseType: !308, size: 64, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1141, file: !888, line: 405, baseType: !308, size: 64, offset: 384)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1141, file: !888, line: 406, baseType: !308, size: 64, offset: 448)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1141, file: !888, line: 407, baseType: !1272, size: 64, offset: 512)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !878, line: 286, baseType: !1274)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !878, line: 286, size: 64, elements: !1275)
!1275 = !{!1276}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1274, file: !878, line: 286, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1160, line: 18, baseType: !308)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1141, file: !888, line: 416, baseType: !912, size: 32, offset: 576)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1141, file: !888, line: 428, baseType: !912, size: 32, offset: 608)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1141, file: !888, line: 437, baseType: !912, size: 32, offset: 640)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1141, file: !888, line: 447, baseType: !912, size: 32, offset: 672)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1141, file: !888, line: 450, baseType: !936, size: 64, offset: 704)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1141, file: !888, line: 452, baseType: !135, size: 32, offset: 768)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1141, file: !888, line: 454, baseType: !413, offset: 800)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1141, file: !888, line: 457, baseType: !932, size: 256, offset: 832)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1141, file: !888, line: 459, baseType: !288, size: 128, offset: 1088)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1141, file: !888, line: 466, baseType: !308, size: 64, offset: 1216)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1141, file: !888, line: 467, baseType: !308, size: 64, offset: 1280)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1141, file: !888, line: 469, baseType: !308, size: 64, offset: 1344)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1141, file: !888, line: 470, baseType: !308, size: 64, offset: 1408)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1141, file: !888, line: 471, baseType: !938, size: 64, offset: 1472)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1141, file: !888, line: 472, baseType: !308, size: 64, offset: 1536)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1141, file: !888, line: 473, baseType: !308, size: 64, offset: 1600)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1141, file: !888, line: 474, baseType: !308, size: 64, offset: 1664)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1141, file: !888, line: 475, baseType: !308, size: 64, offset: 1728)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1141, file: !888, line: 477, baseType: !413, offset: 1792)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1141, file: !888, line: 478, baseType: !308, size: 64, offset: 1792)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1141, file: !888, line: 478, baseType: !308, size: 64, offset: 1856)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1141, file: !888, line: 478, baseType: !308, size: 64, offset: 1920)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1141, file: !888, line: 478, baseType: !308, size: 64, offset: 1984)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1141, file: !888, line: 479, baseType: !308, size: 64, offset: 2048)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1141, file: !888, line: 479, baseType: !308, size: 64, offset: 2112)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1141, file: !888, line: 479, baseType: !308, size: 64, offset: 2176)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1141, file: !888, line: 480, baseType: !308, size: 64, offset: 2240)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1141, file: !888, line: 480, baseType: !308, size: 64, offset: 2304)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1141, file: !888, line: 480, baseType: !308, size: 64, offset: 2368)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1141, file: !888, line: 480, baseType: !308, size: 64, offset: 2432)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1141, file: !888, line: 482, baseType: !1309, size: 2816, offset: 2496)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 2816, elements: !1310)
!1310 = !{!1311}
!1311 = !DISubrange(count: 44)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1141, file: !888, line: 488, baseType: !1313, size: 256, offset: 5312)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1314, line: 60, size: 256, elements: !1315)
!1314 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1315 = !{!1316}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1313, file: !1314, line: 61, baseType: !1317, size: 256)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !936, size: 256, elements: !346)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1141, file: !888, line: 490, baseType: !1319, size: 64, offset: 5568)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !888, line: 490, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1141, file: !888, line: 493, baseType: !1322, size: 896, offset: 5632)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1323, line: 53, baseType: !1324)
!1323 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1323, line: 13, size: 896, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1329, !1332, !1333, !1340, !1341, !1361, !1362, !1363}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1324, file: !1323, line: 18, baseType: !336, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1324, file: !1323, line: 28, baseType: !938, size: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1324, file: !1323, line: 31, baseType: !932, size: 256, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1324, file: !1323, line: 32, baseType: !1330, size: 64, offset: 384)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1323, line: 32, flags: DIFlagFwdDecl)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1324, file: !1323, line: 37, baseType: !178, size: 16, offset: 448)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1324, file: !1323, line: 40, baseType: !1334, size: 192, offset: 512)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1335, line: 53, size: 192, elements: !1336)
!1335 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1336 = !{!1337, !1338, !1339}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1334, file: !1335, line: 54, baseType: !936, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1334, file: !1335, line: 55, baseType: !413, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1334, file: !1335, line: 59, baseType: !288, size: 128, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1324, file: !1323, line: 41, baseType: !132, size: 64, offset: 704)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1324, file: !1323, line: 42, baseType: !1342, size: 64, offset: 768)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1344)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1345, line: 13, size: 896, elements: !1346)
!1345 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1344, file: !1345, line: 14, baseType: !132, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1344, file: !1345, line: 15, baseType: !308, size: 64, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1344, file: !1345, line: 17, baseType: !308, size: 64, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1344, file: !1345, line: 17, baseType: !308, size: 64, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1344, file: !1345, line: 19, baseType: !488, size: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1344, file: !1345, line: 21, baseType: !488, size: 64, offset: 320)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1344, file: !1345, line: 22, baseType: !488, size: 64, offset: 384)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1344, file: !1345, line: 23, baseType: !488, size: 64, offset: 448)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1344, file: !1345, line: 24, baseType: !488, size: 64, offset: 512)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1344, file: !1345, line: 25, baseType: !488, size: 64, offset: 576)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1344, file: !1345, line: 26, baseType: !488, size: 64, offset: 640)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1344, file: !1345, line: 27, baseType: !488, size: 64, offset: 704)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1344, file: !1345, line: 28, baseType: !488, size: 64, offset: 768)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1344, file: !1345, line: 29, baseType: !488, size: 64, offset: 832)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1324, file: !1323, line: 44, baseType: !912, size: 32, offset: 832)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1324, file: !1323, line: 50, baseType: !175, size: 16, offset: 864)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1324, file: !1323, line: 51, baseType: !1364, size: 16, offset: 880)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !176, line: 18, baseType: !1365)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !139, line: 23, baseType: !1366)
!1366 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1141, file: !888, line: 495, baseType: !308, size: 64, offset: 6528)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1141, file: !888, line: 497, baseType: !1369, size: 64, offset: 6592)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !888, line: 381, size: 384, elements: !1371)
!1371 = !{!1372, !1373, !2524}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1370, file: !888, line: 382, baseType: !912, size: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1370, file: !888, line: 383, baseType: !1374, size: 128, offset: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !888, line: 376, size: 128, elements: !1375)
!1375 = !{!1376, !2522}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1374, file: !888, line: 377, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1379, line: 640, size: 48640, elements: !1380)
!1379 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1380 = !{!1381, !1387, !1389, !1390, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1407, !1425, !1436, !1519, !1520, !1521, !1532, !1533, !1535, !1536, !1537, !1538, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1616, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1691, !1693, !1694, !1695, !1707, !1708, !1709, !1710, !1711, !1712, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1736, !1741, !1923, !1924, !1925, !1926, !1930, !1933, !1936, !1939, !1942, !1968, !2069, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2113, !2114, !2115, !2116, !2117, !2122, !2123, !2124, !2127, !2128, !2131, !2134, !2137, !2140, !2183, !2186, !2187, !2266, !2267, !2270, !2271, !2274, !2275, !2276, !2280, !2281, !2282, !2295, !2296, !2297, !2307, !2312, !2315, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1378, file: !1379, line: 646, baseType: !1382, size: 128)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1383, line: 56, size: 128, elements: !1384)
!1383 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1384 = !{!1385, !1386}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1382, file: !1383, line: 57, baseType: !308, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1382, file: !1383, line: 58, baseType: !371, size: 32, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1378, file: !1379, line: 649, baseType: !1388, size: 64, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !488)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1378, file: !1379, line: 657, baseType: !132, size: 64, offset: 192)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1378, file: !1379, line: 658, baseType: !1391, size: 32, offset: 256)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1392, line: 113, baseType: !1393)
!1392 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1392, line: 111, size: 32, elements: !1394)
!1394 = !{!1395}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1393, file: !1392, line: 112, baseType: !912, size: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1378, file: !1379, line: 660, baseType: !7, size: 32, offset: 288)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1378, file: !1379, line: 661, baseType: !7, size: 32, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1378, file: !1379, line: 684, baseType: !135, size: 32, offset: 352)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1378, file: !1379, line: 686, baseType: !135, size: 32, offset: 384)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1378, file: !1379, line: 687, baseType: !135, size: 32, offset: 416)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1378, file: !1379, line: 688, baseType: !135, size: 32, offset: 448)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1378, file: !1379, line: 689, baseType: !7, size: 32, offset: 480)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1378, file: !1379, line: 691, baseType: !1404, size: 64, offset: 512)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1406)
!1406 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1379, line: 691, flags: DIFlagFwdDecl)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1378, file: !1379, line: 692, baseType: !1408, size: 832, offset: 576)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1379, line: 451, size: 832, elements: !1409)
!1409 = !{!1410, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1408, file: !1379, line: 453, baseType: !1411, size: 128)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1379, line: 325, size: 128, elements: !1412)
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1411, file: !1379, line: 326, baseType: !308, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1411, file: !1379, line: 327, baseType: !371, size: 32, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1408, file: !1379, line: 454, baseType: !925, size: 192, align: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1408, file: !1379, line: 455, baseType: !288, size: 128, offset: 320)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1408, file: !1379, line: 456, baseType: !7, size: 32, offset: 448)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1408, file: !1379, line: 458, baseType: !336, size: 64, offset: 512)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1408, file: !1379, line: 459, baseType: !336, size: 64, offset: 576)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1408, file: !1379, line: 460, baseType: !336, size: 64, offset: 640)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1408, file: !1379, line: 461, baseType: !336, size: 64, offset: 704)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1408, file: !1379, line: 463, baseType: !336, size: 64, offset: 768)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1408, file: !1379, line: 465, baseType: !1424, offset: 832)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1379, line: 415, elements: !427)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1378, file: !1379, line: 693, baseType: !1426, size: 384, offset: 1408)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1379, line: 489, size: 384, elements: !1427)
!1427 = !{!1428, !1429, !1430, !1431, !1432, !1433, !1434}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1426, file: !1379, line: 490, baseType: !288, size: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1426, file: !1379, line: 491, baseType: !308, size: 64, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1426, file: !1379, line: 492, baseType: !308, size: 64, offset: 192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1426, file: !1379, line: 493, baseType: !7, size: 32, offset: 256)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1426, file: !1379, line: 494, baseType: !178, size: 16, offset: 288)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1426, file: !1379, line: 495, baseType: !178, size: 16, offset: 304)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1426, file: !1379, line: 497, baseType: !1435, size: 64, offset: 320)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1378, file: !1379, line: 697, baseType: !1437, size: 1792, offset: 1792)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1379, line: 507, size: 1792, elements: !1438)
!1438 = !{!1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1516, !1517}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1437, file: !1379, line: 508, baseType: !925, size: 192, align: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1437, file: !1379, line: 515, baseType: !336, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1437, file: !1379, line: 516, baseType: !336, size: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1437, file: !1379, line: 517, baseType: !336, size: 64, offset: 320)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1437, file: !1379, line: 518, baseType: !336, size: 64, offset: 384)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1437, file: !1379, line: 519, baseType: !336, size: 64, offset: 448)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1437, file: !1379, line: 526, baseType: !942, size: 64, offset: 512)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1437, file: !1379, line: 527, baseType: !336, size: 64, offset: 576)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1437, file: !1379, line: 528, baseType: !7, size: 32, offset: 640)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1437, file: !1379, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1437, file: !1379, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1437, file: !1379, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1437, file: !1379, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1437, file: !1379, line: 563, baseType: !1453, size: 512, offset: 704)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1454)
!1454 = !{!1455, !1463, !1464, !1469, !1512, !1513, !1514, !1515}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1453, file: !20, line: 119, baseType: !1456, size: 256)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1457, line: 9, size: 256, elements: !1458)
!1457 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1458 = !{!1459, !1460}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1456, file: !1457, line: 10, baseType: !925, size: 192, align: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1456, file: !1457, line: 11, baseType: !1461, size: 64, offset: 192)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1462, line: 29, baseType: !942)
!1462 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1453, file: !20, line: 120, baseType: !1461, size: 64, offset: 256)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1453, file: !20, line: 121, baseType: !1465, size: 64, offset: 320)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!19, !1468}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1453, file: !20, line: 122, baseType: !1470, size: 64, offset: 384)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1472)
!1472 = !{!1473, !1493, !1494, !1497, !1502, !1503, !1507, !1511}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1471, file: !20, line: 160, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1476)
!1476 = !{!1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1475, file: !20, line: 215, baseType: !945)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1475, file: !20, line: 216, baseType: !7, size: 32)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1475, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1475, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1475, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1475, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1475, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1475, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1475, file: !20, line: 233, baseType: !1461, size: 64, offset: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1475, file: !20, line: 234, baseType: !1468, size: 64, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1475, file: !20, line: 235, baseType: !1461, size: 64, offset: 256)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1475, file: !20, line: 236, baseType: !1468, size: 64, offset: 320)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1475, file: !20, line: 237, baseType: !1490, size: 4096, offset: 512)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1471, size: 4096, elements: !1491)
!1491 = !{!1492}
!1492 = !DISubrange(count: 8)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1471, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1471, file: !20, line: 162, baseType: !1495, size: 32, offset: 96)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !131, line: 27, baseType: !1496)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !486, line: 96, baseType: !135)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1471, file: !20, line: 163, baseType: !1498, size: 32, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !565, line: 276, baseType: !1499)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !565, line: 276, size: 32, elements: !1500)
!1500 = !{!1501}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1499, file: !565, line: 276, baseType: !569, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1471, file: !20, line: 164, baseType: !1468, size: 64, offset: 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1471, file: !20, line: 165, baseType: !1504, size: 128, offset: 256)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1457, line: 14, size: 128, elements: !1505)
!1505 = !{!1506}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1504, file: !1457, line: 15, baseType: !917, size: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1471, file: !20, line: 166, baseType: !1508, size: 64, offset: 384)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!1461}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1471, file: !20, line: 167, baseType: !1461, size: 64, offset: 448)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1453, file: !20, line: 123, baseType: !184, size: 8, offset: 448)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1453, file: !20, line: 124, baseType: !184, size: 8, offset: 456)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1453, file: !20, line: 125, baseType: !184, size: 8, offset: 464)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1453, file: !20, line: 126, baseType: !184, size: 8, offset: 472)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1437, file: !1379, line: 572, baseType: !1453, size: 512, offset: 1216)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1437, file: !1379, line: 580, baseType: !1518, size: 64, offset: 1728)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1378, file: !1379, line: 721, baseType: !7, size: 32, offset: 3584)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1378, file: !1379, line: 722, baseType: !135, size: 32, offset: 3616)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1378, file: !1379, line: 723, baseType: !1522, size: 64, offset: 3648)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1524)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1525, line: 17, baseType: !1526)
!1525 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1525, line: 17, size: 64, elements: !1527)
!1527 = !{!1528}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1526, file: !1525, line: 17, baseType: !1529, size: 64)
!1529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 64, elements: !1530)
!1530 = !{!1531}
!1531 = !DISubrange(count: 1)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1378, file: !1379, line: 724, baseType: !1524, size: 64, offset: 3712)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1378, file: !1379, line: 749, baseType: !1534, offset: 3776)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1379, line: 290, elements: !427)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1378, file: !1379, line: 751, baseType: !288, size: 128, offset: 3776)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1378, file: !1379, line: 757, baseType: !1137, size: 64, offset: 3904)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1378, file: !1379, line: 758, baseType: !1137, size: 64, offset: 3968)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1378, file: !1379, line: 761, baseType: !1539, size: 320, offset: 4032)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1314, line: 34, size: 320, elements: !1540)
!1540 = !{!1541, !1542}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1539, file: !1314, line: 35, baseType: !336, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1539, file: !1314, line: 36, baseType: !1543, size: 256, offset: 64)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1144, size: 256, elements: !346)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1378, file: !1379, line: 766, baseType: !135, size: 32, offset: 4352)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1378, file: !1379, line: 767, baseType: !135, size: 32, offset: 4384)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1378, file: !1379, line: 768, baseType: !135, size: 32, offset: 4416)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1378, file: !1379, line: 770, baseType: !135, size: 32, offset: 4448)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1378, file: !1379, line: 772, baseType: !308, size: 64, offset: 4480)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1378, file: !1379, line: 775, baseType: !7, size: 32, offset: 4544)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1378, file: !1379, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1378, file: !1379, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1378, file: !1379, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1378, file: !1379, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1378, file: !1379, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1378, file: !1379, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1378, file: !1379, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1378, file: !1379, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1378, file: !1379, line: 831, baseType: !308, size: 64, offset: 4672)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1378, file: !1379, line: 833, baseType: !1560, size: 384, offset: 4736)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1561)
!1561 = !{!1562, !1567}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1560, file: !25, line: 26, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!488, !1566}
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, scope: !1560, file: !25, line: 27, baseType: !1568, size: 320, offset: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1560, file: !25, line: 27, size: 320, elements: !1569)
!1569 = !{!1570, !1579, !1606}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1568, file: !25, line: 36, baseType: !1571, size: 320)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1568, file: !25, line: 29, size: 320, elements: !1572)
!1572 = !{!1573, !1574, !1575, !1576, !1577, !1578}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1571, file: !25, line: 30, baseType: !370, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1571, file: !25, line: 31, baseType: !371, size: 32, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1571, file: !25, line: 32, baseType: !371, size: 32, offset: 96)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1571, file: !25, line: 33, baseType: !371, size: 32, offset: 128)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1571, file: !25, line: 34, baseType: !336, size: 64, offset: 192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1571, file: !25, line: 35, baseType: !370, size: 64, offset: 256)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1568, file: !25, line: 46, baseType: !1580, size: 192)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1568, file: !25, line: 38, size: 192, elements: !1581)
!1581 = !{!1582, !1583, !1584, !1605}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1580, file: !25, line: 39, baseType: !1495, size: 32)
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
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !486, line: 93, baseType: !699)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1589, file: !1590, line: 9, baseType: !699, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1585, file: !25, line: 43, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1598, line: 7, size: 64, elements: !1599)
!1598 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1599 = !{!1600, !1604}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1597, file: !1598, line: 8, baseType: !1601, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1598, line: 5, baseType: !1602)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !176, line: 20, baseType: !1603)
!1603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !139, line: 26, baseType: !135)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1597, file: !1598, line: 9, baseType: !1602, size: 32, offset: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1580, file: !25, line: 45, baseType: !336, size: 64, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1568, file: !25, line: 54, baseType: !1607, size: 256)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1568, file: !25, line: 48, size: 256, elements: !1608)
!1608 = !{!1609, !1612, !1613, !1614, !1615}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1607, file: !25, line: 49, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1607, file: !25, line: 50, baseType: !135, size: 32, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1607, file: !25, line: 51, baseType: !135, size: 32, offset: 96)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1607, file: !25, line: 52, baseType: !308, size: 64, offset: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1607, file: !25, line: 53, baseType: !308, size: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1378, file: !1379, line: 835, baseType: !1617, size: 32, offset: 5120)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !131, line: 22, baseType: !1618)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !486, line: 28, baseType: !135)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1378, file: !1379, line: 836, baseType: !1617, size: 32, offset: 5152)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1378, file: !1379, line: 840, baseType: !308, size: 64, offset: 5184)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1378, file: !1379, line: 849, baseType: !1377, size: 64, offset: 5248)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1378, file: !1379, line: 852, baseType: !1377, size: 64, offset: 5312)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1378, file: !1379, line: 857, baseType: !288, size: 128, offset: 5376)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1378, file: !1379, line: 858, baseType: !288, size: 128, offset: 5504)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1378, file: !1379, line: 859, baseType: !1377, size: 64, offset: 5632)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1378, file: !1379, line: 867, baseType: !288, size: 128, offset: 5696)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1378, file: !1379, line: 868, baseType: !288, size: 128, offset: 5824)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1378, file: !1379, line: 871, baseType: !1629, size: 64, offset: 5952)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1631)
!1631 = !{!1632, !1633, !1634, !1635, !1637, !1638, !1645, !1646}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1630, file: !53, line: 61, baseType: !1391, size: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1630, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1630, file: !53, line: 63, baseType: !413, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1630, file: !53, line: 65, baseType: !1636, size: 256, offset: 64)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 256, elements: !346)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1630, file: !53, line: 66, baseType: !800, size: 64, offset: 320)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1630, file: !53, line: 68, baseType: !1639, size: 128, offset: 384)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1640, line: 40, baseType: !1641)
!1640 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1640, line: 36, size: 128, elements: !1642)
!1642 = !{!1643, !1644}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1641, file: !1640, line: 37, baseType: !413)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1641, file: !1640, line: 38, baseType: !288, size: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1630, file: !53, line: 69, baseType: !542, size: 128, align: 64, offset: 512)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1630, file: !53, line: 70, baseType: !1647, size: 128, offset: 640)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1648, size: 128, elements: !1530)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1649)
!1649 = !{!1650, !1651}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1648, file: !53, line: 55, baseType: !135, size: 32)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1648, file: !53, line: 56, baseType: !1652, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1654, line: 20, size: 1088, elements: !1655)
!1654 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/lizy2001/genbc/linux")
!1655 = !{!1656, !1661, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1677, !1680, !1681}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1653, file: !1654, line: 21, baseType: !1657, size: 32)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1658, line: 19, size: 32, elements: !1659)
!1658 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1659 = !{!1660}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1657, file: !1658, line: 20, baseType: !1391, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1653, file: !1654, line: 22, baseType: !1662, size: 192, offset: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1663, line: 19, size: 192, elements: !1664)
!1663 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1664 = !{!1665, !1666, !1667}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1662, file: !1663, line: 20, baseType: !904, size: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1662, file: !1663, line: 21, baseType: !7, size: 32, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1662, file: !1663, line: 22, baseType: !7, size: 32, offset: 160)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1653, file: !1654, line: 23, baseType: !542, size: 128, align: 64, offset: 256)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1653, file: !1654, line: 24, baseType: !7, size: 32, offset: 384)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1653, file: !1654, line: 25, baseType: !1377, size: 64, offset: 448)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1653, file: !1654, line: 26, baseType: !1098, size: 64, offset: 512)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1653, file: !1654, line: 27, baseType: !7, size: 32, offset: 576)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1653, file: !1654, line: 28, baseType: !1652, size: 64, offset: 640)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1653, file: !1654, line: 32, baseType: !1675, size: 64, offset: 704)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !888, line: 516, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1653, file: !1654, line: 33, baseType: !1678, size: 64, offset: 768)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1654, line: 33, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1653, file: !1654, line: 34, baseType: !135, size: 32, offset: 832)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1653, file: !1654, line: 35, baseType: !1682, size: 192, offset: 896)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1683, line: 7, size: 192, elements: !1684)
!1683 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/lizy2001/genbc/linux")
!1684 = !{!1685, !1686, !1690}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1682, file: !1683, line: 8, baseType: !936, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1682, file: !1683, line: 9, baseType: !1687, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1689)
!1689 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1683, line: 5, flags: DIFlagFwdDecl)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1682, file: !1683, line: 10, baseType: !7, size: 32, offset: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1378, file: !1379, line: 872, baseType: !1692, size: 512, offset: 6016)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 512, elements: !346)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1378, file: !1379, line: 873, baseType: !288, size: 128, offset: 6528)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1378, file: !1379, line: 874, baseType: !288, size: 128, offset: 6656)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1378, file: !1379, line: 876, baseType: !1696, size: 64, offset: 6784)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1698, line: 26, size: 192, elements: !1699)
!1698 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1699 = !{!1700, !1701}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1697, file: !1698, line: 27, baseType: !7, size: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1697, file: !1698, line: 28, baseType: !1702, size: 128, offset: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1703, line: 43, size: 128, elements: !1704)
!1703 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1704 = !{!1705, !1706}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1702, file: !1703, line: 44, baseType: !945)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1702, file: !1703, line: 45, baseType: !288, size: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1378, file: !1379, line: 879, baseType: !870, size: 64, offset: 6848)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1378, file: !1379, line: 882, baseType: !870, size: 64, offset: 6912)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1378, file: !1379, line: 884, baseType: !336, size: 64, offset: 6976)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1378, file: !1379, line: 885, baseType: !336, size: 64, offset: 7040)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1378, file: !1379, line: 890, baseType: !336, size: 64, offset: 7104)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1378, file: !1379, line: 891, baseType: !1713, size: 128, offset: 7168)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1379, line: 242, size: 128, elements: !1714)
!1714 = !{!1715, !1716, !1717}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1713, file: !1379, line: 244, baseType: !336, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1713, file: !1379, line: 245, baseType: !336, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1713, file: !1379, line: 246, baseType: !945, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1378, file: !1379, line: 900, baseType: !308, size: 64, offset: 7296)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1378, file: !1379, line: 901, baseType: !308, size: 64, offset: 7360)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1378, file: !1379, line: 904, baseType: !336, size: 64, offset: 7424)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1378, file: !1379, line: 907, baseType: !336, size: 64, offset: 7488)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1378, file: !1379, line: 910, baseType: !308, size: 64, offset: 7552)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1378, file: !1379, line: 911, baseType: !308, size: 64, offset: 7616)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1378, file: !1379, line: 914, baseType: !1725, size: 640, offset: 7680)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1726, line: 123, size: 640, elements: !1727)
!1726 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1727 = !{!1728, !1734, !1735}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1725, file: !1726, line: 124, baseType: !1729, size: 576)
!1729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1730, size: 576, elements: !454)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1726, line: 108, size: 192, elements: !1731)
!1731 = !{!1732, !1733}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1730, file: !1726, line: 109, baseType: !336, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1730, file: !1726, line: 110, baseType: !1504, size: 128, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1725, file: !1726, line: 125, baseType: !7, size: 32, offset: 576)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1725, file: !1726, line: 126, baseType: !7, size: 32, offset: 608)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1378, file: !1379, line: 917, baseType: !1737, size: 192, offset: 8320)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1726, line: 134, size: 192, elements: !1738)
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1737, file: !1726, line: 135, baseType: !542, size: 128, align: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1737, file: !1726, line: 136, baseType: !7, size: 32, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1378, file: !1379, line: 923, baseType: !1742, size: 64, offset: 8512)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1744)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1745, line: 111, size: 1280, elements: !1746)
!1745 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1746 = !{!1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1766, !1767, !1768, !1769, !1770, !1771, !1878, !1879, !1880, !1881, !1907, !1908, !1918}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1744, file: !1745, line: 112, baseType: !912, size: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1744, file: !1745, line: 120, baseType: !604, size: 32, offset: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1744, file: !1745, line: 121, baseType: !612, size: 32, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1744, file: !1745, line: 122, baseType: !604, size: 32, offset: 96)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1744, file: !1745, line: 123, baseType: !612, size: 32, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1744, file: !1745, line: 124, baseType: !604, size: 32, offset: 160)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1744, file: !1745, line: 125, baseType: !612, size: 32, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1744, file: !1745, line: 126, baseType: !604, size: 32, offset: 224)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1744, file: !1745, line: 127, baseType: !612, size: 32, offset: 256)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1744, file: !1745, line: 128, baseType: !7, size: 32, offset: 288)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1744, file: !1745, line: 129, baseType: !1758, size: 64, offset: 320)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1759, line: 26, baseType: !1760)
!1759 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1759, line: 24, size: 64, elements: !1761)
!1761 = !{!1762}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1760, file: !1759, line: 25, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !1764)
!1764 = !{!1765}
!1765 = !DISubrange(count: 2)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1744, file: !1745, line: 130, baseType: !1758, size: 64, offset: 384)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1744, file: !1745, line: 131, baseType: !1758, size: 64, offset: 448)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1744, file: !1745, line: 132, baseType: !1758, size: 64, offset: 512)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1744, file: !1745, line: 133, baseType: !1758, size: 64, offset: 576)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1744, file: !1745, line: 135, baseType: !186, size: 8, offset: 640)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1744, file: !1745, line: 137, baseType: !1772, size: 64, offset: 704)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1774, line: 189, size: 1664, elements: !1775)
!1774 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1775 = !{!1776, !1777, !1780, !1785, !1786, !1789, !1790, !1795, !1796, !1797, !1798, !1800, !1801, !1802, !1803, !1804, !1842, !1863}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1773, file: !1774, line: 190, baseType: !1391, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1773, file: !1774, line: 191, baseType: !1778, size: 32, offset: 32)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1774, line: 28, baseType: !1779)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !131, line: 98, baseType: !1602)
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !1774, line: 192, baseType: !1781, size: 192, offset: 64)
!1781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !1774, line: 192, size: 192, elements: !1782)
!1782 = !{!1783, !1784}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1781, file: !1774, line: 193, baseType: !288, size: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1781, file: !1774, line: 194, baseType: !925, size: 192, align: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1773, file: !1774, line: 199, baseType: !932, size: 256, offset: 256)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1773, file: !1774, line: 200, baseType: !1787, size: 64, offset: 512)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1774, line: 200, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1773, file: !1774, line: 201, baseType: !132, size: 64, offset: 576)
!1790 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !1774, line: 202, baseType: !1791, size: 64, offset: 640)
!1791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !1774, line: 202, size: 64, elements: !1792)
!1792 = !{!1793, !1794}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1791, file: !1774, line: 203, baseType: !705, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1791, file: !1774, line: 204, baseType: !705, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1773, file: !1774, line: 206, baseType: !705, size: 64, offset: 704)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1773, file: !1774, line: 207, baseType: !604, size: 32, offset: 768)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1773, file: !1774, line: 208, baseType: !612, size: 32, offset: 800)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1773, file: !1774, line: 209, baseType: !1799, size: 32, offset: 832)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1774, line: 31, baseType: !725)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1773, file: !1774, line: 210, baseType: !178, size: 16, offset: 864)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1773, file: !1774, line: 211, baseType: !178, size: 16, offset: 880)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1773, file: !1774, line: 215, baseType: !1366, size: 16, offset: 896)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1773, file: !1774, line: 222, baseType: !308, size: 64, offset: 960)
!1804 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !1774, line: 239, baseType: !1805, size: 320, offset: 1024)
!1805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !1774, line: 239, size: 320, elements: !1806)
!1806 = !{!1807, !1834}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1805, file: !1774, line: 240, baseType: !1808, size: 320)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1774, line: 108, size: 320, elements: !1809)
!1809 = !{!1810, !1811, !1823, !1826, !1833}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1808, file: !1774, line: 110, baseType: !308, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !1774, line: 111, baseType: !1812, size: 64, offset: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1808, file: !1774, line: 111, size: 64, elements: !1813)
!1813 = !{!1814, !1822}
!1814 = !DIDerivedType(tag: DW_TAG_member, scope: !1812, file: !1774, line: 112, baseType: !1815, size: 64)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1812, file: !1774, line: 112, size: 64, elements: !1816)
!1816 = !{!1817, !1818}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1815, file: !1774, line: 114, baseType: !175, size: 16)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1815, file: !1774, line: 115, baseType: !1819, size: 48, offset: 16)
!1819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 48, elements: !1820)
!1820 = !{!1821}
!1821 = !DISubrange(count: 6)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1812, file: !1774, line: 121, baseType: !308, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1808, file: !1774, line: 123, baseType: !1824, size: 64, offset: 128)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1774, line: 96, flags: DIFlagFwdDecl)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1808, file: !1774, line: 124, baseType: !1827, size: 64, offset: 192)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1774, line: 102, size: 192, elements: !1829)
!1829 = !{!1830, !1831, !1832}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1828, file: !1774, line: 103, baseType: !542, size: 128, align: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1828, file: !1774, line: 104, baseType: !1391, size: 32, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1828, file: !1774, line: 105, baseType: !656, size: 8, offset: 160)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1808, file: !1774, line: 125, baseType: !149, size: 64, offset: 256)
!1834 = !DIDerivedType(tag: DW_TAG_member, scope: !1805, file: !1774, line: 241, baseType: !1835, size: 320)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1805, file: !1774, line: 241, size: 320, elements: !1836)
!1836 = !{!1837, !1838, !1839, !1840, !1841}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1835, file: !1774, line: 242, baseType: !308, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1835, file: !1774, line: 243, baseType: !308, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1835, file: !1774, line: 244, baseType: !1824, size: 64, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1835, file: !1774, line: 245, baseType: !1827, size: 64, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1835, file: !1774, line: 246, baseType: !168, size: 64, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !1774, line: 254, baseType: !1843, size: 256, offset: 1344)
!1843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !1774, line: 254, size: 256, elements: !1844)
!1844 = !{!1845, !1851}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1843, file: !1774, line: 255, baseType: !1846, size: 256)
!1846 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1774, line: 128, size: 256, elements: !1847)
!1847 = !{!1848, !1849}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1846, file: !1774, line: 129, baseType: !132, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1846, file: !1774, line: 130, baseType: !1850, size: 256)
!1850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 256, elements: !346)
!1851 = !DIDerivedType(tag: DW_TAG_member, scope: !1843, file: !1774, line: 256, baseType: !1852, size: 256)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1843, file: !1774, line: 256, size: 256, elements: !1853)
!1853 = !{!1854, !1855}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1852, file: !1774, line: 258, baseType: !288, size: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1852, file: !1774, line: 259, baseType: !1856, size: 128, offset: 128)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1857, line: 22, size: 128, elements: !1858)
!1857 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1858 = !{!1859, !1862}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1856, file: !1857, line: 23, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1857, line: 23, flags: DIFlagFwdDecl)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1856, file: !1857, line: 24, baseType: !308, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1773, file: !1774, line: 274, baseType: !1864, size: 64, offset: 1600)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1774, line: 170, size: 192, elements: !1866)
!1866 = !{!1867, !1876, !1877}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1865, file: !1774, line: 171, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1774, line: 165, baseType: !1869)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!135, !1772, !1872, !1874, !1772}
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1825)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1846)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1865, file: !1774, line: 172, baseType: !1772, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1865, file: !1774, line: 173, baseType: !1824, size: 64, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1744, file: !1745, line: 138, baseType: !1772, size: 64, offset: 768)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1744, file: !1745, line: 139, baseType: !1772, size: 64, offset: 832)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1744, file: !1745, line: 140, baseType: !1772, size: 64, offset: 896)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1744, file: !1745, line: 145, baseType: !1882, size: 64, offset: 960)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1884, line: 13, size: 896, elements: !1885)
!1884 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1885 = !{!1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1883, file: !1884, line: 14, baseType: !1391, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1883, file: !1884, line: 15, baseType: !912, size: 32, offset: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1883, file: !1884, line: 16, baseType: !912, size: 32, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1883, file: !1884, line: 21, baseType: !936, size: 64, offset: 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1883, file: !1884, line: 27, baseType: !308, size: 64, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1883, file: !1884, line: 28, baseType: !308, size: 64, offset: 256)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1883, file: !1884, line: 29, baseType: !936, size: 64, offset: 320)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1883, file: !1884, line: 32, baseType: !804, size: 128, offset: 384)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1883, file: !1884, line: 33, baseType: !604, size: 32, offset: 512)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1883, file: !1884, line: 37, baseType: !936, size: 64, offset: 576)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1883, file: !1884, line: 44, baseType: !1897, size: 256, offset: 640)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1898, line: 15, size: 256, elements: !1899)
!1898 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1899 = !{!1900, !1901, !1902, !1903, !1904, !1905, !1906}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1897, file: !1898, line: 16, baseType: !945)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1897, file: !1898, line: 18, baseType: !135, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1897, file: !1898, line: 19, baseType: !135, size: 32, offset: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1897, file: !1898, line: 20, baseType: !135, size: 32, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1897, file: !1898, line: 21, baseType: !135, size: 32, offset: 96)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1897, file: !1898, line: 22, baseType: !308, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1897, file: !1898, line: 23, baseType: !308, size: 64, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1744, file: !1745, line: 146, baseType: !1675, size: 64, offset: 1024)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1744, file: !1745, line: 147, baseType: !1909, size: 64, offset: 1088)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1745, line: 25, size: 64, elements: !1911)
!1911 = !{!1912, !1913, !1914}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1910, file: !1745, line: 26, baseType: !912, size: 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1910, file: !1745, line: 27, baseType: !135, size: 32, offset: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1910, file: !1745, line: 28, baseType: !1915, offset: 64)
!1915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, elements: !1916)
!1916 = !{!1917}
!1917 = !DISubrange(count: 0)
!1918 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !1745, line: 149, baseType: !1919, size: 128, offset: 1152)
!1919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1744, file: !1745, line: 149, size: 128, elements: !1920)
!1920 = !{!1921, !1922}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1919, file: !1745, line: 150, baseType: !135, size: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1919, file: !1745, line: 151, baseType: !542, size: 128, align: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1378, file: !1379, line: 926, baseType: !1742, size: 64, offset: 8576)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1378, file: !1379, line: 929, baseType: !1742, size: 64, offset: 8640)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1378, file: !1379, line: 933, baseType: !1772, size: 64, offset: 8704)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1378, file: !1379, line: 943, baseType: !1927, size: 128, offset: 8768)
!1927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 128, elements: !1928)
!1928 = !{!1929}
!1929 = !DISubrange(count: 16)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1378, file: !1379, line: 945, baseType: !1931, size: 64, offset: 8896)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1379, line: 49, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1378, file: !1379, line: 956, baseType: !1934, size: 64, offset: 8960)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1379, line: 45, flags: DIFlagFwdDecl)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1378, file: !1379, line: 959, baseType: !1937, size: 64, offset: 9024)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1379, line: 959, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1378, file: !1379, line: 962, baseType: !1940, size: 64, offset: 9088)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1379, line: 66, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1378, file: !1379, line: 966, baseType: !1943, size: 64, offset: 9152)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1945, line: 31, size: 576, elements: !1946)
!1945 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/lizy2001/genbc/linux")
!1946 = !{!1947, !1948, !1951, !1954, !1957, !1958, !1961, !1964, !1965}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1944, file: !1945, line: 32, baseType: !912, size: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1944, file: !1945, line: 33, baseType: !1949, size: 64, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1945, line: 9, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1944, file: !1945, line: 34, baseType: !1952, size: 64, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1945, line: 10, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1944, file: !1945, line: 35, baseType: !1955, size: 64, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1945, line: 8, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1944, file: !1945, line: 36, baseType: !1652, size: 64, offset: 256)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1944, file: !1945, line: 37, baseType: !1959, size: 64, offset: 320)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1774, line: 34, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1944, file: !1945, line: 38, baseType: !1962, size: 64, offset: 384)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1945, line: 38, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1944, file: !1945, line: 39, baseType: !1962, size: 64, offset: 448)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1944, file: !1945, line: 40, baseType: !1966, size: 64, offset: 512)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1945, line: 12, flags: DIFlagFwdDecl)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1378, file: !1379, line: 969, baseType: !1969, size: 64, offset: 9216)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1971, line: 82, size: 7296, elements: !1972)
!1971 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1972 = !{!1973, !1974, !1975, !1976, !1977, !1978, !1979, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2008, !2017, !2018, !2020, !2021, !2022, !2025, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2055, !2056, !2063, !2064, !2065, !2066, !2067, !2068}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1970, file: !1971, line: 83, baseType: !1391, size: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1970, file: !1971, line: 84, baseType: !912, size: 32, offset: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1970, file: !1971, line: 85, baseType: !135, size: 32, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1970, file: !1971, line: 86, baseType: !288, size: 128, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1970, file: !1971, line: 88, baseType: !1639, size: 128, offset: 256)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1970, file: !1971, line: 91, baseType: !1377, size: 64, offset: 384)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1970, file: !1971, line: 94, baseType: !1980, size: 192, offset: 448)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1981, line: 30, size: 192, elements: !1982)
!1981 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1982 = !{!1983, !1984}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1980, file: !1981, line: 31, baseType: !288, size: 128)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1980, file: !1981, line: 32, baseType: !1985, size: 64, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1986, line: 25, baseType: !1987)
!1986 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1986, line: 23, size: 64, elements: !1988)
!1988 = !{!1989}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1987, file: !1986, line: 24, baseType: !1529, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1970, file: !1971, line: 97, baseType: !800, size: 64, offset: 640)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1970, file: !1971, line: 100, baseType: !135, size: 32, offset: 704)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1970, file: !1971, line: 106, baseType: !135, size: 32, offset: 736)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1970, file: !1971, line: 107, baseType: !1377, size: 64, offset: 768)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1970, file: !1971, line: 110, baseType: !135, size: 32, offset: 832)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1970, file: !1971, line: 111, baseType: !7, size: 32, offset: 864)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1970, file: !1971, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1970, file: !1971, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1970, file: !1971, line: 128, baseType: !135, size: 32, offset: 928)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1970, file: !1971, line: 129, baseType: !288, size: 128, offset: 960)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1970, file: !1971, line: 132, baseType: !1453, size: 512, offset: 1088)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1970, file: !1971, line: 133, baseType: !1461, size: 64, offset: 1600)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1970, file: !1971, line: 140, baseType: !2003, size: 256, offset: 1664)
!2003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2004, size: 256, elements: !1764)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1971, line: 38, size: 128, elements: !2005)
!2005 = !{!2006, !2007}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2004, file: !1971, line: 39, baseType: !336, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2004, file: !1971, line: 40, baseType: !336, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1970, file: !1971, line: 146, baseType: !2009, size: 192, offset: 1920)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1971, line: 66, size: 192, elements: !2010)
!2010 = !{!2011}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2009, file: !1971, line: 67, baseType: !2012, size: 192)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1971, line: 47, size: 192, elements: !2013)
!2013 = !{!2014, !2015, !2016}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2012, file: !1971, line: 48, baseType: !938, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2012, file: !1971, line: 49, baseType: !938, size: 64, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2012, file: !1971, line: 50, baseType: !938, size: 64, offset: 128)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1970, file: !1971, line: 150, baseType: !1725, size: 640, offset: 2112)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1970, file: !1971, line: 153, baseType: !2019, size: 256, offset: 2752)
!2019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1629, size: 256, elements: !346)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1970, file: !1971, line: 159, baseType: !1629, size: 64, offset: 3008)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1970, file: !1971, line: 162, baseType: !135, size: 32, offset: 3072)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1970, file: !1971, line: 164, baseType: !2023, size: 64, offset: 3136)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1971, line: 164, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1970, file: !1971, line: 175, baseType: !2026, size: 32, offset: 3200)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !565, line: 805, baseType: !2027)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !565, line: 798, size: 32, elements: !2028)
!2028 = !{!2029, !2030}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2027, file: !565, line: 803, baseType: !564, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2027, file: !565, line: 804, baseType: !413, offset: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1970, file: !1971, line: 176, baseType: !336, size: 64, offset: 3264)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1970, file: !1971, line: 176, baseType: !336, size: 64, offset: 3328)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1970, file: !1971, line: 176, baseType: !336, size: 64, offset: 3392)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1970, file: !1971, line: 176, baseType: !336, size: 64, offset: 3456)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1970, file: !1971, line: 177, baseType: !336, size: 64, offset: 3520)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1970, file: !1971, line: 178, baseType: !336, size: 64, offset: 3584)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1970, file: !1971, line: 179, baseType: !1713, size: 128, offset: 3648)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1970, file: !1971, line: 180, baseType: !308, size: 64, offset: 3776)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1970, file: !1971, line: 180, baseType: !308, size: 64, offset: 3840)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1970, file: !1971, line: 180, baseType: !308, size: 64, offset: 3904)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1970, file: !1971, line: 180, baseType: !308, size: 64, offset: 3968)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1970, file: !1971, line: 181, baseType: !308, size: 64, offset: 4032)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1970, file: !1971, line: 181, baseType: !308, size: 64, offset: 4096)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1970, file: !1971, line: 181, baseType: !308, size: 64, offset: 4160)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1970, file: !1971, line: 181, baseType: !308, size: 64, offset: 4224)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1970, file: !1971, line: 182, baseType: !308, size: 64, offset: 4288)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1970, file: !1971, line: 182, baseType: !308, size: 64, offset: 4352)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1970, file: !1971, line: 182, baseType: !308, size: 64, offset: 4416)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1970, file: !1971, line: 182, baseType: !308, size: 64, offset: 4480)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1970, file: !1971, line: 183, baseType: !308, size: 64, offset: 4544)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1970, file: !1971, line: 183, baseType: !308, size: 64, offset: 4608)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1970, file: !1971, line: 184, baseType: !2053, offset: 4672)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2054, line: 12, elements: !427)
!2054 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1970, file: !1971, line: 192, baseType: !338, size: 64, offset: 4672)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1970, file: !1971, line: 203, baseType: !2057, size: 2048, offset: 4736)
!2057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2058, size: 2048, elements: !1928)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2059, line: 43, size: 128, elements: !2060)
!2059 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2058, file: !2059, line: 44, baseType: !501, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2058, file: !2059, line: 45, baseType: !501, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1970, file: !1971, line: 220, baseType: !656, size: 8, offset: 6784)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1970, file: !1971, line: 221, baseType: !1366, size: 16, offset: 6800)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1970, file: !1971, line: 222, baseType: !1366, size: 16, offset: 6816)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1970, file: !1971, line: 224, baseType: !1137, size: 64, offset: 6848)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1970, file: !1971, line: 227, baseType: !1334, size: 192, offset: 6912)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1970, file: !1971, line: 233, baseType: !1334, size: 192, offset: 7104)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1378, file: !1379, line: 970, baseType: !2070, size: 64, offset: 9280)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1971, line: 20, size: 16576, elements: !2072)
!2072 = !{!2073, !2074, !2075, !2076}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2071, file: !1971, line: 21, baseType: !413)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2071, file: !1971, line: 22, baseType: !1391, size: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2071, file: !1971, line: 23, baseType: !1639, size: 128, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2071, file: !1971, line: 24, baseType: !2077, size: 16384, offset: 192)
!2077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2078, size: 16384, elements: !458)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1981, line: 49, size: 256, elements: !2079)
!2079 = !{!2080}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2078, file: !1981, line: 50, baseType: !2081, size: 256)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1981, line: 35, size: 256, elements: !2082)
!2082 = !{!2083, !2090, !2091, !2095}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2081, file: !1981, line: 37, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2085, line: 19, baseType: !2086)
!2085 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2085, line: 18, baseType: !2088)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null, !135}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2081, file: !1981, line: 38, baseType: !308, size: 64, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2081, file: !1981, line: 44, baseType: !2092, size: 64, offset: 128)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2085, line: 22, baseType: !2093)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2085, line: 21, baseType: !247)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2081, file: !1981, line: 46, baseType: !1985, size: 64, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1378, file: !1379, line: 971, baseType: !1985, size: 64, offset: 9344)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1378, file: !1379, line: 972, baseType: !1985, size: 64, offset: 9408)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1378, file: !1379, line: 974, baseType: !1985, size: 64, offset: 9472)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1378, file: !1379, line: 975, baseType: !1980, size: 192, offset: 9536)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1378, file: !1379, line: 976, baseType: !308, size: 64, offset: 9728)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1378, file: !1379, line: 977, baseType: !499, size: 64, offset: 9792)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1378, file: !1379, line: 978, baseType: !7, size: 32, offset: 9856)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1378, file: !1379, line: 980, baseType: !545, size: 64, offset: 9920)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1378, file: !1379, line: 989, baseType: !2105, size: 128, offset: 9984)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2106, line: 35, size: 128, elements: !2107)
!2106 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2107 = !{!2108, !2109, !2110}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2105, file: !2106, line: 36, baseType: !135, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2105, file: !2106, line: 37, baseType: !912, size: 32, offset: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2105, file: !2106, line: 38, baseType: !2111, size: 64, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2106, line: 23, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1378, file: !1379, line: 992, baseType: !336, size: 64, offset: 10112)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1378, file: !1379, line: 993, baseType: !336, size: 64, offset: 10176)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1378, file: !1379, line: 996, baseType: !413, offset: 10240)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1378, file: !1379, line: 999, baseType: !945, offset: 10240)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1378, file: !1379, line: 1001, baseType: !2118, size: 64, offset: 10240)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1379, line: 636, size: 64, elements: !2119)
!2119 = !{!2120}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2118, file: !1379, line: 637, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1378, file: !1379, line: 1005, baseType: !917, size: 128, offset: 10304)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1378, file: !1379, line: 1007, baseType: !1377, size: 64, offset: 10432)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1378, file: !1379, line: 1009, baseType: !2125, size: 64, offset: 10496)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1379, line: 1009, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1378, file: !1379, line: 1043, baseType: !132, size: 64, offset: 10560)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1378, file: !1379, line: 1046, baseType: !2129, size: 64, offset: 10624)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1379, line: 41, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1378, file: !1379, line: 1050, baseType: !2132, size: 64, offset: 10688)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1379, line: 42, flags: DIFlagFwdDecl)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1378, file: !1379, line: 1054, baseType: !2135, size: 64, offset: 10752)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1379, line: 55, flags: DIFlagFwdDecl)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1378, file: !1379, line: 1056, baseType: !2138, size: 64, offset: 10816)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1379, line: 40, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1378, file: !1379, line: 1058, baseType: !2141, size: 64, offset: 10880)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2143, line: 99, size: 704, elements: !2144)
!2143 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2144 = !{!2145, !2146, !2147, !2148, !2149, !2150, !2151, !2170, !2171}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2142, file: !2143, line: 100, baseType: !936, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2142, file: !2143, line: 101, baseType: !912, size: 32, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2142, file: !2143, line: 102, baseType: !912, size: 32, offset: 96)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2142, file: !2143, line: 105, baseType: !413, offset: 128)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2142, file: !2143, line: 107, baseType: !178, size: 16, offset: 128)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2142, file: !2143, line: 109, baseType: !904, size: 128, offset: 192)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2142, file: !2143, line: 110, baseType: !2152, size: 64, offset: 320)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2143, line: 73, size: 448, elements: !2154)
!2154 = !{!2155, !2158, !2159, !2164, !2169}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2153, file: !2143, line: 74, baseType: !2156, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2143, line: 74, flags: DIFlagFwdDecl)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2153, file: !2143, line: 75, baseType: !2141, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, scope: !2153, file: !2143, line: 83, baseType: !2160, size: 128, offset: 128)
!2160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2153, file: !2143, line: 83, size: 128, elements: !2161)
!2161 = !{!2162, !2163}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2160, file: !2143, line: 84, baseType: !288, size: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2160, file: !2143, line: 85, baseType: !1098, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, scope: !2153, file: !2143, line: 87, baseType: !2165, size: 128, offset: 256)
!2165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2153, file: !2143, line: 87, size: 128, elements: !2166)
!2166 = !{!2167, !2168}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2165, file: !2143, line: 88, baseType: !804, size: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2165, file: !2143, line: 89, baseType: !542, size: 128, align: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2153, file: !2143, line: 92, baseType: !7, size: 32, offset: 384)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2142, file: !2143, line: 111, baseType: !800, size: 64, offset: 384)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2142, file: !2143, line: 113, baseType: !2172, size: 256, offset: 448)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2173, line: 102, size: 256, elements: !2174)
!2173 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2174 = !{!2175, !2176, !2177}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2172, file: !2173, line: 103, baseType: !936, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2172, file: !2173, line: 104, baseType: !288, size: 128, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2172, file: !2173, line: 105, baseType: !2178, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2173, line: 21, baseType: !2179)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{null, !2182}
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1378, file: !1379, line: 1061, baseType: !2184, size: 64, offset: 10944)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1379, line: 43, flags: DIFlagFwdDecl)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1378, file: !1379, line: 1064, baseType: !308, size: 64, offset: 11008)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1378, file: !1379, line: 1065, baseType: !2188, size: 64, offset: 11072)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1981, line: 14, baseType: !2190)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1981, line: 12, size: 384, elements: !2191)
!2191 = !{!2192}
!2192 = !DIDerivedType(tag: DW_TAG_member, scope: !2190, file: !1981, line: 13, baseType: !2193, size: 384)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2190, file: !1981, line: 13, size: 384, elements: !2194)
!2194 = !{!2195, !2196, !2197, !2198}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2193, file: !1981, line: 13, baseType: !135, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2193, file: !1981, line: 13, baseType: !135, size: 32, offset: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2193, file: !1981, line: 13, baseType: !135, size: 32, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2193, file: !1981, line: 13, baseType: !2199, size: 256, offset: 128)
!2199 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2200, line: 32, size: 256, elements: !2201)
!2200 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2201 = !{!2202, !2207, !2220, !2226, !2235, !2255, !2260}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2199, file: !2200, line: 37, baseType: !2203, size: 64)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2199, file: !2200, line: 34, size: 64, elements: !2204)
!2204 = !{!2205, !2206}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2203, file: !2200, line: 35, baseType: !1618, size: 32)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2203, file: !2200, line: 36, baseType: !610, size: 32, offset: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2199, file: !2200, line: 45, baseType: !2208, size: 192)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2199, file: !2200, line: 40, size: 192, elements: !2209)
!2209 = !{!2210, !2212, !2213, !2219}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2208, file: !2200, line: 41, baseType: !2211, size: 32)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !486, line: 95, baseType: !135)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2208, file: !2200, line: 42, baseType: !135, size: 32, offset: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2208, file: !2200, line: 43, baseType: !2214, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2200, line: 11, baseType: !2215)
!2215 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2200, line: 8, size: 64, elements: !2216)
!2216 = !{!2217, !2218}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2215, file: !2200, line: 9, baseType: !135, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2215, file: !2200, line: 10, baseType: !132, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2208, file: !2200, line: 44, baseType: !135, size: 32, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2199, file: !2200, line: 52, baseType: !2221, size: 128)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2199, file: !2200, line: 48, size: 128, elements: !2222)
!2222 = !{!2223, !2224, !2225}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2221, file: !2200, line: 49, baseType: !1618, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2221, file: !2200, line: 50, baseType: !610, size: 32, offset: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2221, file: !2200, line: 51, baseType: !2214, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2199, file: !2200, line: 61, baseType: !2227, size: 256)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2199, file: !2200, line: 55, size: 256, elements: !2228)
!2228 = !{!2229, !2230, !2231, !2232, !2234}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2227, file: !2200, line: 56, baseType: !1618, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2227, file: !2200, line: 57, baseType: !610, size: 32, offset: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2227, file: !2200, line: 58, baseType: !135, size: 32, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2227, file: !2200, line: 59, baseType: !2233, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !486, line: 94, baseType: !487)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2227, file: !2200, line: 60, baseType: !2233, size: 64, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2199, file: !2200, line: 95, baseType: !2236, size: 256)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2199, file: !2200, line: 64, size: 256, elements: !2237)
!2237 = !{!2238, !2239}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2236, file: !2200, line: 65, baseType: !132, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, scope: !2236, file: !2200, line: 77, baseType: !2240, size: 192, offset: 64)
!2240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2236, file: !2200, line: 77, size: 192, elements: !2241)
!2241 = !{!2242, !2243, !2250}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2240, file: !2200, line: 82, baseType: !1366, size: 16)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2240, file: !2200, line: 88, baseType: !2244, size: 192)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2240, file: !2200, line: 84, size: 192, elements: !2245)
!2245 = !{!2246, !2248, !2249}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2244, file: !2200, line: 85, baseType: !2247, size: 64)
!2247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 64, elements: !1491)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2244, file: !2200, line: 86, baseType: !132, size: 64, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2244, file: !2200, line: 87, baseType: !132, size: 64, offset: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2240, file: !2200, line: 93, baseType: !2251, size: 96)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2240, file: !2200, line: 90, size: 96, elements: !2252)
!2252 = !{!2253, !2254}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2251, file: !2200, line: 91, baseType: !2247, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2251, file: !2200, line: 92, baseType: !138, size: 32, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2199, file: !2200, line: 101, baseType: !2256, size: 128)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2199, file: !2200, line: 98, size: 128, elements: !2257)
!2257 = !{!2258, !2259}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2256, file: !2200, line: 99, baseType: !488, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2256, file: !2200, line: 100, baseType: !135, size: 32, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2199, file: !2200, line: 108, baseType: !2261, size: 128)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2199, file: !2200, line: 104, size: 128, elements: !2262)
!2262 = !{!2263, !2264, !2265}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2261, file: !2200, line: 105, baseType: !132, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2261, file: !2200, line: 106, baseType: !135, size: 32, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2261, file: !2200, line: 107, baseType: !7, size: 32, offset: 96)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1378, file: !1379, line: 1067, baseType: !2053, offset: 11136)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1378, file: !1379, line: 1099, baseType: !2268, size: 64, offset: 11136)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1379, line: 56, flags: DIFlagFwdDecl)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1378, file: !1379, line: 1103, baseType: !288, size: 128, offset: 11200)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1378, file: !1379, line: 1104, baseType: !2272, size: 64, offset: 11328)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1379, line: 46, flags: DIFlagFwdDecl)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1378, file: !1379, line: 1105, baseType: !1334, size: 192, offset: 11392)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1378, file: !1379, line: 1106, baseType: !7, size: 32, offset: 11584)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1378, file: !1379, line: 1109, baseType: !2277, size: 128, offset: 11648)
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2278, size: 128, elements: !1764)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1379, line: 51, flags: DIFlagFwdDecl)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1378, file: !1379, line: 1110, baseType: !1334, size: 192, offset: 11776)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1378, file: !1379, line: 1111, baseType: !288, size: 128, offset: 11968)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1378, file: !1379, line: 1173, baseType: !2283, size: 64, offset: 12096)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2285, line: 62, size: 256, align: 256, elements: !2286)
!2285 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2286 = !{!2287, !2288, !2289, !2294}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2284, file: !2285, line: 75, baseType: !138, size: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2284, file: !2285, line: 90, baseType: !138, size: 32, offset: 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2284, file: !2285, line: 124, baseType: !2290, size: 64, offset: 64)
!2290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2284, file: !2285, line: 109, size: 64, elements: !2291)
!2291 = !{!2292, !2293}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2290, file: !2285, line: 110, baseType: !337, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2290, file: !2285, line: 112, baseType: !337, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2284, file: !2285, line: 144, baseType: !138, size: 32, offset: 128)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1378, file: !1379, line: 1174, baseType: !371, size: 32, offset: 12160)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1378, file: !1379, line: 1179, baseType: !308, size: 64, offset: 12224)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1378, file: !1379, line: 1182, baseType: !2298, size: 128, offset: 12288)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1314, line: 76, size: 128, elements: !2299)
!2299 = !{!2300, !2305, !2306}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2298, file: !1314, line: 85, baseType: !2301, size: 64)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2302, line: 7, size: 64, elements: !2303)
!2302 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2303 = !{!2304}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2301, file: !2302, line: 12, baseType: !1526, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2298, file: !1314, line: 88, baseType: !656, size: 8, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2298, file: !1314, line: 95, baseType: !656, size: 8, offset: 72)
!2307 = !DIDerivedType(tag: DW_TAG_member, scope: !1378, file: !1379, line: 1184, baseType: !2308, size: 128, offset: 12416)
!2308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1378, file: !1379, line: 1184, size: 128, elements: !2309)
!2309 = !{!2310, !2311}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2308, file: !1379, line: 1185, baseType: !1391, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2308, file: !1379, line: 1186, baseType: !542, size: 128, align: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1378, file: !1379, line: 1190, baseType: !2313, size: 64, offset: 12544)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1379, line: 53, flags: DIFlagFwdDecl)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1378, file: !1379, line: 1192, baseType: !2316, size: 128, offset: 12608)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1314, line: 64, size: 128, elements: !2317)
!2317 = !{!2318, !2319, !2320}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2316, file: !1314, line: 65, baseType: !886, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2316, file: !1314, line: 67, baseType: !138, size: 32, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2316, file: !1314, line: 68, baseType: !138, size: 32, offset: 96)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1378, file: !1379, line: 1206, baseType: !135, size: 32, offset: 12736)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1378, file: !1379, line: 1207, baseType: !135, size: 32, offset: 12768)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1378, file: !1379, line: 1209, baseType: !308, size: 64, offset: 12800)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1378, file: !1379, line: 1219, baseType: !336, size: 64, offset: 12864)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1378, file: !1379, line: 1220, baseType: !336, size: 64, offset: 12928)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1378, file: !1379, line: 1317, baseType: !135, size: 32, offset: 12992)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1378, file: !1379, line: 1319, baseType: !1377, size: 64, offset: 13056)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1378, file: !1379, line: 1322, baseType: !2329, size: 64, offset: 13120)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2331, line: 56, size: 512, elements: !2332)
!2331 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2332 = !{!2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2330, file: !2331, line: 57, baseType: !2329, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2330, file: !2331, line: 58, baseType: !132, size: 64, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2330, file: !2331, line: 59, baseType: !308, size: 64, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2330, file: !2331, line: 60, baseType: !308, size: 64, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2330, file: !2331, line: 61, baseType: !985, size: 64, offset: 256)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2330, file: !2331, line: 62, baseType: !7, size: 32, offset: 320)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2330, file: !2331, line: 63, baseType: !335, size: 64, offset: 384)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2330, file: !2331, line: 64, baseType: !2341, size: 64, offset: 448)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1378, file: !1379, line: 1326, baseType: !1391, size: 32, offset: 13184)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1378, file: !1379, line: 1342, baseType: !132, size: 64, offset: 13248)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1378, file: !1379, line: 1343, baseType: !337, size: 64, offset: 13312)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1378, file: !1379, line: 1344, baseType: !336, size: 64, offset: 13376)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1378, file: !1379, line: 1345, baseType: !337, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1378, file: !1379, line: 1346, baseType: !337, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1378, file: !1379, line: 1347, baseType: !337, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1378, file: !1379, line: 1348, baseType: !542, size: 128, align: 64, offset: 13504)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1378, file: !1379, line: 1358, baseType: !2352, size: 34816, offset: 13824)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2353, line: 485, size: 34816, elements: !2354)
!2353 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2354 = !{!2355, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2384, !2385, !2386, !2387, !2388, !2389, !2392, !2393, !2394}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2352, file: !2353, line: 487, baseType: !2356, size: 192)
!2356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2357, size: 192, elements: !454)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2358, line: 16, size: 64, elements: !2359)
!2358 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2359 = !{!2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2357, file: !2358, line: 17, baseType: !175, size: 16)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2357, file: !2358, line: 18, baseType: !175, size: 16, offset: 16)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2357, file: !2358, line: 19, baseType: !175, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2357, file: !2358, line: 19, baseType: !175, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2357, file: !2358, line: 19, baseType: !175, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2357, file: !2358, line: 19, baseType: !175, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2357, file: !2358, line: 19, baseType: !175, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2357, file: !2358, line: 20, baseType: !175, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2357, file: !2358, line: 20, baseType: !175, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2357, file: !2358, line: 20, baseType: !175, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2357, file: !2358, line: 20, baseType: !175, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2357, file: !2358, line: 20, baseType: !175, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2357, file: !2358, line: 20, baseType: !175, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2352, file: !2353, line: 491, baseType: !308, size: 64, offset: 192)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2352, file: !2353, line: 495, baseType: !178, size: 16, offset: 256)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2352, file: !2353, line: 496, baseType: !178, size: 16, offset: 272)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2352, file: !2353, line: 497, baseType: !178, size: 16, offset: 288)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2352, file: !2353, line: 498, baseType: !178, size: 16, offset: 304)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2352, file: !2353, line: 502, baseType: !308, size: 64, offset: 320)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2352, file: !2353, line: 503, baseType: !308, size: 64, offset: 384)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2352, file: !2353, line: 514, baseType: !2381, size: 256, offset: 448)
!2381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2382, size: 256, elements: !346)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2353, line: 483, flags: DIFlagFwdDecl)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2352, file: !2353, line: 516, baseType: !308, size: 64, offset: 704)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2352, file: !2353, line: 518, baseType: !308, size: 64, offset: 768)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2352, file: !2353, line: 520, baseType: !308, size: 64, offset: 832)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2352, file: !2353, line: 521, baseType: !308, size: 64, offset: 896)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2352, file: !2353, line: 522, baseType: !308, size: 64, offset: 960)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2352, file: !2353, line: 528, baseType: !2390, size: 64, offset: 1024)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2353, line: 10, flags: DIFlagFwdDecl)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2352, file: !2353, line: 535, baseType: !308, size: 64, offset: 1088)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2352, file: !2353, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2352, file: !2353, line: 540, baseType: !2395, size: 33280, offset: 1536)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2396, line: 317, size: 33280, elements: !2397)
!2396 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2397 = !{!2398, !2399, !2400}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2395, file: !2396, line: 330, baseType: !7, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2395, file: !2396, line: 337, baseType: !308, size: 64, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2395, file: !2396, line: 348, baseType: !2401, size: 32768, offset: 512)
!2401 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2396, line: 304, size: 32768, elements: !2402)
!2402 = !{!2403, !2418, !2455, !2505, !2518}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2401, file: !2396, line: 305, baseType: !2404, size: 896)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2396, line: 12, size: 896, elements: !2405)
!2405 = !{!2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2417}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2404, file: !2396, line: 13, baseType: !371, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2404, file: !2396, line: 14, baseType: !371, size: 32, offset: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2404, file: !2396, line: 15, baseType: !371, size: 32, offset: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2404, file: !2396, line: 16, baseType: !371, size: 32, offset: 96)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2404, file: !2396, line: 17, baseType: !371, size: 32, offset: 128)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2404, file: !2396, line: 18, baseType: !371, size: 32, offset: 160)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2404, file: !2396, line: 19, baseType: !371, size: 32, offset: 192)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2404, file: !2396, line: 22, baseType: !2414, size: 640, offset: 224)
!2414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 640, elements: !2415)
!2415 = !{!2416}
!2416 = !DISubrange(count: 20)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2404, file: !2396, line: 25, baseType: !371, size: 32, offset: 864)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2401, file: !2396, line: 306, baseType: !2419, size: 4096, align: 128)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2396, line: 34, size: 4096, align: 128, elements: !2420)
!2420 = !{!2421, !2422, !2423, !2424, !2425, !2440, !2441, !2442, !2444, !2446, !2450}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2419, file: !2396, line: 35, baseType: !175, size: 16)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2419, file: !2396, line: 36, baseType: !175, size: 16, offset: 16)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2419, file: !2396, line: 37, baseType: !175, size: 16, offset: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2419, file: !2396, line: 38, baseType: !175, size: 16, offset: 48)
!2425 = !DIDerivedType(tag: DW_TAG_member, scope: !2419, file: !2396, line: 39, baseType: !2426, size: 128, offset: 64)
!2426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2419, file: !2396, line: 39, size: 128, elements: !2427)
!2427 = !{!2428, !2433}
!2428 = !DIDerivedType(tag: DW_TAG_member, scope: !2426, file: !2396, line: 40, baseType: !2429, size: 128)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2426, file: !2396, line: 40, size: 128, elements: !2430)
!2430 = !{!2431, !2432}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2429, file: !2396, line: 41, baseType: !336, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2429, file: !2396, line: 42, baseType: !336, size: 64, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, scope: !2426, file: !2396, line: 44, baseType: !2434, size: 128)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2426, file: !2396, line: 44, size: 128, elements: !2435)
!2435 = !{!2436, !2437, !2438, !2439}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2434, file: !2396, line: 45, baseType: !371, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2434, file: !2396, line: 46, baseType: !371, size: 32, offset: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2434, file: !2396, line: 47, baseType: !371, size: 32, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2434, file: !2396, line: 48, baseType: !371, size: 32, offset: 96)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2419, file: !2396, line: 51, baseType: !371, size: 32, offset: 192)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2419, file: !2396, line: 52, baseType: !371, size: 32, offset: 224)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2419, file: !2396, line: 55, baseType: !2443, size: 1024, offset: 256)
!2443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 1024, elements: !212)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2419, file: !2396, line: 58, baseType: !2445, size: 2048, offset: 1280)
!2445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 2048, elements: !458)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2419, file: !2396, line: 60, baseType: !2447, size: 384, offset: 3328)
!2447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 384, elements: !2448)
!2448 = !{!2449}
!2449 = !DISubrange(count: 12)
!2450 = !DIDerivedType(tag: DW_TAG_member, scope: !2419, file: !2396, line: 62, baseType: !2451, size: 384, offset: 3712)
!2451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2419, file: !2396, line: 62, size: 384, elements: !2452)
!2452 = !{!2453, !2454}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2451, file: !2396, line: 63, baseType: !2447, size: 384)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2451, file: !2396, line: 64, baseType: !2447, size: 384)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2401, file: !2396, line: 307, baseType: !2456, size: 1088)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2396, line: 79, size: 1088, elements: !2457)
!2457 = !{!2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2504}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2456, file: !2396, line: 80, baseType: !371, size: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2456, file: !2396, line: 81, baseType: !371, size: 32, offset: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2456, file: !2396, line: 82, baseType: !371, size: 32, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2456, file: !2396, line: 83, baseType: !371, size: 32, offset: 96)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2456, file: !2396, line: 84, baseType: !371, size: 32, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2456, file: !2396, line: 85, baseType: !371, size: 32, offset: 160)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2456, file: !2396, line: 86, baseType: !371, size: 32, offset: 192)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2456, file: !2396, line: 88, baseType: !2414, size: 640, offset: 224)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2456, file: !2396, line: 89, baseType: !184, size: 8, offset: 864)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2456, file: !2396, line: 90, baseType: !184, size: 8, offset: 872)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2456, file: !2396, line: 91, baseType: !184, size: 8, offset: 880)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2456, file: !2396, line: 92, baseType: !184, size: 8, offset: 888)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2456, file: !2396, line: 93, baseType: !184, size: 8, offset: 896)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2456, file: !2396, line: 94, baseType: !184, size: 8, offset: 904)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2456, file: !2396, line: 95, baseType: !2473, size: 64, offset: 960)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2475, line: 11, size: 128, elements: !2476)
!2475 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2476 = !{!2477, !2478}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2474, file: !2475, line: 12, baseType: !488, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2474, file: !2475, line: 13, baseType: !2479, size: 64, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2481, line: 56, size: 1344, elements: !2482)
!2481 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2482 = !{!2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2480, file: !2481, line: 61, baseType: !308, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2480, file: !2481, line: 62, baseType: !308, size: 64, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2480, file: !2481, line: 63, baseType: !308, size: 64, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2480, file: !2481, line: 64, baseType: !308, size: 64, offset: 192)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2480, file: !2481, line: 65, baseType: !308, size: 64, offset: 256)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2480, file: !2481, line: 66, baseType: !308, size: 64, offset: 320)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2480, file: !2481, line: 68, baseType: !308, size: 64, offset: 384)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2480, file: !2481, line: 69, baseType: !308, size: 64, offset: 448)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2480, file: !2481, line: 70, baseType: !308, size: 64, offset: 512)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2480, file: !2481, line: 71, baseType: !308, size: 64, offset: 576)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2480, file: !2481, line: 72, baseType: !308, size: 64, offset: 640)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2480, file: !2481, line: 73, baseType: !308, size: 64, offset: 704)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2480, file: !2481, line: 74, baseType: !308, size: 64, offset: 768)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2480, file: !2481, line: 75, baseType: !308, size: 64, offset: 832)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2480, file: !2481, line: 76, baseType: !308, size: 64, offset: 896)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2480, file: !2481, line: 81, baseType: !308, size: 64, offset: 960)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2480, file: !2481, line: 83, baseType: !308, size: 64, offset: 1024)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2480, file: !2481, line: 84, baseType: !308, size: 64, offset: 1088)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2480, file: !2481, line: 85, baseType: !308, size: 64, offset: 1152)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2480, file: !2481, line: 86, baseType: !308, size: 64, offset: 1216)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2480, file: !2481, line: 87, baseType: !308, size: 64, offset: 1280)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2456, file: !2396, line: 96, baseType: !371, size: 32, offset: 1024)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2401, file: !2396, line: 308, baseType: !2506, size: 4608, align: 512)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2396, line: 289, size: 4608, align: 512, elements: !2507)
!2507 = !{!2508, !2509, !2516}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2506, file: !2396, line: 290, baseType: !2419, size: 4096, align: 128)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2506, file: !2396, line: 291, baseType: !2510, size: 512, offset: 4096)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2396, line: 268, size: 512, elements: !2511)
!2511 = !{!2512, !2513, !2514}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2510, file: !2396, line: 269, baseType: !336, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2510, file: !2396, line: 270, baseType: !336, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2510, file: !2396, line: 271, baseType: !2515, size: 384, offset: 128)
!2515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 384, elements: !1820)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2506, file: !2396, line: 292, baseType: !2517, offset: 4608)
!2517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, elements: !1916)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2401, file: !2396, line: 309, baseType: !2519, size: 32768)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 32768, elements: !2520)
!2520 = !{!2521}
!2521 = !DISubrange(count: 4096)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1374, file: !888, line: 378, baseType: !2523, size: 64, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1370, file: !888, line: 384, baseType: !1697, size: 192, offset: 192)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1141, file: !888, line: 500, baseType: !413, offset: 6656)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1141, file: !888, line: 501, baseType: !2527, size: 64, offset: 6656)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !888, line: 387, flags: DIFlagFwdDecl)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1141, file: !888, line: 516, baseType: !1675, size: 64, offset: 6720)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1141, file: !888, line: 519, baseType: !529, size: 64, offset: 6784)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1141, file: !888, line: 521, baseType: !2532, size: 64, offset: 6848)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !888, line: 521, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1141, file: !888, line: 545, baseType: !912, size: 32, offset: 6912)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1141, file: !888, line: 548, baseType: !656, size: 8, offset: 6944)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1141, file: !888, line: 550, baseType: !2537, offset: 6952)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2538, line: 142, elements: !427)
!2538 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1141, file: !888, line: 554, baseType: !2172, size: 256, offset: 6976)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1141, file: !888, line: 557, baseType: !371, size: 32, offset: 7232)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1138, file: !888, line: 565, baseType: !2542, offset: 7296)
!2542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, elements: !2543)
!2543 = !{!2544}
!2544 = !DISubrange(count: -1)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1134, file: !888, line: 151, baseType: !912, size: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1127, file: !888, line: 156, baseType: !413, offset: 256)
!2547 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !888, line: 159, baseType: !2548, size: 128)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !888, line: 159, size: 128, elements: !2549)
!2549 = !{!2550, !2614}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2548, file: !888, line: 161, baseType: !2551, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2553)
!2553 = !{!2554, !2564, !2585, !2586, !2587, !2588, !2589, !2601, !2602, !2603}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2552, file: !31, line: 111, baseType: !2555, size: 384)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2556)
!2556 = !{!2557, !2559, !2560, !2561, !2562, !2563}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2555, file: !31, line: 20, baseType: !2558, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2555, file: !31, line: 21, baseType: !2558, size: 64, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2555, file: !31, line: 22, baseType: !2558, size: 64, offset: 128)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2555, file: !31, line: 23, baseType: !308, size: 64, offset: 192)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2555, file: !31, line: 24, baseType: !308, size: 64, offset: 256)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2555, file: !31, line: 25, baseType: !308, size: 64, offset: 320)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2552, file: !31, line: 112, baseType: !2565, size: 64, offset: 384)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2567, line: 105, size: 128, elements: !2568)
!2567 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2568 = !{!2569, !2570}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2566, file: !2567, line: 110, baseType: !308, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2566, file: !2567, line: 118, baseType: !2571, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2567, line: 95, size: 448, elements: !2573)
!2573 = !{!2574, !2575, !2580, !2581, !2582, !2583, !2584}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2572, file: !2567, line: 96, baseType: !936, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2572, file: !2567, line: 97, baseType: !2576, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2567, line: 60, baseType: !2578)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{null, !2565}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2572, file: !2567, line: 98, baseType: !2576, size: 64, offset: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2572, file: !2567, line: 99, baseType: !656, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2572, file: !2567, line: 100, baseType: !656, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2572, file: !2567, line: 101, baseType: !542, size: 128, align: 64, offset: 256)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2572, file: !2567, line: 102, baseType: !2565, size: 64, offset: 384)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2552, file: !31, line: 113, baseType: !2566, size: 128, offset: 448)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2552, file: !31, line: 114, baseType: !1697, size: 192, offset: 576)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2552, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2552, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2552, file: !31, line: 117, baseType: !2590, size: 64, offset: 832)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2592)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2593)
!2593 = !{!2594, !2595, !2599, !2600}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2592, file: !31, line: 73, baseType: !1005, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2592, file: !31, line: 78, baseType: !2596, size: 64, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{null, !2551}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2592, file: !31, line: 83, baseType: !2596, size: 64, offset: 128)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2592, file: !31, line: 89, baseType: !1190, size: 64, offset: 192)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2552, file: !31, line: 118, baseType: !132, size: 64, offset: 896)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2552, file: !31, line: 119, baseType: !135, size: 32, offset: 960)
!2603 = !DIDerivedType(tag: DW_TAG_member, scope: !2552, file: !31, line: 120, baseType: !2604, size: 128, offset: 1024)
!2604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2552, file: !31, line: 120, size: 128, elements: !2605)
!2605 = !{!2606, !2612}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2604, file: !31, line: 121, baseType: !2607, size: 128)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2608, line: 6, size: 128, elements: !2609)
!2608 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2609 = !{!2610, !2611}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2607, file: !2608, line: 7, baseType: !336, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2607, file: !2608, line: 8, baseType: !336, size: 64, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2604, file: !31, line: 122, baseType: !2613)
!2613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2607, elements: !1916)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2548, file: !888, line: 162, baseType: !132, size: 64, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !892, file: !888, line: 176, baseType: !542, size: 128, align: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !888, line: 179, baseType: !2617, size: 32, offset: 384)
!2617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !887, file: !888, line: 179, size: 32, elements: !2618)
!2618 = !{!2619, !2620, !2621, !2622}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2617, file: !888, line: 184, baseType: !912, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2617, file: !888, line: 192, baseType: !7, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2617, file: !888, line: 194, baseType: !7, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2617, file: !888, line: 195, baseType: !135, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !887, file: !888, line: 199, baseType: !912, size: 32, offset: 416)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !822, file: !44, line: 1964, baseType: !2625, size: 64, offset: 1344)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!488, !765, !2628}
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2630, line: 12, size: 256, elements: !2631)
!2630 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2631 = !{!2632, !2633, !2634, !2635, !2636}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2629, file: !2630, line: 13, baseType: !130, size: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2629, file: !2630, line: 16, baseType: !135, size: 32, offset: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2629, file: !2630, line: 23, baseType: !308, size: 64, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2629, file: !2630, line: 30, baseType: !308, size: 64, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2629, file: !2630, line: 33, baseType: !2637, size: 64, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !888, line: 27, flags: DIFlagFwdDecl)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !822, file: !44, line: 1966, baseType: !2625, size: 64, offset: 1408)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !766, file: !44, line: 1424, baseType: !2641, size: 64, offset: 448)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2643)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2644)
!2644 = !{!2645, !2691, !2695, !2699, !2700, !2701, !2702, !2703, !2708, !2713, !2717}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2643, file: !38, line: 323, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!135, !2649}
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2651)
!2651 = !{!2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2676, !2677, !2678}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2650, file: !38, line: 295, baseType: !804, size: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2650, file: !38, line: 296, baseType: !288, size: 128, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2650, file: !38, line: 297, baseType: !288, size: 128, offset: 256)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2650, file: !38, line: 298, baseType: !288, size: 128, offset: 384)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2650, file: !38, line: 299, baseType: !1334, size: 192, offset: 512)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2650, file: !38, line: 300, baseType: !413, offset: 704)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2650, file: !38, line: 301, baseType: !912, size: 32, offset: 704)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2650, file: !38, line: 302, baseType: !765, size: 64, offset: 768)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2650, file: !38, line: 303, baseType: !2661, size: 64, offset: 832)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2662)
!2662 = !{!2663, !2675}
!2663 = !DIDerivedType(tag: DW_TAG_member, scope: !2661, file: !38, line: 69, baseType: !2664, size: 32)
!2664 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2661, file: !38, line: 69, size: 32, elements: !2665)
!2665 = !{!2666, !2667, !2668}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2664, file: !38, line: 70, baseType: !604, size: 32)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2664, file: !38, line: 71, baseType: !612, size: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2664, file: !38, line: 72, baseType: !2669, size: 32)
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2670, line: 24, baseType: !2671)
!2670 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2670, line: 22, size: 32, elements: !2672)
!2672 = !{!2673}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2671, file: !2670, line: 23, baseType: !2674, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2670, line: 20, baseType: !610)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2661, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2650, file: !38, line: 304, baseType: !697, size: 64, offset: 896)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2650, file: !38, line: 305, baseType: !308, size: 64, offset: 960)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2650, file: !38, line: 306, baseType: !2679, size: 576, offset: 1024)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2680)
!2680 = !{!2681, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2679, file: !38, line: 206, baseType: !2682, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !699)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2679, file: !38, line: 207, baseType: !2682, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2679, file: !38, line: 208, baseType: !2682, size: 64, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2679, file: !38, line: 209, baseType: !2682, size: 64, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2679, file: !38, line: 210, baseType: !2682, size: 64, offset: 256)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2679, file: !38, line: 211, baseType: !2682, size: 64, offset: 320)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2679, file: !38, line: 212, baseType: !2682, size: 64, offset: 384)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2679, file: !38, line: 213, baseType: !705, size: 64, offset: 448)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2679, file: !38, line: 214, baseType: !705, size: 64, offset: 512)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2643, file: !38, line: 324, baseType: !2692, size: 64, offset: 64)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!2649, !765, !135}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2643, file: !38, line: 325, baseType: !2696, size: 64, offset: 128)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{null, !2649}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2643, file: !38, line: 326, baseType: !2646, size: 64, offset: 192)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2643, file: !38, line: 327, baseType: !2646, size: 64, offset: 256)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2643, file: !38, line: 328, baseType: !2646, size: 64, offset: 320)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2643, file: !38, line: 329, baseType: !850, size: 64, offset: 384)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2643, file: !38, line: 332, baseType: !2704, size: 64, offset: 448)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!2707, !598}
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2643, file: !38, line: 333, baseType: !2709, size: 64, offset: 512)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!135, !598, !2712}
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2643, file: !38, line: 335, baseType: !2714, size: 64, offset: 576)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!135, !598, !2707}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2643, file: !38, line: 337, baseType: !2718, size: 64, offset: 640)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!135, !765, !2721}
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !766, file: !44, line: 1425, baseType: !2723, size: 64, offset: 512)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2725)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2726)
!2726 = !{!2727, !2731, !2732, !2736, !2737, !2738, !2753, !2776, !2780, !2781, !2804}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2725, file: !38, line: 429, baseType: !2728, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!135, !765, !135, !135, !715}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2725, file: !38, line: 430, baseType: !850, size: 64, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2725, file: !38, line: 431, baseType: !2733, size: 64, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!135, !765, !7}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2725, file: !38, line: 432, baseType: !2733, size: 64, offset: 192)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2725, file: !38, line: 433, baseType: !850, size: 64, offset: 256)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2725, file: !38, line: 434, baseType: !2739, size: 64, offset: 320)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!135, !765, !135, !2742}
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2744)
!2744 = !{!2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2743, file: !38, line: 416, baseType: !135, size: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2743, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2743, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2743, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2743, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2743, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2743, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2743, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2725, file: !38, line: 435, baseType: !2754, size: 64, offset: 384)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!135, !765, !2661, !2757}
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2759)
!2759 = !{!2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2758, file: !38, line: 344, baseType: !135, size: 32)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2758, file: !38, line: 345, baseType: !336, size: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2758, file: !38, line: 346, baseType: !336, size: 64, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2758, file: !38, line: 347, baseType: !336, size: 64, offset: 192)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2758, file: !38, line: 348, baseType: !336, size: 64, offset: 256)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2758, file: !38, line: 349, baseType: !336, size: 64, offset: 320)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2758, file: !38, line: 350, baseType: !336, size: 64, offset: 384)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2758, file: !38, line: 351, baseType: !942, size: 64, offset: 448)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2758, file: !38, line: 353, baseType: !942, size: 64, offset: 512)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2758, file: !38, line: 354, baseType: !135, size: 32, offset: 576)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2758, file: !38, line: 355, baseType: !135, size: 32, offset: 608)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2758, file: !38, line: 356, baseType: !336, size: 64, offset: 640)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2758, file: !38, line: 357, baseType: !336, size: 64, offset: 704)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2758, file: !38, line: 358, baseType: !336, size: 64, offset: 768)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2758, file: !38, line: 359, baseType: !942, size: 64, offset: 832)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2758, file: !38, line: 360, baseType: !135, size: 32, offset: 896)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2725, file: !38, line: 436, baseType: !2777, size: 64, offset: 448)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!135, !765, !2721, !2757}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2725, file: !38, line: 438, baseType: !2754, size: 64, offset: 512)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2725, file: !38, line: 439, baseType: !2782, size: 64, offset: 576)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!135, !765, !2785}
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2787)
!2787 = !{!2788, !2789}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2786, file: !38, line: 410, baseType: !7, size: 32)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2786, file: !38, line: 411, baseType: !2790, size: 1344, offset: 64)
!2790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2791, size: 1344, elements: !454)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2792)
!2792 = !{!2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2803}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2791, file: !38, line: 396, baseType: !7, size: 32)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2791, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2791, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2791, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2791, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2791, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2791, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2791, file: !38, line: 404, baseType: !338, size: 64, offset: 256)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2791, file: !38, line: 405, baseType: !2802, size: 64, offset: 320)
!2802 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !131, line: 126, baseType: !336)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2791, file: !38, line: 406, baseType: !2802, size: 64, offset: 384)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2725, file: !38, line: 440, baseType: !2733, size: 64, offset: 640)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !766, file: !44, line: 1426, baseType: !2806, size: 64, offset: 576)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2808)
!2808 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !766, file: !44, line: 1427, baseType: !308, size: 64, offset: 640)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !766, file: !44, line: 1428, baseType: !308, size: 64, offset: 704)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !766, file: !44, line: 1429, baseType: !308, size: 64, offset: 768)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !766, file: !44, line: 1430, baseType: !559, size: 64, offset: 832)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !766, file: !44, line: 1431, baseType: !932, size: 256, offset: 896)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !766, file: !44, line: 1432, baseType: !135, size: 32, offset: 1152)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !766, file: !44, line: 1433, baseType: !912, size: 32, offset: 1184)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !766, file: !44, line: 1437, baseType: !2817, size: 64, offset: 1216)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2820)
!2820 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !766, file: !44, line: 1449, baseType: !2822, size: 64, offset: 1280)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !575, line: 34, size: 64, elements: !2823)
!2823 = !{!2824}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2822, file: !575, line: 35, baseType: !578, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !766, file: !44, line: 1450, baseType: !288, size: 128, offset: 1344)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !766, file: !44, line: 1451, baseType: !2827, size: 64, offset: 1472)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !766, file: !44, line: 1452, baseType: !2138, size: 64, offset: 1536)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !766, file: !44, line: 1453, baseType: !2831, size: 64, offset: 1600)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !766, file: !44, line: 1454, baseType: !804, size: 128, offset: 1664)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !766, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !766, file: !44, line: 1456, baseType: !2836, size: 2432, offset: 1856)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2837)
!2837 = !{!2838, !2839, !2840, !2842, !2874}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2836, file: !38, line: 519, baseType: !7, size: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2836, file: !38, line: 520, baseType: !932, size: 256, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2836, file: !38, line: 521, baseType: !2841, size: 192, offset: 320)
!2841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 192, elements: !454)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2836, file: !38, line: 522, baseType: !2843, size: 1728, offset: 512)
!2843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2844, size: 1728, elements: !454)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2845)
!2845 = !{!2846, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2844, file: !38, line: 223, baseType: !2847, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2849)
!2849 = !{!2850, !2851, !2864, !2865}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2848, file: !38, line: 444, baseType: !135, size: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2848, file: !38, line: 445, baseType: !2852, size: 64, offset: 64)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2854)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2855)
!2855 = !{!2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2854, file: !38, line: 311, baseType: !850, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2854, file: !38, line: 312, baseType: !850, size: 64, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2854, file: !38, line: 313, baseType: !850, size: 64, offset: 128)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2854, file: !38, line: 314, baseType: !850, size: 64, offset: 192)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2854, file: !38, line: 315, baseType: !2646, size: 64, offset: 256)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2854, file: !38, line: 316, baseType: !2646, size: 64, offset: 320)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2854, file: !38, line: 317, baseType: !2646, size: 64, offset: 384)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2854, file: !38, line: 318, baseType: !2718, size: 64, offset: 448)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2848, file: !38, line: 446, baseType: !127, size: 64, offset: 128)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2848, file: !38, line: 447, baseType: !2847, size: 64, offset: 192)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2844, file: !38, line: 224, baseType: !135, size: 32, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2844, file: !38, line: 226, baseType: !288, size: 128, offset: 128)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2844, file: !38, line: 227, baseType: !308, size: 64, offset: 256)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2844, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2844, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2844, file: !38, line: 230, baseType: !2682, size: 64, offset: 384)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2844, file: !38, line: 231, baseType: !2682, size: 64, offset: 448)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2844, file: !38, line: 232, baseType: !132, size: 64, offset: 512)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2836, file: !38, line: 523, baseType: !2875, size: 192, offset: 2240)
!2875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2852, size: 192, elements: !454)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !766, file: !44, line: 1458, baseType: !2877, size: 2112, offset: 4288)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2878)
!2878 = !{!2879, !2880, !2881}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2877, file: !44, line: 1411, baseType: !135, size: 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2877, file: !44, line: 1412, baseType: !1639, size: 128, offset: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2877, file: !44, line: 1413, baseType: !2882, size: 1920, offset: 192)
!2882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2883, size: 1920, elements: !454)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2884, line: 12, size: 640, elements: !2885)
!2884 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2885 = !{!2886, !2894, !2895, !2900, !2901}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2883, file: !2884, line: 13, baseType: !2887, size: 320)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2888, line: 17, size: 320, elements: !2889)
!2888 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2889 = !{!2890, !2891, !2892, !2893}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2887, file: !2888, line: 18, baseType: !135, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2887, file: !2888, line: 19, baseType: !135, size: 32, offset: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2887, file: !2888, line: 20, baseType: !1639, size: 128, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2887, file: !2888, line: 22, baseType: !542, size: 128, align: 64, offset: 192)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2883, file: !2884, line: 14, baseType: !206, size: 64, offset: 320)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2883, file: !2884, line: 15, baseType: !2896, size: 64, offset: 384)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2897, line: 16, size: 64, elements: !2898)
!2897 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2898 = !{!2899}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2896, file: !2897, line: 17, baseType: !1377, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2883, file: !2884, line: 16, baseType: !1639, size: 128, offset: 448)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2883, file: !2884, line: 17, baseType: !912, size: 32, offset: 576)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !766, file: !44, line: 1465, baseType: !132, size: 64, offset: 6400)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !766, file: !44, line: 1468, baseType: !371, size: 32, offset: 6464)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !766, file: !44, line: 1470, baseType: !705, size: 64, offset: 6528)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !766, file: !44, line: 1471, baseType: !705, size: 64, offset: 6592)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !766, file: !44, line: 1473, baseType: !138, size: 32, offset: 6656)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !766, file: !44, line: 1474, baseType: !2908, size: 64, offset: 6720)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !766, file: !44, line: 1477, baseType: !2911, size: 256, offset: 6784)
!2911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 256, elements: !212)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !766, file: !44, line: 1478, baseType: !2913, size: 128, offset: 7040)
!2913 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2914, line: 18, baseType: !2915)
!2914 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2914, line: 16, size: 128, elements: !2916)
!2916 = !{!2917}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2915, file: !2914, line: 17, baseType: !2918, size: 128)
!2918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 128, elements: !1928)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !766, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !766, file: !44, line: 1481, baseType: !2921, size: 32, offset: 7200)
!2921 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !131, line: 150, baseType: !7)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !766, file: !44, line: 1487, baseType: !1334, size: 192, offset: 7232)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !766, file: !44, line: 1493, baseType: !149, size: 64, offset: 7424)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !766, file: !44, line: 1495, baseType: !2925, size: 64, offset: 7488)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2927)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !557, line: 135, size: 1024, align: 512, elements: !2928)
!2928 = !{!2929, !2933, !2934, !2941, !2947, !2951, !2955, !2959, !2960, !2964, !2968, !2973, !2977}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2927, file: !557, line: 136, baseType: !2930, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!135, !559, !7}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2927, file: !557, line: 137, baseType: !2930, size: 64, offset: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2927, file: !557, line: 138, baseType: !2935, size: 64, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!135, !2938, !2940}
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !560)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2927, file: !557, line: 139, baseType: !2942, size: 64, offset: 192)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!135, !2938, !7, !149, !2945}
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2927, file: !557, line: 141, baseType: !2948, size: 64, offset: 256)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!135, !2938}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2927, file: !557, line: 142, baseType: !2952, size: 64, offset: 320)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!135, !559}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2927, file: !557, line: 143, baseType: !2956, size: 64, offset: 384)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{null, !559}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2927, file: !557, line: 144, baseType: !2956, size: 64, offset: 448)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2927, file: !557, line: 145, baseType: !2961, size: 64, offset: 512)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{null, !559, !598}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2927, file: !557, line: 146, baseType: !2965, size: 64, offset: 576)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!168, !559, !168, !135}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2927, file: !557, line: 147, baseType: !2969, size: 64, offset: 640)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!555, !2972}
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2927, file: !557, line: 148, baseType: !2974, size: 64, offset: 704)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!135, !715, !656}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2927, file: !557, line: 149, baseType: !2978, size: 64, offset: 768)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!559, !559, !2981}
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !766, file: !44, line: 1500, baseType: !135, size: 32, offset: 7552)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !766, file: !44, line: 1502, baseType: !2985, size: 448, offset: 7616)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2630, line: 60, size: 448, elements: !2986)
!2986 = !{!2987, !2992, !2993, !2994, !2995, !2996, !2997}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2985, file: !2630, line: 61, baseType: !2988, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!308, !2991, !2628}
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2985, file: !2630, line: 63, baseType: !2988, size: 64, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2985, file: !2630, line: 66, baseType: !488, size: 64, offset: 128)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2985, file: !2630, line: 67, baseType: !135, size: 32, offset: 192)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2985, file: !2630, line: 68, baseType: !7, size: 32, offset: 224)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2985, file: !2630, line: 71, baseType: !288, size: 128, offset: 256)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2985, file: !2630, line: 77, baseType: !2998, size: 64, offset: 384)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !766, file: !44, line: 1505, baseType: !936, size: 64, offset: 8064)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !766, file: !44, line: 1508, baseType: !936, size: 64, offset: 8128)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !766, file: !44, line: 1511, baseType: !135, size: 32, offset: 8192)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !766, file: !44, line: 1514, baseType: !1072, size: 32, offset: 8224)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !766, file: !44, line: 1517, baseType: !3004, size: 64, offset: 8256)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2173, line: 18, flags: DIFlagFwdDecl)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !766, file: !44, line: 1518, baseType: !800, size: 64, offset: 8320)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !766, file: !44, line: 1525, baseType: !1675, size: 64, offset: 8384)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !766, file: !44, line: 1532, baseType: !3009, size: 64, offset: 8448)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3010, line: 52, size: 64, elements: !3011)
!3010 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3011 = !{!3012}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3009, file: !3010, line: 53, baseType: !3013, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3010, line: 40, size: 256, elements: !3015)
!3015 = !{!3016, !3017, !3022}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3014, file: !3010, line: 42, baseType: !413)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3014, file: !3010, line: 44, baseType: !3018, size: 192)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3010, line: 28, size: 192, elements: !3019)
!3019 = !{!3020, !3021}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3018, file: !3010, line: 29, baseType: !288, size: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3018, file: !3010, line: 31, baseType: !488, size: 64, offset: 128)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3014, file: !3010, line: 49, baseType: !488, size: 64, offset: 192)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !766, file: !44, line: 1533, baseType: !3009, size: 64, offset: 8512)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !766, file: !44, line: 1534, baseType: !542, size: 128, align: 64, offset: 8576)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !766, file: !44, line: 1535, baseType: !2172, size: 256, offset: 8704)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !766, file: !44, line: 1537, baseType: !1334, size: 192, offset: 8960)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !766, file: !44, line: 1542, baseType: !135, size: 32, offset: 9152)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !766, file: !44, line: 1545, baseType: !413, offset: 9184)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !766, file: !44, line: 1546, baseType: !288, size: 128, offset: 9216)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !766, file: !44, line: 1548, baseType: !413, offset: 9344)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !766, file: !44, line: 1549, baseType: !288, size: 128, offset: 9344)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !599, file: !44, line: 624, baseType: !899, size: 64, offset: 256)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !599, file: !44, line: 631, baseType: !308, size: 64, offset: 320)
!3034 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !44, line: 639, baseType: !3035, size: 32, offset: 384)
!3035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !44, line: 639, size: 32, elements: !3036)
!3036 = !{!3037, !3039}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3035, file: !44, line: 640, baseType: !3038, size: 32)
!3038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3035, file: !44, line: 641, baseType: !7, size: 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !599, file: !44, line: 643, baseType: !679, size: 32, offset: 416)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !599, file: !44, line: 644, baseType: !697, size: 64, offset: 448)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !599, file: !44, line: 645, baseType: !701, size: 128, offset: 512)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !599, file: !44, line: 646, baseType: !701, size: 128, offset: 640)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !599, file: !44, line: 647, baseType: !701, size: 128, offset: 768)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !599, file: !44, line: 648, baseType: !413, offset: 896)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !599, file: !44, line: 649, baseType: !178, size: 16, offset: 896)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !599, file: !44, line: 650, baseType: !184, size: 8, offset: 912)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !599, file: !44, line: 651, baseType: !184, size: 8, offset: 920)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !599, file: !44, line: 652, baseType: !2802, size: 64, offset: 960)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !599, file: !44, line: 659, baseType: !308, size: 64, offset: 1024)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !599, file: !44, line: 660, baseType: !932, size: 256, offset: 1088)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !599, file: !44, line: 662, baseType: !308, size: 64, offset: 1344)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !599, file: !44, line: 663, baseType: !308, size: 64, offset: 1408)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !599, file: !44, line: 665, baseType: !804, size: 128, offset: 1472)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !599, file: !44, line: 666, baseType: !288, size: 128, offset: 1600)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !599, file: !44, line: 675, baseType: !288, size: 128, offset: 1728)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !599, file: !44, line: 676, baseType: !288, size: 128, offset: 1856)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !599, file: !44, line: 677, baseType: !288, size: 128, offset: 1984)
!3059 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !44, line: 678, baseType: !3060, size: 128, offset: 2112)
!3060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !44, line: 678, size: 128, elements: !3061)
!3061 = !{!3062, !3063}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3060, file: !44, line: 679, baseType: !800, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3060, file: !44, line: 680, baseType: !542, size: 128, align: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !599, file: !44, line: 682, baseType: !938, size: 64, offset: 2240)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !599, file: !44, line: 683, baseType: !938, size: 64, offset: 2304)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !599, file: !44, line: 684, baseType: !912, size: 32, offset: 2368)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !599, file: !44, line: 685, baseType: !912, size: 32, offset: 2400)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !599, file: !44, line: 686, baseType: !912, size: 32, offset: 2432)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !599, file: !44, line: 688, baseType: !912, size: 32, offset: 2464)
!3070 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !44, line: 690, baseType: !3071, size: 64, offset: 2496)
!3071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !44, line: 690, size: 64, elements: !3072)
!3072 = !{!3073, !3295}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3071, file: !44, line: 691, baseType: !3074, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3076)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !3077)
!3077 = !{!3078, !3079, !3083, !3088, !3092, !3093, !3094, !3098, !3111, !3112, !3119, !3123, !3124, !3128, !3129, !3133, !3138, !3139, !3143, !3147, !3255, !3259, !3260, !3264, !3265, !3269, !3273, !3278, !3282, !3286, !3290, !3294}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3076, file: !44, line: 1823, baseType: !127, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3076, file: !44, line: 1824, baseType: !3080, size: 64, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!697, !529, !697, !135}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3076, file: !44, line: 1825, baseType: !3084, size: 64, offset: 128)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!484, !529, !168, !499, !3087}
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3076, file: !44, line: 1826, baseType: !3089, size: 64, offset: 192)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!484, !529, !149, !499, !3087}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3076, file: !44, line: 1827, baseType: !1009, size: 64, offset: 256)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3076, file: !44, line: 1828, baseType: !1009, size: 64, offset: 320)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3076, file: !44, line: 1829, baseType: !3095, size: 64, offset: 384)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!135, !1012, !656}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3076, file: !44, line: 1830, baseType: !3099, size: 64, offset: 448)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!135, !529, !3102}
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !3104)
!3104 = !{!3105, !3110}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3103, file: !44, line: 1777, baseType: !3106, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !3107)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!135, !3102, !149, !135, !697, !336, !7}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3103, file: !44, line: 1778, baseType: !697, size: 64, offset: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3076, file: !44, line: 1831, baseType: !3099, size: 64, offset: 512)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3076, file: !44, line: 1832, baseType: !3113, size: 64, offset: 576)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!3116, !529, !3117}
!3116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !137, line: 52, baseType: !7)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !44, line: 56, flags: DIFlagFwdDecl)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3076, file: !44, line: 1833, baseType: !3120, size: 64, offset: 640)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!488, !529, !7, !308}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3076, file: !44, line: 1834, baseType: !3120, size: 64, offset: 704)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3076, file: !44, line: 1835, baseType: !3125, size: 64, offset: 768)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!135, !529, !1144}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3076, file: !44, line: 1836, baseType: !308, size: 64, offset: 832)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3076, file: !44, line: 1837, baseType: !3130, size: 64, offset: 896)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!135, !598, !529}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3076, file: !44, line: 1838, baseType: !3134, size: 64, offset: 960)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!135, !529, !3137}
!3137 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !132)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3076, file: !44, line: 1839, baseType: !3130, size: 64, offset: 1024)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3076, file: !44, line: 1840, baseType: !3140, size: 64, offset: 1088)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!135, !529, !697, !697, !135}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3076, file: !44, line: 1841, baseType: !3144, size: 64, offset: 1152)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!135, !135, !529, !135}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3076, file: !44, line: 1842, baseType: !3148, size: 64, offset: 1216)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!135, !529, !135, !3151}
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !3153)
!3153 = !{!3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3185, !3186, !3187, !3200, !3231}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3152, file: !44, line: 1063, baseType: !3151, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3152, file: !44, line: 1064, baseType: !288, size: 128, offset: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3152, file: !44, line: 1065, baseType: !804, size: 128, offset: 192)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3152, file: !44, line: 1066, baseType: !288, size: 128, offset: 320)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3152, file: !44, line: 1069, baseType: !288, size: 128, offset: 448)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3152, file: !44, line: 1072, baseType: !3137, size: 64, offset: 576)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3152, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3152, file: !44, line: 1074, baseType: !186, size: 8, offset: 672)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3152, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3152, file: !44, line: 1076, baseType: !135, size: 32, offset: 736)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3152, file: !44, line: 1077, baseType: !1639, size: 128, offset: 768)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3152, file: !44, line: 1078, baseType: !529, size: 64, offset: 896)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3152, file: !44, line: 1079, baseType: !697, size: 64, offset: 960)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3152, file: !44, line: 1080, baseType: !697, size: 64, offset: 1024)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3152, file: !44, line: 1082, baseType: !3169, size: 64, offset: 1088)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !3171)
!3171 = !{!3172, !3180, !3181, !3182, !3183, !3184}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3170, file: !44, line: 1315, baseType: !3173)
!3173 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3174, line: 20, baseType: !3175)
!3174 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3174, line: 11, elements: !3176)
!3176 = !{!3177}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3175, file: !3174, line: 12, baseType: !3178)
!3178 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !425, line: 33, baseType: !3179)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !425, line: 31, elements: !427)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3170, file: !44, line: 1316, baseType: !135, size: 32)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3170, file: !44, line: 1317, baseType: !135, size: 32, offset: 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3170, file: !44, line: 1318, baseType: !3169, size: 64, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3170, file: !44, line: 1319, baseType: !529, size: 64, offset: 128)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3170, file: !44, line: 1320, baseType: !542, size: 128, align: 64, offset: 192)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3152, file: !44, line: 1084, baseType: !308, size: 64, offset: 1152)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3152, file: !44, line: 1085, baseType: !308, size: 64, offset: 1216)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3152, file: !44, line: 1087, baseType: !3188, size: 64, offset: 1280)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3190)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3191)
!3191 = !{!3192, !3196}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3190, file: !44, line: 1012, baseType: !3193, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{null, !3151, !3151}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3190, file: !44, line: 1013, baseType: !3197, size: 64, offset: 64)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{null, !3151}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3152, file: !44, line: 1088, baseType: !3201, size: 64, offset: 1344)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3203)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3204)
!3204 = !{!3205, !3209, !3213, !3214, !3218, !3222, !3226, !3230}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3203, file: !44, line: 1017, baseType: !3206, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!3137, !3137}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3203, file: !44, line: 1018, baseType: !3210, size: 64, offset: 64)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{null, !3137}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3203, file: !44, line: 1019, baseType: !3197, size: 64, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3203, file: !44, line: 1020, baseType: !3215, size: 64, offset: 192)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!135, !3151, !135}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3203, file: !44, line: 1021, baseType: !3219, size: 64, offset: 256)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!656, !3151}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3203, file: !44, line: 1022, baseType: !3223, size: 64, offset: 320)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!135, !3151, !135, !291}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3203, file: !44, line: 1023, baseType: !3227, size: 64, offset: 384)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{null, !3151, !986}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3203, file: !44, line: 1024, baseType: !3219, size: 64, offset: 448)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3152, file: !44, line: 1097, baseType: !3232, size: 256, offset: 1408)
!3232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3152, file: !44, line: 1089, size: 256, elements: !3233)
!3233 = !{!3234, !3243, !3249}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3232, file: !44, line: 1090, baseType: !3235, size: 256)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3236, line: 10, size: 256, elements: !3237)
!3236 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3237 = !{!3238, !3239, !3242}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3235, file: !3236, line: 11, baseType: !371, size: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3235, file: !3236, line: 12, baseType: !3240, size: 64, offset: 64)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3236, line: 5, flags: DIFlagFwdDecl)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3235, file: !3236, line: 13, baseType: !288, size: 128, offset: 128)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3232, file: !44, line: 1091, baseType: !3244, size: 64)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3236, line: 17, size: 64, elements: !3245)
!3245 = !{!3246}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3244, file: !3236, line: 18, baseType: !3247, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3236, line: 16, flags: DIFlagFwdDecl)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3232, file: !44, line: 1096, baseType: !3250, size: 192)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3232, file: !44, line: 1092, size: 192, elements: !3251)
!3251 = !{!3252, !3253, !3254}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3250, file: !44, line: 1093, baseType: !288, size: 128)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3250, file: !44, line: 1094, baseType: !135, size: 32, offset: 128)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3250, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3076, file: !44, line: 1843, baseType: !3256, size: 64, offset: 1280)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!484, !529, !886, !135, !499, !3087, !135}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3076, file: !44, line: 1844, baseType: !1264, size: 64, offset: 1344)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3076, file: !44, line: 1845, baseType: !3261, size: 64, offset: 1408)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!135, !135}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3076, file: !44, line: 1846, baseType: !3148, size: 64, offset: 1472)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3076, file: !44, line: 1847, baseType: !3266, size: 64, offset: 1536)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!484, !2313, !529, !3087, !499, !7}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3076, file: !44, line: 1848, baseType: !3270, size: 64, offset: 1600)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!484, !529, !3087, !2313, !499, !7}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3076, file: !44, line: 1849, baseType: !3274, size: 64, offset: 1664)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!135, !529, !488, !3277, !986}
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3076, file: !44, line: 1850, baseType: !3279, size: 64, offset: 1728)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!488, !529, !135, !697, !697}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3076, file: !44, line: 1852, baseType: !3283, size: 64, offset: 1792)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{null, !876, !529}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3076, file: !44, line: 1856, baseType: !3287, size: 64, offset: 1856)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!484, !529, !697, !529, !697, !499, !7}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3076, file: !44, line: 1858, baseType: !3291, size: 64, offset: 1920)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!697, !529, !697, !529, !697, !697, !7}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3076, file: !44, line: 1861, baseType: !3140, size: 64, offset: 1984)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3071, file: !44, line: 692, baseType: !829, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !599, file: !44, line: 694, baseType: !3297, size: 64, offset: 2560)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3299)
!3299 = !{!3300, !3301, !3302, !3303}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3298, file: !44, line: 1101, baseType: !413)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3298, file: !44, line: 1102, baseType: !288, size: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3298, file: !44, line: 1103, baseType: !288, size: 128, offset: 128)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3298, file: !44, line: 1104, baseType: !288, size: 128, offset: 256)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !599, file: !44, line: 695, baseType: !900, size: 1216, align: 64, offset: 2624)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !599, file: !44, line: 696, baseType: !288, size: 128, offset: 3840)
!3306 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !44, line: 697, baseType: !3307, size: 64, offset: 3968)
!3307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !44, line: 697, size: 64, elements: !3308)
!3308 = !{!3309, !3310, !3311, !3314, !3315}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3307, file: !44, line: 698, baseType: !2313, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3307, file: !44, line: 699, baseType: !2827, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3307, file: !44, line: 700, baseType: !3312, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3307, file: !44, line: 701, baseType: !168, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3307, file: !44, line: 702, baseType: !7, size: 32)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !599, file: !44, line: 705, baseType: !138, size: 32, offset: 4032)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !599, file: !44, line: 708, baseType: !138, size: 32, offset: 4064)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !599, file: !44, line: 709, baseType: !2908, size: 64, offset: 4096)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !599, file: !44, line: 720, baseType: !132, size: 64, offset: 4160)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !560, file: !557, line: 98, baseType: !3321, size: 256, offset: 448)
!3321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 256, elements: !212)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !560, file: !557, line: 101, baseType: !3323, size: 32, offset: 704)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3324, line: 25, size: 32, elements: !3325)
!3324 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3325 = !{!3326}
!3326 = !DIDerivedType(tag: DW_TAG_member, scope: !3323, file: !3324, line: 26, baseType: !3327, size: 32)
!3327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3323, file: !3324, line: 26, size: 32, elements: !3328)
!3328 = !{!3329}
!3329 = !DIDerivedType(tag: DW_TAG_member, scope: !3327, file: !3324, line: 30, baseType: !3330, size: 32)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3327, file: !3324, line: 30, size: 32, elements: !3331)
!3331 = !{!3332, !3333}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3330, file: !3324, line: 31, baseType: !413)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3330, file: !3324, line: 32, baseType: !135, size: 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !560, file: !557, line: 102, baseType: !2925, size: 64, offset: 768)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !560, file: !557, line: 103, baseType: !765, size: 64, offset: 832)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !560, file: !557, line: 104, baseType: !308, size: 64, offset: 896)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !560, file: !557, line: 105, baseType: !132, size: 64, offset: 960)
!3338 = !DIDerivedType(tag: DW_TAG_member, scope: !560, file: !557, line: 107, baseType: !3339, size: 128, offset: 1024)
!3339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !560, file: !557, line: 107, size: 128, elements: !3340)
!3340 = !{!3341, !3342}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3339, file: !557, line: 108, baseType: !288, size: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3339, file: !557, line: 109, baseType: !3343, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !560, file: !557, line: 111, baseType: !288, size: 128, offset: 1152)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !560, file: !557, line: 112, baseType: !288, size: 128, offset: 1280)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !560, file: !557, line: 120, baseType: !3347, size: 128, offset: 1408)
!3347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !560, file: !557, line: 116, size: 128, elements: !3348)
!3348 = !{!3349, !3350, !3351}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3347, file: !557, line: 117, baseType: !804, size: 128)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3347, file: !557, line: 118, baseType: !574, size: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3347, file: !557, line: 119, baseType: !542, size: 128, align: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !530, file: !44, line: 922, baseType: !598, size: 64, offset: 256)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !530, file: !44, line: 923, baseType: !3074, size: 64, offset: 320)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !530, file: !44, line: 929, baseType: !413, offset: 384)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !530, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !530, file: !44, line: 931, baseType: !936, size: 64, offset: 448)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !530, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !530, file: !44, line: 933, baseType: !2921, size: 32, offset: 544)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !530, file: !44, line: 934, baseType: !1334, size: 192, offset: 576)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !530, file: !44, line: 935, baseType: !697, size: 64, offset: 768)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !530, file: !44, line: 936, baseType: !3362, size: 192, offset: 832)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3363)
!3363 = !{!3364, !3365, !3366, !3367, !3368, !3369}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3362, file: !44, line: 886, baseType: !3173)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3362, file: !44, line: 887, baseType: !1629, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3362, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3362, file: !44, line: 889, baseType: !604, size: 32, offset: 96)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3362, file: !44, line: 889, baseType: !604, size: 32, offset: 128)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3362, file: !44, line: 890, baseType: !135, size: 32, offset: 160)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !530, file: !44, line: 937, baseType: !1742, size: 64, offset: 1024)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !530, file: !44, line: 938, baseType: !3372, size: 256, offset: 1088)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3373)
!3373 = !{!3374, !3375, !3376, !3377, !3378, !3379}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3372, file: !44, line: 897, baseType: !308, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3372, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3372, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3372, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3372, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3372, file: !44, line: 904, baseType: !697, size: 64, offset: 192)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !530, file: !44, line: 940, baseType: !336, size: 64, offset: 1344)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !530, file: !44, line: 945, baseType: !132, size: 64, offset: 1408)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !530, file: !44, line: 949, baseType: !288, size: 128, offset: 1472)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !530, file: !44, line: 950, baseType: !288, size: 128, offset: 1600)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !530, file: !44, line: 952, baseType: !899, size: 64, offset: 1728)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !530, file: !44, line: 953, baseType: !1072, size: 32, offset: 1792)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !530, file: !44, line: 954, baseType: !1072, size: 32, offset: 1824)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !520, file: !478, line: 174, baseType: !526, size: 64, offset: 320)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !520, file: !478, line: 176, baseType: !3389, size: 64, offset: 384)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!135, !529, !406, !519, !1144}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !508, file: !478, line: 90, baseType: !503, size: 64, offset: 192)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !508, file: !478, line: 91, baseType: !3394, size: 64, offset: 256)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !468, file: !401, line: 143, baseType: !3396, size: 64, offset: 256)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!3399, !406}
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3401)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3402)
!3402 = !{!3403, !3404, !3408, !3412, !3418, !3422}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3401, file: !61, line: 40, baseType: !60, size: 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3401, file: !61, line: 41, baseType: !3405, size: 64, offset: 64)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!656}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3401, file: !61, line: 42, baseType: !3409, size: 64, offset: 128)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!132}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3401, file: !61, line: 43, baseType: !3413, size: 64, offset: 192)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!2341, !3416}
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3401, file: !61, line: 44, baseType: !3419, size: 64, offset: 256)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!2341}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3401, file: !61, line: 45, baseType: !170, size: 64, offset: 320)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !468, file: !401, line: 144, baseType: !3424, size: 64, offset: 320)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!2341, !406}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !468, file: !401, line: 145, baseType: !3428, size: 64, offset: 384)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{null, !406, !3431, !3432}
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !400, file: !401, line: 70, baseType: !3434, size: 64, offset: 384)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3436, line: 123, size: 1024, elements: !3437)
!3436 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!3437 = !{!3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3560, !3561, !3562, !3563, !3564}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3435, file: !3436, line: 124, baseType: !912, size: 32)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3435, file: !3436, line: 125, baseType: !912, size: 32, offset: 32)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3435, file: !3436, line: 135, baseType: !3434, size: 64, offset: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3435, file: !3436, line: 136, baseType: !149, size: 64, offset: 128)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3435, file: !3436, line: 138, baseType: !925, size: 192, align: 64, offset: 192)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3435, file: !3436, line: 140, baseType: !2341, size: 64, offset: 384)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3435, file: !3436, line: 141, baseType: !7, size: 32, offset: 448)
!3445 = !DIDerivedType(tag: DW_TAG_member, scope: !3435, file: !3436, line: 142, baseType: !3446, size: 256, offset: 512)
!3446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3435, file: !3436, line: 142, size: 256, elements: !3447)
!3447 = !{!3448, !3488, !3492}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3446, file: !3436, line: 143, baseType: !3449, size: 192)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3436, line: 91, size: 192, elements: !3450)
!3450 = !{!3451, !3452, !3453}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3449, file: !3436, line: 92, baseType: !308, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3449, file: !3436, line: 94, baseType: !921, size: 64, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3449, file: !3436, line: 100, baseType: !3454, size: 64, offset: 128)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3436, line: 180, size: 704, elements: !3456)
!3456 = !{!3457, !3458, !3459, !3460, !3461, !3462, !3486, !3487}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3455, file: !3436, line: 182, baseType: !3434, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3455, file: !3436, line: 183, baseType: !7, size: 32, offset: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3455, file: !3436, line: 186, baseType: !1662, size: 192, offset: 128)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3455, file: !3436, line: 187, baseType: !371, size: 32, offset: 320)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3455, file: !3436, line: 188, baseType: !371, size: 32, offset: 352)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3455, file: !3436, line: 189, baseType: !3463, size: 64, offset: 384)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !3436, line: 168, size: 320, elements: !3465)
!3465 = !{!3466, !3470, !3474, !3478, !3482}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3464, file: !3436, line: 169, baseType: !3467, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!135, !876, !3454}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3464, file: !3436, line: 171, baseType: !3471, size: 64, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!135, !3434, !149, !494}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3464, file: !3436, line: 173, baseType: !3475, size: 64, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!135, !3434}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3464, file: !3436, line: 174, baseType: !3479, size: 64, offset: 192)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!135, !3434, !3434, !149}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3464, file: !3436, line: 176, baseType: !3483, size: 64, offset: 256)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!135, !876, !3434, !3454}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3455, file: !3436, line: 192, baseType: !288, size: 128, offset: 448)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3455, file: !3436, line: 194, baseType: !1639, size: 128, offset: 576)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3446, file: !3436, line: 144, baseType: !3489, size: 64)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3436, line: 103, size: 64, elements: !3490)
!3490 = !{!3491}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3489, file: !3436, line: 104, baseType: !3434, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3446, file: !3436, line: 145, baseType: !3493, size: 256)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3436, line: 107, size: 256, elements: !3494)
!3494 = !{!3495, !3555, !3558, !3559}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3493, file: !3436, line: 108, baseType: !3496, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3498)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3436, line: 217, size: 768, elements: !3499)
!3499 = !{!3500, !3520, !3524, !3528, !3532, !3536, !3540, !3544, !3545, !3546, !3547, !3551}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3498, file: !3436, line: 222, baseType: !3501, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!135, !3504}
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3436, line: 197, size: 1088, elements: !3506)
!3506 = !{!3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3505, file: !3436, line: 199, baseType: !3434, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3505, file: !3436, line: 200, baseType: !529, size: 64, offset: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3505, file: !3436, line: 201, baseType: !876, size: 64, offset: 128)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3505, file: !3436, line: 202, baseType: !132, size: 64, offset: 192)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3505, file: !3436, line: 205, baseType: !1334, size: 192, offset: 256)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3505, file: !3436, line: 206, baseType: !1334, size: 192, offset: 448)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3505, file: !3436, line: 207, baseType: !135, size: 32, offset: 640)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3505, file: !3436, line: 208, baseType: !288, size: 128, offset: 704)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3505, file: !3436, line: 209, baseType: !168, size: 64, offset: 832)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3505, file: !3436, line: 211, baseType: !499, size: 64, offset: 896)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3505, file: !3436, line: 212, baseType: !656, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3505, file: !3436, line: 213, baseType: !656, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3505, file: !3436, line: 214, baseType: !1172, size: 64, offset: 1024)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3498, file: !3436, line: 223, baseType: !3521, size: 64, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{null, !3504}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3498, file: !3436, line: 236, baseType: !3525, size: 64, offset: 128)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!135, !876, !132}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3498, file: !3436, line: 238, baseType: !3529, size: 64, offset: 192)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!132, !876, !3087}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3498, file: !3436, line: 239, baseType: !3533, size: 64, offset: 256)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!132, !876, !132, !3087}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3498, file: !3436, line: 240, baseType: !3537, size: 64, offset: 320)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{null, !876, !132}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3498, file: !3436, line: 242, baseType: !3541, size: 64, offset: 384)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!484, !3504, !168, !499, !697}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3498, file: !3436, line: 252, baseType: !499, size: 64, offset: 448)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3498, file: !3436, line: 259, baseType: !656, size: 8, offset: 512)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3498, file: !3436, line: 260, baseType: !3541, size: 64, offset: 576)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3498, file: !3436, line: 263, baseType: !3548, size: 64, offset: 640)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!3116, !3504, !3117}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3498, file: !3436, line: 266, baseType: !3552, size: 64, offset: 704)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!135, !3504, !1144}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3493, file: !3436, line: 109, baseType: !3556, size: 64, offset: 64)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3436, line: 31, flags: DIFlagFwdDecl)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3493, file: !3436, line: 110, baseType: !697, size: 64, offset: 128)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3493, file: !3436, line: 111, baseType: !3434, size: 64, offset: 192)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3435, file: !3436, line: 148, baseType: !132, size: 64, offset: 768)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3435, file: !3436, line: 154, baseType: !336, size: 64, offset: 832)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3435, file: !3436, line: 156, baseType: !178, size: 16, offset: 896)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3435, file: !3436, line: 157, baseType: !494, size: 16, offset: 912)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3435, file: !3436, line: 158, baseType: !3565, size: 64, offset: 960)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3436, line: 32, flags: DIFlagFwdDecl)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !400, file: !401, line: 71, baseType: !1657, size: 32, offset: 448)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !400, file: !401, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !400, file: !401, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !400, file: !401, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !400, file: !401, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !400, file: !401, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !397, file: !73, line: 463, baseType: !396, size: 64, offset: 512)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !397, file: !73, line: 465, baseType: !3575, size: 64, offset: 576)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !397, file: !73, line: 467, baseType: !149, size: 64, offset: 640)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !397, file: !73, line: 468, baseType: !3579, size: 64, offset: 704)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3581)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3582)
!3582 = !{!3583, !3584, !3585, !3589, !3594, !3598}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3581, file: !73, line: 88, baseType: !149, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3581, file: !73, line: 89, baseType: !505, size: 64, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3581, file: !73, line: 90, baseType: !3586, size: 64, offset: 128)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!135, !396, !449}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3581, file: !73, line: 91, baseType: !3590, size: 64, offset: 192)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!168, !396, !3593, !3431, !3432}
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3581, file: !73, line: 93, baseType: !3595, size: 64, offset: 256)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{null, !396}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3581, file: !73, line: 95, baseType: !3599, size: 64, offset: 320)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3601)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3602)
!3602 = !{!3603, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3601, file: !80, line: 279, baseType: !3604, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!135, !396}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3601, file: !80, line: 280, baseType: !3595, size: 64, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3601, file: !80, line: 281, baseType: !3604, size: 64, offset: 128)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3601, file: !80, line: 282, baseType: !3604, size: 64, offset: 192)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3601, file: !80, line: 283, baseType: !3604, size: 64, offset: 256)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3601, file: !80, line: 284, baseType: !3604, size: 64, offset: 320)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3601, file: !80, line: 285, baseType: !3604, size: 64, offset: 384)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3601, file: !80, line: 286, baseType: !3604, size: 64, offset: 448)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3601, file: !80, line: 287, baseType: !3604, size: 64, offset: 512)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3601, file: !80, line: 288, baseType: !3604, size: 64, offset: 576)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3601, file: !80, line: 289, baseType: !3604, size: 64, offset: 640)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3601, file: !80, line: 290, baseType: !3604, size: 64, offset: 704)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3601, file: !80, line: 291, baseType: !3604, size: 64, offset: 768)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3601, file: !80, line: 292, baseType: !3604, size: 64, offset: 832)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3601, file: !80, line: 293, baseType: !3604, size: 64, offset: 896)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3601, file: !80, line: 294, baseType: !3604, size: 64, offset: 960)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3601, file: !80, line: 295, baseType: !3604, size: 64, offset: 1024)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3601, file: !80, line: 296, baseType: !3604, size: 64, offset: 1088)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3601, file: !80, line: 297, baseType: !3604, size: 64, offset: 1152)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3601, file: !80, line: 298, baseType: !3604, size: 64, offset: 1216)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3601, file: !80, line: 299, baseType: !3604, size: 64, offset: 1280)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3601, file: !80, line: 300, baseType: !3604, size: 64, offset: 1344)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3601, file: !80, line: 301, baseType: !3604, size: 64, offset: 1408)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !397, file: !73, line: 470, baseType: !3630, size: 64, offset: 768)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3632, line: 82, size: 1408, elements: !3633)
!3632 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3633 = !{!3634, !3635, !3636, !3637, !3638, !3639, !3640, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3713, !3716, !3717}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3631, file: !3632, line: 83, baseType: !149, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3631, file: !3632, line: 84, baseType: !149, size: 64, offset: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3631, file: !3632, line: 85, baseType: !396, size: 64, offset: 128)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3631, file: !3632, line: 86, baseType: !505, size: 64, offset: 192)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3631, file: !3632, line: 87, baseType: !505, size: 64, offset: 256)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3631, file: !3632, line: 88, baseType: !505, size: 64, offset: 320)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3631, file: !3632, line: 90, baseType: !3641, size: 64, offset: 384)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!135, !396, !3644}
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3646)
!3646 = !{!3647, !3648, !3649, !3650, !3651, !3652, !3653, !3665, !3677, !3678, !3679, !3680, !3681, !3689, !3690, !3691, !3692, !3693, !3694}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3645, file: !67, line: 96, baseType: !149, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3645, file: !67, line: 97, baseType: !3630, size: 64, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3645, file: !67, line: 99, baseType: !127, size: 64, offset: 128)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3645, file: !67, line: 100, baseType: !149, size: 64, offset: 192)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3645, file: !67, line: 102, baseType: !656, size: 8, offset: 256)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3645, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3645, file: !67, line: 105, baseType: !3654, size: 64, offset: 320)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3656)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !298, line: 262, size: 1600, elements: !3657)
!3657 = !{!3658, !3659, !3660, !3664}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3656, file: !298, line: 263, baseType: !2911, size: 256)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3656, file: !298, line: 264, baseType: !2911, size: 256, offset: 256)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3656, file: !298, line: 265, baseType: !3661, size: 1024, offset: 512)
!3661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 1024, elements: !3662)
!3662 = !{!3663}
!3663 = !DISubrange(count: 128)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3656, file: !298, line: 266, baseType: !2341, size: 64, offset: 1536)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3645, file: !67, line: 106, baseType: !3666, size: 64, offset: 384)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3668)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !298, line: 210, size: 256, elements: !3669)
!3669 = !{!3670, !3674, !3675, !3676}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3668, file: !298, line: 211, baseType: !3671, size: 72)
!3671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 72, elements: !3672)
!3672 = !{!3673}
!3673 = !DISubrange(count: 9)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3668, file: !298, line: 212, baseType: !307, size: 64, offset: 128)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3668, file: !298, line: 213, baseType: !138, size: 32, offset: 192)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3668, file: !298, line: 214, baseType: !138, size: 32, offset: 224)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3645, file: !67, line: 108, baseType: !3604, size: 64, offset: 448)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3645, file: !67, line: 109, baseType: !3595, size: 64, offset: 512)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3645, file: !67, line: 110, baseType: !3604, size: 64, offset: 576)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3645, file: !67, line: 111, baseType: !3595, size: 64, offset: 640)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3645, file: !67, line: 112, baseType: !3682, size: 64, offset: 704)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!135, !396, !3685}
!3685 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3686)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3687)
!3687 = !{!3688}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3686, file: !80, line: 51, baseType: !135, size: 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3645, file: !67, line: 113, baseType: !3604, size: 64, offset: 768)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3645, file: !67, line: 114, baseType: !505, size: 64, offset: 832)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3645, file: !67, line: 115, baseType: !505, size: 64, offset: 896)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3645, file: !67, line: 117, baseType: !3599, size: 64, offset: 960)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3645, file: !67, line: 118, baseType: !3595, size: 64, offset: 1024)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3645, file: !67, line: 120, baseType: !3695, size: 64, offset: 1088)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3631, file: !3632, line: 91, baseType: !3586, size: 64, offset: 448)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3631, file: !3632, line: 92, baseType: !3604, size: 64, offset: 512)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3631, file: !3632, line: 93, baseType: !3595, size: 64, offset: 576)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3631, file: !3632, line: 94, baseType: !3604, size: 64, offset: 640)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3631, file: !3632, line: 95, baseType: !3595, size: 64, offset: 704)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3631, file: !3632, line: 97, baseType: !3604, size: 64, offset: 768)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3631, file: !3632, line: 98, baseType: !3604, size: 64, offset: 832)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3631, file: !3632, line: 100, baseType: !3682, size: 64, offset: 896)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3631, file: !3632, line: 101, baseType: !3604, size: 64, offset: 960)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3631, file: !3632, line: 103, baseType: !3604, size: 64, offset: 1024)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3631, file: !3632, line: 105, baseType: !3604, size: 64, offset: 1088)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3631, file: !3632, line: 107, baseType: !3599, size: 64, offset: 1152)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3631, file: !3632, line: 109, baseType: !3710, size: 64, offset: 1216)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3712)
!3712 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3632, line: 109, flags: DIFlagFwdDecl)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3631, file: !3632, line: 111, baseType: !3714, size: 64, offset: 1280)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3632, line: 111, flags: DIFlagFwdDecl)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3631, file: !3632, line: 112, baseType: !810, offset: 1344)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3631, file: !3632, line: 114, baseType: !656, size: 8, offset: 1344)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !397, file: !73, line: 471, baseType: !3644, size: 64, offset: 832)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !397, file: !73, line: 473, baseType: !132, size: 64, offset: 896)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !397, file: !73, line: 475, baseType: !132, size: 64, offset: 960)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !397, file: !73, line: 480, baseType: !1334, size: 192, offset: 1024)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !397, file: !73, line: 484, baseType: !3723, size: 576, offset: 1216)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3724)
!3724 = !{!3725, !3726, !3727, !3728, !3729, !3730}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3723, file: !73, line: 362, baseType: !288, size: 128)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3723, file: !73, line: 363, baseType: !288, size: 128, offset: 128)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3723, file: !73, line: 364, baseType: !288, size: 128, offset: 256)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3723, file: !73, line: 365, baseType: !288, size: 128, offset: 384)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3723, file: !73, line: 366, baseType: !656, size: 8, offset: 512)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3723, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !397, file: !73, line: 485, baseType: !3732, size: 2304, offset: 1792)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3733)
!3733 = !{!3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3829, !3833}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3732, file: !80, line: 566, baseType: !3685, size: 32)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3732, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3732, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3732, file: !80, line: 569, baseType: !656, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3732, file: !80, line: 570, baseType: !656, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3732, file: !80, line: 571, baseType: !656, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3732, file: !80, line: 572, baseType: !656, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3732, file: !80, line: 573, baseType: !656, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3732, file: !80, line: 574, baseType: !656, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3732, file: !80, line: 575, baseType: !656, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3732, file: !80, line: 576, baseType: !656, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3732, file: !80, line: 577, baseType: !371, size: 32, offset: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3732, file: !80, line: 578, baseType: !413, offset: 96)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3732, file: !80, line: 580, baseType: !288, size: 128, offset: 128)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3732, file: !80, line: 581, baseType: !1697, size: 192, offset: 256)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3732, file: !80, line: 582, baseType: !3750, size: 64, offset: 448)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3752, line: 43, size: 1472, elements: !3753)
!3752 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3753 = !{!3754, !3755, !3756, !3757, !3758, !3761, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3751, file: !3752, line: 44, baseType: !149, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3751, file: !3752, line: 45, baseType: !135, size: 32, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3751, file: !3752, line: 46, baseType: !288, size: 128, offset: 128)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3751, file: !3752, line: 47, baseType: !413, offset: 256)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3751, file: !3752, line: 48, baseType: !3759, size: 64, offset: 256)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3751, file: !3752, line: 49, baseType: !3762, size: 320, offset: 320)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3763, line: 11, size: 320, elements: !3764)
!3763 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3764 = !{!3765, !3766, !3767, !3772}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3762, file: !3763, line: 16, baseType: !804, size: 128)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3762, file: !3763, line: 17, baseType: !308, size: 64, offset: 128)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3762, file: !3763, line: 18, baseType: !3768, size: 64, offset: 192)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{null, !3771}
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3762, file: !3763, line: 19, baseType: !371, size: 32, offset: 256)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3751, file: !3752, line: 50, baseType: !308, size: 64, offset: 640)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3751, file: !3752, line: 51, baseType: !1461, size: 64, offset: 704)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3751, file: !3752, line: 52, baseType: !1461, size: 64, offset: 768)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3751, file: !3752, line: 53, baseType: !1461, size: 64, offset: 832)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3751, file: !3752, line: 54, baseType: !1461, size: 64, offset: 896)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3751, file: !3752, line: 55, baseType: !1461, size: 64, offset: 960)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3751, file: !3752, line: 56, baseType: !308, size: 64, offset: 1024)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3751, file: !3752, line: 57, baseType: !308, size: 64, offset: 1088)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3751, file: !3752, line: 58, baseType: !308, size: 64, offset: 1152)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3751, file: !3752, line: 59, baseType: !308, size: 64, offset: 1216)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3751, file: !3752, line: 60, baseType: !308, size: 64, offset: 1280)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3751, file: !3752, line: 61, baseType: !396, size: 64, offset: 1344)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3751, file: !3752, line: 62, baseType: !656, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3751, file: !3752, line: 63, baseType: !656, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3732, file: !80, line: 583, baseType: !656, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3732, file: !80, line: 584, baseType: !656, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3732, file: !80, line: 585, baseType: !656, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3732, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3732, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3732, file: !80, line: 592, baseType: !1453, size: 512, offset: 576)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3732, file: !80, line: 593, baseType: !336, size: 64, offset: 1088)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3732, file: !80, line: 594, baseType: !2172, size: 256, offset: 1152)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3732, file: !80, line: 595, baseType: !1639, size: 128, offset: 1408)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3732, file: !80, line: 596, baseType: !3759, size: 64, offset: 1536)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3732, file: !80, line: 597, baseType: !912, size: 32, offset: 1600)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3732, file: !80, line: 598, baseType: !912, size: 32, offset: 1632)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3732, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3732, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3732, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3732, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3732, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3732, file: !80, line: 604, baseType: !656, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3732, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3732, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3732, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3732, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3732, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3732, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3732, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3732, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3732, file: !80, line: 613, baseType: !135, size: 32, offset: 1792)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3732, file: !80, line: 614, baseType: !135, size: 32, offset: 1824)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3732, file: !80, line: 615, baseType: !336, size: 64, offset: 1856)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3732, file: !80, line: 616, baseType: !336, size: 64, offset: 1920)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3732, file: !80, line: 617, baseType: !336, size: 64, offset: 1984)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3732, file: !80, line: 618, baseType: !336, size: 64, offset: 2048)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3732, file: !80, line: 620, baseType: !3820, size: 64, offset: 2112)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3822)
!3822 = !{!3823, !3824, !3825, !3826}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3821, file: !80, line: 537, baseType: !413)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3821, file: !80, line: 538, baseType: !7, size: 32)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3821, file: !80, line: 540, baseType: !288, size: 128, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3821, file: !80, line: 543, baseType: !3827, size: 64, offset: 192)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3732, file: !80, line: 621, baseType: !3830, size: 64, offset: 2176)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{null, !396, !1602}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3732, file: !80, line: 622, baseType: !3834, size: 64, offset: 2240)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !397, file: !73, line: 486, baseType: !3837, size: 64, offset: 4096)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3839)
!3839 = !{!3840, !3841, !3842, !3846, !3847, !3848}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3838, file: !80, line: 643, baseType: !3601, size: 1472)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3838, file: !80, line: 644, baseType: !3604, size: 64, offset: 1472)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3838, file: !80, line: 645, baseType: !3843, size: 64, offset: 1536)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{null, !396, !656}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3838, file: !80, line: 646, baseType: !3604, size: 64, offset: 1600)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3838, file: !80, line: 647, baseType: !3595, size: 64, offset: 1664)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3838, file: !80, line: 648, baseType: !3595, size: 64, offset: 1728)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !397, file: !73, line: 493, baseType: !3850, size: 64, offset: 4160)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3852)
!3852 = !{!3853, !3854, !3855, !4028, !4029, !4030, !4031, !4032, !4033, !4036, !4037, !4038, !4039, !4040, !4041, !4042}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3851, file: !94, line: 163, baseType: !288, size: 128)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3851, file: !94, line: 164, baseType: !149, size: 64, offset: 128)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3851, file: !94, line: 165, baseType: !3856, size: 64, offset: 192)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3858)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3859)
!3859 = !{!3860, !3978, !3989, !3994, !3998, !4005, !4009, !4013, !4020, !4024}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3858, file: !94, line: 106, baseType: !3861, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!135, !3850, !3864, !93}
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3866, line: 51, size: 1344, elements: !3867)
!3866 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3867 = !{!3868, !3869, !3871, !3872, !3962, !3971, !3972, !3973, !3974, !3975, !3976, !3977}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3865, file: !3866, line: 52, baseType: !149, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3865, file: !3866, line: 53, baseType: !3870, size: 32, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3866, line: 28, baseType: !371)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3865, file: !3866, line: 54, baseType: !149, size: 64, offset: 128)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3865, file: !3866, line: 55, baseType: !3873, size: 192, offset: 192)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3874, line: 17, size: 192, elements: !3875)
!3874 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3875 = !{!3876, !3878, !3961}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3873, file: !3874, line: 18, baseType: !3877, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3873, file: !3874, line: 19, baseType: !3879, size: 64, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3881)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3874, line: 110, size: 1152, elements: !3882)
!3882 = !{!3883, !3887, !3891, !3897, !3903, !3907, !3911, !3916, !3920, !3921, !3925, !3929, !3933, !3944, !3945, !3946, !3947, !3957}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3881, file: !3874, line: 111, baseType: !3884, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!3877, !3877}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3881, file: !3874, line: 112, baseType: !3888, size: 64, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{null, !3877}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3881, file: !3874, line: 113, baseType: !3892, size: 64, offset: 128)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!656, !3895}
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3873)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3881, file: !3874, line: 114, baseType: !3898, size: 64, offset: 192)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!2341, !3895, !3901}
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3881, file: !3874, line: 116, baseType: !3904, size: 64, offset: 256)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!656, !3895, !149}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3881, file: !3874, line: 118, baseType: !3908, size: 64, offset: 320)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!135, !3895, !149, !7, !132, !499}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3881, file: !3874, line: 123, baseType: !3912, size: 64, offset: 384)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!135, !3895, !149, !3915, !499}
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3881, file: !3874, line: 126, baseType: !3917, size: 64, offset: 448)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!149, !3895}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3881, file: !3874, line: 127, baseType: !3917, size: 64, offset: 512)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3881, file: !3874, line: 128, baseType: !3922, size: 64, offset: 576)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!3877, !3895}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3881, file: !3874, line: 130, baseType: !3926, size: 64, offset: 640)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!3877, !3895, !3877}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3881, file: !3874, line: 133, baseType: !3930, size: 64, offset: 704)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!3877, !3895, !149}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3881, file: !3874, line: 135, baseType: !3934, size: 64, offset: 768)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!135, !3895, !149, !149, !7, !7, !3937}
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3874, line: 43, size: 640, elements: !3939)
!3939 = !{!3940, !3941, !3942}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3938, file: !3874, line: 44, baseType: !3877, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3938, file: !3874, line: 45, baseType: !7, size: 32, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3938, file: !3874, line: 46, baseType: !3943, size: 512, offset: 128)
!3943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 512, elements: !1491)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3881, file: !3874, line: 140, baseType: !3926, size: 64, offset: 832)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3881, file: !3874, line: 143, baseType: !3922, size: 64, offset: 896)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3881, file: !3874, line: 145, baseType: !3884, size: 64, offset: 960)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3881, file: !3874, line: 146, baseType: !3948, size: 64, offset: 1024)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!135, !3895, !3951}
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3874, line: 29, size: 128, elements: !3953)
!3953 = !{!3954, !3955, !3956}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3952, file: !3874, line: 30, baseType: !7, size: 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3952, file: !3874, line: 31, baseType: !7, size: 32, offset: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3952, file: !3874, line: 32, baseType: !3895, size: 64, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3881, file: !3874, line: 148, baseType: !3958, size: 64, offset: 1088)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!135, !3895, !396}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3873, file: !3874, line: 20, baseType: !396, size: 64, offset: 128)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3865, file: !3866, line: 57, baseType: !3963, size: 64, offset: 384)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3866, line: 31, size: 704, elements: !3965)
!3965 = !{!3966, !3967, !3968, !3969, !3970}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3964, file: !3866, line: 32, baseType: !168, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3964, file: !3866, line: 33, baseType: !135, size: 32, offset: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3964, file: !3866, line: 34, baseType: !132, size: 64, offset: 128)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3964, file: !3866, line: 35, baseType: !3963, size: 64, offset: 192)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3964, file: !3866, line: 43, baseType: !520, size: 448, offset: 256)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3865, file: !3866, line: 58, baseType: !3963, size: 64, offset: 448)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3865, file: !3866, line: 59, baseType: !3864, size: 64, offset: 512)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3865, file: !3866, line: 60, baseType: !3864, size: 64, offset: 576)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3865, file: !3866, line: 61, baseType: !3864, size: 64, offset: 640)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3865, file: !3866, line: 63, baseType: !400, size: 512, offset: 704)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3865, file: !3866, line: 65, baseType: !308, size: 64, offset: 1216)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3865, file: !3866, line: 66, baseType: !132, size: 64, offset: 1280)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3858, file: !94, line: 108, baseType: !3979, size: 64, offset: 64)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!135, !3850, !3982, !93}
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3984)
!3984 = !{!3985, !3986, !3987}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3983, file: !94, line: 64, baseType: !3877, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3983, file: !94, line: 65, baseType: !135, size: 32, offset: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3983, file: !94, line: 66, baseType: !3988, size: 512, offset: 96)
!3988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 512, elements: !1928)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3858, file: !94, line: 110, baseType: !3990, size: 64, offset: 128)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!135, !3850, !7, !3993}
!3993 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !131, line: 164, baseType: !308)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3858, file: !94, line: 111, baseType: !3995, size: 64, offset: 192)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{null, !3850, !7}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3858, file: !94, line: 112, baseType: !3999, size: 64, offset: 256)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!135, !3850, !3864, !4002, !7, !4004, !206}
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3858, file: !94, line: 117, baseType: !4006, size: 64, offset: 320)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!135, !3850, !7, !7, !132}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3858, file: !94, line: 119, baseType: !4010, size: 64, offset: 384)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{null, !3850, !7, !7}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3858, file: !94, line: 121, baseType: !4014, size: 64, offset: 448)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!135, !3850, !4017, !656}
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4019, line: 11, flags: DIFlagFwdDecl)
!4019 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3858, file: !94, line: 122, baseType: !4021, size: 64, offset: 512)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{null, !3850, !4017}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3858, file: !94, line: 123, baseType: !4025, size: 64, offset: 576)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!135, !3850, !3982, !4004, !206}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3851, file: !94, line: 166, baseType: !132, size: 64, offset: 256)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3851, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3851, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3851, file: !94, line: 171, baseType: !3877, size: 64, offset: 384)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3851, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3851, file: !94, line: 173, baseType: !4034, size: 64, offset: 512)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3851, file: !94, line: 175, baseType: !3850, size: 64, offset: 576)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3851, file: !94, line: 182, baseType: !3993, size: 64, offset: 640)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3851, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3851, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3851, file: !94, line: 185, baseType: !904, size: 128, offset: 768)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3851, file: !94, line: 186, baseType: !1334, size: 192, offset: 896)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3851, file: !94, line: 187, baseType: !4043, offset: 1088)
!4043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2543)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !397, file: !73, line: 499, baseType: !288, size: 128, offset: 4224)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !397, file: !73, line: 502, baseType: !4046, size: 64, offset: 4352)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4048)
!4048 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !397, file: !73, line: 504, baseType: !4050, size: 64, offset: 4416)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !397, file: !73, line: 505, baseType: !336, size: 64, offset: 4480)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !397, file: !73, line: 510, baseType: !336, size: 64, offset: 4544)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !397, file: !73, line: 511, baseType: !4054, size: 64, offset: 4608)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4056)
!4056 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !397, file: !73, line: 513, baseType: !4058, size: 64, offset: 4672)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !4060)
!4060 = !{!4061, !4062}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4059, file: !73, line: 293, baseType: !7, size: 32)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4059, file: !73, line: 294, baseType: !308, size: 64, offset: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !397, file: !73, line: 515, baseType: !288, size: 128, offset: 4736)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !397, file: !73, line: 526, baseType: !4065, offset: 4864)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4066, line: 5, elements: !427)
!4066 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !397, file: !73, line: 528, baseType: !3864, size: 64, offset: 4864)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !397, file: !73, line: 529, baseType: !3877, size: 64, offset: 4928)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !397, file: !73, line: 534, baseType: !679, size: 32, offset: 4992)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !397, file: !73, line: 535, baseType: !371, size: 32, offset: 5024)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !397, file: !73, line: 537, baseType: !413, offset: 5056)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !397, file: !73, line: 538, baseType: !288, size: 128, offset: 5056)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !397, file: !73, line: 540, baseType: !4074, size: 64, offset: 5184)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4076, line: 54, size: 960, elements: !4077)
!4076 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4077 = !{!4078, !4079, !4080, !4081, !4082, !4083, !4084, !4088, !4092, !4093, !4094, !4095, !4099, !4103, !4104}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4075, file: !4076, line: 55, baseType: !149, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4075, file: !4076, line: 56, baseType: !127, size: 64, offset: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4075, file: !4076, line: 58, baseType: !505, size: 64, offset: 128)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4075, file: !4076, line: 59, baseType: !505, size: 64, offset: 192)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4075, file: !4076, line: 60, baseType: !406, size: 64, offset: 256)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4075, file: !4076, line: 62, baseType: !3586, size: 64, offset: 320)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4075, file: !4076, line: 63, baseType: !4085, size: 64, offset: 384)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!168, !396, !3593}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4075, file: !4076, line: 65, baseType: !4089, size: 64, offset: 448)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{null, !4074}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4075, file: !4076, line: 66, baseType: !3595, size: 64, offset: 512)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4075, file: !4076, line: 68, baseType: !3604, size: 64, offset: 576)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4075, file: !4076, line: 70, baseType: !3399, size: 64, offset: 640)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4075, file: !4076, line: 71, baseType: !4096, size: 64, offset: 704)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!2341, !396}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4075, file: !4076, line: 73, baseType: !4100, size: 64, offset: 768)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{null, !396, !3431, !3432}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4075, file: !4076, line: 75, baseType: !3599, size: 64, offset: 832)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4075, file: !4076, line: 77, baseType: !3714, size: 64, offset: 896)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !397, file: !73, line: 541, baseType: !505, size: 64, offset: 5248)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !397, file: !73, line: 543, baseType: !3595, size: 64, offset: 5312)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !397, file: !73, line: 544, baseType: !4108, size: 64, offset: 5376)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !397, file: !73, line: 545, baseType: !4111, size: 64, offset: 5440)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !397, file: !73, line: 547, baseType: !656, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !397, file: !73, line: 548, baseType: !656, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !397, file: !73, line: 549, baseType: !656, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !397, file: !73, line: 550, baseType: !656, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !319, file: !285, line: 635, baseType: !397, size: 5568, offset: 2304)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !319, file: !285, line: 636, baseType: !519, size: 64, offset: 7872)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !319, file: !285, line: 637, baseType: !519, size: 64, offset: 7936)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !319, file: !285, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !314, file: !285, line: 312, baseType: !318, size: 64, offset: 192)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !314, file: !285, line: 314, baseType: !132, size: 64, offset: 256)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !314, file: !285, line: 315, baseType: !381, size: 64, offset: 320)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !314, file: !285, line: 316, baseType: !4125, size: 64, offset: 384)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !285, line: 69, size: 832, elements: !4127)
!4127 = !{!4128, !4129, !4130, !4133, !4134}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4126, file: !285, line: 70, baseType: !318, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4126, file: !285, line: 71, baseType: !288, size: 128, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4126, file: !285, line: 72, baseType: !4131, size: 64, offset: 192)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !285, line: 72, flags: DIFlagFwdDecl)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4126, file: !285, line: 73, baseType: !186, size: 8, offset: 256)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4126, file: !285, line: 74, baseType: !400, size: 512, offset: 320)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !314, file: !285, line: 318, baseType: !7, size: 32, offset: 448)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !314, file: !285, line: 319, baseType: !178, size: 16, offset: 480)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !314, file: !285, line: 320, baseType: !178, size: 16, offset: 496)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !314, file: !285, line: 321, baseType: !178, size: 16, offset: 512)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !314, file: !285, line: 322, baseType: !178, size: 16, offset: 528)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !314, file: !285, line: 323, baseType: !7, size: 32, offset: 544)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !314, file: !285, line: 324, baseType: !184, size: 8, offset: 576)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !314, file: !285, line: 325, baseType: !184, size: 8, offset: 584)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !314, file: !285, line: 330, baseType: !184, size: 8, offset: 592)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !314, file: !285, line: 331, baseType: !184, size: 8, offset: 600)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !314, file: !285, line: 332, baseType: !184, size: 8, offset: 608)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !314, file: !285, line: 333, baseType: !184, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !314, file: !285, line: 334, baseType: !184, size: 8, offset: 624)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !314, file: !285, line: 335, baseType: !184, size: 8, offset: 632)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !314, file: !285, line: 336, baseType: !175, size: 16, offset: 640)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !314, file: !285, line: 337, baseType: !4004, size: 64, offset: 704)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !314, file: !285, line: 339, baseType: !4152, size: 64, offset: 768)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !314, file: !285, line: 340, baseType: !336, size: 64, offset: 832)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !314, file: !285, line: 346, baseType: !4059, size: 128, offset: 896)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !314, file: !285, line: 348, baseType: !4156, size: 32, offset: 1024)
!4156 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !285, line: 155, baseType: !135)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !314, file: !285, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !314, file: !285, line: 352, baseType: !184, size: 8, offset: 1064)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !314, file: !285, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !314, file: !285, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !314, file: !285, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !314, file: !285, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !314, file: !285, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !314, file: !285, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !314, file: !285, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !314, file: !285, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !314, file: !285, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !314, file: !285, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !314, file: !285, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !314, file: !285, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !314, file: !285, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !314, file: !285, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !314, file: !285, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !314, file: !285, line: 376, baseType: !7, size: 32, offset: 1120)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !314, file: !285, line: 377, baseType: !7, size: 32, offset: 1152)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !314, file: !285, line: 380, baseType: !4177, size: 64, offset: 1216)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !285, line: 303, flags: DIFlagFwdDecl)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !314, file: !285, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !314, file: !285, line: 383, baseType: !135, size: 32, offset: 1312)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !314, file: !285, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !314, file: !285, line: 387, baseType: !4183, size: 32, offset: 1376)
!4183 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !285, line: 180, baseType: !7)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !314, file: !285, line: 388, baseType: !397, size: 5568, offset: 1408)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !314, file: !285, line: 390, baseType: !135, size: 32, offset: 6976)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !314, file: !285, line: 396, baseType: !7, size: 32, offset: 7008)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !314, file: !285, line: 397, baseType: !4188, size: 8704, offset: 7040)
!4188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 8704, elements: !4189)
!4189 = !{!4190}
!4190 = !DISubrange(count: 17)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !314, file: !285, line: 399, baseType: !656, size: 8, offset: 15744)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !314, file: !285, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !314, file: !285, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !314, file: !285, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !314, file: !285, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !314, file: !285, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !314, file: !285, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !314, file: !285, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !314, file: !285, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !314, file: !285, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !314, file: !285, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !314, file: !285, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !314, file: !285, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !314, file: !285, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !314, file: !285, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !314, file: !285, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !314, file: !285, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !314, file: !285, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !314, file: !285, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !314, file: !285, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !314, file: !285, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !314, file: !285, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !314, file: !285, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !314, file: !285, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !314, file: !285, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !314, file: !285, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !314, file: !285, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !314, file: !285, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !314, file: !285, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !314, file: !285, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !314, file: !285, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !314, file: !285, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !314, file: !285, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !314, file: !285, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !314, file: !285, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !314, file: !285, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !314, file: !285, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !314, file: !285, line: 450, baseType: !4229, size: 16, offset: 15792)
!4229 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !285, line: 206, baseType: !178)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !314, file: !285, line: 451, baseType: !912, size: 32, offset: 15808)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !314, file: !285, line: 453, baseType: !3988, size: 512, offset: 15840)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !314, file: !285, line: 454, baseType: !800, size: 64, offset: 16384)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !314, file: !285, line: 455, baseType: !519, size: 64, offset: 16448)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !314, file: !285, line: 456, baseType: !135, size: 32, offset: 16512)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !314, file: !285, line: 457, baseType: !4236, size: 1088, offset: 16576)
!4236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 1088, elements: !4189)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !314, file: !285, line: 458, baseType: !4236, size: 1088, offset: 17664)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !314, file: !285, line: 469, baseType: !505, size: 64, offset: 18752)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !314, file: !285, line: 471, baseType: !4240, size: 64, offset: 18816)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !285, line: 304, flags: DIFlagFwdDecl)
!4242 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !285, line: 478, baseType: !4243, size: 64, offset: 18880)
!4243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !285, line: 478, size: 64, elements: !4244)
!4244 = !{!4245, !4248}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4243, file: !285, line: 479, baseType: !4246, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !285, line: 305, flags: DIFlagFwdDecl)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4243, file: !285, line: 480, baseType: !313, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !314, file: !285, line: 482, baseType: !175, size: 16, offset: 18944)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !314, file: !285, line: 483, baseType: !184, size: 8, offset: 18960)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !314, file: !285, line: 497, baseType: !175, size: 16, offset: 18976)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !314, file: !285, line: 498, baseType: !335, size: 64, offset: 19008)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !314, file: !285, line: 499, baseType: !499, size: 64, offset: 19072)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !314, file: !285, line: 500, baseType: !168, size: 64, offset: 19136)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !314, file: !285, line: 502, baseType: !308, size: 64, offset: 19200)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !284, file: !285, line: 863, baseType: !4257, size: 64, offset: 320)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{null, !313}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !284, file: !285, line: 864, baseType: !4261, size: 64, offset: 384)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!135, !313, !3685}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !284, file: !285, line: 865, baseType: !4265, size: 64, offset: 448)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!135, !313}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !284, file: !285, line: 866, baseType: !4257, size: 64, offset: 512)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !284, file: !285, line: 867, baseType: !4270, size: 64, offset: 576)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!135, !313, !135}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !284, file: !285, line: 868, baseType: !4274, size: 64, offset: 640)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4276)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !285, line: 795, size: 384, elements: !4277)
!4277 = !{!4278, !4283, !4287, !4288, !4289, !4290}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4276, file: !285, line: 797, baseType: !4279, size: 64)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!4282, !313, !4183}
!4282 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !285, line: 772, baseType: !7)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4276, file: !285, line: 801, baseType: !4284, size: 64, offset: 64)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!4282, !313}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4276, file: !285, line: 804, baseType: !4284, size: 64, offset: 128)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4276, file: !285, line: 807, baseType: !4257, size: 64, offset: 192)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4276, file: !285, line: 808, baseType: !4257, size: 64, offset: 256)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4276, file: !285, line: 811, baseType: !4257, size: 64, offset: 320)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !284, file: !285, line: 869, baseType: !505, size: 64, offset: 704)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !284, file: !285, line: 870, baseType: !3645, size: 1152, offset: 768)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !284, file: !285, line: 871, baseType: !4294, size: 128, offset: 1920)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !285, line: 759, size: 128, elements: !4295)
!4295 = !{!4296, !4297}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4294, file: !285, line: 760, baseType: !413)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4294, file: !285, line: 761, baseType: !288, size: 128)
!4298 = !DIGlobalVariableExpression(var: !4299, expr: !DIExpression())
!4299 = distinct !DIGlobalVariable(name: "carmine_devices", scope: !2, file: !3, line: 754, type: !4300, isLocal: true, isDefinition: true)
!4300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 512, elements: !1764)
!4301 = !DIGlobalVariableExpression(var: !4302, expr: !DIExpression())
!4302 = distinct !DIGlobalVariable(name: "carminefb_fix", scope: !2, file: !3, line: 82, type: !4303, isLocal: true, isDefinition: true)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fix_screeninfo", file: !4304, line: 157, size: 640, elements: !4305)
!4304 = !DIFile(filename: "./include/uapi/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!4305 = !{!4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4303, file: !4304, line: 158, baseType: !1927, size: 128)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "smem_start", scope: !4303, file: !4304, line: 159, baseType: !308, size: 64, offset: 128)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "smem_len", scope: !4303, file: !4304, line: 161, baseType: !138, size: 32, offset: 192)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4303, file: !4304, line: 162, baseType: !138, size: 32, offset: 224)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "type_aux", scope: !4303, file: !4304, line: 163, baseType: !138, size: 32, offset: 256)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "visual", scope: !4303, file: !4304, line: 164, baseType: !138, size: 32, offset: 288)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "xpanstep", scope: !4303, file: !4304, line: 165, baseType: !177, size: 16, offset: 320)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "ypanstep", scope: !4303, file: !4304, line: 166, baseType: !177, size: 16, offset: 336)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "ywrapstep", scope: !4303, file: !4304, line: 167, baseType: !177, size: 16, offset: 352)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !4303, file: !4304, line: 168, baseType: !138, size: 32, offset: 384)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_start", scope: !4303, file: !4304, line: 169, baseType: !308, size: 64, offset: 448)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_len", scope: !4303, file: !4304, line: 171, baseType: !138, size: 32, offset: 512)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !4303, file: !4304, line: 172, baseType: !138, size: 32, offset: 544)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !4303, file: !4304, line: 174, baseType: !177, size: 16, offset: 576)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4303, file: !4304, line: 175, baseType: !4321, size: 32, offset: 592)
!4321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 32, elements: !1764)
!4322 = !DIGlobalVariableExpression(var: !4323, expr: !DIExpression())
!4323 = distinct !DIGlobalVariable(name: "carminefb_ops", scope: !2, file: !3, line: 530, type: !4324, isLocal: true, isDefinition: true)
!4324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4325)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_ops", file: !4326, line: 228, size: 1472, elements: !4327)
!4326 = !DIFile(filename: "./include/linux/fb.h", directory: "/home/lizy2001/genbc/linux")
!4327 = !{!4328, !4329, !4653, !4654, !4658, !4662, !4667, !4668, !4672, !4677, !4681, !4682, !4696, !4710, !4727, !4744, !4745, !4749, !4750, !4754, !4765, !4766, !4767}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4325, file: !4326, line: 230, baseType: !127, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "fb_open", scope: !4325, file: !4326, line: 231, baseType: !4330, size: 64, offset: 64)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!135, !4333, !135}
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_info", file: !4326, line: 437, size: 8128, elements: !4335)
!4335 = !{!4336, !4337, !4338, !4339, !4340, !4341, !4342, !4380, !4381, !4442, !4443, !4461, !4462, !4472, !4473, !4474, !4522, !4523, !4525, !4532, !4547, !4549, !4550, !4551, !4552, !4631, !4636, !4637, !4638, !4639, !4640, !4641, !4652}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4334, file: !4326, line: 438, baseType: !912, size: 32)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4334, file: !4326, line: 439, baseType: !135, size: 32, offset: 32)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4334, file: !4326, line: 440, baseType: !135, size: 32, offset: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_rotate_hint", scope: !4334, file: !4326, line: 445, baseType: !135, size: 32, offset: 96)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4334, file: !4326, line: 446, baseType: !1334, size: 192, offset: 128)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock", scope: !4334, file: !4326, line: 447, baseType: !1334, size: 192, offset: 320)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !4334, file: !4326, line: 448, baseType: !4343, size: 1280, offset: 512)
!4343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_var_screeninfo", file: !4304, line: 242, size: 1280, elements: !4344)
!4344 = !{!4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !4343, file: !4304, line: 243, baseType: !138, size: 32)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !4343, file: !4304, line: 244, baseType: !138, size: 32, offset: 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "xres_virtual", scope: !4343, file: !4304, line: 245, baseType: !138, size: 32, offset: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "yres_virtual", scope: !4343, file: !4304, line: 246, baseType: !138, size: 32, offset: 96)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "xoffset", scope: !4343, file: !4304, line: 247, baseType: !138, size: 32, offset: 128)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "yoffset", scope: !4343, file: !4304, line: 248, baseType: !138, size: 32, offset: 160)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel", scope: !4343, file: !4304, line: 250, baseType: !138, size: 32, offset: 192)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "grayscale", scope: !4343, file: !4304, line: 251, baseType: !138, size: 32, offset: 224)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !4343, file: !4304, line: 253, baseType: !4354, size: 96, offset: 256)
!4354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_bitfield", file: !4304, line: 188, size: 96, elements: !4355)
!4355 = !{!4356, !4357, !4358}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4354, file: !4304, line: 189, baseType: !138, size: 32)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4354, file: !4304, line: 190, baseType: !138, size: 32, offset: 32)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "msb_right", scope: !4354, file: !4304, line: 191, baseType: !138, size: 32, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !4343, file: !4304, line: 254, baseType: !4354, size: 96, offset: 352)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !4343, file: !4304, line: 255, baseType: !4354, size: 96, offset: 448)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !4343, file: !4304, line: 256, baseType: !4354, size: 96, offset: 544)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "nonstd", scope: !4343, file: !4304, line: 258, baseType: !138, size: 32, offset: 640)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4343, file: !4304, line: 260, baseType: !138, size: 32, offset: 672)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4343, file: !4304, line: 262, baseType: !138, size: 32, offset: 704)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4343, file: !4304, line: 263, baseType: !138, size: 32, offset: 736)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "accel_flags", scope: !4343, file: !4304, line: 265, baseType: !138, size: 32, offset: 768)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !4343, file: !4304, line: 268, baseType: !138, size: 32, offset: 800)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !4343, file: !4304, line: 269, baseType: !138, size: 32, offset: 832)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !4343, file: !4304, line: 270, baseType: !138, size: 32, offset: 864)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !4343, file: !4304, line: 271, baseType: !138, size: 32, offset: 896)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !4343, file: !4304, line: 272, baseType: !138, size: 32, offset: 928)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !4343, file: !4304, line: 273, baseType: !138, size: 32, offset: 960)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !4343, file: !4304, line: 274, baseType: !138, size: 32, offset: 992)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4343, file: !4304, line: 275, baseType: !138, size: 32, offset: 1024)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !4343, file: !4304, line: 276, baseType: !138, size: 32, offset: 1056)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "rotate", scope: !4343, file: !4304, line: 277, baseType: !138, size: 32, offset: 1088)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !4343, file: !4304, line: 278, baseType: !138, size: 32, offset: 1120)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4343, file: !4304, line: 279, baseType: !4379, size: 128, offset: 1152)
!4379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 128, elements: !346)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "fix", scope: !4334, file: !4326, line: 449, baseType: !4303, size: 640, offset: 1792)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "monspecs", scope: !4334, file: !4326, line: 450, baseType: !4382, size: 1152, offset: 2432)
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_monspecs", file: !4326, line: 63, size: 1152, elements: !4383)
!4383 = !{!4384, !4395, !4413, !4415, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "chroma", scope: !4382, file: !4326, line: 64, baseType: !4385, size: 256)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_chroma", file: !4326, line: 52, size: 256, elements: !4386)
!4386 = !{!4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "redx", scope: !4385, file: !4326, line: 53, baseType: !138, size: 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "greenx", scope: !4385, file: !4326, line: 54, baseType: !138, size: 32, offset: 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "bluex", scope: !4385, file: !4326, line: 55, baseType: !138, size: 32, offset: 64)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "whitex", scope: !4385, file: !4326, line: 56, baseType: !138, size: 32, offset: 96)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "redy", scope: !4385, file: !4326, line: 57, baseType: !138, size: 32, offset: 128)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "greeny", scope: !4385, file: !4326, line: 58, baseType: !138, size: 32, offset: 160)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "bluey", scope: !4385, file: !4326, line: 59, baseType: !138, size: 32, offset: 192)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "whitey", scope: !4385, file: !4326, line: 60, baseType: !138, size: 32, offset: 224)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "modedb", scope: !4382, file: !4326, line: 65, baseType: !4396, size: 64, offset: 256)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_videomode", file: !4326, line: 766, size: 512, elements: !4398)
!4398 = !{!4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4397, file: !4326, line: 767, baseType: !149, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !4397, file: !4326, line: 768, baseType: !371, size: 32, offset: 64)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !4397, file: !4326, line: 769, baseType: !371, size: 32, offset: 96)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !4397, file: !4326, line: 770, baseType: !371, size: 32, offset: 128)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !4397, file: !4326, line: 771, baseType: !371, size: 32, offset: 160)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !4397, file: !4326, line: 772, baseType: !371, size: 32, offset: 192)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !4397, file: !4326, line: 773, baseType: !371, size: 32, offset: 224)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !4397, file: !4326, line: 774, baseType: !371, size: 32, offset: 256)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !4397, file: !4326, line: 775, baseType: !371, size: 32, offset: 288)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !4397, file: !4326, line: 776, baseType: !371, size: 32, offset: 320)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !4397, file: !4326, line: 777, baseType: !371, size: 32, offset: 352)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4397, file: !4326, line: 778, baseType: !371, size: 32, offset: 384)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !4397, file: !4326, line: 779, baseType: !371, size: 32, offset: 416)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !4397, file: !4326, line: 780, baseType: !371, size: 32, offset: 448)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !4382, file: !4326, line: 66, baseType: !4414, size: 32, offset: 320)
!4414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 32, elements: !346)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "monitor", scope: !4382, file: !4326, line: 67, baseType: !4416, size: 112, offset: 352)
!4416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 112, elements: !4417)
!4417 = !{!4418}
!4418 = !DISubrange(count: 14)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "serial_no", scope: !4382, file: !4326, line: 68, baseType: !4416, size: 112, offset: 464)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !4382, file: !4326, line: 69, baseType: !4416, size: 112, offset: 576)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "modedb_len", scope: !4382, file: !4326, line: 70, baseType: !138, size: 32, offset: 704)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !4382, file: !4326, line: 71, baseType: !138, size: 32, offset: 736)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !4382, file: !4326, line: 72, baseType: !138, size: 32, offset: 768)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !4382, file: !4326, line: 73, baseType: !138, size: 32, offset: 800)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "week", scope: !4382, file: !4326, line: 74, baseType: !138, size: 32, offset: 832)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "hfmin", scope: !4382, file: !4326, line: 75, baseType: !138, size: 32, offset: 864)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "hfmax", scope: !4382, file: !4326, line: 76, baseType: !138, size: 32, offset: 896)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmin", scope: !4382, file: !4326, line: 77, baseType: !138, size: 32, offset: 928)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmax", scope: !4382, file: !4326, line: 78, baseType: !138, size: 32, offset: 960)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !4382, file: !4326, line: 79, baseType: !177, size: 16, offset: 992)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !4382, file: !4326, line: 80, baseType: !177, size: 16, offset: 1008)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4382, file: !4326, line: 81, baseType: !177, size: 16, offset: 1024)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "vfmin", scope: !4382, file: !4326, line: 82, baseType: !177, size: 16, offset: 1040)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "vfmax", scope: !4382, file: !4326, line: 83, baseType: !177, size: 16, offset: 1056)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !4382, file: !4326, line: 84, baseType: !177, size: 16, offset: 1072)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "gtf", scope: !4382, file: !4326, line: 85, baseType: !177, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !4382, file: !4326, line: 86, baseType: !177, size: 16, offset: 1104)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4382, file: !4326, line: 87, baseType: !185, size: 8, offset: 1120)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4382, file: !4326, line: 88, baseType: !185, size: 8, offset: 1128)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "max_x", scope: !4382, file: !4326, line: 89, baseType: !185, size: 8, offset: 1136)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "max_y", scope: !4382, file: !4326, line: 90, baseType: !185, size: 8, offset: 1144)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4334, file: !4326, line: 451, baseType: !2172, size: 256, offset: 3584)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "pixmap", scope: !4334, file: !4326, line: 452, baseType: !4444, size: 448, offset: 3840)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_pixmap", file: !4326, line: 185, size: 448, elements: !4445)
!4445 = !{!4446, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4460}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4444, file: !4326, line: 186, baseType: !4447, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4444, file: !4326, line: 187, baseType: !371, size: 32, offset: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4444, file: !4326, line: 188, baseType: !371, size: 32, offset: 96)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "buf_align", scope: !4444, file: !4326, line: 189, baseType: !371, size: 32, offset: 128)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "scan_align", scope: !4444, file: !4326, line: 190, baseType: !371, size: 32, offset: 160)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "access_align", scope: !4444, file: !4326, line: 191, baseType: !371, size: 32, offset: 192)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4444, file: !4326, line: 192, baseType: !371, size: 32, offset: 224)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "blit_x", scope: !4444, file: !4326, line: 193, baseType: !371, size: 32, offset: 256)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "blit_y", scope: !4444, file: !4326, line: 194, baseType: !371, size: 32, offset: 288)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "writeio", scope: !4444, file: !4326, line: 198, baseType: !4457, size: 64, offset: 320)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{null, !4333, !132, !132, !7}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "readio", scope: !4444, file: !4326, line: 199, baseType: !4457, size: 64, offset: 384)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "sprite", scope: !4334, file: !4326, line: 453, baseType: !4444, size: 448, offset: 4288)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !4334, file: !4326, line: 454, baseType: !4463, size: 320, offset: 4736)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cmap", file: !4304, line: 282, size: 320, elements: !4464)
!4464 = !{!4465, !4466, !4467, !4469, !4470, !4471}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4463, file: !4304, line: 283, baseType: !138, size: 32)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4463, file: !4304, line: 284, baseType: !138, size: 32, offset: 32)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !4463, file: !4304, line: 285, baseType: !4468, size: 64, offset: 64)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !4463, file: !4304, line: 286, baseType: !4468, size: 64, offset: 128)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !4463, file: !4304, line: 287, baseType: !4468, size: 64, offset: 192)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !4463, file: !4304, line: 288, baseType: !4468, size: 64, offset: 256)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "modelist", scope: !4334, file: !4326, line: 455, baseType: !288, size: 128, offset: 5056)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4334, file: !4326, line: 456, baseType: !4396, size: 64, offset: 5184)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "bl_dev", scope: !4334, file: !4326, line: 462, baseType: !4475, size: 64, offset: 5248)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_device", file: !108, line: 280, size: 6912, elements: !4477)
!4477 = !{!4478, !4488, !4489, !4490, !4505, !4517, !4518, !4519, !4521}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "props", scope: !4476, file: !108, line: 284, baseType: !4479, size: 224)
!4479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_properties", file: !108, line: 182, size: 224, elements: !4480)
!4480 = !{!4481, !4482, !4483, !4484, !4485, !4486, !4487}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !4479, file: !108, line: 194, baseType: !135, size: 32)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !4479, file: !108, line: 203, baseType: !135, size: 32, offset: 32)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4479, file: !108, line: 219, baseType: !135, size: 32, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !4479, file: !108, line: 238, baseType: !135, size: 32, offset: 96)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4479, file: !108, line: 249, baseType: !107, size: 32, offset: 128)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4479, file: !108, line: 264, baseType: !7, size: 32, offset: 160)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4479, file: !108, line: 272, baseType: !114, size: 32, offset: 192)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "update_lock", scope: !4476, file: !108, line: 294, baseType: !1334, size: 192, offset: 256)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "ops_lock", scope: !4476, file: !108, line: 303, baseType: !1334, size: 192, offset: 448)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4476, file: !108, line: 312, baseType: !4491, size: 64, offset: 640)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4493)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_ops", file: !108, line: 120, size: 256, elements: !4494)
!4494 = !{!4495, !4496, !4500, !4501}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4493, file: !108, line: 128, baseType: !7, size: 32)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "update_status", scope: !4493, file: !108, line: 146, baseType: !4497, size: 64, offset: 64)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!135, !4475}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "get_brightness", scope: !4493, file: !108, line: 160, baseType: !4497, size: 64, offset: 128)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "check_fb", scope: !4493, file: !108, line: 174, baseType: !4502, size: 64, offset: 192)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!135, !4475, !4333}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "fb_notif", scope: !4476, file: !108, line: 317, baseType: !4506, size: 192, offset: 704)
!4506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4507, line: 54, size: 192, elements: !4508)
!4507 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!4508 = !{!4509, !4515, !4516}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4506, file: !4507, line: 55, baseType: !4510, size: 64)
!4510 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4507, line: 51, baseType: !4511)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!135, !4514, !308, !132}
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4506, file: !4507, line: 56, baseType: !4514, size: 64, offset: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4506, file: !4507, line: 57, baseType: !135, size: 32, offset: 128)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4476, file: !108, line: 322, baseType: !288, size: 128, offset: 896)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4476, file: !108, line: 327, baseType: !397, size: 5568, offset: 1024)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "fb_bl_on", scope: !4476, file: !108, line: 335, baseType: !4520, size: 256, offset: 6592)
!4520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !656, size: 256, elements: !212)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4476, file: !108, line: 340, baseType: !135, size: 32, offset: 6848)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "bl_curve_mutex", scope: !4334, file: !4326, line: 465, baseType: !1334, size: 192, offset: 5312)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "bl_curve", scope: !4334, file: !4326, line: 466, baseType: !4524, size: 1024, offset: 5504)
!4524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 1024, elements: !3662)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_work", scope: !4334, file: !4326, line: 469, baseType: !4526, size: 704, offset: 6528)
!4526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2173, line: 115, size: 704, elements: !4527)
!4527 = !{!4528, !4529, !4530, !4531}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4526, file: !2173, line: 116, baseType: !2172, size: 256)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4526, file: !2173, line: 117, baseType: !3762, size: 320, offset: 256)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4526, file: !2173, line: 120, baseType: !3004, size: 64, offset: 576)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4526, file: !2173, line: 121, baseType: !135, size: 32, offset: 640)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "fbdefio", scope: !4334, file: !4326, line: 470, baseType: !4533, size: 64, offset: 7232)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_deferred_io", file: !4326, line: 203, size: 512, elements: !4535)
!4535 = !{!4536, !4537, !4538, !4539, !4543}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !4534, file: !4326, line: 205, baseType: !308, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4534, file: !4326, line: 206, baseType: !1334, size: 192, offset: 64)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "pagelist", scope: !4534, file: !4326, line: 207, baseType: !288, size: 128, offset: 256)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "first_io", scope: !4534, file: !4326, line: 209, baseType: !4540, size: 64, offset: 384)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{null, !4333}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_io", scope: !4534, file: !4326, line: 210, baseType: !4544, size: 64, offset: 448)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DISubroutineType(types: !4546)
!4546 = !{null, !4333, !291}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "fbops", scope: !4334, file: !4326, line: 473, baseType: !4548, size: 64, offset: 7296)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4334, file: !4326, line: 474, baseType: !396, size: 64, offset: 7360)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4334, file: !4326, line: 475, baseType: !396, size: 64, offset: 7424)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "class_flag", scope: !4334, file: !4326, line: 476, baseType: !135, size: 32, offset: 7488)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "tileops", scope: !4334, file: !4326, line: 478, baseType: !4553, size: 64, offset: 7552)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tile_ops", file: !4326, line: 355, size: 384, elements: !4555)
!4555 = !{!4556, !4570, !4583, !4598, !4614, !4627}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "fb_settile", scope: !4554, file: !4326, line: 357, baseType: !4557, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{null, !4333, !4560}
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilemap", file: !4326, line: 306, size: 192, elements: !4562)
!4562 = !{!4563, !4564, !4565, !4566, !4567}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4561, file: !4326, line: 307, baseType: !138, size: 32)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4561, file: !4326, line: 308, baseType: !138, size: 32, offset: 32)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4561, file: !4326, line: 309, baseType: !138, size: 32, offset: 64)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4561, file: !4326, line: 310, baseType: !138, size: 32, offset: 96)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4561, file: !4326, line: 311, baseType: !4568, size: 64, offset: 128)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilecopy", scope: !4554, file: !4326, line: 362, baseType: !4571, size: 64, offset: 64)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{null, !4333, !4574}
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilearea", file: !4326, line: 326, size: 192, elements: !4576)
!4576 = !{!4577, !4578, !4579, !4580, !4581, !4582}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4575, file: !4326, line: 327, baseType: !138, size: 32)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4575, file: !4326, line: 328, baseType: !138, size: 32, offset: 32)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4575, file: !4326, line: 329, baseType: !138, size: 32, offset: 64)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4575, file: !4326, line: 330, baseType: !138, size: 32, offset: 96)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4575, file: !4326, line: 331, baseType: !138, size: 32, offset: 128)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4575, file: !4326, line: 332, baseType: !138, size: 32, offset: 160)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilefill", scope: !4554, file: !4326, line: 364, baseType: !4584, size: 64, offset: 128)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{null, !4333, !4587}
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilerect", file: !4326, line: 315, size: 256, elements: !4589)
!4589 = !{!4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597}
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4588, file: !4326, line: 316, baseType: !138, size: 32)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4588, file: !4326, line: 317, baseType: !138, size: 32, offset: 32)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4588, file: !4326, line: 318, baseType: !138, size: 32, offset: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4588, file: !4326, line: 319, baseType: !138, size: 32, offset: 96)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4588, file: !4326, line: 320, baseType: !138, size: 32, offset: 128)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4588, file: !4326, line: 321, baseType: !138, size: 32, offset: 160)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4588, file: !4326, line: 322, baseType: !138, size: 32, offset: 192)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4588, file: !4326, line: 323, baseType: !138, size: 32, offset: 224)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tileblit", scope: !4554, file: !4326, line: 366, baseType: !4599, size: 64, offset: 192)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{null, !4333, !4602}
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tileblit", file: !4326, line: 335, size: 320, elements: !4604)
!4604 = !{!4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4603, file: !4326, line: 336, baseType: !138, size: 32)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4603, file: !4326, line: 337, baseType: !138, size: 32, offset: 32)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4603, file: !4326, line: 338, baseType: !138, size: 32, offset: 64)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4603, file: !4326, line: 339, baseType: !138, size: 32, offset: 96)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4603, file: !4326, line: 340, baseType: !138, size: 32, offset: 128)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4603, file: !4326, line: 341, baseType: !138, size: 32, offset: 160)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4603, file: !4326, line: 342, baseType: !138, size: 32, offset: 192)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !4603, file: !4326, line: 343, baseType: !4613, size: 64, offset: 256)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "fb_tilecursor", scope: !4554, file: !4326, line: 368, baseType: !4615, size: 64, offset: 256)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{null, !4333, !4618}
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_tilecursor", file: !4326, line: 346, size: 192, elements: !4620)
!4620 = !{!4621, !4622, !4623, !4624, !4625, !4626}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4619, file: !4326, line: 347, baseType: !138, size: 32)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4619, file: !4326, line: 348, baseType: !138, size: 32, offset: 32)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4619, file: !4326, line: 349, baseType: !138, size: 32, offset: 64)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !4619, file: !4326, line: 350, baseType: !138, size: 32, offset: 96)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "fg", scope: !4619, file: !4326, line: 351, baseType: !138, size: 32, offset: 128)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "bg", scope: !4619, file: !4326, line: 352, baseType: !138, size: 32, offset: 160)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_tilemax", scope: !4554, file: !4326, line: 371, baseType: !4628, size: 64, offset: 320)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!135, !4333}
!4631 = !DIDerivedType(tag: DW_TAG_member, scope: !4334, file: !4326, line: 480, baseType: !4632, size: 64, offset: 7616)
!4632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4334, file: !4326, line: 480, size: 64, elements: !4633)
!4633 = !{!4634, !4635}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "screen_base", scope: !4632, file: !4326, line: 481, baseType: !168, size: 64)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "screen_buffer", scope: !4632, file: !4326, line: 482, baseType: !168, size: 64)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "screen_size", scope: !4334, file: !4326, line: 484, baseType: !308, size: 64, offset: 7680)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "pseudo_palette", scope: !4334, file: !4326, line: 485, baseType: !132, size: 64, offset: 7744)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4334, file: !4326, line: 488, baseType: !371, size: 32, offset: 7808)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_par", scope: !4334, file: !4326, line: 489, baseType: !132, size: 64, offset: 7872)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !4334, file: !4326, line: 491, baseType: !132, size: 64, offset: 7936)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "apertures", scope: !4334, file: !4326, line: 501, baseType: !4642, size: 64, offset: 8000)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apertures_struct", file: !4326, line: 495, size: 64, elements: !4644)
!4644 = !{!4645, !4646}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4643, file: !4326, line: 496, baseType: !7, size: 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4643, file: !4326, line: 500, baseType: !4647, offset: 64)
!4647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4648, elements: !1916)
!4648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aperture", file: !4326, line: 497, size: 128, elements: !4649)
!4649 = !{!4650, !4651}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4648, file: !4326, line: 498, baseType: !334, size: 64)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4648, file: !4326, line: 499, baseType: !334, size: 64, offset: 64)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "skip_vt_switch", scope: !4334, file: !4326, line: 503, baseType: !656, size: 8, offset: 8064)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "fb_release", scope: !4325, file: !4326, line: 232, baseType: !4330, size: 64, offset: 128)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "fb_read", scope: !4325, file: !4326, line: 237, baseType: !4655, size: 64, offset: 192)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{!484, !4333, !168, !499, !3087}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "fb_write", scope: !4325, file: !4326, line: 239, baseType: !4659, size: 64, offset: 256)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!484, !4333, !149, !499, !3087}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "fb_check_var", scope: !4325, file: !4326, line: 244, baseType: !4663, size: 64, offset: 320)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{!135, !4666, !4333}
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "fb_set_par", scope: !4325, file: !4326, line: 247, baseType: !4628, size: 64, offset: 384)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcolreg", scope: !4325, file: !4326, line: 250, baseType: !4669, size: 64, offset: 448)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!135, !7, !7, !7, !7, !7, !4333}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcmap", scope: !4325, file: !4326, line: 254, baseType: !4673, size: 64, offset: 512)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{!135, !4676, !4333}
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !4325, file: !4326, line: 257, baseType: !4678, size: 64, offset: 576)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{!135, !135, !4333}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "fb_pan_display", scope: !4325, file: !4326, line: 260, baseType: !4663, size: 64, offset: 640)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "fb_fillrect", scope: !4325, file: !4326, line: 263, baseType: !4683, size: 64, offset: 704)
!4683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4684, size: 64)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{null, !4333, !4686}
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4688)
!4688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fillrect", file: !4304, line: 351, size: 192, elements: !4689)
!4689 = !{!4690, !4691, !4692, !4693, !4694, !4695}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4688, file: !4304, line: 352, baseType: !138, size: 32)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4688, file: !4304, line: 353, baseType: !138, size: 32, offset: 32)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4688, file: !4304, line: 354, baseType: !138, size: 32, offset: 64)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4688, file: !4304, line: 355, baseType: !138, size: 32, offset: 96)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !4688, file: !4304, line: 356, baseType: !138, size: 32, offset: 128)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4688, file: !4304, line: 357, baseType: !138, size: 32, offset: 160)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "fb_copyarea", scope: !4325, file: !4326, line: 265, baseType: !4697, size: 64, offset: 768)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{null, !4333, !4700}
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4702)
!4702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_copyarea", file: !4304, line: 342, size: 192, elements: !4703)
!4703 = !{!4704, !4705, !4706, !4707, !4708, !4709}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4702, file: !4304, line: 343, baseType: !138, size: 32)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4702, file: !4304, line: 344, baseType: !138, size: 32, offset: 32)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4702, file: !4304, line: 345, baseType: !138, size: 32, offset: 64)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4702, file: !4304, line: 346, baseType: !138, size: 32, offset: 96)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !4702, file: !4304, line: 347, baseType: !138, size: 32, offset: 128)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !4702, file: !4304, line: 348, baseType: !138, size: 32, offset: 160)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "fb_imageblit", scope: !4325, file: !4326, line: 267, baseType: !4711, size: 64, offset: 832)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{null, !4333, !4714}
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4716)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_image", file: !4304, line: 360, size: 640, elements: !4717)
!4717 = !{!4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726}
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4716, file: !4304, line: 361, baseType: !138, size: 32)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !4716, file: !4304, line: 362, baseType: !138, size: 32, offset: 32)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4716, file: !4304, line: 363, baseType: !138, size: 32, offset: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4716, file: !4304, line: 364, baseType: !138, size: 32, offset: 96)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "fg_color", scope: !4716, file: !4304, line: 365, baseType: !138, size: 32, offset: 128)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "bg_color", scope: !4716, file: !4304, line: 366, baseType: !138, size: 32, offset: 160)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4716, file: !4304, line: 367, baseType: !185, size: 8, offset: 192)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4716, file: !4304, line: 368, baseType: !149, size: 64, offset: 256)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !4716, file: !4304, line: 369, baseType: !4463, size: 320, offset: 320)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "fb_cursor", scope: !4325, file: !4326, line: 270, baseType: !4728, size: 64, offset: 896)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{!135, !4333, !4731}
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cursor", file: !4304, line: 388, size: 832, elements: !4733)
!4733 = !{!4734, !4735, !4736, !4737, !4738, !4743}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4732, file: !4304, line: 389, baseType: !177, size: 16)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4732, file: !4304, line: 390, baseType: !177, size: 16, offset: 16)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !4732, file: !4304, line: 391, baseType: !177, size: 16, offset: 32)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4732, file: !4304, line: 392, baseType: !149, size: 64, offset: 64)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "hot", scope: !4732, file: !4304, line: 393, baseType: !4739, size: 32, offset: 128)
!4739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fbcurpos", file: !4304, line: 384, size: 32, elements: !4740)
!4740 = !{!4741, !4742}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4739, file: !4304, line: 385, baseType: !177, size: 16)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4739, file: !4304, line: 385, baseType: !177, size: 16, offset: 16)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "image", scope: !4732, file: !4304, line: 394, baseType: !4716, size: 640, offset: 192)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "fb_sync", scope: !4325, file: !4326, line: 273, baseType: !4628, size: 64, offset: 960)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "fb_ioctl", scope: !4325, file: !4326, line: 276, baseType: !4746, size: 64, offset: 1024)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!135, !4333, !7, !308}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "fb_compat_ioctl", scope: !4325, file: !4326, line: 280, baseType: !4746, size: 64, offset: 1088)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "fb_mmap", scope: !4325, file: !4326, line: 284, baseType: !4751, size: 64, offset: 1152)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!135, !4333, !1144}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_caps", scope: !4325, file: !4326, line: 287, baseType: !4755, size: 64, offset: 1216)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DISubroutineType(types: !4757)
!4757 = !{null, !4333, !4758, !4666}
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_blit_caps", file: !4326, line: 144, size: 128, elements: !4760)
!4760 = !{!4761, !4762, !4763, !4764}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4759, file: !4326, line: 145, baseType: !371, size: 32)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4759, file: !4326, line: 146, baseType: !371, size: 32, offset: 32)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4759, file: !4326, line: 147, baseType: !371, size: 32, offset: 64)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4759, file: !4326, line: 148, baseType: !371, size: 32, offset: 96)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "fb_destroy", scope: !4325, file: !4326, line: 291, baseType: !4540, size: 64, offset: 1280)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_enter", scope: !4325, file: !4326, line: 294, baseType: !4628, size: 64, offset: 1344)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_leave", scope: !4325, file: !4326, line: 295, baseType: !4628, size: 64, offset: 1408)
!4768 = !DIGlobalVariableExpression(var: !4769, expr: !DIExpression())
!4769 = distinct !DIGlobalVariable(name: "car_modes", scope: !2, file: !3, line: 101, type: !4770, isLocal: true, isDefinition: true)
!4770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4771, size: 576, elements: !1764)
!4771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "carmine_resolution", file: !3, line: 60, size: 288, elements: !4772)
!4772 = !{!4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "htp", scope: !4771, file: !3, line: 61, baseType: !371, size: 32)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "hsp", scope: !4771, file: !3, line: 62, baseType: !371, size: 32, offset: 32)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "hsw", scope: !4771, file: !3, line: 63, baseType: !371, size: 32, offset: 64)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "hdp", scope: !4771, file: !3, line: 64, baseType: !371, size: 32, offset: 96)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "vtr", scope: !4771, file: !3, line: 65, baseType: !371, size: 32, offset: 128)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "vsp", scope: !4771, file: !3, line: 66, baseType: !371, size: 32, offset: 160)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "vsw", scope: !4771, file: !3, line: 67, baseType: !371, size: 32, offset: 192)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "vdp", scope: !4771, file: !3, line: 68, baseType: !371, size: 32, offset: 224)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "disp_mode", scope: !4771, file: !3, line: 69, baseType: !371, size: 32, offset: 256)
!4782 = !DIGlobalVariableExpression(var: !4783, expr: !DIExpression())
!4783 = distinct !DIGlobalVariable(name: "carmine_modedb", scope: !2, file: !3, line: 89, type: !4784, isLocal: true, isDefinition: true)
!4784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4785, size: 1024, elements: !1764)
!4785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4397)
!4786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 144, elements: !4787)
!4787 = !{!4788}
!4788 = !DISubrange(count: 18)
!4789 = !{i32 7, !"Dwarf Version", i32 4}
!4790 = !{i32 2, !"Debug Info Version", i32 3}
!4791 = !{i32 1, !"wchar_size", i32 2}
!4792 = !{i32 1, !"Code Model", i32 2}
!4793 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4794 = distinct !DISubprogram(name: "carminefb_init", scope: !3, file: !3, line: 769, type: !4795, scopeLine: 770, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!135}
!4797 = !DILocation(line: 771, column: 8, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 771, column: 6)
!4799 = !DILocation(line: 771, column: 20, scope: !4798)
!4800 = !DILocation(line: 771, column: 6, scope: !4794)
!4801 = !DILocation(line: 773, column: 3, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 772, column: 51)
!4803 = !DILocation(line: 775, column: 3, scope: !4802)
!4804 = !DILocation(line: 777, column: 9, scope: !4794)
!4805 = !DILocation(line: 777, column: 2, scope: !4794)
!4806 = !DILocation(line: 778, column: 1, scope: !4794)
!4807 = distinct !DISubprogram(name: "carminefb_cleanup", scope: !3, file: !3, line: 781, type: !247, scopeLine: 782, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!4808 = !DILocation(line: 783, column: 2, scope: !4807)
!4809 = !DILocation(line: 784, column: 1, scope: !4807)
!4810 = distinct !DISubprogram(name: "carminefb_probe", scope: !3, file: !3, line: 610, type: !311, scopeLine: 611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!4811 = !DILocalVariable(name: "dev", arg: 1, scope: !4810, file: !3, line: 610, type: !313)
!4812 = !DILocation(line: 610, column: 44, scope: !4810)
!4813 = !DILocalVariable(name: "ent", arg: 2, scope: !4810, file: !3, line: 610, type: !295)
!4814 = !DILocation(line: 610, column: 77, scope: !4810)
!4815 = !DILocalVariable(name: "hw", scope: !4810, file: !3, line: 612, type: !4816)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "carmine_hw", file: !3, line: 54, size: 256, elements: !4818)
!4818 = !{!4819, !4820, !4821}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "v_regs", scope: !4817, file: !3, line: 55, baseType: !132, size: 64)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "screen_mem", scope: !4817, file: !3, line: 56, baseType: !132, size: 64, offset: 64)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !4817, file: !3, line: 57, baseType: !4822, size: 128, offset: 128)
!4822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4333, size: 128, elements: !1764)
!4823 = !DILocation(line: 612, column: 21, scope: !4810)
!4824 = !DILocalVariable(name: "device", scope: !4810, file: !3, line: 613, type: !396)
!4825 = !DILocation(line: 613, column: 17, scope: !4810)
!4826 = !DILocation(line: 613, column: 27, scope: !4810)
!4827 = !DILocation(line: 613, column: 32, scope: !4810)
!4828 = !DILocalVariable(name: "info", scope: !4810, file: !3, line: 614, type: !4333)
!4829 = !DILocation(line: 614, column: 18, scope: !4810)
!4830 = !DILocalVariable(name: "ret", scope: !4810, file: !3, line: 615, type: !135)
!4831 = !DILocation(line: 615, column: 6, scope: !4810)
!4832 = !DILocation(line: 617, column: 26, scope: !4810)
!4833 = !DILocation(line: 617, column: 8, scope: !4810)
!4834 = !DILocation(line: 617, column: 6, scope: !4810)
!4835 = !DILocation(line: 618, column: 6, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 618, column: 6)
!4837 = !DILocation(line: 618, column: 6, scope: !4810)
!4838 = !DILocation(line: 619, column: 10, scope: !4836)
!4839 = !DILocation(line: 619, column: 3, scope: !4836)
!4840 = !DILocation(line: 621, column: 6, scope: !4810)
!4841 = !DILocation(line: 622, column: 7, scope: !4810)
!4842 = !DILocation(line: 622, column: 5, scope: !4810)
!4843 = !DILocation(line: 623, column: 7, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 623, column: 6)
!4845 = !DILocation(line: 623, column: 6, scope: !4810)
!4846 = !DILocation(line: 624, column: 3, scope: !4844)
!4847 = !DILocation(line: 626, column: 29, scope: !4810)
!4848 = !DILocation(line: 626, column: 27, scope: !4810)
!4849 = !DILocation(line: 627, column: 27, scope: !4810)
!4850 = !DILocation(line: 627, column: 25, scope: !4810)
!4851 = !DILocation(line: 629, column: 7, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 629, column: 6)
!4853 = !DILocation(line: 629, column: 6, scope: !4810)
!4854 = !DILocation(line: 632, column: 3, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4852, file: !3, line: 631, column: 27)
!4856 = !DILocation(line: 633, column: 7, scope: !4855)
!4857 = !DILocation(line: 634, column: 3, scope: !4855)
!4858 = !DILocation(line: 636, column: 37, scope: !4810)
!4859 = !DILocation(line: 637, column: 18, scope: !4810)
!4860 = !DILocation(line: 637, column: 4, scope: !4810)
!4861 = !DILocation(line: 636, column: 15, scope: !4810)
!4862 = !DILocation(line: 636, column: 2, scope: !4810)
!4863 = !DILocation(line: 636, column: 6, scope: !4810)
!4864 = !DILocation(line: 636, column: 13, scope: !4810)
!4865 = !DILocation(line: 638, column: 7, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 638, column: 6)
!4867 = !DILocation(line: 638, column: 11, scope: !4866)
!4868 = !DILocation(line: 638, column: 6, scope: !4810)
!4869 = !DILocation(line: 639, column: 3, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4866, file: !3, line: 638, column: 19)
!4871 = !DILocation(line: 641, column: 3, scope: !4870)
!4872 = !DILocation(line: 644, column: 29, scope: !4810)
!4873 = !DILocation(line: 644, column: 27, scope: !4810)
!4874 = !DILocation(line: 645, column: 27, scope: !4810)
!4875 = !DILocation(line: 645, column: 25, scope: !4810)
!4876 = !DILocation(line: 651, column: 20, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 651, column: 6)
!4878 = !DILocation(line: 651, column: 29, scope: !4877)
!4879 = !DILocation(line: 651, column: 6, scope: !4810)
!4880 = !DILocation(line: 652, column: 26, scope: !4877)
!4881 = !DILocation(line: 652, column: 3, scope: !4877)
!4882 = !DILocation(line: 654, column: 25, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4877, file: !3, line: 654, column: 11)
!4884 = !DILocation(line: 654, column: 34, scope: !4883)
!4885 = !DILocation(line: 654, column: 11, scope: !4877)
!4886 = !DILocation(line: 656, column: 36, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 654, column: 62)
!4888 = !DILocation(line: 655, column: 3, scope: !4887)
!4889 = !DILocation(line: 658, column: 3, scope: !4887)
!4890 = !DILocation(line: 661, column: 7, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 661, column: 6)
!4892 = !DILocation(line: 661, column: 6, scope: !4810)
!4893 = !DILocation(line: 663, column: 3, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 662, column: 48)
!4895 = !DILocation(line: 664, column: 3, scope: !4894)
!4896 = !DILocation(line: 667, column: 41, scope: !4810)
!4897 = !DILocation(line: 668, column: 18, scope: !4810)
!4898 = !DILocation(line: 668, column: 4, scope: !4810)
!4899 = !DILocation(line: 667, column: 19, scope: !4810)
!4900 = !DILocation(line: 667, column: 2, scope: !4810)
!4901 = !DILocation(line: 667, column: 6, scope: !4810)
!4902 = !DILocation(line: 667, column: 17, scope: !4810)
!4903 = !DILocation(line: 669, column: 7, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 669, column: 6)
!4905 = !DILocation(line: 669, column: 11, scope: !4904)
!4906 = !DILocation(line: 669, column: 6, scope: !4810)
!4907 = !DILocation(line: 670, column: 3, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4904, file: !3, line: 669, column: 23)
!4909 = !DILocation(line: 671, column: 3, scope: !4908)
!4910 = !DILocation(line: 674, column: 22, scope: !4810)
!4911 = !DILocation(line: 674, column: 8, scope: !4810)
!4912 = !DILocation(line: 674, column: 6, scope: !4810)
!4913 = !DILocation(line: 675, column: 6, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 675, column: 6)
!4915 = !DILocation(line: 675, column: 6, scope: !4810)
!4916 = !DILocation(line: 676, column: 3, scope: !4914)
!4917 = !DILocation(line: 678, column: 7, scope: !4810)
!4918 = !DILocation(line: 679, column: 6, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 679, column: 6)
!4920 = !DILocation(line: 679, column: 18, scope: !4919)
!4921 = !DILocation(line: 679, column: 6, scope: !4810)
!4922 = !DILocation(line: 680, column: 26, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4919, file: !3, line: 679, column: 42)
!4924 = !DILocation(line: 680, column: 30, scope: !4923)
!4925 = !DILocation(line: 680, column: 37, scope: !4923)
!4926 = !DILocation(line: 681, column: 5, scope: !4923)
!4927 = !DILocation(line: 681, column: 9, scope: !4923)
!4928 = !DILocation(line: 682, column: 5, scope: !4923)
!4929 = !DILocation(line: 680, column: 9, scope: !4923)
!4930 = !DILocation(line: 680, column: 7, scope: !4923)
!4931 = !DILocation(line: 683, column: 7, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4923, file: !3, line: 683, column: 7)
!4933 = !DILocation(line: 683, column: 7, scope: !4923)
!4934 = !DILocation(line: 684, column: 4, scope: !4932)
!4935 = !DILocation(line: 685, column: 2, scope: !4923)
!4936 = !DILocation(line: 687, column: 14, scope: !4810)
!4937 = !DILocation(line: 687, column: 2, scope: !4810)
!4938 = !DILocation(line: 687, column: 6, scope: !4810)
!4939 = !DILocation(line: 687, column: 12, scope: !4810)
!4940 = !DILocation(line: 689, column: 7, scope: !4810)
!4941 = !DILocation(line: 690, column: 6, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4810, file: !3, line: 690, column: 6)
!4943 = !DILocation(line: 690, column: 18, scope: !4942)
!4944 = !DILocation(line: 690, column: 6, scope: !4810)
!4945 = !DILocation(line: 691, column: 26, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 690, column: 42)
!4947 = !DILocation(line: 691, column: 30, scope: !4946)
!4948 = !DILocation(line: 691, column: 37, scope: !4946)
!4949 = !DILocation(line: 692, column: 5, scope: !4946)
!4950 = !DILocation(line: 692, column: 9, scope: !4946)
!4951 = !DILocation(line: 693, column: 5, scope: !4946)
!4952 = !DILocation(line: 691, column: 9, scope: !4946)
!4953 = !DILocation(line: 691, column: 7, scope: !4946)
!4954 = !DILocation(line: 694, column: 7, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4946, file: !3, line: 694, column: 7)
!4956 = !DILocation(line: 694, column: 7, scope: !4946)
!4957 = !DILocation(line: 695, column: 4, scope: !4955)
!4958 = !DILocation(line: 696, column: 2, scope: !4946)
!4959 = !DILocation(line: 698, column: 14, scope: !4810)
!4960 = !DILocation(line: 698, column: 2, scope: !4810)
!4961 = !DILocation(line: 698, column: 6, scope: !4810)
!4962 = !DILocation(line: 698, column: 12, scope: !4810)
!4963 = !DILocation(line: 699, column: 7, scope: !4810)
!4964 = !DILocation(line: 701, column: 18, scope: !4810)
!4965 = !DILocation(line: 701, column: 23, scope: !4810)
!4966 = !DILocation(line: 701, column: 2, scope: !4810)
!4967 = !DILocation(line: 702, column: 2, scope: !4810)
!4968 = !DILabel(scope: !4810, name: "err_cleanup_fb0", file: !3, line: 704)
!4969 = !DILocation(line: 704, column: 1, scope: !4810)
!4970 = !DILocation(line: 705, column: 20, scope: !4810)
!4971 = !DILocation(line: 705, column: 24, scope: !4810)
!4972 = !DILocation(line: 705, column: 2, scope: !4810)
!4973 = !DILabel(scope: !4810, name: "err_deinit_hw", file: !3, line: 706)
!4974 = !DILocation(line: 706, column: 1, scope: !4810)
!4975 = !DILocation(line: 708, column: 15, scope: !4810)
!4976 = !DILocation(line: 708, column: 2, scope: !4810)
!4977 = !DILabel(scope: !4810, name: "err_unmap_screen", file: !3, line: 709)
!4978 = !DILocation(line: 709, column: 1, scope: !4810)
!4979 = !DILocation(line: 710, column: 10, scope: !4810)
!4980 = !DILocation(line: 710, column: 14, scope: !4810)
!4981 = !DILocation(line: 710, column: 2, scope: !4810)
!4982 = !DILabel(scope: !4810, name: "err_reg_smem", file: !3, line: 711)
!4983 = !DILocation(line: 711, column: 1, scope: !4810)
!4984 = !DILocation(line: 712, column: 2, scope: !4810)
!4985 = !DILabel(scope: !4810, name: "err_unmap_vregs", file: !3, line: 713)
!4986 = !DILocation(line: 713, column: 1, scope: !4810)
!4987 = !DILocation(line: 714, column: 10, scope: !4810)
!4988 = !DILocation(line: 714, column: 14, scope: !4810)
!4989 = !DILocation(line: 714, column: 2, scope: !4810)
!4990 = !DILabel(scope: !4810, name: "err_free_reg_mmio", file: !3, line: 715)
!4991 = !DILocation(line: 715, column: 1, scope: !4810)
!4992 = !DILocation(line: 716, column: 2, scope: !4810)
!4993 = !DILabel(scope: !4810, name: "err_free_hw", file: !3, line: 717)
!4994 = !DILocation(line: 717, column: 1, scope: !4810)
!4995 = !DILocation(line: 718, column: 8, scope: !4810)
!4996 = !DILocation(line: 718, column: 2, scope: !4810)
!4997 = !DILabel(scope: !4810, name: "err_enable_pci", file: !3, line: 719)
!4998 = !DILocation(line: 719, column: 1, scope: !4810)
!4999 = !DILocation(line: 720, column: 21, scope: !4810)
!5000 = !DILocation(line: 720, column: 2, scope: !4810)
!5001 = !DILocation(line: 721, column: 9, scope: !4810)
!5002 = !DILocation(line: 721, column: 2, scope: !4810)
!5003 = !DILocation(line: 722, column: 1, scope: !4810)
!5004 = distinct !DISubprogram(name: "carminefb_remove", scope: !3, file: !3, line: 724, type: !4258, scopeLine: 725, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5005 = !DILocalVariable(name: "dev", arg: 1, scope: !5004, file: !3, line: 724, type: !313)
!5006 = !DILocation(line: 724, column: 46, scope: !5004)
!5007 = !DILocalVariable(name: "hw", scope: !5004, file: !3, line: 726, type: !4816)
!5008 = !DILocation(line: 726, column: 21, scope: !5004)
!5009 = !DILocation(line: 726, column: 42, scope: !5004)
!5010 = !DILocation(line: 726, column: 26, scope: !5004)
!5011 = !DILocalVariable(name: "fix", scope: !5004, file: !3, line: 727, type: !4303)
!5012 = !DILocation(line: 727, column: 27, scope: !5004)
!5013 = !DILocalVariable(name: "i", scope: !5004, file: !3, line: 728, type: !135)
!5014 = !DILocation(line: 728, column: 6, scope: !5004)
!5015 = !DILocation(line: 731, column: 6, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 731, column: 6)
!5017 = !DILocation(line: 731, column: 10, scope: !5016)
!5018 = !DILocation(line: 731, column: 6, scope: !5004)
!5019 = !DILocation(line: 732, column: 9, scope: !5016)
!5020 = !DILocation(line: 732, column: 13, scope: !5016)
!5021 = !DILocation(line: 732, column: 20, scope: !5016)
!5022 = !DILocation(line: 732, column: 3, scope: !5016)
!5023 = !DILocation(line: 734, column: 9, scope: !5016)
!5024 = !DILocation(line: 734, column: 13, scope: !5016)
!5025 = !DILocation(line: 734, column: 20, scope: !5016)
!5026 = !DILocation(line: 737, column: 15, scope: !5004)
!5027 = !DILocation(line: 737, column: 2, scope: !5004)
!5028 = !DILocation(line: 738, column: 15, scope: !5004)
!5029 = !DILocation(line: 738, column: 2, scope: !5004)
!5030 = !DILocation(line: 739, column: 15, scope: !5004)
!5031 = !DILocation(line: 739, column: 2, scope: !5004)
!5032 = !DILocation(line: 741, column: 9, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5004, file: !3, line: 741, column: 2)
!5034 = !DILocation(line: 741, column: 7, scope: !5033)
!5035 = !DILocation(line: 741, column: 14, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5033, file: !3, line: 741, column: 2)
!5037 = !DILocation(line: 741, column: 16, scope: !5036)
!5038 = !DILocation(line: 741, column: 2, scope: !5033)
!5039 = !DILocation(line: 742, column: 21, scope: !5036)
!5040 = !DILocation(line: 742, column: 25, scope: !5036)
!5041 = !DILocation(line: 742, column: 28, scope: !5036)
!5042 = !DILocation(line: 742, column: 3, scope: !5036)
!5043 = !DILocation(line: 741, column: 32, scope: !5036)
!5044 = !DILocation(line: 741, column: 2, scope: !5036)
!5045 = distinct !{!5045, !5038, !5046}
!5046 = !DILocation(line: 742, column: 30, scope: !5033)
!5047 = !DILocation(line: 744, column: 10, scope: !5004)
!5048 = !DILocation(line: 744, column: 14, scope: !5004)
!5049 = !DILocation(line: 744, column: 2, scope: !5004)
!5050 = !DILocation(line: 745, column: 2, scope: !5004)
!5051 = !DILocation(line: 746, column: 10, scope: !5004)
!5052 = !DILocation(line: 746, column: 14, scope: !5004)
!5053 = !DILocation(line: 746, column: 2, scope: !5004)
!5054 = !DILocation(line: 747, column: 2, scope: !5004)
!5055 = !DILocation(line: 749, column: 21, scope: !5004)
!5056 = !DILocation(line: 749, column: 2, scope: !5004)
!5057 = !DILocation(line: 750, column: 8, scope: !5004)
!5058 = !DILocation(line: 750, column: 2, scope: !5004)
!5059 = !DILocation(line: 751, column: 1, scope: !5004)
!5060 = distinct !DISubprogram(name: "kzalloc", scope: !120, file: !120, line: 662, type: !5061, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5061 = !DISubroutineType(types: !5062)
!5062 = !{!132, !499, !130}
!5063 = !DILocalVariable(name: "s", arg: 1, scope: !5064, file: !120, line: 445, type: !1098)
!5064 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !120, file: !120, line: 445, type: !5065, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{!132, !1098, !130, !499}
!5067 = !DILocation(line: 445, column: 72, scope: !5064, inlinedAt: !5068)
!5068 = distinct !DILocation(line: 552, column: 10, scope: !5069, inlinedAt: !5072)
!5069 = distinct !DILexicalBlock(scope: !5070, file: !120, line: 540, column: 34)
!5070 = distinct !DILexicalBlock(scope: !5071, file: !120, line: 540, column: 6)
!5071 = distinct !DISubprogram(name: "kmalloc", scope: !120, file: !120, line: 538, type: !5061, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5072 = distinct !DILocation(line: 664, column: 9, scope: !5060)
!5073 = !DILocalVariable(name: "flags", arg: 2, scope: !5064, file: !120, line: 446, type: !130)
!5074 = !DILocation(line: 446, column: 9, scope: !5064, inlinedAt: !5068)
!5075 = !DILocalVariable(name: "size", arg: 3, scope: !5064, file: !120, line: 446, type: !499)
!5076 = !DILocation(line: 446, column: 23, scope: !5064, inlinedAt: !5068)
!5077 = !DILocalVariable(name: "ret", scope: !5064, file: !120, line: 448, type: !132)
!5078 = !DILocation(line: 448, column: 8, scope: !5064, inlinedAt: !5068)
!5079 = !DILocalVariable(name: "flags", arg: 1, scope: !5080, file: !120, line: 318, type: !130)
!5080 = distinct !DISubprogram(name: "kmalloc_type", scope: !120, file: !120, line: 318, type: !5081, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5081 = !DISubroutineType(types: !5082)
!5082 = !{!119, !130}
!5083 = !DILocation(line: 318, column: 67, scope: !5080, inlinedAt: !5084)
!5084 = distinct !DILocation(line: 553, column: 20, scope: !5069, inlinedAt: !5072)
!5085 = !DILocalVariable(name: "size", arg: 1, scope: !5086, file: !120, line: 346, type: !499)
!5086 = distinct !DISubprogram(name: "kmalloc_index", scope: !120, file: !120, line: 346, type: !5087, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!7, !499}
!5089 = !DILocation(line: 346, column: 58, scope: !5086, inlinedAt: !5090)
!5090 = distinct !DILocation(line: 547, column: 11, scope: !5069, inlinedAt: !5072)
!5091 = !DILocalVariable(name: "size", arg: 1, scope: !5092, file: !120, line: 472, type: !499)
!5092 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !120, file: !120, line: 472, type: !5093, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5093 = !DISubroutineType(types: !5094)
!5094 = !{!132, !499, !130, !7}
!5095 = !DILocation(line: 472, column: 28, scope: !5092, inlinedAt: !5096)
!5096 = distinct !DILocation(line: 481, column: 9, scope: !5097, inlinedAt: !5098)
!5097 = distinct !DISubprogram(name: "kmalloc_large", scope: !120, file: !120, line: 478, type: !5061, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5098 = distinct !DILocation(line: 545, column: 11, scope: !5099, inlinedAt: !5072)
!5099 = distinct !DILexicalBlock(scope: !5069, file: !120, line: 544, column: 7)
!5100 = !DILocalVariable(name: "flags", arg: 2, scope: !5092, file: !120, line: 472, type: !130)
!5101 = !DILocation(line: 472, column: 40, scope: !5092, inlinedAt: !5096)
!5102 = !DILocalVariable(name: "order", arg: 3, scope: !5092, file: !120, line: 472, type: !7)
!5103 = !DILocation(line: 472, column: 60, scope: !5092, inlinedAt: !5096)
!5104 = !DILocalVariable(name: "size", arg: 1, scope: !5097, file: !120, line: 478, type: !499)
!5105 = !DILocation(line: 478, column: 51, scope: !5097, inlinedAt: !5098)
!5106 = !DILocalVariable(name: "flags", arg: 2, scope: !5097, file: !120, line: 478, type: !130)
!5107 = !DILocation(line: 478, column: 63, scope: !5097, inlinedAt: !5098)
!5108 = !DILocalVariable(name: "order", scope: !5097, file: !120, line: 480, type: !7)
!5109 = !DILocation(line: 480, column: 15, scope: !5097, inlinedAt: !5098)
!5110 = !DILocalVariable(name: "size", arg: 1, scope: !5071, file: !120, line: 538, type: !499)
!5111 = !DILocation(line: 538, column: 45, scope: !5071, inlinedAt: !5072)
!5112 = !DILocalVariable(name: "flags", arg: 2, scope: !5071, file: !120, line: 538, type: !130)
!5113 = !DILocation(line: 538, column: 57, scope: !5071, inlinedAt: !5072)
!5114 = !DILocalVariable(name: "index", scope: !5069, file: !120, line: 542, type: !7)
!5115 = !DILocation(line: 542, column: 16, scope: !5069, inlinedAt: !5072)
!5116 = !DILocalVariable(name: "size", arg: 1, scope: !5060, file: !120, line: 662, type: !499)
!5117 = !DILocation(line: 662, column: 36, scope: !5060)
!5118 = !DILocalVariable(name: "flags", arg: 2, scope: !5060, file: !120, line: 662, type: !130)
!5119 = !DILocation(line: 662, column: 48, scope: !5060)
!5120 = !DILocation(line: 664, column: 17, scope: !5060)
!5121 = !DILocation(line: 664, column: 23, scope: !5060)
!5122 = !DILocation(line: 664, column: 29, scope: !5060)
!5123 = !DILocation(line: 540, column: 27, scope: !5070, inlinedAt: !5072)
!5124 = !DILocation(line: 540, column: 6, scope: !5070, inlinedAt: !5072)
!5125 = !DILocation(line: 540, column: 6, scope: !5071, inlinedAt: !5072)
!5126 = !DILocation(line: 544, column: 7, scope: !5099, inlinedAt: !5072)
!5127 = !DILocation(line: 544, column: 12, scope: !5099, inlinedAt: !5072)
!5128 = !DILocation(line: 544, column: 7, scope: !5069, inlinedAt: !5072)
!5129 = !DILocation(line: 545, column: 25, scope: !5099, inlinedAt: !5072)
!5130 = !DILocation(line: 545, column: 31, scope: !5099, inlinedAt: !5072)
!5131 = !DILocation(line: 480, column: 33, scope: !5097, inlinedAt: !5098)
!5132 = !DILocation(line: 480, column: 23, scope: !5097, inlinedAt: !5098)
!5133 = !DILocation(line: 481, column: 29, scope: !5097, inlinedAt: !5098)
!5134 = !DILocation(line: 481, column: 35, scope: !5097, inlinedAt: !5098)
!5135 = !DILocation(line: 481, column: 42, scope: !5097, inlinedAt: !5098)
!5136 = !DILocation(line: 474, column: 23, scope: !5092, inlinedAt: !5096)
!5137 = !DILocation(line: 474, column: 29, scope: !5092, inlinedAt: !5096)
!5138 = !DILocation(line: 474, column: 36, scope: !5092, inlinedAt: !5096)
!5139 = !DILocation(line: 474, column: 9, scope: !5092, inlinedAt: !5096)
!5140 = !DILocation(line: 545, column: 4, scope: !5099, inlinedAt: !5072)
!5141 = !DILocation(line: 547, column: 25, scope: !5069, inlinedAt: !5072)
!5142 = !DILocation(line: 348, column: 7, scope: !5143, inlinedAt: !5090)
!5143 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 348, column: 6)
!5144 = !DILocation(line: 348, column: 6, scope: !5086, inlinedAt: !5090)
!5145 = !DILocation(line: 349, column: 3, scope: !5143, inlinedAt: !5090)
!5146 = !DILocation(line: 351, column: 6, scope: !5147, inlinedAt: !5090)
!5147 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 351, column: 6)
!5148 = !DILocation(line: 351, column: 11, scope: !5147, inlinedAt: !5090)
!5149 = !DILocation(line: 351, column: 6, scope: !5086, inlinedAt: !5090)
!5150 = !DILocation(line: 352, column: 3, scope: !5147, inlinedAt: !5090)
!5151 = !DILocation(line: 354, column: 32, scope: !5152, inlinedAt: !5090)
!5152 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 354, column: 6)
!5153 = !DILocation(line: 354, column: 37, scope: !5152, inlinedAt: !5090)
!5154 = !DILocation(line: 354, column: 42, scope: !5152, inlinedAt: !5090)
!5155 = !DILocation(line: 354, column: 45, scope: !5152, inlinedAt: !5090)
!5156 = !DILocation(line: 354, column: 50, scope: !5152, inlinedAt: !5090)
!5157 = !DILocation(line: 354, column: 6, scope: !5086, inlinedAt: !5090)
!5158 = !DILocation(line: 355, column: 3, scope: !5152, inlinedAt: !5090)
!5159 = !DILocation(line: 356, column: 32, scope: !5160, inlinedAt: !5090)
!5160 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 356, column: 6)
!5161 = !DILocation(line: 356, column: 37, scope: !5160, inlinedAt: !5090)
!5162 = !DILocation(line: 356, column: 43, scope: !5160, inlinedAt: !5090)
!5163 = !DILocation(line: 356, column: 46, scope: !5160, inlinedAt: !5090)
!5164 = !DILocation(line: 356, column: 51, scope: !5160, inlinedAt: !5090)
!5165 = !DILocation(line: 356, column: 6, scope: !5086, inlinedAt: !5090)
!5166 = !DILocation(line: 357, column: 3, scope: !5160, inlinedAt: !5090)
!5167 = !DILocation(line: 358, column: 6, scope: !5168, inlinedAt: !5090)
!5168 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 358, column: 6)
!5169 = !DILocation(line: 358, column: 11, scope: !5168, inlinedAt: !5090)
!5170 = !DILocation(line: 358, column: 6, scope: !5086, inlinedAt: !5090)
!5171 = !DILocation(line: 358, column: 26, scope: !5168, inlinedAt: !5090)
!5172 = !DILocation(line: 359, column: 6, scope: !5173, inlinedAt: !5090)
!5173 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 359, column: 6)
!5174 = !DILocation(line: 359, column: 11, scope: !5173, inlinedAt: !5090)
!5175 = !DILocation(line: 359, column: 6, scope: !5086, inlinedAt: !5090)
!5176 = !DILocation(line: 359, column: 26, scope: !5173, inlinedAt: !5090)
!5177 = !DILocation(line: 360, column: 6, scope: !5178, inlinedAt: !5090)
!5178 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 360, column: 6)
!5179 = !DILocation(line: 360, column: 11, scope: !5178, inlinedAt: !5090)
!5180 = !DILocation(line: 360, column: 6, scope: !5086, inlinedAt: !5090)
!5181 = !DILocation(line: 360, column: 26, scope: !5178, inlinedAt: !5090)
!5182 = !DILocation(line: 361, column: 6, scope: !5183, inlinedAt: !5090)
!5183 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 361, column: 6)
!5184 = !DILocation(line: 361, column: 11, scope: !5183, inlinedAt: !5090)
!5185 = !DILocation(line: 361, column: 6, scope: !5086, inlinedAt: !5090)
!5186 = !DILocation(line: 361, column: 26, scope: !5183, inlinedAt: !5090)
!5187 = !DILocation(line: 362, column: 6, scope: !5188, inlinedAt: !5090)
!5188 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 362, column: 6)
!5189 = !DILocation(line: 362, column: 11, scope: !5188, inlinedAt: !5090)
!5190 = !DILocation(line: 362, column: 6, scope: !5086, inlinedAt: !5090)
!5191 = !DILocation(line: 362, column: 26, scope: !5188, inlinedAt: !5090)
!5192 = !DILocation(line: 363, column: 6, scope: !5193, inlinedAt: !5090)
!5193 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 363, column: 6)
!5194 = !DILocation(line: 363, column: 11, scope: !5193, inlinedAt: !5090)
!5195 = !DILocation(line: 363, column: 6, scope: !5086, inlinedAt: !5090)
!5196 = !DILocation(line: 363, column: 26, scope: !5193, inlinedAt: !5090)
!5197 = !DILocation(line: 364, column: 6, scope: !5198, inlinedAt: !5090)
!5198 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 364, column: 6)
!5199 = !DILocation(line: 364, column: 11, scope: !5198, inlinedAt: !5090)
!5200 = !DILocation(line: 364, column: 6, scope: !5086, inlinedAt: !5090)
!5201 = !DILocation(line: 364, column: 26, scope: !5198, inlinedAt: !5090)
!5202 = !DILocation(line: 365, column: 6, scope: !5203, inlinedAt: !5090)
!5203 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 365, column: 6)
!5204 = !DILocation(line: 365, column: 11, scope: !5203, inlinedAt: !5090)
!5205 = !DILocation(line: 365, column: 6, scope: !5086, inlinedAt: !5090)
!5206 = !DILocation(line: 365, column: 26, scope: !5203, inlinedAt: !5090)
!5207 = !DILocation(line: 366, column: 6, scope: !5208, inlinedAt: !5090)
!5208 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 366, column: 6)
!5209 = !DILocation(line: 366, column: 11, scope: !5208, inlinedAt: !5090)
!5210 = !DILocation(line: 366, column: 6, scope: !5086, inlinedAt: !5090)
!5211 = !DILocation(line: 366, column: 26, scope: !5208, inlinedAt: !5090)
!5212 = !DILocation(line: 367, column: 6, scope: !5213, inlinedAt: !5090)
!5213 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 367, column: 6)
!5214 = !DILocation(line: 367, column: 11, scope: !5213, inlinedAt: !5090)
!5215 = !DILocation(line: 367, column: 6, scope: !5086, inlinedAt: !5090)
!5216 = !DILocation(line: 367, column: 26, scope: !5213, inlinedAt: !5090)
!5217 = !DILocation(line: 368, column: 6, scope: !5218, inlinedAt: !5090)
!5218 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 368, column: 6)
!5219 = !DILocation(line: 368, column: 11, scope: !5218, inlinedAt: !5090)
!5220 = !DILocation(line: 368, column: 6, scope: !5086, inlinedAt: !5090)
!5221 = !DILocation(line: 368, column: 26, scope: !5218, inlinedAt: !5090)
!5222 = !DILocation(line: 369, column: 6, scope: !5223, inlinedAt: !5090)
!5223 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 369, column: 6)
!5224 = !DILocation(line: 369, column: 11, scope: !5223, inlinedAt: !5090)
!5225 = !DILocation(line: 369, column: 6, scope: !5086, inlinedAt: !5090)
!5226 = !DILocation(line: 369, column: 26, scope: !5223, inlinedAt: !5090)
!5227 = !DILocation(line: 370, column: 6, scope: !5228, inlinedAt: !5090)
!5228 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 370, column: 6)
!5229 = !DILocation(line: 370, column: 11, scope: !5228, inlinedAt: !5090)
!5230 = !DILocation(line: 370, column: 6, scope: !5086, inlinedAt: !5090)
!5231 = !DILocation(line: 370, column: 26, scope: !5228, inlinedAt: !5090)
!5232 = !DILocation(line: 371, column: 6, scope: !5233, inlinedAt: !5090)
!5233 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 371, column: 6)
!5234 = !DILocation(line: 371, column: 11, scope: !5233, inlinedAt: !5090)
!5235 = !DILocation(line: 371, column: 6, scope: !5086, inlinedAt: !5090)
!5236 = !DILocation(line: 371, column: 26, scope: !5233, inlinedAt: !5090)
!5237 = !DILocation(line: 372, column: 6, scope: !5238, inlinedAt: !5090)
!5238 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 372, column: 6)
!5239 = !DILocation(line: 372, column: 11, scope: !5238, inlinedAt: !5090)
!5240 = !DILocation(line: 372, column: 6, scope: !5086, inlinedAt: !5090)
!5241 = !DILocation(line: 372, column: 26, scope: !5238, inlinedAt: !5090)
!5242 = !DILocation(line: 373, column: 6, scope: !5243, inlinedAt: !5090)
!5243 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 373, column: 6)
!5244 = !DILocation(line: 373, column: 11, scope: !5243, inlinedAt: !5090)
!5245 = !DILocation(line: 373, column: 6, scope: !5086, inlinedAt: !5090)
!5246 = !DILocation(line: 373, column: 26, scope: !5243, inlinedAt: !5090)
!5247 = !DILocation(line: 374, column: 6, scope: !5248, inlinedAt: !5090)
!5248 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 374, column: 6)
!5249 = !DILocation(line: 374, column: 11, scope: !5248, inlinedAt: !5090)
!5250 = !DILocation(line: 374, column: 6, scope: !5086, inlinedAt: !5090)
!5251 = !DILocation(line: 374, column: 26, scope: !5248, inlinedAt: !5090)
!5252 = !DILocation(line: 375, column: 6, scope: !5253, inlinedAt: !5090)
!5253 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 375, column: 6)
!5254 = !DILocation(line: 375, column: 11, scope: !5253, inlinedAt: !5090)
!5255 = !DILocation(line: 375, column: 6, scope: !5086, inlinedAt: !5090)
!5256 = !DILocation(line: 375, column: 27, scope: !5253, inlinedAt: !5090)
!5257 = !DILocation(line: 376, column: 6, scope: !5258, inlinedAt: !5090)
!5258 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 376, column: 6)
!5259 = !DILocation(line: 376, column: 11, scope: !5258, inlinedAt: !5090)
!5260 = !DILocation(line: 376, column: 6, scope: !5086, inlinedAt: !5090)
!5261 = !DILocation(line: 376, column: 32, scope: !5258, inlinedAt: !5090)
!5262 = !DILocation(line: 377, column: 6, scope: !5263, inlinedAt: !5090)
!5263 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 377, column: 6)
!5264 = !DILocation(line: 377, column: 11, scope: !5263, inlinedAt: !5090)
!5265 = !DILocation(line: 377, column: 6, scope: !5086, inlinedAt: !5090)
!5266 = !DILocation(line: 377, column: 32, scope: !5263, inlinedAt: !5090)
!5267 = !DILocation(line: 378, column: 6, scope: !5268, inlinedAt: !5090)
!5268 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 378, column: 6)
!5269 = !DILocation(line: 378, column: 11, scope: !5268, inlinedAt: !5090)
!5270 = !DILocation(line: 378, column: 6, scope: !5086, inlinedAt: !5090)
!5271 = !DILocation(line: 378, column: 32, scope: !5268, inlinedAt: !5090)
!5272 = !DILocation(line: 379, column: 6, scope: !5273, inlinedAt: !5090)
!5273 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 379, column: 6)
!5274 = !DILocation(line: 379, column: 11, scope: !5273, inlinedAt: !5090)
!5275 = !DILocation(line: 379, column: 6, scope: !5086, inlinedAt: !5090)
!5276 = !DILocation(line: 379, column: 33, scope: !5273, inlinedAt: !5090)
!5277 = !DILocation(line: 380, column: 6, scope: !5278, inlinedAt: !5090)
!5278 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 380, column: 6)
!5279 = !DILocation(line: 380, column: 11, scope: !5278, inlinedAt: !5090)
!5280 = !DILocation(line: 380, column: 6, scope: !5086, inlinedAt: !5090)
!5281 = !DILocation(line: 380, column: 33, scope: !5278, inlinedAt: !5090)
!5282 = !DILocation(line: 381, column: 6, scope: !5283, inlinedAt: !5090)
!5283 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 381, column: 6)
!5284 = !DILocation(line: 381, column: 11, scope: !5283, inlinedAt: !5090)
!5285 = !DILocation(line: 381, column: 6, scope: !5086, inlinedAt: !5090)
!5286 = !DILocation(line: 381, column: 33, scope: !5283, inlinedAt: !5090)
!5287 = !DILocation(line: 382, column: 2, scope: !5288, inlinedAt: !5090)
!5288 = distinct !DILexicalBlock(scope: !5289, file: !120, line: 382, column: 2)
!5289 = distinct !DILexicalBlock(scope: !5086, file: !120, line: 382, column: 2)
!5290 = !{i32 -2142060675, i32 -2142060646, i32 -2142060600, i32 -2142060542, i32 -2142060488, i32 -2142060434, i32 -2142060379, i32 -2142060348}
!5291 = !DILocation(line: 382, column: 2, scope: !5292, inlinedAt: !5090)
!5292 = distinct !DILexicalBlock(scope: !5293, file: !120, line: 382, column: 2)
!5293 = distinct !DILexicalBlock(scope: !5289, file: !120, line: 382, column: 2)
!5294 = !{i32 -2142059905, i32 -2142059898, i32 -2142059844, i32 -2142059813, i32 -2142059783}
!5295 = !DILocation(line: 382, column: 2, scope: !5293, inlinedAt: !5090)
!5296 = !DILocation(line: 386, column: 1, scope: !5086, inlinedAt: !5090)
!5297 = !DILocation(line: 547, column: 9, scope: !5069, inlinedAt: !5072)
!5298 = !DILocation(line: 549, column: 8, scope: !5299, inlinedAt: !5072)
!5299 = distinct !DILexicalBlock(scope: !5069, file: !120, line: 549, column: 7)
!5300 = !DILocation(line: 549, column: 7, scope: !5069, inlinedAt: !5072)
!5301 = !DILocation(line: 550, column: 4, scope: !5299, inlinedAt: !5072)
!5302 = !DILocation(line: 553, column: 33, scope: !5069, inlinedAt: !5072)
!5303 = !DILocation(line: 325, column: 6, scope: !5304, inlinedAt: !5084)
!5304 = distinct !DILexicalBlock(scope: !5080, file: !120, line: 325, column: 6)
!5305 = !DILocation(line: 325, column: 6, scope: !5080, inlinedAt: !5084)
!5306 = !DILocation(line: 326, column: 3, scope: !5304, inlinedAt: !5084)
!5307 = !DILocation(line: 332, column: 9, scope: !5080, inlinedAt: !5084)
!5308 = !DILocation(line: 332, column: 15, scope: !5080, inlinedAt: !5084)
!5309 = !DILocation(line: 332, column: 2, scope: !5080, inlinedAt: !5084)
!5310 = !DILocation(line: 336, column: 1, scope: !5080, inlinedAt: !5084)
!5311 = !DILocation(line: 553, column: 5, scope: !5069, inlinedAt: !5072)
!5312 = !DILocation(line: 553, column: 41, scope: !5069, inlinedAt: !5072)
!5313 = !DILocation(line: 554, column: 5, scope: !5069, inlinedAt: !5072)
!5314 = !DILocation(line: 554, column: 12, scope: !5069, inlinedAt: !5072)
!5315 = !DILocation(line: 448, column: 31, scope: !5064, inlinedAt: !5068)
!5316 = !DILocation(line: 448, column: 34, scope: !5064, inlinedAt: !5068)
!5317 = !DILocation(line: 448, column: 14, scope: !5064, inlinedAt: !5068)
!5318 = !DILocation(line: 450, column: 22, scope: !5064, inlinedAt: !5068)
!5319 = !DILocation(line: 450, column: 25, scope: !5064, inlinedAt: !5068)
!5320 = !DILocation(line: 450, column: 30, scope: !5064, inlinedAt: !5068)
!5321 = !DILocation(line: 450, column: 36, scope: !5064, inlinedAt: !5068)
!5322 = !DILocation(line: 450, column: 8, scope: !5064, inlinedAt: !5068)
!5323 = !DILocation(line: 450, column: 6, scope: !5064, inlinedAt: !5068)
!5324 = !DILocation(line: 451, column: 9, scope: !5064, inlinedAt: !5068)
!5325 = !DILocation(line: 552, column: 3, scope: !5069, inlinedAt: !5072)
!5326 = !DILocation(line: 557, column: 19, scope: !5071, inlinedAt: !5072)
!5327 = !DILocation(line: 557, column: 25, scope: !5071, inlinedAt: !5072)
!5328 = !DILocation(line: 557, column: 9, scope: !5071, inlinedAt: !5072)
!5329 = !DILocation(line: 557, column: 2, scope: !5071, inlinedAt: !5072)
!5330 = !DILocation(line: 558, column: 1, scope: !5071, inlinedAt: !5072)
!5331 = !DILocation(line: 664, column: 2, scope: !5060)
!5332 = distinct !DISubprogram(name: "init_hardware", scope: !3, file: !3, line: 431, type: !5333, scopeLine: 432, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5333 = !DISubroutineType(types: !5334)
!5334 = !{!135, !4816}
!5335 = !DILocalVariable(name: "hw", arg: 1, scope: !5332, file: !3, line: 431, type: !4816)
!5336 = !DILocation(line: 431, column: 45, scope: !5332)
!5337 = !DILocalVariable(name: "flags", scope: !5332, file: !3, line: 433, type: !371)
!5338 = !DILocation(line: 433, column: 6, scope: !5332)
!5339 = !DILocalVariable(name: "loops", scope: !5332, file: !3, line: 434, type: !371)
!5340 = !DILocation(line: 434, column: 6, scope: !5332)
!5341 = !DILocalVariable(name: "ret", scope: !5332, file: !3, line: 435, type: !371)
!5342 = !DILocation(line: 435, column: 6, scope: !5332)
!5343 = !DILocation(line: 439, column: 15, scope: !5332)
!5344 = !DILocation(line: 439, column: 2, scope: !5332)
!5345 = !DILocation(line: 443, column: 15, scope: !5332)
!5346 = !DILocation(line: 443, column: 2, scope: !5332)
!5347 = !DILocation(line: 444, column: 15, scope: !5332)
!5348 = !DILocation(line: 444, column: 2, scope: !5332)
!5349 = !DILocation(line: 447, column: 15, scope: !5332)
!5350 = !DILocation(line: 447, column: 2, scope: !5332)
!5351 = !DILocation(line: 448, column: 15, scope: !5332)
!5352 = !DILocation(line: 448, column: 2, scope: !5332)
!5353 = !DILocation(line: 451, column: 8, scope: !5332)
!5354 = !DILocation(line: 453, column: 15, scope: !5332)
!5355 = !DILocation(line: 454, column: 4, scope: !5332)
!5356 = !DILocation(line: 453, column: 2, scope: !5332)
!5357 = !DILocation(line: 457, column: 8, scope: !5332)
!5358 = !DILocation(line: 458, column: 15, scope: !5332)
!5359 = !DILocation(line: 459, column: 4, scope: !5332)
!5360 = !DILocation(line: 458, column: 2, scope: !5332)
!5361 = !DILocation(line: 461, column: 8, scope: !5332)
!5362 = !DILocation(line: 463, column: 15, scope: !5332)
!5363 = !DILocation(line: 464, column: 4, scope: !5332)
!5364 = !DILocation(line: 463, column: 2, scope: !5332)
!5365 = !DILocation(line: 466, column: 8, scope: !5332)
!5366 = !DILocation(line: 468, column: 15, scope: !5332)
!5367 = !DILocation(line: 469, column: 4, scope: !5332)
!5368 = !DILocation(line: 468, column: 2, scope: !5332)
!5369 = !DILocation(line: 471, column: 8, scope: !5332)
!5370 = !DILocation(line: 473, column: 15, scope: !5332)
!5371 = !DILocation(line: 473, column: 66, scope: !5332)
!5372 = !DILocation(line: 473, column: 2, scope: !5332)
!5373 = !DILocation(line: 475, column: 8, scope: !5332)
!5374 = !DILocation(line: 476, column: 15, scope: !5332)
!5375 = !DILocation(line: 477, column: 4, scope: !5332)
!5376 = !DILocation(line: 476, column: 2, scope: !5332)
!5377 = !DILocation(line: 479, column: 8, scope: !5332)
!5378 = !DILocation(line: 481, column: 15, scope: !5332)
!5379 = !DILocation(line: 482, column: 4, scope: !5332)
!5380 = !DILocation(line: 481, column: 2, scope: !5332)
!5381 = !DILocation(line: 486, column: 14, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 486, column: 3)
!5383 = distinct !DILexicalBlock(scope: !5384, file: !3, line: 485, column: 30)
!5384 = distinct !DILexicalBlock(scope: !5332, file: !3, line: 485, column: 6)
!5385 = !DILocation(line: 486, column: 8, scope: !5382)
!5386 = !DILocation(line: 486, column: 19, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5382, file: !3, line: 486, column: 3)
!5388 = !DILocation(line: 486, column: 25, scope: !5387)
!5389 = !DILocation(line: 486, column: 3, scope: !5382)
!5390 = !DILocation(line: 488, column: 23, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5387, file: !3, line: 486, column: 66)
!5392 = !DILocation(line: 488, column: 10, scope: !5391)
!5393 = !DILocation(line: 488, column: 8, scope: !5391)
!5394 = !DILocation(line: 490, column: 8, scope: !5391)
!5395 = !DILocation(line: 491, column: 9, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 491, column: 8)
!5397 = !DILocation(line: 491, column: 8, scope: !5391)
!5398 = !DILocation(line: 492, column: 5, scope: !5396)
!5399 = !DILocation(line: 494, column: 4, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !5401, file: !3, line: 494, column: 4)
!5401 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 494, column: 4)
!5402 = distinct !DILexicalBlock(scope: !5403, file: !3, line: 494, column: 4)
!5403 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 494, column: 4)
!5404 = !DILocation(line: 495, column: 3, scope: !5391)
!5405 = !DILocation(line: 486, column: 62, scope: !5387)
!5406 = !DILocation(line: 486, column: 3, scope: !5387)
!5407 = distinct !{!5407, !5389, !5408}
!5408 = !DILocation(line: 495, column: 3, scope: !5382)
!5409 = !DILocation(line: 497, column: 7, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 497, column: 7)
!5411 = !DILocation(line: 497, column: 13, scope: !5410)
!5412 = !DILocation(line: 497, column: 7, scope: !5383)
!5413 = !DILocation(line: 498, column: 4, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 497, column: 46)
!5415 = !DILocation(line: 499, column: 4, scope: !5414)
!5416 = !DILocation(line: 503, column: 8, scope: !5332)
!5417 = !DILocation(line: 505, column: 15, scope: !5332)
!5418 = !DILocation(line: 505, column: 65, scope: !5332)
!5419 = !DILocation(line: 505, column: 2, scope: !5332)
!5420 = !DILocation(line: 507, column: 8, scope: !5332)
!5421 = !DILocation(line: 509, column: 15, scope: !5332)
!5422 = !DILocation(line: 510, column: 4, scope: !5332)
!5423 = !DILocation(line: 509, column: 2, scope: !5332)
!5424 = !DILocation(line: 513, column: 15, scope: !5332)
!5425 = !DILocation(line: 513, column: 2, scope: !5332)
!5426 = !DILocation(line: 517, column: 15, scope: !5332)
!5427 = !DILocation(line: 517, column: 2, scope: !5332)
!5428 = !DILocation(line: 518, column: 15, scope: !5332)
!5429 = !DILocation(line: 518, column: 2, scope: !5332)
!5430 = !DILocation(line: 521, column: 15, scope: !5332)
!5431 = !DILocation(line: 521, column: 2, scope: !5332)
!5432 = !DILocation(line: 522, column: 15, scope: !5332)
!5433 = !DILocation(line: 522, column: 2, scope: !5332)
!5434 = !DILocation(line: 523, column: 15, scope: !5332)
!5435 = !DILocation(line: 523, column: 2, scope: !5332)
!5436 = !DILocation(line: 524, column: 15, scope: !5332)
!5437 = !DILocation(line: 524, column: 2, scope: !5332)
!5438 = !DILocation(line: 525, column: 15, scope: !5332)
!5439 = !DILocation(line: 525, column: 2, scope: !5332)
!5440 = !DILocation(line: 526, column: 15, scope: !5332)
!5441 = !DILocation(line: 526, column: 2, scope: !5332)
!5442 = !DILocation(line: 527, column: 2, scope: !5332)
!5443 = !DILocation(line: 528, column: 1, scope: !5332)
!5444 = distinct !DISubprogram(name: "alloc_carmine_fb", scope: !3, file: !3, line: 541, type: !5445, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5445 = !DISubroutineType(types: !5446)
!5446 = !{!135, !132, !132, !135, !396, !5447}
!5447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!5448 = !DILocalVariable(name: "regs", arg: 1, scope: !5444, file: !3, line: 541, type: !132)
!5449 = !DILocation(line: 541, column: 43, scope: !5444)
!5450 = !DILocalVariable(name: "smem_base", arg: 2, scope: !5444, file: !3, line: 541, type: !132)
!5451 = !DILocation(line: 541, column: 63, scope: !5444)
!5452 = !DILocalVariable(name: "smem_offset", arg: 3, scope: !5444, file: !3, line: 542, type: !135)
!5453 = !DILocation(line: 542, column: 12, scope: !5444)
!5454 = !DILocalVariable(name: "device", arg: 4, scope: !5444, file: !3, line: 542, type: !396)
!5455 = !DILocation(line: 542, column: 40, scope: !5444)
!5456 = !DILocalVariable(name: "rinfo", arg: 5, scope: !5444, file: !3, line: 543, type: !5447)
!5457 = !DILocation(line: 543, column: 25, scope: !5444)
!5458 = !DILocalVariable(name: "ret", scope: !5444, file: !3, line: 545, type: !135)
!5459 = !DILocation(line: 545, column: 6, scope: !5444)
!5460 = !DILocalVariable(name: "info", scope: !5444, file: !3, line: 546, type: !4333)
!5461 = !DILocation(line: 546, column: 18, scope: !5444)
!5462 = !DILocalVariable(name: "par", scope: !5444, file: !3, line: 547, type: !5463)
!5463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5464, size: 64)
!5464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "carmine_fb", file: !3, line: 72, size: 832, elements: !5465)
!5465 = !{!5466, !5467, !5468, !5469, !5470, !5471, !5473}
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "display_reg", scope: !5464, file: !3, line: 73, baseType: !132, size: 64)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "screen_base", scope: !5464, file: !3, line: 74, baseType: !132, size: 64, offset: 64)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "smem_offset", scope: !5464, file: !3, line: 75, baseType: !371, size: 32, offset: 128)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "cur_mode", scope: !5464, file: !3, line: 76, baseType: !371, size: 32, offset: 160)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "new_mode", scope: !5464, file: !3, line: 77, baseType: !371, size: 32, offset: 192)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !5464, file: !3, line: 78, baseType: !5472, size: 64, offset: 256)
!5472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "pseudo_palette", scope: !5464, file: !3, line: 79, baseType: !3988, size: 512, offset: 320)
!5474 = !DILocation(line: 547, column: 21, scope: !5444)
!5475 = !DILocation(line: 549, column: 40, scope: !5444)
!5476 = !DILocation(line: 549, column: 9, scope: !5444)
!5477 = !DILocation(line: 549, column: 7, scope: !5444)
!5478 = !DILocation(line: 550, column: 7, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5444, file: !3, line: 550, column: 6)
!5480 = !DILocation(line: 550, column: 6, scope: !5444)
!5481 = !DILocation(line: 551, column: 3, scope: !5479)
!5482 = !DILocation(line: 553, column: 8, scope: !5444)
!5483 = !DILocation(line: 553, column: 14, scope: !5444)
!5484 = !DILocation(line: 553, column: 6, scope: !5444)
!5485 = !DILocation(line: 554, column: 21, scope: !5444)
!5486 = !DILocation(line: 554, column: 2, scope: !5444)
!5487 = !DILocation(line: 554, column: 7, scope: !5444)
!5488 = !DILocation(line: 554, column: 19, scope: !5444)
!5489 = !DILocation(line: 555, column: 21, scope: !5444)
!5490 = !DILocation(line: 555, column: 2, scope: !5444)
!5491 = !DILocation(line: 555, column: 7, scope: !5444)
!5492 = !DILocation(line: 555, column: 19, scope: !5444)
!5493 = !DILocation(line: 557, column: 22, scope: !5444)
!5494 = !DILocation(line: 557, column: 34, scope: !5444)
!5495 = !DILocation(line: 557, column: 32, scope: !5444)
!5496 = !DILocation(line: 557, column: 2, scope: !5444)
!5497 = !DILocation(line: 557, column: 8, scope: !5444)
!5498 = !DILocation(line: 557, column: 20, scope: !5444)
!5499 = !DILocation(line: 558, column: 2, scope: !5444)
!5500 = !DILocation(line: 558, column: 8, scope: !5444)
!5501 = !DILocation(line: 558, column: 20, scope: !5444)
!5502 = !DILocation(line: 559, column: 2, scope: !5444)
!5503 = !DILocation(line: 559, column: 8, scope: !5444)
!5504 = !DILocation(line: 559, column: 14, scope: !5444)
!5505 = !DILocation(line: 561, column: 2, scope: !5444)
!5506 = !DILocation(line: 561, column: 8, scope: !5444)
!5507 = !DILocation(line: 561, column: 14, scope: !5444)
!5508 = !DILocation(line: 562, column: 25, scope: !5444)
!5509 = !DILocation(line: 562, column: 30, scope: !5444)
!5510 = !DILocation(line: 562, column: 2, scope: !5444)
!5511 = !DILocation(line: 562, column: 8, scope: !5444)
!5512 = !DILocation(line: 562, column: 23, scope: !5444)
!5513 = !DILocation(line: 563, column: 2, scope: !5444)
!5514 = !DILocation(line: 563, column: 8, scope: !5444)
!5515 = !DILocation(line: 563, column: 14, scope: !5444)
!5516 = !DILocation(line: 565, column: 23, scope: !5444)
!5517 = !DILocation(line: 565, column: 29, scope: !5444)
!5518 = !DILocation(line: 565, column: 8, scope: !5444)
!5519 = !DILocation(line: 565, column: 6, scope: !5444)
!5520 = !DILocation(line: 566, column: 6, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5444, file: !3, line: 566, column: 6)
!5522 = !DILocation(line: 566, column: 10, scope: !5521)
!5523 = !DILocation(line: 566, column: 6, scope: !5444)
!5524 = !DILocation(line: 567, column: 3, scope: !5521)
!5525 = !DILocation(line: 569, column: 6, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5444, file: !3, line: 569, column: 6)
!5527 = !DILocation(line: 569, column: 14, scope: !5526)
!5528 = !DILocation(line: 569, column: 6, scope: !5444)
!5529 = !DILocation(line: 570, column: 11, scope: !5526)
!5530 = !DILocation(line: 570, column: 3, scope: !5526)
!5531 = !DILocation(line: 572, column: 18, scope: !5444)
!5532 = !DILocation(line: 572, column: 23, scope: !5444)
!5533 = !DILocation(line: 572, column: 32, scope: !5444)
!5534 = !DILocation(line: 572, column: 2, scope: !5444)
!5535 = !DILocation(line: 572, column: 7, scope: !5444)
!5536 = !DILocation(line: 572, column: 16, scope: !5444)
!5537 = !DILocation(line: 574, column: 22, scope: !5444)
!5538 = !DILocation(line: 574, column: 28, scope: !5444)
!5539 = !DILocation(line: 574, column: 33, scope: !5444)
!5540 = !DILocation(line: 574, column: 39, scope: !5444)
!5541 = !DILocation(line: 576, column: 20, scope: !5444)
!5542 = !DILocation(line: 576, column: 5, scope: !5444)
!5543 = !DILocation(line: 574, column: 8, scope: !5444)
!5544 = !DILocation(line: 574, column: 6, scope: !5444)
!5545 = !DILocation(line: 577, column: 7, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !5444, file: !3, line: 577, column: 6)
!5547 = !DILocation(line: 577, column: 11, scope: !5546)
!5548 = !DILocation(line: 577, column: 14, scope: !5546)
!5549 = !DILocation(line: 577, column: 18, scope: !5546)
!5550 = !DILocation(line: 577, column: 6, scope: !5444)
!5551 = !DILocation(line: 578, column: 7, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 577, column: 24)
!5553 = !DILocation(line: 579, column: 3, scope: !5552)
!5554 = !DILocation(line: 583, column: 5, scope: !5444)
!5555 = !DILocation(line: 583, column: 11, scope: !5444)
!5556 = !DILocation(line: 582, column: 2, scope: !5444)
!5557 = !DILocation(line: 585, column: 29, scope: !5444)
!5558 = !DILocation(line: 585, column: 8, scope: !5444)
!5559 = !DILocation(line: 585, column: 6, scope: !5444)
!5560 = !DILocation(line: 586, column: 6, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5444, file: !3, line: 586, column: 6)
!5562 = !DILocation(line: 586, column: 10, scope: !5561)
!5563 = !DILocation(line: 586, column: 6, scope: !5444)
!5564 = !DILocation(line: 587, column: 3, scope: !5561)
!5565 = !DILocation(line: 589, column: 2, scope: !5444)
!5566 = !DILocation(line: 591, column: 11, scope: !5444)
!5567 = !DILocation(line: 591, column: 3, scope: !5444)
!5568 = !DILocation(line: 591, column: 9, scope: !5444)
!5569 = !DILocation(line: 592, column: 2, scope: !5444)
!5570 = !DILabel(scope: !5444, name: "err_dealloc_cmap", file: !3, line: 594)
!5571 = !DILocation(line: 594, column: 1, scope: !5444)
!5572 = !DILocation(line: 595, column: 19, scope: !5444)
!5573 = !DILocation(line: 595, column: 25, scope: !5444)
!5574 = !DILocation(line: 595, column: 2, scope: !5444)
!5575 = !DILabel(scope: !5444, name: "err_free_fb", file: !3, line: 596)
!5576 = !DILocation(line: 596, column: 1, scope: !5444)
!5577 = !DILocation(line: 597, column: 22, scope: !5444)
!5578 = !DILocation(line: 597, column: 2, scope: !5444)
!5579 = !DILocation(line: 598, column: 9, scope: !5444)
!5580 = !DILocation(line: 598, column: 2, scope: !5444)
!5581 = !DILocation(line: 599, column: 1, scope: !5444)
!5582 = distinct !DISubprogram(name: "pci_set_drvdata", scope: !285, file: !285, line: 1870, type: !5583, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5583 = !DISubroutineType(types: !5584)
!5584 = !{null, !313, !132}
!5585 = !DILocalVariable(name: "pdev", arg: 1, scope: !5582, file: !285, line: 1870, type: !313)
!5586 = !DILocation(line: 1870, column: 52, scope: !5582)
!5587 = !DILocalVariable(name: "data", arg: 2, scope: !5582, file: !285, line: 1870, type: !132)
!5588 = !DILocation(line: 1870, column: 64, scope: !5582)
!5589 = !DILocation(line: 1872, column: 19, scope: !5582)
!5590 = !DILocation(line: 1872, column: 25, scope: !5582)
!5591 = !DILocation(line: 1872, column: 30, scope: !5582)
!5592 = !DILocation(line: 1872, column: 2, scope: !5582)
!5593 = !DILocation(line: 1873, column: 1, scope: !5582)
!5594 = distinct !DISubprogram(name: "cleanup_fb_device", scope: !3, file: !3, line: 601, type: !4541, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5595 = !DILocalVariable(name: "info", arg: 1, scope: !5594, file: !3, line: 601, type: !4333)
!5596 = !DILocation(line: 601, column: 47, scope: !5594)
!5597 = !DILocation(line: 603, column: 6, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 603, column: 6)
!5599 = !DILocation(line: 603, column: 6, scope: !5594)
!5600 = !DILocation(line: 604, column: 26, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 603, column: 12)
!5602 = !DILocation(line: 604, column: 3, scope: !5601)
!5603 = !DILocation(line: 605, column: 20, scope: !5601)
!5604 = !DILocation(line: 605, column: 26, scope: !5601)
!5605 = !DILocation(line: 605, column: 3, scope: !5601)
!5606 = !DILocation(line: 606, column: 23, scope: !5601)
!5607 = !DILocation(line: 606, column: 3, scope: !5601)
!5608 = !DILocation(line: 607, column: 2, scope: !5601)
!5609 = !DILocation(line: 608, column: 1, scope: !5594)
!5610 = distinct !DISubprogram(name: "c_set_hw_reg", scope: !3, file: !3, line: 151, type: !5611, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5611 = !DISubroutineType(types: !5612)
!5612 = !{null, !5613, !371, !371}
!5613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5614, size: 64)
!5614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4817)
!5615 = !DILocalVariable(name: "hw", arg: 1, scope: !5610, file: !3, line: 151, type: !5613)
!5616 = !DILocation(line: 151, column: 51, scope: !5610)
!5617 = !DILocalVariable(name: "offset", arg: 2, scope: !5610, file: !3, line: 152, type: !371)
!5618 = !DILocation(line: 152, column: 7, scope: !5610)
!5619 = !DILocalVariable(name: "val", arg: 3, scope: !5610, file: !3, line: 152, type: !371)
!5620 = !DILocation(line: 152, column: 19, scope: !5610)
!5621 = !DILocation(line: 154, column: 9, scope: !5610)
!5622 = !DILocation(line: 154, column: 14, scope: !5610)
!5623 = !DILocation(line: 154, column: 18, scope: !5610)
!5624 = !DILocation(line: 154, column: 27, scope: !5610)
!5625 = !DILocation(line: 154, column: 25, scope: !5610)
!5626 = !DILocation(line: 154, column: 2, scope: !5610)
!5627 = !DILocation(line: 155, column: 1, scope: !5610)
!5628 = distinct !DISubprogram(name: "get_order", scope: !5629, file: !5629, line: 29, type: !5630, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5629 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5630 = !DISubroutineType(types: !5631)
!5631 = !{!135, !308}
!5632 = !DILocalVariable(name: "x", arg: 1, scope: !5633, file: !5634, line: 366, type: !337)
!5633 = distinct !DISubprogram(name: "fls64", scope: !5634, file: !5634, line: 366, type: !5635, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5634 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5635 = !DISubroutineType(types: !5636)
!5636 = !{!135, !337}
!5637 = !DILocation(line: 366, column: 40, scope: !5633, inlinedAt: !5638)
!5638 = distinct !DILocation(line: 46, column: 9, scope: !5628)
!5639 = !DILocalVariable(name: "bitpos", scope: !5633, file: !5634, line: 368, type: !135)
!5640 = !DILocation(line: 368, column: 6, scope: !5633, inlinedAt: !5638)
!5641 = !DILocalVariable(name: "size", arg: 1, scope: !5628, file: !5629, line: 29, type: !308)
!5642 = !DILocation(line: 29, column: 63, scope: !5628)
!5643 = !DILocation(line: 31, column: 27, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5628, file: !5629, line: 31, column: 6)
!5645 = !DILocation(line: 31, column: 6, scope: !5644)
!5646 = !DILocation(line: 31, column: 6, scope: !5628)
!5647 = !DILocation(line: 32, column: 8, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5649, file: !5629, line: 32, column: 7)
!5649 = distinct !DILexicalBlock(scope: !5644, file: !5629, line: 31, column: 34)
!5650 = !DILocation(line: 32, column: 7, scope: !5649)
!5651 = !DILocation(line: 33, column: 4, scope: !5648)
!5652 = !DILocation(line: 35, column: 7, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5649, file: !5629, line: 35, column: 7)
!5654 = !DILocation(line: 35, column: 12, scope: !5653)
!5655 = !DILocation(line: 35, column: 7, scope: !5649)
!5656 = !DILocation(line: 36, column: 4, scope: !5653)
!5657 = !DILocation(line: 38, column: 10, scope: !5649)
!5658 = !DILocation(line: 38, column: 28, scope: !5649)
!5659 = !DILocation(line: 38, column: 41, scope: !5649)
!5660 = !DILocation(line: 38, column: 3, scope: !5649)
!5661 = !DILocation(line: 41, column: 6, scope: !5628)
!5662 = !DILocation(line: 42, column: 7, scope: !5628)
!5663 = !DILocation(line: 46, column: 15, scope: !5628)
!5664 = !DILocation(line: 374, column: 2, scope: !5633, inlinedAt: !5638)
!5665 = !DILocation(line: 376, column: 14, scope: !5633, inlinedAt: !5638)
!5666 = !{i32 263781}
!5667 = !DILocation(line: 377, column: 9, scope: !5633, inlinedAt: !5638)
!5668 = !DILocation(line: 377, column: 16, scope: !5633, inlinedAt: !5638)
!5669 = !DILocation(line: 46, column: 2, scope: !5628)
!5670 = !DILocation(line: 48, column: 1, scope: !5628)
!5671 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5672, file: !5672, line: 30, type: !5673, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5672 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5673 = !DISubroutineType(types: !5674)
!5674 = !{!135, !336}
!5675 = !DILocation(line: 366, column: 40, scope: !5633, inlinedAt: !5676)
!5676 = distinct !DILocation(line: 32, column: 9, scope: !5671)
!5677 = !DILocation(line: 368, column: 6, scope: !5633, inlinedAt: !5676)
!5678 = !DILocalVariable(name: "n", arg: 1, scope: !5671, file: !5672, line: 30, type: !336)
!5679 = !DILocation(line: 30, column: 21, scope: !5671)
!5680 = !DILocation(line: 32, column: 15, scope: !5671)
!5681 = !DILocation(line: 374, column: 2, scope: !5633, inlinedAt: !5676)
!5682 = !DILocation(line: 376, column: 14, scope: !5633, inlinedAt: !5676)
!5683 = !DILocation(line: 377, column: 9, scope: !5633, inlinedAt: !5676)
!5684 = !DILocation(line: 377, column: 16, scope: !5633, inlinedAt: !5676)
!5685 = !DILocation(line: 32, column: 18, scope: !5671)
!5686 = !DILocation(line: 32, column: 2, scope: !5671)
!5687 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5688, file: !5688, line: 137, type: !5689, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5688 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5689 = !DISubroutineType(types: !5690)
!5690 = !{!132, !1098, !2341, !499, !130}
!5691 = !DILocalVariable(name: "s", arg: 1, scope: !5687, file: !5688, line: 137, type: !1098)
!5692 = !DILocation(line: 137, column: 54, scope: !5687)
!5693 = !DILocalVariable(name: "object", arg: 2, scope: !5687, file: !5688, line: 137, type: !2341)
!5694 = !DILocation(line: 137, column: 69, scope: !5687)
!5695 = !DILocalVariable(name: "size", arg: 3, scope: !5687, file: !5688, line: 138, type: !499)
!5696 = !DILocation(line: 138, column: 12, scope: !5687)
!5697 = !DILocalVariable(name: "flags", arg: 4, scope: !5687, file: !5688, line: 138, type: !130)
!5698 = !DILocation(line: 138, column: 24, scope: !5687)
!5699 = !DILocation(line: 140, column: 17, scope: !5687)
!5700 = !DILocation(line: 140, column: 2, scope: !5687)
!5701 = distinct !DISubprogram(name: "c_get_hw_reg", scope: !3, file: !3, line: 157, type: !5702, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5702 = !DISubroutineType(types: !5703)
!5703 = !{!371, !5613, !371}
!5704 = !DILocalVariable(name: "hw", arg: 1, scope: !5701, file: !3, line: 157, type: !5613)
!5705 = !DILocation(line: 157, column: 50, scope: !5701)
!5706 = !DILocalVariable(name: "offset", arg: 2, scope: !5701, file: !3, line: 158, type: !371)
!5707 = !DILocation(line: 158, column: 7, scope: !5701)
!5708 = !DILocation(line: 160, column: 15, scope: !5701)
!5709 = !DILocation(line: 160, column: 19, scope: !5701)
!5710 = !DILocation(line: 160, column: 28, scope: !5701)
!5711 = !DILocation(line: 160, column: 26, scope: !5701)
!5712 = !DILocation(line: 160, column: 9, scope: !5701)
!5713 = !DILocation(line: 160, column: 2, scope: !5701)
!5714 = distinct !DISubprogram(name: "readl", scope: !5715, file: !5715, line: 59, type: !5716, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5715 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!5716 = !DISubroutineType(types: !5717)
!5717 = !{!7, !5718}
!5718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5719, size: 64)
!5719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5720)
!5720 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5721 = !DILocalVariable(name: "addr", arg: 1, scope: !5714, file: !5715, line: 59, type: !5718)
!5722 = !DILocation(line: 59, column: 1, scope: !5714)
!5723 = !DILocalVariable(name: "ret", scope: !5714, file: !5715, line: 59, type: !7)
!5724 = !{i32 -2141460782}
!5725 = distinct !DISubprogram(name: "carmine_check_var", scope: !3, file: !3, line: 179, type: !4664, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5726 = !DILocalVariable(name: "var", arg: 1, scope: !5725, file: !3, line: 179, type: !4666)
!5727 = !DILocation(line: 179, column: 56, scope: !5725)
!5728 = !DILocalVariable(name: "info", arg: 2, scope: !5725, file: !3, line: 180, type: !4333)
!5729 = !DILocation(line: 180, column: 19, scope: !5725)
!5730 = !DILocalVariable(name: "ret", scope: !5725, file: !3, line: 182, type: !135)
!5731 = !DILocation(line: 182, column: 6, scope: !5725)
!5732 = !DILocation(line: 184, column: 26, scope: !5725)
!5733 = !DILocation(line: 184, column: 8, scope: !5725)
!5734 = !DILocation(line: 184, column: 6, scope: !5725)
!5735 = !DILocation(line: 185, column: 6, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5725, file: !3, line: 185, column: 6)
!5737 = !DILocation(line: 185, column: 10, scope: !5736)
!5738 = !DILocation(line: 185, column: 6, scope: !5725)
!5739 = !DILocation(line: 186, column: 10, scope: !5736)
!5740 = !DILocation(line: 186, column: 3, scope: !5736)
!5741 = !DILocation(line: 188, column: 6, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5725, file: !3, line: 188, column: 6)
!5743 = !DILocation(line: 188, column: 11, scope: !5742)
!5744 = !DILocation(line: 188, column: 21, scope: !5742)
!5745 = !DILocation(line: 188, column: 24, scope: !5742)
!5746 = !DILocation(line: 188, column: 29, scope: !5742)
!5747 = !DILocation(line: 188, column: 36, scope: !5742)
!5748 = !DILocation(line: 188, column: 39, scope: !5742)
!5749 = !DILocation(line: 188, column: 44, scope: !5742)
!5750 = !DILocation(line: 188, column: 6, scope: !5725)
!5751 = !DILocation(line: 189, column: 3, scope: !5742)
!5752 = !DILocation(line: 191, column: 22, scope: !5725)
!5753 = !DILocation(line: 191, column: 27, scope: !5725)
!5754 = !DILocation(line: 191, column: 2, scope: !5725)
!5755 = !DILocation(line: 191, column: 7, scope: !5725)
!5756 = !DILocation(line: 191, column: 20, scope: !5725)
!5757 = !DILocation(line: 192, column: 22, scope: !5725)
!5758 = !DILocation(line: 192, column: 27, scope: !5725)
!5759 = !DILocation(line: 192, column: 2, scope: !5725)
!5760 = !DILocation(line: 192, column: 7, scope: !5725)
!5761 = !DILocation(line: 192, column: 20, scope: !5725)
!5762 = !DILocation(line: 194, column: 2, scope: !5725)
!5763 = !DILocation(line: 194, column: 7, scope: !5725)
!5764 = !DILocation(line: 194, column: 22, scope: !5725)
!5765 = !DILocation(line: 202, column: 2, scope: !5725)
!5766 = !DILocation(line: 202, column: 7, scope: !5725)
!5767 = !DILocation(line: 202, column: 14, scope: !5725)
!5768 = !DILocation(line: 202, column: 21, scope: !5725)
!5769 = !DILocation(line: 203, column: 2, scope: !5725)
!5770 = !DILocation(line: 203, column: 7, scope: !5725)
!5771 = !DILocation(line: 203, column: 11, scope: !5725)
!5772 = !DILocation(line: 203, column: 18, scope: !5725)
!5773 = !DILocation(line: 204, column: 2, scope: !5725)
!5774 = !DILocation(line: 204, column: 7, scope: !5725)
!5775 = !DILocation(line: 204, column: 13, scope: !5725)
!5776 = !DILocation(line: 204, column: 20, scope: !5725)
!5777 = !DILocation(line: 205, column: 2, scope: !5725)
!5778 = !DILocation(line: 205, column: 7, scope: !5725)
!5779 = !DILocation(line: 205, column: 12, scope: !5725)
!5780 = !DILocation(line: 205, column: 19, scope: !5725)
!5781 = !DILocation(line: 208, column: 2, scope: !5725)
!5782 = !DILocation(line: 208, column: 7, scope: !5725)
!5783 = !DILocation(line: 208, column: 11, scope: !5725)
!5784 = !DILocation(line: 208, column: 18, scope: !5725)
!5785 = !DILocation(line: 209, column: 2, scope: !5725)
!5786 = !DILocation(line: 209, column: 7, scope: !5725)
!5787 = !DILocation(line: 209, column: 13, scope: !5725)
!5788 = !DILocation(line: 209, column: 20, scope: !5725)
!5789 = !DILocation(line: 210, column: 2, scope: !5725)
!5790 = !DILocation(line: 210, column: 7, scope: !5725)
!5791 = !DILocation(line: 210, column: 12, scope: !5725)
!5792 = !DILocation(line: 210, column: 19, scope: !5725)
!5793 = !DILocation(line: 211, column: 2, scope: !5725)
!5794 = !DILocation(line: 211, column: 7, scope: !5725)
!5795 = !DILocation(line: 211, column: 14, scope: !5725)
!5796 = !DILocation(line: 211, column: 21, scope: !5725)
!5797 = !DILocation(line: 213, column: 2, scope: !5725)
!5798 = !DILocation(line: 213, column: 7, scope: !5725)
!5799 = !DILocation(line: 213, column: 11, scope: !5725)
!5800 = !DILocation(line: 213, column: 21, scope: !5725)
!5801 = !DILocation(line: 214, column: 2, scope: !5725)
!5802 = !DILocation(line: 214, column: 7, scope: !5725)
!5803 = !DILocation(line: 214, column: 13, scope: !5725)
!5804 = !DILocation(line: 214, column: 23, scope: !5725)
!5805 = !DILocation(line: 215, column: 2, scope: !5725)
!5806 = !DILocation(line: 215, column: 7, scope: !5725)
!5807 = !DILocation(line: 215, column: 12, scope: !5725)
!5808 = !DILocation(line: 215, column: 22, scope: !5725)
!5809 = !DILocation(line: 216, column: 2, scope: !5725)
!5810 = !DILocation(line: 216, column: 7, scope: !5725)
!5811 = !DILocation(line: 216, column: 14, scope: !5725)
!5812 = !DILocation(line: 216, column: 24, scope: !5725)
!5813 = !DILocation(line: 217, column: 2, scope: !5725)
!5814 = !DILocation(line: 218, column: 1, scope: !5725)
!5815 = distinct !DISubprogram(name: "carmine_set_par", scope: !3, file: !3, line: 408, type: !4629, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5816 = !DILocalVariable(name: "info", arg: 1, scope: !5815, file: !3, line: 408, type: !4333)
!5817 = !DILocation(line: 408, column: 44, scope: !5815)
!5818 = !DILocalVariable(name: "par", scope: !5815, file: !3, line: 410, type: !5463)
!5819 = !DILocation(line: 410, column: 21, scope: !5815)
!5820 = !DILocation(line: 410, column: 27, scope: !5815)
!5821 = !DILocation(line: 410, column: 33, scope: !5815)
!5822 = !DILocalVariable(name: "ret", scope: !5815, file: !3, line: 411, type: !135)
!5823 = !DILocation(line: 411, column: 6, scope: !5815)
!5824 = !DILocation(line: 413, column: 27, scope: !5815)
!5825 = !DILocation(line: 413, column: 33, scope: !5815)
!5826 = !DILocation(line: 413, column: 8, scope: !5815)
!5827 = !DILocation(line: 413, column: 6, scope: !5815)
!5828 = !DILocation(line: 414, column: 6, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5815, file: !3, line: 414, column: 6)
!5830 = !DILocation(line: 414, column: 10, scope: !5829)
!5831 = !DILocation(line: 414, column: 6, scope: !5815)
!5832 = !DILocation(line: 415, column: 10, scope: !5829)
!5833 = !DILocation(line: 415, column: 3, scope: !5829)
!5834 = !DILocation(line: 417, column: 18, scope: !5815)
!5835 = !DILocation(line: 417, column: 2, scope: !5815)
!5836 = !DILocation(line: 417, column: 7, scope: !5815)
!5837 = !DILocation(line: 417, column: 16, scope: !5815)
!5838 = !DILocation(line: 418, column: 6, scope: !5839)
!5839 = distinct !DILexicalBlock(scope: !5815, file: !3, line: 418, column: 6)
!5840 = !DILocation(line: 418, column: 11, scope: !5839)
!5841 = !DILocation(line: 418, column: 23, scope: !5839)
!5842 = !DILocation(line: 418, column: 28, scope: !5839)
!5843 = !DILocation(line: 418, column: 20, scope: !5839)
!5844 = !DILocation(line: 418, column: 6, scope: !5815)
!5845 = !DILocation(line: 420, column: 19, scope: !5846)
!5846 = distinct !DILexicalBlock(scope: !5839, file: !3, line: 418, column: 38)
!5847 = !DILocation(line: 420, column: 24, scope: !5846)
!5848 = !DILocation(line: 420, column: 3, scope: !5846)
!5849 = !DILocation(line: 420, column: 8, scope: !5846)
!5850 = !DILocation(line: 420, column: 17, scope: !5846)
!5851 = !DILocation(line: 421, column: 25, scope: !5846)
!5852 = !DILocation(line: 421, column: 30, scope: !5846)
!5853 = !DILocation(line: 421, column: 15, scope: !5846)
!5854 = !DILocation(line: 421, column: 3, scope: !5846)
!5855 = !DILocation(line: 421, column: 8, scope: !5846)
!5856 = !DILocation(line: 421, column: 12, scope: !5846)
!5857 = !DILocation(line: 423, column: 30, scope: !5846)
!5858 = !DILocation(line: 423, column: 3, scope: !5846)
!5859 = !DILocation(line: 424, column: 26, scope: !5846)
!5860 = !DILocation(line: 424, column: 3, scope: !5846)
!5861 = !DILocation(line: 425, column: 2, scope: !5846)
!5862 = !DILocation(line: 427, column: 26, scope: !5815)
!5863 = !DILocation(line: 427, column: 32, scope: !5815)
!5864 = !DILocation(line: 427, column: 36, scope: !5815)
!5865 = !DILocation(line: 427, column: 43, scope: !5815)
!5866 = !DILocation(line: 427, column: 49, scope: !5815)
!5867 = !DILocation(line: 427, column: 53, scope: !5815)
!5868 = !DILocation(line: 427, column: 41, scope: !5815)
!5869 = !DILocation(line: 427, column: 68, scope: !5815)
!5870 = !DILocation(line: 427, column: 2, scope: !5815)
!5871 = !DILocation(line: 427, column: 8, scope: !5815)
!5872 = !DILocation(line: 427, column: 12, scope: !5815)
!5873 = !DILocation(line: 427, column: 24, scope: !5815)
!5874 = !DILocation(line: 428, column: 2, scope: !5815)
!5875 = !DILocation(line: 429, column: 1, scope: !5815)
!5876 = distinct !DISubprogram(name: "carmine_setcolreg", scope: !3, file: !3, line: 163, type: !4670, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5877 = !DILocalVariable(name: "regno", arg: 1, scope: !5876, file: !3, line: 163, type: !7)
!5878 = !DILocation(line: 163, column: 39, scope: !5876)
!5879 = !DILocalVariable(name: "red", arg: 2, scope: !5876, file: !3, line: 163, type: !7)
!5880 = !DILocation(line: 163, column: 55, scope: !5876)
!5881 = !DILocalVariable(name: "green", arg: 3, scope: !5876, file: !3, line: 163, type: !7)
!5882 = !DILocation(line: 163, column: 69, scope: !5876)
!5883 = !DILocalVariable(name: "blue", arg: 4, scope: !5876, file: !3, line: 164, type: !7)
!5884 = !DILocation(line: 164, column: 12, scope: !5876)
!5885 = !DILocalVariable(name: "transp", arg: 5, scope: !5876, file: !3, line: 164, type: !7)
!5886 = !DILocation(line: 164, column: 27, scope: !5876)
!5887 = !DILocalVariable(name: "info", arg: 6, scope: !5876, file: !3, line: 164, type: !4333)
!5888 = !DILocation(line: 164, column: 51, scope: !5876)
!5889 = !DILocation(line: 166, column: 6, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5876, file: !3, line: 166, column: 6)
!5891 = !DILocation(line: 166, column: 12, scope: !5890)
!5892 = !DILocation(line: 166, column: 6, scope: !5876)
!5893 = !DILocation(line: 167, column: 3, scope: !5890)
!5894 = !DILocation(line: 169, column: 6, scope: !5876)
!5895 = !DILocation(line: 170, column: 8, scope: !5876)
!5896 = !DILocation(line: 171, column: 7, scope: !5876)
!5897 = !DILocation(line: 172, column: 9, scope: !5876)
!5898 = !DILocation(line: 174, column: 44, scope: !5876)
!5899 = !DILocation(line: 174, column: 13, scope: !5876)
!5900 = !DILocation(line: 174, column: 19, scope: !5876)
!5901 = !DILocation(line: 174, column: 3, scope: !5876)
!5902 = !DILocation(line: 174, column: 35, scope: !5876)
!5903 = !DILocation(line: 174, column: 2, scope: !5876)
!5904 = !DILocation(line: 174, column: 42, scope: !5876)
!5905 = !DILocation(line: 176, column: 2, scope: !5876)
!5906 = !DILocation(line: 177, column: 1, scope: !5876)
!5907 = distinct !DISubprogram(name: "carmine_find_mode", scope: !3, file: !3, line: 128, type: !5908, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5908 = !DISubroutineType(types: !5909)
!5909 = !{!135, !5910}
!5910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5911, size: 64)
!5911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4343)
!5912 = !DILocalVariable(name: "var", arg: 1, scope: !5907, file: !3, line: 128, type: !5910)
!5913 = !DILocation(line: 128, column: 62, scope: !5907)
!5914 = !DILocalVariable(name: "i", scope: !5907, file: !3, line: 130, type: !135)
!5915 = !DILocation(line: 130, column: 6, scope: !5907)
!5916 = !DILocation(line: 132, column: 9, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5907, file: !3, line: 132, column: 2)
!5918 = !DILocation(line: 132, column: 7, scope: !5917)
!5919 = !DILocation(line: 132, column: 14, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5917, file: !3, line: 132, column: 2)
!5921 = !DILocation(line: 132, column: 16, scope: !5920)
!5922 = !DILocation(line: 132, column: 2, scope: !5917)
!5923 = !DILocation(line: 133, column: 17, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 133, column: 7)
!5925 = !DILocation(line: 133, column: 7, scope: !5924)
!5926 = !DILocation(line: 133, column: 20, scope: !5924)
!5927 = !DILocation(line: 133, column: 27, scope: !5924)
!5928 = !DILocation(line: 133, column: 32, scope: !5924)
!5929 = !DILocation(line: 133, column: 24, scope: !5924)
!5930 = !DILocation(line: 133, column: 37, scope: !5924)
!5931 = !DILocation(line: 134, column: 17, scope: !5924)
!5932 = !DILocation(line: 134, column: 7, scope: !5924)
!5933 = !DILocation(line: 134, column: 20, scope: !5924)
!5934 = !DILocation(line: 134, column: 27, scope: !5924)
!5935 = !DILocation(line: 134, column: 32, scope: !5924)
!5936 = !DILocation(line: 134, column: 24, scope: !5924)
!5937 = !DILocation(line: 133, column: 7, scope: !5920)
!5938 = !DILocation(line: 135, column: 11, scope: !5924)
!5939 = !DILocation(line: 135, column: 4, scope: !5924)
!5940 = !DILocation(line: 132, column: 42, scope: !5920)
!5941 = !DILocation(line: 132, column: 2, scope: !5920)
!5942 = distinct !{!5942, !5922, !5943}
!5943 = !DILocation(line: 135, column: 11, scope: !5917)
!5944 = !DILocation(line: 136, column: 2, scope: !5907)
!5945 = !DILocation(line: 137, column: 1, scope: !5907)
!5946 = distinct !DISubprogram(name: "carmine_init_display_param", scope: !3, file: !3, line: 220, type: !5947, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!5947 = !DISubroutineType(types: !5948)
!5948 = !{null, !5463}
!5949 = !DILocalVariable(name: "par", arg: 1, scope: !5946, file: !3, line: 220, type: !5463)
!5950 = !DILocation(line: 220, column: 59, scope: !5946)
!5951 = !DILocalVariable(name: "width", scope: !5946, file: !3, line: 222, type: !371)
!5952 = !DILocation(line: 222, column: 6, scope: !5946)
!5953 = !DILocalVariable(name: "height", scope: !5946, file: !3, line: 223, type: !371)
!5954 = !DILocation(line: 223, column: 6, scope: !5946)
!5955 = !DILocalVariable(name: "param", scope: !5946, file: !3, line: 224, type: !371)
!5956 = !DILocation(line: 224, column: 6, scope: !5946)
!5957 = !DILocalVariable(name: "window_size", scope: !5946, file: !3, line: 225, type: !371)
!5958 = !DILocation(line: 225, column: 6, scope: !5946)
!5959 = !DILocalVariable(name: "soffset", scope: !5946, file: !3, line: 226, type: !371)
!5960 = !DILocation(line: 226, column: 6, scope: !5946)
!5961 = !DILocation(line: 226, column: 16, scope: !5946)
!5962 = !DILocation(line: 226, column: 21, scope: !5946)
!5963 = !DILocation(line: 228, column: 17, scope: !5946)
!5964 = !DILocation(line: 228, column: 2, scope: !5946)
!5965 = !DILocation(line: 229, column: 17, scope: !5946)
!5966 = !DILocation(line: 229, column: 2, scope: !5946)
!5967 = !DILocation(line: 230, column: 17, scope: !5946)
!5968 = !DILocation(line: 230, column: 2, scope: !5946)
!5969 = !DILocation(line: 236, column: 17, scope: !5946)
!5970 = !DILocation(line: 236, column: 2, scope: !5946)
!5971 = !DILocation(line: 237, column: 17, scope: !5946)
!5972 = !DILocation(line: 237, column: 2, scope: !5946)
!5973 = !DILocation(line: 240, column: 17, scope: !5946)
!5974 = !DILocation(line: 240, column: 2, scope: !5946)
!5975 = !DILocation(line: 242, column: 17, scope: !5946)
!5976 = !DILocation(line: 242, column: 2, scope: !5946)
!5977 = !DILocation(line: 244, column: 17, scope: !5946)
!5978 = !DILocation(line: 244, column: 2, scope: !5946)
!5979 = !DILocation(line: 246, column: 17, scope: !5946)
!5980 = !DILocation(line: 246, column: 2, scope: !5946)
!5981 = !DILocation(line: 248, column: 17, scope: !5946)
!5982 = !DILocation(line: 248, column: 2, scope: !5946)
!5983 = !DILocation(line: 250, column: 17, scope: !5946)
!5984 = !DILocation(line: 250, column: 2, scope: !5946)
!5985 = !DILocation(line: 252, column: 17, scope: !5946)
!5986 = !DILocation(line: 252, column: 2, scope: !5946)
!5987 = !DILocation(line: 254, column: 17, scope: !5946)
!5988 = !DILocation(line: 254, column: 2, scope: !5946)
!5989 = !DILocation(line: 258, column: 10, scope: !5946)
!5990 = !DILocation(line: 258, column: 15, scope: !5946)
!5991 = !DILocation(line: 258, column: 20, scope: !5946)
!5992 = !DILocation(line: 258, column: 24, scope: !5946)
!5993 = !DILocation(line: 258, column: 28, scope: !5946)
!5994 = !DILocation(line: 258, column: 8, scope: !5946)
!5995 = !DILocation(line: 259, column: 10, scope: !5946)
!5996 = !DILocation(line: 259, column: 16, scope: !5946)
!5997 = !DILocation(line: 259, column: 8, scope: !5946)
!5998 = !DILocation(line: 261, column: 11, scope: !5946)
!5999 = !DILocation(line: 261, column: 16, scope: !5946)
!6000 = !DILocation(line: 261, column: 21, scope: !5946)
!6001 = !DILocation(line: 261, column: 25, scope: !5946)
!6002 = !DILocation(line: 261, column: 9, scope: !5946)
!6003 = !DILocation(line: 262, column: 10, scope: !5946)
!6004 = !DILocation(line: 262, column: 18, scope: !5946)
!6005 = !DILocation(line: 262, column: 16, scope: !5946)
!6006 = !DILocation(line: 262, column: 8, scope: !5946)
!6007 = !DILocation(line: 264, column: 17, scope: !5946)
!6008 = !DILocation(line: 264, column: 52, scope: !5946)
!6009 = !DILocation(line: 264, column: 2, scope: !5946)
!6010 = !DILocation(line: 265, column: 17, scope: !5946)
!6011 = !DILocation(line: 265, column: 49, scope: !5946)
!6012 = !DILocation(line: 265, column: 2, scope: !5946)
!6013 = !DILocation(line: 266, column: 17, scope: !5946)
!6014 = !DILocation(line: 266, column: 52, scope: !5946)
!6015 = !DILocation(line: 266, column: 2, scope: !5946)
!6016 = !DILocation(line: 267, column: 17, scope: !5946)
!6017 = !DILocation(line: 267, column: 52, scope: !5946)
!6018 = !DILocation(line: 267, column: 2, scope: !5946)
!6019 = !DILocation(line: 268, column: 17, scope: !5946)
!6020 = !DILocation(line: 268, column: 52, scope: !5946)
!6021 = !DILocation(line: 268, column: 2, scope: !5946)
!6022 = !DILocation(line: 269, column: 17, scope: !5946)
!6023 = !DILocation(line: 269, column: 52, scope: !5946)
!6024 = !DILocation(line: 269, column: 2, scope: !5946)
!6025 = !DILocation(line: 270, column: 17, scope: !5946)
!6026 = !DILocation(line: 270, column: 52, scope: !5946)
!6027 = !DILocation(line: 270, column: 2, scope: !5946)
!6028 = !DILocation(line: 271, column: 17, scope: !5946)
!6029 = !DILocation(line: 271, column: 52, scope: !5946)
!6030 = !DILocation(line: 271, column: 2, scope: !5946)
!6031 = !DILocation(line: 274, column: 17, scope: !5946)
!6032 = !DILocation(line: 274, column: 22, scope: !5946)
!6033 = !DILocation(line: 274, column: 27, scope: !5946)
!6034 = !DILocation(line: 274, column: 31, scope: !5946)
!6035 = !DILocation(line: 274, column: 36, scope: !5946)
!6036 = !DILocation(line: 274, column: 14, scope: !5946)
!6037 = !DILocation(line: 275, column: 17, scope: !5946)
!6038 = !DILocation(line: 275, column: 22, scope: !5946)
!6039 = !DILocation(line: 275, column: 27, scope: !5946)
!6040 = !DILocation(line: 275, column: 14, scope: !5946)
!6041 = !DILocation(line: 277, column: 17, scope: !5946)
!6042 = !DILocation(line: 277, column: 2, scope: !5946)
!6043 = !DILocation(line: 278, column: 17, scope: !5946)
!6044 = !DILocation(line: 278, column: 52, scope: !5946)
!6045 = !DILocation(line: 278, column: 2, scope: !5946)
!6046 = !DILocation(line: 279, column: 17, scope: !5946)
!6047 = !DILocation(line: 279, column: 2, scope: !5946)
!6048 = !DILocation(line: 280, column: 17, scope: !5946)
!6049 = !DILocation(line: 280, column: 52, scope: !5946)
!6050 = !DILocation(line: 280, column: 2, scope: !5946)
!6051 = !DILocation(line: 281, column: 17, scope: !5946)
!6052 = !DILocation(line: 281, column: 2, scope: !5946)
!6053 = !DILocation(line: 282, column: 17, scope: !5946)
!6054 = !DILocation(line: 282, column: 52, scope: !5946)
!6055 = !DILocation(line: 282, column: 2, scope: !5946)
!6056 = !DILocation(line: 283, column: 17, scope: !5946)
!6057 = !DILocation(line: 283, column: 2, scope: !5946)
!6058 = !DILocation(line: 284, column: 17, scope: !5946)
!6059 = !DILocation(line: 284, column: 52, scope: !5946)
!6060 = !DILocation(line: 284, column: 2, scope: !5946)
!6061 = !DILocation(line: 285, column: 17, scope: !5946)
!6062 = !DILocation(line: 285, column: 2, scope: !5946)
!6063 = !DILocation(line: 286, column: 17, scope: !5946)
!6064 = !DILocation(line: 286, column: 52, scope: !5946)
!6065 = !DILocation(line: 286, column: 2, scope: !5946)
!6066 = !DILocation(line: 287, column: 17, scope: !5946)
!6067 = !DILocation(line: 287, column: 2, scope: !5946)
!6068 = !DILocation(line: 288, column: 17, scope: !5946)
!6069 = !DILocation(line: 288, column: 52, scope: !5946)
!6070 = !DILocation(line: 288, column: 2, scope: !5946)
!6071 = !DILocation(line: 289, column: 17, scope: !5946)
!6072 = !DILocation(line: 289, column: 2, scope: !5946)
!6073 = !DILocation(line: 290, column: 17, scope: !5946)
!6074 = !DILocation(line: 290, column: 52, scope: !5946)
!6075 = !DILocation(line: 290, column: 2, scope: !5946)
!6076 = !DILocation(line: 291, column: 17, scope: !5946)
!6077 = !DILocation(line: 291, column: 2, scope: !5946)
!6078 = !DILocation(line: 292, column: 17, scope: !5946)
!6079 = !DILocation(line: 292, column: 52, scope: !5946)
!6080 = !DILocation(line: 292, column: 2, scope: !5946)
!6081 = !DILocation(line: 295, column: 17, scope: !5946)
!6082 = !DILocation(line: 295, column: 51, scope: !5946)
!6083 = !DILocation(line: 295, column: 2, scope: !5946)
!6084 = !DILocation(line: 296, column: 17, scope: !5946)
!6085 = !DILocation(line: 296, column: 51, scope: !5946)
!6086 = !DILocation(line: 296, column: 2, scope: !5946)
!6087 = !DILocation(line: 297, column: 17, scope: !5946)
!6088 = !DILocation(line: 297, column: 52, scope: !5946)
!6089 = !DILocation(line: 297, column: 2, scope: !5946)
!6090 = !DILocation(line: 298, column: 17, scope: !5946)
!6091 = !DILocation(line: 298, column: 52, scope: !5946)
!6092 = !DILocation(line: 298, column: 2, scope: !5946)
!6093 = !DILocation(line: 299, column: 17, scope: !5946)
!6094 = !DILocation(line: 299, column: 52, scope: !5946)
!6095 = !DILocation(line: 299, column: 2, scope: !5946)
!6096 = !DILocation(line: 300, column: 17, scope: !5946)
!6097 = !DILocation(line: 300, column: 52, scope: !5946)
!6098 = !DILocation(line: 300, column: 2, scope: !5946)
!6099 = !DILocation(line: 301, column: 17, scope: !5946)
!6100 = !DILocation(line: 301, column: 52, scope: !5946)
!6101 = !DILocation(line: 301, column: 2, scope: !5946)
!6102 = !DILocation(line: 302, column: 17, scope: !5946)
!6103 = !DILocation(line: 302, column: 52, scope: !5946)
!6104 = !DILocation(line: 302, column: 2, scope: !5946)
!6105 = !DILocation(line: 305, column: 17, scope: !5946)
!6106 = !DILocation(line: 305, column: 52, scope: !5946)
!6107 = !DILocation(line: 305, column: 2, scope: !5946)
!6108 = !DILocation(line: 306, column: 17, scope: !5946)
!6109 = !DILocation(line: 306, column: 53, scope: !5946)
!6110 = !DILocation(line: 306, column: 2, scope: !5946)
!6111 = !DILocation(line: 307, column: 17, scope: !5946)
!6112 = !DILocation(line: 307, column: 53, scope: !5946)
!6113 = !DILocation(line: 307, column: 2, scope: !5946)
!6114 = !DILocation(line: 308, column: 17, scope: !5946)
!6115 = !DILocation(line: 308, column: 53, scope: !5946)
!6116 = !DILocation(line: 308, column: 2, scope: !5946)
!6117 = !DILocation(line: 309, column: 17, scope: !5946)
!6118 = !DILocation(line: 309, column: 53, scope: !5946)
!6119 = !DILocation(line: 309, column: 2, scope: !5946)
!6120 = !DILocation(line: 310, column: 17, scope: !5946)
!6121 = !DILocation(line: 310, column: 53, scope: !5946)
!6122 = !DILocation(line: 310, column: 2, scope: !5946)
!6123 = !DILocation(line: 311, column: 17, scope: !5946)
!6124 = !DILocation(line: 311, column: 53, scope: !5946)
!6125 = !DILocation(line: 311, column: 2, scope: !5946)
!6126 = !DILocation(line: 314, column: 17, scope: !5946)
!6127 = !DILocation(line: 314, column: 2, scope: !5946)
!6128 = !DILocation(line: 315, column: 17, scope: !5946)
!6129 = !DILocation(line: 315, column: 2, scope: !5946)
!6130 = !DILocation(line: 316, column: 17, scope: !5946)
!6131 = !DILocation(line: 316, column: 2, scope: !5946)
!6132 = !DILocation(line: 317, column: 17, scope: !5946)
!6133 = !DILocation(line: 317, column: 2, scope: !5946)
!6134 = !DILocation(line: 318, column: 17, scope: !5946)
!6135 = !DILocation(line: 318, column: 2, scope: !5946)
!6136 = !DILocation(line: 319, column: 17, scope: !5946)
!6137 = !DILocation(line: 319, column: 2, scope: !5946)
!6138 = !DILocation(line: 320, column: 17, scope: !5946)
!6139 = !DILocation(line: 320, column: 2, scope: !5946)
!6140 = !DILocation(line: 323, column: 17, scope: !5946)
!6141 = !DILocation(line: 323, column: 2, scope: !5946)
!6142 = !DILocation(line: 324, column: 17, scope: !5946)
!6143 = !DILocation(line: 324, column: 2, scope: !5946)
!6144 = !DILocation(line: 325, column: 17, scope: !5946)
!6145 = !DILocation(line: 325, column: 2, scope: !5946)
!6146 = !DILocation(line: 326, column: 17, scope: !5946)
!6147 = !DILocation(line: 326, column: 2, scope: !5946)
!6148 = !DILocation(line: 327, column: 17, scope: !5946)
!6149 = !DILocation(line: 327, column: 2, scope: !5946)
!6150 = !DILocation(line: 328, column: 17, scope: !5946)
!6151 = !DILocation(line: 328, column: 2, scope: !5946)
!6152 = !DILocation(line: 329, column: 17, scope: !5946)
!6153 = !DILocation(line: 329, column: 2, scope: !5946)
!6154 = !DILocation(line: 330, column: 17, scope: !5946)
!6155 = !DILocation(line: 330, column: 2, scope: !5946)
!6156 = !DILocation(line: 333, column: 17, scope: !5946)
!6157 = !DILocation(line: 333, column: 2, scope: !5946)
!6158 = !DILocation(line: 334, column: 17, scope: !5946)
!6159 = !DILocation(line: 334, column: 2, scope: !5946)
!6160 = !DILocation(line: 335, column: 17, scope: !5946)
!6161 = !DILocation(line: 335, column: 2, scope: !5946)
!6162 = !DILocation(line: 336, column: 17, scope: !5946)
!6163 = !DILocation(line: 336, column: 2, scope: !5946)
!6164 = !DILocation(line: 337, column: 17, scope: !5946)
!6165 = !DILocation(line: 337, column: 2, scope: !5946)
!6166 = !DILocation(line: 338, column: 17, scope: !5946)
!6167 = !DILocation(line: 338, column: 2, scope: !5946)
!6168 = !DILocation(line: 339, column: 17, scope: !5946)
!6169 = !DILocation(line: 339, column: 2, scope: !5946)
!6170 = !DILocation(line: 340, column: 17, scope: !5946)
!6171 = !DILocation(line: 340, column: 2, scope: !5946)
!6172 = !DILocation(line: 343, column: 17, scope: !5946)
!6173 = !DILocation(line: 343, column: 2, scope: !5946)
!6174 = !DILocation(line: 344, column: 17, scope: !5946)
!6175 = !DILocation(line: 344, column: 2, scope: !5946)
!6176 = !DILocation(line: 345, column: 17, scope: !5946)
!6177 = !DILocation(line: 345, column: 2, scope: !5946)
!6178 = !DILocation(line: 346, column: 17, scope: !5946)
!6179 = !DILocation(line: 346, column: 2, scope: !5946)
!6180 = !DILocation(line: 347, column: 17, scope: !5946)
!6181 = !DILocation(line: 347, column: 2, scope: !5946)
!6182 = !DILocation(line: 348, column: 17, scope: !5946)
!6183 = !DILocation(line: 348, column: 2, scope: !5946)
!6184 = !DILocation(line: 349, column: 17, scope: !5946)
!6185 = !DILocation(line: 349, column: 2, scope: !5946)
!6186 = !DILocation(line: 351, column: 17, scope: !5946)
!6187 = !DILocation(line: 351, column: 2, scope: !5946)
!6188 = !DILocation(line: 352, column: 17, scope: !5946)
!6189 = !DILocation(line: 352, column: 2, scope: !5946)
!6190 = !DILocation(line: 353, column: 17, scope: !5946)
!6191 = !DILocation(line: 353, column: 2, scope: !5946)
!6192 = !DILocation(line: 354, column: 17, scope: !5946)
!6193 = !DILocation(line: 354, column: 2, scope: !5946)
!6194 = !DILocation(line: 355, column: 17, scope: !5946)
!6195 = !DILocation(line: 355, column: 2, scope: !5946)
!6196 = !DILocation(line: 356, column: 17, scope: !5946)
!6197 = !DILocation(line: 356, column: 2, scope: !5946)
!6198 = !DILocation(line: 357, column: 17, scope: !5946)
!6199 = !DILocation(line: 357, column: 2, scope: !5946)
!6200 = !DILocation(line: 359, column: 17, scope: !5946)
!6201 = !DILocation(line: 359, column: 2, scope: !5946)
!6202 = !DILocation(line: 360, column: 17, scope: !5946)
!6203 = !DILocation(line: 360, column: 2, scope: !5946)
!6204 = !DILocation(line: 361, column: 17, scope: !5946)
!6205 = !DILocation(line: 361, column: 2, scope: !5946)
!6206 = !DILocation(line: 362, column: 17, scope: !5946)
!6207 = !DILocation(line: 362, column: 2, scope: !5946)
!6208 = !DILocation(line: 363, column: 17, scope: !5946)
!6209 = !DILocation(line: 363, column: 2, scope: !5946)
!6210 = !DILocation(line: 364, column: 17, scope: !5946)
!6211 = !DILocation(line: 364, column: 2, scope: !5946)
!6212 = !DILocation(line: 365, column: 17, scope: !5946)
!6213 = !DILocation(line: 365, column: 2, scope: !5946)
!6214 = !DILocation(line: 366, column: 1, scope: !5946)
!6215 = distinct !DISubprogram(name: "set_display_parameters", scope: !3, file: !3, line: 368, type: !5947, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!6216 = !DILocalVariable(name: "par", arg: 1, scope: !6215, file: !3, line: 368, type: !5463)
!6217 = !DILocation(line: 368, column: 55, scope: !6215)
!6218 = !DILocalVariable(name: "mode", scope: !6215, file: !3, line: 370, type: !371)
!6219 = !DILocation(line: 370, column: 6, scope: !6215)
!6220 = !DILocalVariable(name: "hdp", scope: !6215, file: !3, line: 371, type: !371)
!6221 = !DILocation(line: 371, column: 6, scope: !6215)
!6222 = !DILocalVariable(name: "vdp", scope: !6215, file: !3, line: 371, type: !371)
!6223 = !DILocation(line: 371, column: 11, scope: !6215)
!6224 = !DILocalVariable(name: "htp", scope: !6215, file: !3, line: 371, type: !371)
!6225 = !DILocation(line: 371, column: 16, scope: !6215)
!6226 = !DILocalVariable(name: "hsp", scope: !6215, file: !3, line: 371, type: !371)
!6227 = !DILocation(line: 371, column: 21, scope: !6215)
!6228 = !DILocalVariable(name: "hsw", scope: !6215, file: !3, line: 371, type: !371)
!6229 = !DILocation(line: 371, column: 26, scope: !6215)
!6230 = !DILocalVariable(name: "vtr", scope: !6215, file: !3, line: 371, type: !371)
!6231 = !DILocation(line: 371, column: 31, scope: !6215)
!6232 = !DILocalVariable(name: "vsp", scope: !6215, file: !3, line: 371, type: !371)
!6233 = !DILocation(line: 371, column: 36, scope: !6215)
!6234 = !DILocalVariable(name: "vsw", scope: !6215, file: !3, line: 371, type: !371)
!6235 = !DILocation(line: 371, column: 41, scope: !6215)
!6236 = !DILocation(line: 377, column: 8, scope: !6215)
!6237 = !DILocation(line: 377, column: 13, scope: !6215)
!6238 = !DILocation(line: 377, column: 18, scope: !6215)
!6239 = !DILocation(line: 377, column: 22, scope: !6215)
!6240 = !DILocation(line: 377, column: 6, scope: !6215)
!6241 = !DILocation(line: 378, column: 8, scope: !6215)
!6242 = !DILocation(line: 378, column: 13, scope: !6215)
!6243 = !DILocation(line: 378, column: 18, scope: !6215)
!6244 = !DILocation(line: 378, column: 22, scope: !6215)
!6245 = !DILocation(line: 378, column: 6, scope: !6215)
!6246 = !DILocation(line: 379, column: 8, scope: !6215)
!6247 = !DILocation(line: 379, column: 13, scope: !6215)
!6248 = !DILocation(line: 379, column: 18, scope: !6215)
!6249 = !DILocation(line: 379, column: 22, scope: !6215)
!6250 = !DILocation(line: 379, column: 6, scope: !6215)
!6251 = !DILocation(line: 380, column: 8, scope: !6215)
!6252 = !DILocation(line: 380, column: 13, scope: !6215)
!6253 = !DILocation(line: 380, column: 18, scope: !6215)
!6254 = !DILocation(line: 380, column: 22, scope: !6215)
!6255 = !DILocation(line: 380, column: 6, scope: !6215)
!6256 = !DILocation(line: 381, column: 8, scope: !6215)
!6257 = !DILocation(line: 381, column: 13, scope: !6215)
!6258 = !DILocation(line: 381, column: 18, scope: !6215)
!6259 = !DILocation(line: 381, column: 22, scope: !6215)
!6260 = !DILocation(line: 381, column: 6, scope: !6215)
!6261 = !DILocation(line: 382, column: 8, scope: !6215)
!6262 = !DILocation(line: 382, column: 13, scope: !6215)
!6263 = !DILocation(line: 382, column: 18, scope: !6215)
!6264 = !DILocation(line: 382, column: 22, scope: !6215)
!6265 = !DILocation(line: 382, column: 6, scope: !6215)
!6266 = !DILocation(line: 383, column: 8, scope: !6215)
!6267 = !DILocation(line: 383, column: 13, scope: !6215)
!6268 = !DILocation(line: 383, column: 18, scope: !6215)
!6269 = !DILocation(line: 383, column: 22, scope: !6215)
!6270 = !DILocation(line: 383, column: 6, scope: !6215)
!6271 = !DILocation(line: 384, column: 8, scope: !6215)
!6272 = !DILocation(line: 384, column: 13, scope: !6215)
!6273 = !DILocation(line: 384, column: 18, scope: !6215)
!6274 = !DILocation(line: 384, column: 22, scope: !6215)
!6275 = !DILocation(line: 384, column: 6, scope: !6215)
!6276 = !DILocation(line: 386, column: 17, scope: !6215)
!6277 = !DILocation(line: 387, column: 4, scope: !6215)
!6278 = !DILocation(line: 387, column: 8, scope: !6215)
!6279 = !DILocation(line: 386, column: 2, scope: !6215)
!6280 = !DILocation(line: 388, column: 17, scope: !6215)
!6281 = !DILocation(line: 389, column: 5, scope: !6215)
!6282 = !DILocation(line: 389, column: 9, scope: !6215)
!6283 = !DILocation(line: 389, column: 38, scope: !6215)
!6284 = !DILocation(line: 389, column: 36, scope: !6215)
!6285 = !DILocation(line: 388, column: 2, scope: !6215)
!6286 = !DILocation(line: 390, column: 17, scope: !6215)
!6287 = !DILocation(line: 391, column: 5, scope: !6215)
!6288 = !DILocation(line: 391, column: 9, scope: !6215)
!6289 = !DILocation(line: 392, column: 5, scope: !6215)
!6290 = !DILocation(line: 392, column: 9, scope: !6215)
!6291 = !DILocation(line: 391, column: 36, scope: !6215)
!6292 = !DILocation(line: 393, column: 5, scope: !6215)
!6293 = !DILocation(line: 392, column: 36, scope: !6215)
!6294 = !DILocation(line: 390, column: 2, scope: !6215)
!6295 = !DILocation(line: 394, column: 17, scope: !6215)
!6296 = !DILocation(line: 395, column: 4, scope: !6215)
!6297 = !DILocation(line: 395, column: 8, scope: !6215)
!6298 = !DILocation(line: 394, column: 2, scope: !6215)
!6299 = !DILocation(line: 396, column: 17, scope: !6215)
!6300 = !DILocation(line: 397, column: 5, scope: !6215)
!6301 = !DILocation(line: 397, column: 9, scope: !6215)
!6302 = !DILocation(line: 397, column: 38, scope: !6215)
!6303 = !DILocation(line: 397, column: 36, scope: !6215)
!6304 = !DILocation(line: 396, column: 2, scope: !6215)
!6305 = !DILocation(line: 400, column: 24, scope: !6215)
!6306 = !DILocation(line: 400, column: 9, scope: !6215)
!6307 = !DILocation(line: 400, column: 7, scope: !6215)
!6308 = !DILocation(line: 401, column: 10, scope: !6215)
!6309 = !DILocation(line: 401, column: 15, scope: !6215)
!6310 = !DILocation(line: 402, column: 4, scope: !6215)
!6311 = !DILocation(line: 402, column: 9, scope: !6215)
!6312 = !DILocation(line: 402, column: 14, scope: !6215)
!6313 = !DILocation(line: 402, column: 24, scope: !6215)
!6314 = !DILocation(line: 401, column: 41, scope: !6215)
!6315 = !DILocation(line: 401, column: 7, scope: !6215)
!6316 = !DILocation(line: 404, column: 7, scope: !6215)
!6317 = !DILocation(line: 405, column: 17, scope: !6215)
!6318 = !DILocation(line: 405, column: 45, scope: !6215)
!6319 = !DILocation(line: 405, column: 2, scope: !6215)
!6320 = !DILocation(line: 406, column: 1, scope: !6215)
!6321 = distinct !DISubprogram(name: "c_set_disp_reg", scope: !3, file: !3, line: 139, type: !6322, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!6322 = !DISubroutineType(types: !6323)
!6323 = !{null, !6324, !371, !371}
!6324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6325, size: 64)
!6325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5464)
!6326 = !DILocalVariable(name: "par", arg: 1, scope: !6321, file: !3, line: 139, type: !6324)
!6327 = !DILocation(line: 139, column: 53, scope: !6321)
!6328 = !DILocalVariable(name: "offset", arg: 2, scope: !6321, file: !3, line: 140, type: !371)
!6329 = !DILocation(line: 140, column: 7, scope: !6321)
!6330 = !DILocalVariable(name: "val", arg: 3, scope: !6321, file: !3, line: 140, type: !371)
!6331 = !DILocation(line: 140, column: 19, scope: !6321)
!6332 = !DILocation(line: 142, column: 9, scope: !6321)
!6333 = !DILocation(line: 142, column: 14, scope: !6321)
!6334 = !DILocation(line: 142, column: 19, scope: !6321)
!6335 = !DILocation(line: 142, column: 33, scope: !6321)
!6336 = !DILocation(line: 142, column: 31, scope: !6321)
!6337 = !DILocation(line: 142, column: 2, scope: !6321)
!6338 = !DILocation(line: 143, column: 1, scope: !6321)
!6339 = distinct !DISubprogram(name: "writel", scope: !5715, file: !5715, line: 67, type: !6340, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!6340 = !DISubroutineType(types: !6341)
!6341 = !{null, !7, !6342}
!6342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5720, size: 64)
!6343 = !DILocalVariable(name: "val", arg: 1, scope: !6339, file: !5715, line: 67, type: !7)
!6344 = !DILocation(line: 67, column: 1, scope: !6339)
!6345 = !DILocalVariable(name: "addr", arg: 2, scope: !6339, file: !5715, line: 67, type: !6342)
!6346 = !{i32 -2141458389}
!6347 = distinct !DISubprogram(name: "c_get_disp_reg", scope: !3, file: !3, line: 145, type: !6348, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!6348 = !DISubroutineType(types: !6349)
!6349 = !{!371, !6324, !371}
!6350 = !DILocalVariable(name: "par", arg: 1, scope: !6347, file: !3, line: 145, type: !6324)
!6351 = !DILocation(line: 145, column: 52, scope: !6347)
!6352 = !DILocalVariable(name: "offset", arg: 2, scope: !6347, file: !3, line: 146, type: !371)
!6353 = !DILocation(line: 146, column: 7, scope: !6347)
!6354 = !DILocation(line: 148, column: 15, scope: !6347)
!6355 = !DILocation(line: 148, column: 20, scope: !6347)
!6356 = !DILocation(line: 148, column: 34, scope: !6347)
!6357 = !DILocation(line: 148, column: 32, scope: !6347)
!6358 = !DILocation(line: 148, column: 9, scope: !6347)
!6359 = !DILocation(line: 148, column: 2, scope: !6347)
!6360 = distinct !DISubprogram(name: "__fswab32", scope: !6361, file: !6361, line: 57, type: !6362, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!6361 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!6362 = !DISubroutineType(types: !6363)
!6363 = !{!138, !138}
!6364 = !DILocalVariable(name: "val", arg: 1, scope: !6360, file: !6361, line: 57, type: !138)
!6365 = !DILocation(line: 57, column: 57, scope: !6360)
!6366 = !DILocation(line: 60, column: 23, scope: !6360)
!6367 = !DILocation(line: 60, column: 9, scope: !6360)
!6368 = !DILocation(line: 60, column: 2, scope: !6360)
!6369 = distinct !DISubprogram(name: "__arch_swab32", scope: !6370, file: !6370, line: 8, type: !6362, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!6370 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!6371 = !DILocalVariable(name: "val", arg: 1, scope: !6369, file: !6370, line: 8, type: !138)
!6372 = !DILocation(line: 8, column: 61, scope: !6369)
!6373 = !DILocation(line: 10, column: 38, scope: !6369)
!6374 = !DILocation(line: 10, column: 2, scope: !6369)
!6375 = !{i32 384005}
!6376 = !DILocation(line: 11, column: 9, scope: !6369)
!6377 = !DILocation(line: 11, column: 2, scope: !6369)
!6378 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !73, file: !73, line: 660, type: !6379, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!6379 = !DISubroutineType(types: !6380)
!6380 = !{null, !396, !132}
!6381 = !DILocalVariable(name: "dev", arg: 1, scope: !6378, file: !73, line: 660, type: !396)
!6382 = !DILocation(line: 660, column: 51, scope: !6378)
!6383 = !DILocalVariable(name: "data", arg: 2, scope: !6378, file: !73, line: 660, type: !132)
!6384 = !DILocation(line: 660, column: 62, scope: !6378)
!6385 = !DILocation(line: 662, column: 21, scope: !6378)
!6386 = !DILocation(line: 662, column: 2, scope: !6378)
!6387 = !DILocation(line: 662, column: 7, scope: !6378)
!6388 = !DILocation(line: 662, column: 19, scope: !6378)
!6389 = !DILocation(line: 663, column: 1, scope: !6378)
!6390 = distinct !DISubprogram(name: "pci_get_drvdata", scope: !285, file: !285, line: 1865, type: !6391, scopeLine: 1866, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!6391 = !DISubroutineType(types: !6392)
!6392 = !{!132, !313}
!6393 = !DILocalVariable(name: "pdev", arg: 1, scope: !6390, file: !285, line: 1865, type: !313)
!6394 = !DILocation(line: 1865, column: 53, scope: !6390)
!6395 = !DILocation(line: 1867, column: 26, scope: !6390)
!6396 = !DILocation(line: 1867, column: 32, scope: !6390)
!6397 = !DILocation(line: 1867, column: 9, scope: !6390)
!6398 = !DILocation(line: 1867, column: 2, scope: !6390)
!6399 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !6400, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !427)
!6400 = !DISubroutineType(types: !6401)
!6401 = !{!132, !3901}
!6402 = !DILocalVariable(name: "dev", arg: 1, scope: !6399, file: !73, line: 655, type: !3901)
!6403 = !DILocation(line: 655, column: 58, scope: !6399)
!6404 = !DILocation(line: 657, column: 9, scope: !6399)
!6405 = !DILocation(line: 657, column: 14, scope: !6399)
!6406 = !DILocation(line: 657, column: 2, scope: !6399)
